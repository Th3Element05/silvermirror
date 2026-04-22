	object_const_def
	const BILLSHOUSE_BILL
;	const BILLSHOUSE_GRAMPS

BillsHouse_MapScripts:
	def_scene_scripts
	scene_script BillsHouseNoop1Scene, SCENE_BILLSHOUSE_NOOP
	scene_script BillsHouseNoop2Scene, SCENE_BILLSHOUSE_DONT_LEAVE

	def_callbacks

BillsHouseNoop1Scene:
BillsHouseNoop2Scene:
	end

BillsHouseBillScript:
	checkevent EVENT_HELPED_BILL
	iftrue .AfterHelpedBill
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .BillInsideTeleporter
	faceplayer
	opentext
	writetext BillsHouseBillIntroText
	yesorno
	iftrue .SaidYesToBill
	writetext BillsHouseWontHelpBillText
	promptbutton
	; fallthrough

.SaidYesToBill
	writetext BillsHouseTeleporterText
	waitbutton
	closetext
	scall .BillsHouseBillGoesToTeleporterScript
	playsound SFX_ENTER_DOOR
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setscene SCENE_BILLSHOUSE_DONT_LEAVE
	end

.BillInsideTeleporter
	jumptext BillsHouseBillInsideTeleporterText

.AfterHelpedBill
	faceplayer
	opentext
	checkcellnum PHONE_BILL
	iftrue .GotBillsNumber
	writetext BillOffersNumberText
	askforphonenumber PHONE_BILL
	ifequal PHONE_CONTACTS_FULL, .NoRoom
	ifequal PHONE_CONTACT_REFUSED, .Refused
	waitsfx
	addcellnum PHONE_BILL
	writetext RecordedBillsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillsHousePhoneFullText
	promptbutton
.Refused:
	writetext BillsHouseBummerText
	waitbutton
	closetext
	end

.GotBillsNumber
;	checkevent EVENT_GOT_HM01_CUT
;	iftrue BillsGrandpa
	writetext BillsHouseBillExplainRadioCardText
	waitbutton
	closetext
	end

.BillsHouseBillGoesToTeleporterScript:
	readvar VAR_FACING
	ifequal LEFT, .BillWalkAroundPlayer
	applymovement BILLSHOUSE_BILL, BillsHouseBillEntersTeleporterMovement
	end
.BillWalkAroundPlayer
	applymovement BILLSHOUSE_BILL, BillsHouseBillWalksAroundPlayerMovement
	end

BillsHouseBillsComputerScript:
	checkscene
	ifnotequal SCENE_BILLSHOUSE_DONT_LEAVE, .Skip
	opentext
	writetext BillsHouseRunCellSeparatorText
	waitbutton
	closetext
	special FadeOutMusic
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_WARP_FROM
	waitsfx
	playsound SFX_WARP_TO
	waitsfx
	playsound SFX_EVOLVED
	waitsfx
	applymovement BILLSHOUSE_BILL, BillsHouseBillSwitchTeleportersMovement
	variablesprite SPRITE_BILL_TRANSFORM, SPRITE_BILL
	special LoadUsedSpritesGFX
	playsound SFX_ENTER_DOOR
	applymovement BILLSHOUSE_BILL, BillsHouseBillExitsTeleporterMovement
	special RestartMapMusic
	applymovement PLAYER, BillsHousePlayerGoesToBillMovement
	opentext
	writetext BillsHouseBillThanksText
	promptbutton
; Bill gives RADIO CARD
	getstring STRING_BUFFER_4, .RadioCardText
	scall .ReceiveItem
	writetext BillsHousePokegearIsARadioText
	promptbutton
	setflag ENGINE_RADIO_CARD
	writetext BillsHouseBillExplainRadioCardText
;	promptbutton
; Bill gives S_S_TICKET
;	verbosegiveitem S_S_TICKET ; this is the SS Aqua ticket for now
;;	iffalse .NoRoom
;	promptbutton
;	writetext BillsHouseBillShipText
	waitbutton
	closetext
	setevent EVENT_HELPED_BILL
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	specialphonecall SPECIALCALL_SSANNE
	setscene SCENE_BILLSHOUSE_NOOP
	end

.RadioCardText:
	db "RADIO CARD@"

.ReceiveItem:
	jumpstd ReceiveItemScript
	end

.Skip
	jumptext BillsHouseComputerCodeText

BillsHouseDontLeaveScript:
	playsound SFX_ENTER_DOOR
	applymovement BILLSHOUSE_BILL, BillsHouseBillDontLeaveMovement
	opentext
	writetext BillsHouseBillDontLeaveText
	promptbutton
	closetext
	applymovement PLAYER, BillsHousePlayerDontLeaveMovement
	opentext
	writetext BillsHouseBillReminderText
	waitbutton
	closetext
	applymovement BILLSHOUSE_BILL, BillsHouseBillEntersTeleporterAgainMovement
	playsound SFX_ENTER_DOOR
	end

BillsHouseBillDontLeaveText:
	ntag "BILL?:"
	text "Hey pal!"
	line "Don't leave!"
	done

BillsHouseBillReminderText:
	ntag "BILL?:"
	text "I need you to run"
	line "the program on my"
	cont "PC while I'm in"
	roll "the teleporter!"

	para "I can't do this"
	line "by myself, chief!"
	done

; movement
BillsHouseBillEntersTeleporterMovement:
	step RIGHT
	step RIGHT
	step UP
	step UP
BillsHouseBillEntersTeleporterAgainMovement:
	step UP
	hide_object
	step_end

BillsHouseBillWalksAroundPlayerMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	hide_object ; you can talk to Bill through the door
	step_end

BillsHouseBillSwitchTeleportersMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

BillsHouseBillExitsTeleporterMovement:
	show_object
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step_end

BillsHousePlayerGoesToBillMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

BillsHouseBillDontLeaveMovement:
	show_object
	step DOWN
	step_end

BillsHousePlayerDontLeaveMovement:
	step UP
	step_end

BillsHouseBillIntroText:
	ntag "A #MON?:"
	text "Hiya!"
	line "I'm a #MON…"
	cont "…No I'm not!@"

	text_promptbutton
	ntag "───────────"
	ntag "BILL?:"
	para "Call me BILL!"
	line "I'm a true blue"
	cont "#MANIAC! Hey!"
	roll "What's with that"
	cont "skeptical look?"

	para "I'm not joshing"
	line "you, I screwed up"
	cont "an experiment and"
	roll "got combined with"
	cont "a #MON!"

	para "So, how about it?"
	line "Help me out here!"
	done

BillsHouseTeleporterText:
	ntag "BILL?:"
	text "When I'm in the"
	line "TELEPORTER, go to"
	cont "my PC and run the"
	roll "Cell Separation"
	cont "System!"
	done

BillsHouseBillInsideTeleporterText:
	ntag "BILL?:"
	text "Go run the Cell"
	line "Separation Program"
	cont "on my PC!"
	done

BillsHouseWontHelpBillText:
	ntag "BILL?:"
	text "No!? Come on, you"
	line "gotta help a guy"
	cont "in deep trouble!"

	para "What do you say,"
	line "chief? Please?"
	cont "OK? All right!"
	done

BillsHouseRunCellSeparatorText:
	text "<PLAYER> ran the"
	line "Cell Separation"
	cont "Program!"
	done

BillsHouseBillThanksText:
	ntag "BILL:"
	text "Yeehah!"
	line "Thanks, bud!"
	cont "I owe you one!"

;	para "So, did you come"
;	line "to see my #MON"
;	cont "collection?"
;	cont "You didn't?"
;	cont "That's a bummer."

	para "I've got to thank"
	line "you… Oh here,"
	cont "maybe this'll do."
	done

BillsHousePokegearIsARadioText:
	text "<PLAYER>'s #GEAR"
	line "can now tune in"
	cont "to the radio!"
	done

BillsHouseBillExplainRadioCardText:
	ntag "BILL:"
	text "There's a channel"
	line "on the radio that"
	cont "reports swarms of"
	roll "rare #MON!"

	para "You should give it"
	line "a listen sometime!"
	done

BillsHouseComputerCodeText:
	text "Cell Separation:"
	line "Last Test Result:"
	cont "          SUCCESS"
	done

BillOffersNumberText:
	ntag "BILL:"
	text "If you save my"
	line "phone number, you"
	cont "can call about my"
	roll "#MON STORAGE"
	cont "system any time."
	done 

BillsHousePhoneFullText:
	ntag "BILL:"
	text "You can't record"
	line "any more numbers."
	done

BillsHouseBummerText:
	ntag "BILL:"
	text "That's a bummer."
	done

RecordedBillsNumberText:
	text "<PLAYER> recorded"
	line "BILL's number."
	done

;BillsGrandpa:
;	faceplayer
;	opentext
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	iftrue .JustShowedSomething
;	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
;	iftrue .GotThunderstone
;	checkevent EVENT_MET_BILLS_GRANDPA
;	iftrue .MetGrandpa
;	writetext BillsGrandpaIntroText
;	promptbutton
;	setevent EVENT_MET_BILLS_GRANDPA
;.MetGrandpa:
;	checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
;	iftrue .ShowedPichu
;	checkevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
;	iftrue .ShowedGrowlitheVulpix
;	checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
;	iftrue .ShowedStaryu
;	checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
;	iftrue .ShowedOddish
;	checkevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
;	iftrue .ShowedLickitung
;	writetext BillsGrandpaLickitungText
;	promptbutton
;	writetext BillsGrandpaAskToSeeMonText
;	yesorno
;	iffalse .SaidNo
;	scall .ExcitedToSee
;	special BillsGrandfather ; load species into wScriptVar and text buffers
;	iffalse .SaidNo
;	ifnotequal LICKITUNG, .WrongPokemon
;	scall .CorrectPokemon
;	setevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
;	sjump .ShowedLickitung
;
;.GotEverstone:
;	writetext BillsGrandpaOddishText
;	promptbutton
;	writetext BillsGrandpaAskToSeeMonText
;	yesorno
;	iffalse .SaidNo
;	scall .ExcitedToSee
;	special BillsGrandfather ; load species into wScriptVar and text buffers
;	iffalse .SaidNo
;	ifnotequal ODDISH, .WrongPokemon
;	scall .CorrectPokemon
;	setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
;	sjump .ShowedOddish
;
;.GotLeafStone:
;	writetext BillsGrandpaStaryuText
;	promptbutton
;	writetext BillsGrandpaAskToSeeMonText
;	yesorno
;	iffalse .SaidNo
;	scall .ExcitedToSee
;	special BillsGrandfather ; load species into wScriptVar and text buffers
;	iffalse .SaidNo
;	ifnotequal STARYU, .WrongPokemon
;	scall .CorrectPokemon
;	setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
;	sjump .ShowedStaryu
;
;.GotWaterStone:
;	checkver
;	iftrue .AskVulpix
;	writetext BillsGrandpaGrowlitheText
;	promptbutton
;	writetext BillsGrandpaAskToSeeMonText
;	yesorno
;	iffalse .SaidNo
;	scall .ExcitedToSee
;	special BillsGrandfather ; load species into wScriptVar and text buffers
;	iffalse .SaidNo
;	ifnotequal GROWLITHE, .WrongPokemon
;	scall .CorrectPokemon
;	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
;	sjump .ShowedGrowlitheVulpix
;
;.AskVulpix:
;	writetext BillsGrandpaVulpixText
;	promptbutton
;	writetext BillsGrandpaAskToSeeMonText
;	yesorno
;	iffalse .SaidNo
;	scall .ExcitedToSee
;	special BillsGrandfather ; load species into wScriptVar and text buffers
;	iffalse .SaidNo
;	ifnotequal VULPIX, .WrongPokemon
;	scall .CorrectPokemon
;	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
;	sjump .ShowedGrowlitheVulpix
;
;.GotFireStone:
;	writetext BillsGrandpaPichuText
;	promptbutton
;	writetext BillsGrandpaAskToSeeMonText
;	yesorno
;	iffalse .SaidNo
;	scall .ExcitedToSee
;	special BillsGrandfather ; load species into wScriptVar and text buffers
;	iffalse .SaidNo
;	ifnotequal PICHU, .WrongPokemon
;	scall .CorrectPokemon
;	setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
;	sjump .ShowedPichu
;
;.ShowedLickitung:
;	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
;	iftrue .GotEverstone
;	scall .ReceiveItem
;	verbosegiveitem EVERSTONE
;	iffalse .BagFull
;	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	closetext
;	end
;
;.ShowedOddish:
;	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
;	iftrue .GotLeafStone
;	scall .ReceiveItem
;	verbosegiveitem LEAF_STONE
;	iffalse .BagFull
;	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	closetext
;	end
;
;.ShowedStaryu:
;	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
;	iftrue .GotWaterStone
;	scall .ReceiveItem
;	verbosegiveitem WATER_STONE
;	iffalse .BagFull
;	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	closetext
;	end
;
;.ShowedGrowlitheVulpix:
;	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
;	iftrue .GotFireStone
;	scall .ReceiveItem
;	verbosegiveitem FIRE_STONE
;	iffalse .BagFull
;	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	closetext
;	end
;
;.ShowedPichu:
;	scall .ReceiveItem
;	verbosegiveitem THUNDERSTONE
;	iffalse .BagFull
;	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
;	closetext
;	end
;
;.ExcitedToSee:
;	writetext BillsGrandpaExcitedToSeeText
;	promptbutton
;	end
;
;.SaidNo:
;	writetext BillsGrandpaYouDontHaveItTextText
;	waitbutton
;	closetext
;	end
;
;.CorrectPokemon:
;	writetext BillsGrandpaShownPokemonText
;	promptbutton
;	end
;
;.ReceiveItem:
;	writetext BillsGrandpaTokenOfAppreciationText
;	promptbutton
;	end
;
;.JustShowedSomething:
;	writetext BillsGrandpaComeAgainText
;	waitbutton
;	closetext
;	end
;
;.GotThunderstone:
;	writetext BillsGrandpaShownAllThePokemonText
;	waitbutton
;	closetext
;	end
;
;.WrongPokemon:
;	writetext BillsGrandpaWrongPokemonText
;	waitbutton
;	closetext
;	end
;
;.BagFull:
;	closetext
;	end
;
;BillsGrandpaIntroText:
;	text "Hm? You know BILL?"
;	line "He's my grandson."
;
;	para "He's in JOHTO. He"
;	line "does something"
;	cont "with PCs, so I'm"
;	roll "house-sitting."
;	done
;
;BillsGrandpaAskToSeeMonText:
;	text "If you have that"
;	line "#MON, may I see"
;	cont "it, please?"
;	done
;
;BillsGrandpaExcitedToSeeText:
;	text "You will show me?"
;	line "How good of you!"
;	done
;
;BillsGrandpaYouDontHaveItTextText:
;	text "You don't have it?"
;	line "That's too bad…"
;	done
;
;BillsGrandpaShownPokemonText:
;	text "Ah, so that is"
;	line "@"
;	text_ram wStringBuffer3
;	text "?"
;
;	para "Isn't it cute!"
;	line "That's so kind of"
;	cont "you."
;	done
;
;BillsGrandpaTokenOfAppreciationText:
;	text "Thanks!"
;
;	para "This is a token of"
;	line "my appreciation."
;	done
;
;BillsGrandpaComeAgainText:
;	text "Come visit again"
;	line "sometime."
;	done
;
;BillsGrandpaShownAllThePokemonText:
;	text "Thanks for showing"
;	line "me so many cute"
;	cont "#MON."
;
;	para "I really enjoyed"
;	line "myself. I'm glad"
;	cont "I've lived such a"
;	roll "long life."
;	done
;
;BillsGrandpaWrongPokemonText:
;	text "Hm?"
;
;	para "That's not the"
;	line "#MON that I was"
;	cont "told about."
;	done
;
;BillsGrandpaLickitungText:
;	text "My grandson BILL"
;	line "told me about a"
;	cont "#MON that has a"
;	roll "long tongue."
;	done
;
;BillsGrandpaOddishText:
;	text "Ah, my grandson"
;	line "mentioned a round,"
;	cont "green #MON that"
;	roll "has leaves growing"
;	cont "on its head."
;	done
;
;BillsGrandpaStaryuText:
;	text "Do you know of a"
;	line "sea #MON that"
;	cont "has a red sphere"
;	roll "in its body?"
;
;	para "You know, the one"
;	line "that's shaped like"
;	cont "a star?"
;
;	para "I heard that it"
;	line "appears at night."
;
;	para "I would surely"
;	line "like to see it."
;	done
;
;BillsGrandpaGrowlitheText:
;	text "BILL told me about"
;	line "a #MON that is"
;	cont "very loyal to its"
;	roll "trainer."
;
;	para "It's supposed to"
;	line "ROAR well."
;	done
;
;BillsGrandpaVulpixText:
;	text "I heard about a"
;	line "cute #MON that"
;	cont "has six tails."
;
;	para "I would love to"
;	line "hug a cute #MON"
;	cont "like that."
;	done
;
;BillsGrandpaPichuText:
;	text "Do you know that"
;	line "hugely popular"
;	cont "#MON?"
;
;	para "The #MON that"
;	line "has a yellow body"
;	cont "and red cheeks."
;
;	para "I would love to"
;	line "see what it looks"
;	cont "like before it"
;	roll "evolves."
;	done

BillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events
	coord_event  2,  7, SCENE_BILLSHOUSE_DONT_LEAVE, BillsHouseDontLeaveScript
	coord_event  3,  7, SCENE_BILLSHOUSE_DONT_LEAVE, BillsHouseDontLeaveScript


	def_bg_events
	bg_event  1,  4, BGEVENT_UP, BillsHouseBillsComputerScript

	def_object_events
	object_event  1,  5, SPRITE_BILL_TRANSFORM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillsHouseBillScript, -1
;	object_event  7,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BillsGrandpa, -1
