DEF GAMECORNER_EGG_COINS          EQU 5000
;50 coins = $1000
;500 coins = $10000

	object_const_def
;	const GOLDENRODGAMECORNER_MOVETUTOR

GoldenrodGameCorner_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_OBJECTS, GoldenrodGameCornerMoveTutorCallback
;
;GoldenrodGameCornerMoveTutorCallback:
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iffalse .finish
;	checkitem COIN_CASE
;	iffalse .move_tutor_inside
;	readvar VAR_WEEKDAY
;	ifequal WEDNESDAY, .move_tutor_outside
;	ifequal SATURDAY, .move_tutor_outside
;.move_tutor_inside
;	appear GOLDENRODGAMECORNER_MOVETUTOR
;	endcallback
;
;.move_tutor_outside
;	checkflag ENGINE_DAILY_MOVE_TUTOR
;	iftrue .finish
;	disappear GOLDENRODGAMECORNER_MOVETUTOR
;.finish
;	endcallback
;
;MoveTutorInsideScript:
;	faceplayer
;	opentext
;	writetext MoveTutorInsideText
;	waitbutton
;	closetext
;	turnobject LAST_TALKED, RIGHT
;	end
;
;MoveTutorInsideText:
;	text "Wahahah! The coins"
;	line "keep rolling in!"
;	done

GoldenrodGameCornerCoinVendorScript:
	jumpstd GameCornerCoinVendorScript

; egg vendor
GoldenrodGameCornerEggVendor:
	faceplayer
	opentext
	writetext GameCornerEggVendor_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCaseScript
	special DisplayCoinCaseBalance
	writetext GameCornerEggVendor_OfferText
	pause 15
	yesorno
	iffalse .NoThanks
	checkcoins GAMECORNER_EGG_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	playsound SFX_TRANSACTION
	takecoins GAMECORNER_EGG_COINS
	waitsfx
	special GiveOddEgg
	writetext GameCornerEggVendor_GotEggText
	playsound SFX_GET_EGG
	waitsfx
	promptbutton
	writetext GameCornerEggVendor_FinishText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

.NoThanks
	writetext GameCornerEggVendor_OfferStandsText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

GameCornerEggVendor_IntroText:
	text "Psst. You there."
	line "You got coins?"
	done

GameCornerEggVendor_OfferText:
	text "I've got some rare"
	line "#MON eggs, but"
	cont "they'll cost you."

	para "One rare egg for"
	line "{d:GAMECORNER_EGG_COINS} coins, deal?"
	done

GameCornerEggVendor_GotEggText:
	text "<PLAYER> received"
	line "the EGG!"
	done

GameCornerEggVendor_FinishText:
	text "I have more eggs,"
	line "if you have more"
	cont "coins."
	done

GameCornerEggVendor_OfferStandsText:
	text "Come back when you"
	line "change your mind."
	done


; npcs
GoldenrodGameCornerLuckySeatScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPharmacistText
	sjump GoldenrodGameCornerEndRightScript

GoldenrodGameCornerPharmacistText:
	text "I always play this"
	line "slot machine. It"
	cont "pays out more than"
	roll "others, I think."
	done

GoldenrodGameCornerPokefanM1Script:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPokefanM1Text
	sjump GoldenrodGameCornerEndLeftScript

GoldenrodGameCornerPokefanM1Text:
	text "I just love this"
	line "new slot machine."

	para "It's more of a"
	line "challenge than the"
	cont "ones in CELADON."
	done

GoldenrodGameCornerCooltrainerFScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerCooltrainerFText
	sjump GoldenrodGameCornerEndRightScript

GoldenrodGameCornerCooltrainerFText:
	text "I won't quit until"
	line "I win!"
	done

GoldenrodGameCornerCooltrainerMScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerCooltrainerMText
	sjump GoldenrodGameCornerEndLeftScript

GoldenrodGameCornerCooltrainerMText:
	text "Life is a gamble."
	line "I'm going to flip"
	cont "cards till I drop!"
	done

GoldenrodGameCornerPokefanFScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPokefanFText
	sjump GoldenrodGameCornerEndRightScript

GoldenrodGameCornerPokefanFText:
	text "Card flip…"

	para "I prefer it over"
	line "the slots because"
	cont "it's easier to"
	roll "figure the odds."

	para "But the payout is"
	line "much lower."
	done

GoldenrodGameCornerEndLeftScript:
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

GoldenrodGameCornerEndRightScript:
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end


; bg events
GoldenrodGameCornerSlotsMachineScript:
	random 2
	ifequal 0, GoldenrodGameCornerLuckySlotsMachineScript
	refreshscreen
	setval FALSE
	special SlotMachine
	closetext
	end

GoldenrodGameCornerLuckySlotsMachineScript:
	refreshscreen
	setval TRUE
	special SlotMachine
	closetext
	end

GoldenrodGameCornerCardFlipMachineScript:
	refreshscreen
	special CardFlip
	closetext
	end

GoldenrodGameCornerLeftTheirDrinkScript:
	jumptext GoldenrodGameCornerLeftTheirDrinkText
GoldenrodGameCornerLeftTheirDrinkText:
	text "Someone left their"
	line "drink."

	para "It smells sweet."
	done


GoldenrodGameCorner_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, GOLDENROD_CITY, 8
	warp_event  3, 13, GOLDENROD_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, GoldenrodGameCornerLuckySlotsMachineScript ;lucky text
	bg_event  6,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, GoldenrodGameCornerLuckySlotsMachineScript ;lucky text
	bg_event  6, 11, BGEVENT_RIGHT, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, GoldenrodGameCornerLuckySlotsMachineScript ;og lucky
;	bg_event  7,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  7, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
;	bg_event 12,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, GoldenrodGameCornerSlotsMachineScript
	bg_event 13,  6, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
;	bg_event 13,  7, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13,  8, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13,  9, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13, 10, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13, 11, BGEVENT_LEFT, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  6, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  7, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  8, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  9, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
;	bg_event 18, 10, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, GoldenrodGameCornerCardFlipMachineScript
	bg_event 12,  1, BGEVENT_LEFT, GoldenrodGameCornerLeftTheirDrinkScript

	def_object_events
;	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MoveTutorInsideScript, EVENT_GOLDENROD_GAME_CORNER_MOVE_TUTOR
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCoinVendorScript, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameCornerPrizesJohtoPokemonVendor, -1
	object_event 17,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GameCornerPrizesItemVendor, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameCornerPrizesEvolveVendor, -1
	object_event 10,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerEggVendor, -1
	object_event  5,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, MORN | DAY, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerLuckySeatScript, -1
	object_event  5, 10, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, EVE | NITE, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerLuckySeatScript, -1
	object_event  8,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanM1Script, -1
	object_event 11,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCooltrainerFScript, -1
	object_event 14,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCooltrainerMScript, -1
	object_event 17, 10, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanFScript, -1

; MORN | DAY | EVE | NITE