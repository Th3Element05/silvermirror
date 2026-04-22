DEF GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE   EQU 300 ;500
;DEF GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_PRICE EQU 300

	object_const_def
	const GOLDENRODUNDERGROUND_BARGAIN
	const GOLDENRODUNDERGROUND_BITTER
	const GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	const GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER

GoldenrodUnderground_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_NEWMAP, GoldenrodUndergroundResetSwitchesCallback
;	callback MAPCALLBACK_TILES, GoldenrodUndergroundCheckBasementKeyCallback
	callback MAPCALLBACK_OBJECTS, GoldenrodUndergroundCheckDayOfWeekCallback

;GoldenrodUndergroundResetSwitchesCallback:
;	clearevent EVENT_SWITCH_1
;	clearevent EVENT_SWITCH_2
;	clearevent EVENT_SWITCH_3
;	clearevent EVENT_EMERGENCY_SWITCH
;	clearevent EVENT_SWITCH_4
;	clearevent EVENT_SWITCH_5
;	clearevent EVENT_SWITCH_6
;	clearevent EVENT_SWITCH_7
;	clearevent EVENT_SWITCH_8
;	clearevent EVENT_SWITCH_9
;	clearevent EVENT_SWITCH_10
;	clearevent EVENT_SWITCH_11
;	clearevent EVENT_SWITCH_12
;	clearevent EVENT_SWITCH_13
;	clearevent EVENT_SWITCH_14
;	setval 0
;	writemem wUndergroundSwitchPositions
;	endcallback

;GoldenrodUndergroundCheckBasementKeyCallback:
;	checkevent EVENT_USED_BASEMENT_KEY
;	iffalse .DoorLocked
;	changeblock 18, 6, $07 ; locked door
;.DoorLocked
;	endcallback

GoldenrodUndergroundCheckDayOfWeekCallback:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday

; Sunday: ;bitter, older, younger
	disappear GOLDENRODUNDERGROUND_BARGAIN
	appear GOLDENRODUNDERGROUND_BITTER
	appear GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	appear GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER
	endcallback

.Monday: ;bargain(morn)
	disappear GOLDENRODUNDERGROUND_BARGAIN
	checktime MORN
	iffalse .NotMondayMorning
	appear GOLDENRODUNDERGROUND_BARGAIN
.NotMondayMorning
	disappear GOLDENRODUNDERGROUND_BITTER
	disappear GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	disappear GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER
	endcallback

.Tuesday: ;bargain(morn), older
	disappear GOLDENRODUNDERGROUND_BARGAIN
	checktime MORN
	iffalse .NotTuesdayMorning
	appear GOLDENRODUNDERGROUND_BARGAIN
.NotTuesdayMorning
	disappear GOLDENRODUNDERGROUND_BITTER
	appear GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	disappear GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER
	endcallback

.Wednesday: ;bargain(morn), older, younger
	disappear GOLDENRODUNDERGROUND_BARGAIN
	checktime MORN
	iffalse .NotWednesdayMorning
	appear GOLDENRODUNDERGROUND_BARGAIN
.NotWednesdayMorning
	disappear GOLDENRODUNDERGROUND_BITTER
	appear GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	appear GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER
	endcallback

.Thursday: ;bargain(morn), older
	disappear GOLDENRODUNDERGROUND_BARGAIN
	checktime MORN
	iffalse .NotThursdayMorning
	appear GOLDENRODUNDERGROUND_BARGAIN
.NotThursdayMorning
	disappear GOLDENRODUNDERGROUND_BITTER
	appear GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	disappear GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER
	endcallback

.Friday: ;older, younger
	disappear GOLDENRODUNDERGROUND_BARGAIN
	disappear GOLDENRODUNDERGROUND_BITTER
	appear GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	appear GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER
	endcallback

.Saturday: ;bargain(morn), bitter, older
	disappear GOLDENRODUNDERGROUND_BARGAIN
	appear GOLDENRODUNDERGROUND_BITTER
	appear GOLDENRODUNDERGROUND_OLDER_HAIRCUT_BROTHER
	disappear GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_BROTHER
	endcallback

; merchants
BargainMerchantScript:
	opentext
	checkflag ENGINE_GOLDENROD_UNDERGROUND_MERCHANT_CLOSED
	iftrue GoldenrodUndergroundScript_ShopClosed
	readvar VAR_WEEKDAY
	ifequal MONDAY, .CheckMorn
	ifequal TUESDAY, .CheckMorn
	ifequal WEDNESDAY, .CheckMorn
	ifequal THURSDAY, .CheckMorn
	sjump GoldenrodUndergroundScript_ShopClosed

.CheckMorn:
	checktime MORN
	iffalse GoldenrodUndergroundScript_ShopClosed
	pokemart MARTTYPE_BARGAIN, 0
	closetext
	end

BitterMerchantScript:
	opentext
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .Open
	ifequal SATURDAY, .Open
	sjump GoldenrodUndergroundScript_ShopClosed

.Open:
	pokemart MARTTYPE_BITTER, MART_UNDERGROUND
	closetext
	end

OlderHaircutBrotherScript:
	opentext
	readvar VAR_WEEKDAY
	ifequal MONDAY, GoldenrodUndergroundScript_ShopClosed
;	ifequal TUESDAY, .DoHaircut
;	ifequal THURSDAY, .DoHaircut
;	ifequal SATURDAY, .DoHaircut
;	sjump GoldenrodUndergroundScript_ShopClosed
;
;.DoHaircut:
	checkflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
	iftrue .AlreadyGotHaircut
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundOlderHaircutBrotherOfferHaircutText
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	writetext GoldenrodUndergroundOlderHaircutBrotherAskWhichMonText
	promptbutton
	special OlderHaircutBrother
	ifequal $0, .Refused
	ifequal $1, .Refused
	setflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
	ifequal $2, .two
	ifequal $3, .three
	sjump .else

.two
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then

.three
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then

.else
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
;	sjump .then
	; fallthrough

.then
	takemoney YOUR_MONEY, GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundOlderHaircutBrotherWatchItBecomeBeautifulText
	waitbutton
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext GoldenrodUndergroundOlderHaircutBrotherAllDoneText
	waitbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue EitherHaircutBrotherScript_SlightlyHappier
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue EitherHaircutBrotherScript_Happier
	sjump EitherHaircutBrotherScript_MuchHappier

.Refused:
	writetext GoldenrodUndergroundOlderHaircutBrotherThatsAShameText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext GoldenrodUndergroundOlderHaircutBrotherYoullNeedMoreMoneyText
	waitbutton
	closetext
	end

.AlreadyGotHaircut:
	writetext GoldenrodUndergroundOlderHaircutBrotherOneHaircutADayText
	waitbutton
	closetext
	end

GoldenrodUndergroundOlderHaircutBrotherOfferHaircutText:
	text "Welcome to my"
	line "#MON SALON!"

;	para "I'm the older and"
;	line "better of the two"
;	cont "HAIRCUT BROTHERS."
;
	para "I can make your"
	line "#MON beautiful"
	cont "for just ¥300."

	para "Would you like me"
	line "to do that?"
	done

GoldenrodUndergroundOlderHaircutBrotherAskWhichMonText:
	text "Which #MON"
	line "should I work on?"
	done

GoldenrodUndergroundOlderHaircutBrotherWatchItBecomeBeautifulText:
	text "OK! Watch it"
	line "become beautiful!"
	done

GoldenrodUndergroundOlderHaircutBrotherAllDoneText:
	text "There! All done!"
	done

GoldenrodUndergroundOlderHaircutBrotherThatsAShameText:
	text "Is that right?"
	line "That's a shame!"
	done

GoldenrodUndergroundOlderHaircutBrotherYoullNeedMoreMoneyText:
	text "You'll need more"
	line "money than that."
	done

GoldenrodUndergroundOlderHaircutBrotherOneHaircutADayText:
;	text "I do only one"
;	line "haircut a day. I'm"
;	cont "done for today."
;	done
	text "I'm done giving"
	line "haricuts today."
	
	para "Please come back"
	line "another day!"
	done

YoungerHaircutBrotherScript:
;	opentext
	readvar VAR_WEEKDAY
	ifequal MONDAY, GoldenrodUndergroundScript_ShopClosed
;	ifequal SUNDAY, .DoHaircut
;	ifequal WEDNESDAY, .DoHaircut
;	ifequal FRIDAY, .DoHaircut
;	sjump GoldenrodUndergroundScript_ShopClosed
;
	jumptextfaceplayer GoldenrodUndergroundYoungerHaircutBrotherText
GoldenrodUndergroundYoungerHaircutBrotherText:
	text "Hi there!"

	para "My big brother is"
	line "good at haircuts!"

	para "He gives haircuts"
	line "to #MON!"

	para "I'm going to learn"
	line "to give haircuts"
	cont "to #MON too!"
	done
;
;.DoHaircut:
;	checkflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
;	iftrue .AlreadyGotHaircut
;	special PlaceMoneyTopRight
;	writetext GoldenrodUndergroundYoungerHaircutBrotherOfferHaircutText
;	yesorno
;	iffalse .Refused
;	checkmoney YOUR_MONEY, GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_PRICE
;	ifequal HAVE_LESS, .NotEnoughMoney
;	writetext GoldenrodUndergroundYoungerHaircutBrotherAskWhichMonText
;	promptbutton
;	special YoungerHaircutBrother
;	ifequal $0, .Refused
;	ifequal $1, .Refused
;	setflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
;	ifequal $2, .two
;	ifequal $3, .three
;	sjump .else
;
;.two
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
;	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
;	sjump .then
;
;.three
;	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
;	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
;	sjump .then
;
;.else
;	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
;;	sjump .then
;	; fallthrough
;
;.then
;	takemoney YOUR_MONEY, GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_PRICE
;	special PlaceMoneyTopRight
;	writetext GoldenrodUndergroundYoungerHaircutBrotherIllMakeItLookCoolText
;	waitbutton
;	closetext
;	special FadeOutPalettes
;	playmusic MUSIC_HEAL
;	pause 60
;	special FadeInPalettes
;	special RestartMapMusic
;	opentext
;	writetext GoldenrodUndergroundYoungerHaircutBrotherAllDoneText
;	waitbutton
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	iftrue EitherHaircutBrotherScript_SlightlyHappier
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
;	iftrue EitherHaircutBrotherScript_Happier
;	sjump EitherHaircutBrotherScript_MuchHappier
;
;.Refused:
;	writetext GoldenrodUndergroundYoungerHaircutBrotherHowDisappointingText
;	waitbutton
;	closetext
;	end
;
;.NotEnoughMoney:
;	writetext GoldenrodUndergroundYoungerHaircutBrotherShortOnFundsText
;	waitbutton
;	closetext
;	end
;
;.AlreadyGotHaircut:
;	writetext GoldenrodUndergroundYoungerHaircutBrotherOneHaircutADayText
;	waitbutton
;	closetext
;	end
;
;GoldenrodUndergroundYoungerHaircutBrotherOfferHaircutText:
;	text "Welcome to the"
;	line "#MON SALON!"
;
;	para "I'm the younger"
;	line "and less expen-"
;	cont "sive of the two"
;	roll "HAIRCUT BROTHERS."
;
;	para "I'll spiff up your"
;	line "#MON for just"
;	cont "¥300."
;
;	para "So? How about it?"
;	done
;
;GoldenrodUndergroundYoungerHaircutBrotherAskWhichMonText:
;	text "OK, which #MON"
;	line "should I do?"
;	done
;
;GoldenrodUndergroundYoungerHaircutBrotherIllMakeItLookCoolText:
;	text "OK! I'll make it"
;	line "look cool!"
;	done
;
;GoldenrodUndergroundYoungerHaircutBrotherAllDoneText:
;	text "There we go!"
;	line "All done!"
;	done
;
;GoldenrodUndergroundYoungerHaircutBrotherHowDisappointingText:
;	text "No? "
;	line "How disappointing!"
;	done
;
;GoldenrodUndergroundYoungerHaircutBrotherShortOnFundsText:
;	text "You're a little"
;	line "short on funds."
;	done
;
;GoldenrodUndergroundYoungerHaircutBrotherOneHaircutADayText:
;	text "I can do only one"
;	line "haircut a day."
;
;	para "Sorry, but I'm all"
;	line "done for today."
;	done

EitherHaircutBrotherScript_SlightlyHappier:
	writetext HaircutBrosText_SlightlyHappier
	special PlayCurMonCry
	waitbutton
	closetext
	end

HaircutBrosText_SlightlyHappier:
	text_ram wStringBuffer3
	text " looks a"
	line "little happier."
	done

EitherHaircutBrotherScript_Happier:
	writetext HaircutBrosText_Happier
	special PlayCurMonCry
	waitbutton
	closetext
	end

HaircutBrosText_Happier:
	text_ram wStringBuffer3
	text " looks"
	line "happy."
	done

EitherHaircutBrotherScript_MuchHappier:
	writetext HaircutBrosText_MuchHappier
	special PlayCurMonCry
	waitbutton
	closetext
	end

HaircutBrosText_MuchHappier:
	text_ram wStringBuffer3
	text " looks"
	line "delighted!"
	done

GoldenrodUndergroundScript_ShopClosed:
	writetext GoldenrodUndergroundWeAreNotOpenTodayText
	waitbutton
	closetext
	end

GoldenrodUndergroundWeAreNotOpenTodayText:
	text "We're not open"
	line "today."
	done

;TrainerSupernerdEric:
;	trainer SUPER_NERD, ERIC, EVENT_BEAT_SUPER_NERD_ERIC, SupernerdEricSeenText, SupernerdEricBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext SupernerdEricAfterBattleText
;	waitbutton
;	closetext
;	end

;SupernerdEricSeenText:
;	text "I got booted out"
;	line "of the GAME COR-"
;	cont "NER."

;	para "I was trying to"
;	line "cheat using my"
;	cont "#MON…"
;	done

;SupernerdEricBeatenText:
;	text "…Grumble…"
;	done

;SupernerdEricAfterBattleText:
;	text "I guess I have to"
;	line "do things fair and"
;	cont "square…"
;	done

;TrainerSupernerdTeru:
;	trainer SUPER_NERD, TERU, EVENT_BEAT_SUPER_NERD_TERU, SupernerdTeruSeenText, SupernerdTeruBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext SupernerdTeruAfterBattleText
;	waitbutton
;	closetext
;	end

;SupernerdTeruSeenText:
;	text "Do you consider"
;	line "type alignments in"
;	cont "battle?"

;	para "If you know your"
;	line "type advantages,"

;	para "you'll do better"
;	line "in battle."
;	done

;SupernerdTeruBeatenText:
;	text "Ow, ow, ow!"
;	done

;SupernerdTeruAfterBattleText:
;	text "I know my #MON"
;	line "type alignments."

;	para "But I only use one"
;	line "type of #MON."
;	done

;TrainerPokemaniacIssac:
;	trainer POKEMANIAC, ISSAC, EVENT_BEAT_POKEMANIAC_ISSAC, PokemaniacIssacSeenText, PokemaniacIssacBeatenText, 0, .Script
;
;.Script:
;	endifjustbattled
;	opentext
;	writetext PokemaniacIssacAfterBattleText
;	waitbutton
;	closetext
;	end

;PokemaniacIssacSeenText:
;	text "My #MON just"
;	line "got a haircut!"

;	para "I'll show you how"
;	line "strong it is!"
;	done

;PokemaniacIssacBeatenText:
;	text "Aiyeeee!"
;	done

;PokemaniacIssacAfterBattleText:
;	text "Your #MON will"
;	line "like you more if"

;	para "you give them"
;	line "haircuts."
;	done

;TrainerPokemaniacDonald:
;	trainer POKEMANIAC, DONALD, EVENT_BEAT_POKEMANIAC_DONALD, PokemaniacDonaldSeenText, PokemaniacDonaldBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext PokemaniacDonaldAfterBattleText
;	waitbutton
;	closetext
;	end

;PokemaniacDonaldSeenText:
;	text "I think you have"
;	line "some rare #MON"
;	cont "with you."

;	para "Let me see them!"
;	done

;PokemaniacDonaldBeatenText:
;	text "Gaah! I lost!"
;	line "That makes me mad!"
;	done

;PokemaniacDonaldAfterBattleText:
;	text "Are you making a"
;	line "#DEX? Here's a"
;	cont "hot tip."

;	para "The HIKER on ROUTE"
;	line "33, ANTHONY, is a"
;	cont "good guy."

;	para "He'll phone you if"
;	line "he sees any rare"
;	cont "#MON."
;	done

BasementDoorScript::
	jumptext GoldenrodUndergroundTheDoorsLockedText
;	opentext
;	checkevent EVENT_USED_BASEMENT_KEY
;	iftrue .Open
;	checkitem LIFT_KEY ; 83 ; BASEMENT_KEY
;	iftrue .Unlock
;	writetext GoldenrodUndergroundTheDoorsLockedText
;	waitbutton
;	closetext
;	end
;
;.Unlock:
;	playsound SFX_TRANSACTION
;	writetext GoldenrodUndergroundBasementKeyOpenedDoorText
;	waitbutton
;	closetext
;	changeblock 18, 6, $07 ; unlocked door
;	reloadmappart
;	closetext
;	setevent EVENT_USED_BASEMENT_KEY
;	end
;
;.Open:
;	writetext GoldenrodUndergroundTheDoorIsOpenText
;	waitbutton
;	closetext
;	end

GoldenrodUndergroundTheDoorsLockedText:
	text "The door's locked…"
	done

GoldenrodUndergroundBasementKeyOpenedDoorText:
	text "The BASEMENT KEY"
	line "opened the door."
	done

GoldenrodUndergroundTheDoorIsOpenText:
	text "The door is open."
	done

GoldenrodUndergroundNoEntrySign:
	jumptext GoldenrodUndergroundNoEntryText
GoldenrodUndergroundNoEntryText:
	text "NO ENTRY BEYOND"
	line "THIS POINT"
	done

GoldenrodUndergroundHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_GOLDENROD_UNDERGROUND_HIDDEN_MAX_POTION

GoldenrodUndergroundHiddenRevivalHerb:
	hiddenitem REVIVAL_HERB, EVENT_GOLDENROD_UNDERGROUND_HIDDEN_REVIVAL_HERB

GoldenrodUndergroundHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_GOLDENROD_UNDERGROUND_HIDDEN_RARE_CANDY

;GoldenrodUndergroundCoinCase:
;	itemball COIN_CASE

GoldenrodUnderground_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 21, GOLDENROD_CITY, 2 ;north room
	warp_event 14, 21, GOLDENROD_CITY, 2 ;north room
	warp_event 14, 17, GOLDENROD_UNDERGROUND, 7 ;north room stairs
	warp_event 13, 35, GOLDENROD_CITY, 13 ;south room
	warp_event 14, 35, GOLDENROD_CITY, 13 ;south room
	warp_event 14, 31, GOLDENROD_UNDERGROUND, 8 ;south room stairs
	warp_event  1,  2, GOLDENROD_UNDERGROUND, 3 ;north stairs
	warp_event  1, 34, GOLDENROD_UNDERGROUND, 6 ;north stairs
	warp_event 16,  6, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 1

	def_coord_events

	def_bg_events
	bg_event 16,  6, BGEVENT_READ, BasementDoorScript
	bg_event 17,  6, BGEVENT_READ, GoldenrodUndergroundNoEntrySign
	bg_event  5, 13, BGEVENT_ITEM, GoldenrodUndergroundHiddenMaxPotion
	bg_event  3, 18, BGEVENT_ITEM, GoldenrodUndergroundHiddenRevivalHerb
	bg_event 15,  8, BGEVENT_ITEM, GoldenrodUndergroundHiddenRareCandy

	def_object_events

	object_event  5, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BargainMerchantScript, EVENT_GOLDENROD_UNDERGROUND_GRAMPS
	object_event  5, 21, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BitterMerchantScript, EVENT_GOLDENROD_UNDERGROUND_GRANNY
	object_event  5, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlderHaircutBrotherScript, EVENT_GOLDENROD_UNDERGROUND_OLDER_HAIRCUT_BROTHER
	object_event  5, 16, SPRITE_BOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, YoungerHaircutBrotherScript, EVENT_GOLDENROD_UNDERGROUND_YOUNGER_HAIRCUT_BROTHER
;
;	object_event  5, 31, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdEric, -1
;	object_event  6,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSupernerdTeru, -1
;	object_event  3, 27, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacIssac, -1
;	object_event  2,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacDonald, -1
;
;	object_event  7, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundCoinCase, EVENT_GOLDENROD_UNDERGROUND_COIN_CASE
