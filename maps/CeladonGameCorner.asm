	object_const_def
	const CELADONGAMECORNER_ROCKET

CeladonGameCorner_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .RocketHideoutOpenCallback

.RocketHideoutOpenCallback:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT
	iftrue .HideoutOpen
	endcallback

.HideoutOpen:
	changeblock 16, 0, $36 ; stairs
	endcallback

CeladonGameCornerClerkScript:
	jumpstd GameCornerCoinVendorScript

CeladonGameCornerReceptionistScript:
	jumptextfaceplayer CeladonGameCornerReceptionistText
CeladonGameCornerReceptionistText:
	text "Welcome!"

	para "You may exchange"
	line "your coins for"
	cont "fabulous prizes"
	cont "next door."
	done

TrainerRocketGruntM6:
	trainer GRUNTM, GRUNTM_6, EVENT_BEAT_GRUNTM_6, CeladonGameCornerRocketSeenText, CeladonGameCornerRocketBeatenText, 0, .Script
.Script:
	opentext
	writetext CeladonGameCornerRocketAfterBattleText
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal LEFT, .DontGoAround
	applymovement CELADONGAMECORNER_ROCKET, CeladonGameCornerRocketGoAroundMovement
.DontGoAround
	playsound SFX_RUN
	applymovement CELADONGAMECORNER_ROCKET, CeladonGameCornerRocketRunAwayMovement
	disappear CELADONGAMECORNER_ROCKET
	playsound SFX_ENTER_DOOR
	end

CeladonGameCornerRocketSeenText:
	text "I'm guarding this"
	line "poster!"
	cont "Go away, or else!"
	done

CeladonGameCornerRocketBeatenText:
	text "Dang!"
	done

CeladonGameCornerRocketAfterBattleText:
	text "Our hideout might"
	line "be discovered! I"
	cont "better tell BOSS!"
	done

CeladonGameCornerPosterScript:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT
	iftrue .AlreadyOpened
	opentext
	writetext CeladonGameCornerPosterText
	promptbutton
	closetext
	changeblock 16, 0, $36 ; stairs
	playsound SFX_PUSH_BUTTON
	waitsfx
	playsound SFX_ENTER_DOOR
	setevent EVENT_OPENED_ROCKET_HIDEOUT
.AlreadyOpened
	jumptext CeladonGameCornerSwitchText
	
CeladonGameCornerPosterText:
	text "Hey!"

	para "A switch behind"
	line "the poster!?"

	para "Let's push it!"
	done

CeladonGameCornerSwitchText:
	text "The switch opened"
	line "something!"
	done

CeladonGameCornerPokefanMScript:
	faceplayer
	opentext
	writetext CeladonGameCornerPokefanMText
	sjump CeladonGameCornerEndLeftScript
;	waitbutton
;	closetext
;	turnobject CELADONGAMECORNER_POKEFAN_M, LEFT
;	end

CeladonGameCornerPokefanMText:
	text "Keep this quiet."

	para "It's rumored that"
	line "this place is run"
	cont "by TEAM ROCKET."
	done

CeladonGameCornerBeautyScript:
	faceplayer
	opentext
	writetext CeladonGameCornerBeautyText
	sjump CeladonGameCornerEndLeftScript

CeladonGameCornerBeautyText:
	text "I think these"
	line "machines have"
	cont "different odds."
	done

CeladonGameCornerFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COINS_FROM_CELADON_FISHING_GURU
	iftrue .GotCoins
	writetext CeladonGameCornerFishingGuruCoinsText
	promptbutton
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	writetext CeladonGameCornerReceivedCoinsText
	givecoins 10
	setevent EVENT_GOT_COINS_FROM_CELADON_FISHING_GURU
	sjump CeladonGameCornerEndRightScript

.GotCoins:
	writetext CeladonGameCornerFishingGuruText
	sjump CeladonGameCornerEndRightScript

.NoCoinCase:
	writetext CeladonGameCornerForgotCoinCaseText
	sjump CeladonGameCornerEndRightScript

.FullCoinCase:
	writetext CeladonGameCornerFullCoinCaseText
	sjump CeladonGameCornerEndRightScript

CeladonGameCornerFishingGuruCoinsText:
	text "Kid, do you want"
	line "to play?"
	done

CeladonGameCornerFishingGuruText:
	text "Wins seem to come"
	line "and go."
	done

CeladonGameCornerPokefanFScript:
	faceplayer
	opentext
	writetext CeladonGameCornerPokefanFText
	sjump CeladonGameCornerEndLeftScript

CeladonGameCornerPokefanFText:
	text "I'm having a"
	line "wonderful time!"
	done

CeladonGameCornerGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ERIKA
	iftrue .BeatErika
	writetext CeladonGameCornerGymGuideText
	sjump CeladonGameCornerEndLeftScript
.BeatErika
	writetext CeladonGameCornerGymGuideAfterText
	sjump CeladonGameCornerEndLeftScript

CeladonGameCornerGymGuideText:
	text "Hey!"

	para "You have better"
	line "things to do,"
	cont "champ in making!"

	para "CELADON GYM's"
	line "LEADER is ERIKA!"
	cont "She uses grass-"
	cont "type #MON!"

	para "She might appear"
	line "docile, but don't"
	cont "be fooled!"
	done

CeladonGameCornerGymGuideAfterText:
	text "They offer rare"
	line "#MON that can"
	cont "be exchanged for"
	cont "your coins."

	para "But, I just can't"
	line "seem to win!"
	done

CeladonGameCornerGrampsScript:
	faceplayer
	opentext
	writetext CeladonGameCornerGrampsText
	sjump CeladonGameCornerEndRightScript

CeladonGameCornerGrampsText:
	text "Games are scary!"
	line "It's so easy to"
	cont "get hooked!"
	done

CeladonGameCornerFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COINS_FROM_CELADON_FISHER
	iftrue .GotCoins
	writetext CeladonGameCornerFisherCoinsText
	promptbutton
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	getstring STRING_BUFFER_4, CeladonGameCornerCoins20
	writetext CeladonGameCornerReceivedCoinsText
	givecoins 20
	setevent EVENT_GOT_COINS_FROM_CELADON_FISHER
	sjump CeladonGameCornerEndLeftScript

.GotCoins:
	writetext CeladonGameCornerFisherText
	sjump CeladonGameCornerEndLeftScript

.NoCoinCase:
	writetext CeladonGameCornerForgotCoinCaseText
	sjump CeladonGameCornerEndLeftScript

.FullCoinCase:
	writetext CeladonGameCornerFullCoinCaseText
	sjump CeladonGameCornerEndLeftScript

CeladonGameCornerFisherCoinsText:
	text "What's up? Want"
	line "some coins?"
	done

CeladonGameCornerFisherText:
	text "Darn! I need more"
	line "coins for the"
	cont "#MON I want!"
	done

CeladonGameCornerGentlemanScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COINS_FROM_CELADON_GENTLEMAN
	iftrue .GotCoins
	writetext CeladonGameCornerGentlemanCoinsText
	promptbutton
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	getstring STRING_BUFFER_4, CeladonGameCornerCoins20
	writetext CeladonGameCornerReceivedCoinsText
	givecoins 20
	setevent EVENT_GOT_COINS_FROM_CELADON_GENTLEMAN
	sjump CeladonGameCornerEndRightScript

.GotCoins:
	writetext CeladonGameCornerGentlemanText
	sjump CeladonGameCornerEndRightScript

.NoCoinCase:
	writetext CeladonGameCornerForgotCoinCaseText
	sjump CeladonGameCornerEndRightScript

.FullCoinCase:
	writetext CeladonGameCornerFullCoinCaseText
	sjump CeladonGameCornerEndRightScript

CeladonGameCornerGentlemanCoinsText:
	text "Hey, what? You're"
	line "throwing me off!"
	cont "Here are some"
	cont "coins, shoo!"
	done

CeladonGameCornerGentlemanText:
	text "The trick is to"
	line "watch the reels"
	cont "closely!"
	done

CeladonGameCornerEndLeftScript:
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

CeladonGameCornerEndRightScript:
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

CeladonGameCornerReceivedCoinsText:
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer4
	text " coins!"
	done

CeladonGameCornerForgotCoinCaseText:
	text "Oops! You don't"
	line "have a COIN CASE!"
	done

CeladonGameCornerFullCoinCaseText:
	text "You already have"
	line "enough of coins!"
	done

CeladonGameCornerLuckySlotMachineScript:
	random 6
	ifequal 0, CeladonGameCornerSlotMachineScript
	refreshscreen
	setval FALSE
	special SlotMachine
	closetext
	end

CeladonGameCornerSlotMachineScript:
	refreshscreen
	setval TRUE
	special SlotMachine
	closetext
	end

CeladonGameCornerCardFlipScript:
	refreshscreen
	special CardFlip
	closetext
	end

CeladonGameCornerOutOfOrderScript:
;	jumptext CeladonGameCornerOutOfOrderText
;CeladonGameCornerOutOfOrderText:
;	done
	end

CeladonGameCornerOutToLunchScript:
;	opentext
;	writetext CeladonGameCornerSodaCanText
;	waitbutton
	special SlotMachine
	closetext
	end

CeladonGameCornerSomeonesKeysScript:
;	opentext
;	writetext CeladonGameCornerSodaCanText
;	waitbutton
	special SlotMachine
	closetext
	end

CeladonGameCorner10Coins1:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_1, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_1
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner10Coins2:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_2, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_2
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner10Coins3:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_3, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_3
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner10Coins4:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_4, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_4
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner10Coins5:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_5, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_5
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner10Coins6:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_6, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_6
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner10Coins7:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_7, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_7
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner10Coins8:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_8, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins10
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 10
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_8
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner20Coins1:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_1, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins20
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 20
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_1
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner20Coins2:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_2, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins20
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 20
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_2
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner40Coins:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_40, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins40
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 40
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_40
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCorner100Coins:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_100, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins100
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 100
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_100
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCornerDebugCoins:
	conditional_event EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_100, .HiddenCoins
.HiddenCoins
	getstring STRING_BUFFER_4, CeladonGameCornerCoins100
	scall CeladonGameCornerFoundCoinsStdScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .End
	givecoins 9999
	setevent EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_100
.End
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

CeladonGameCornerCoins10:
	db "10@"

CeladonGameCornerCoins20:
	db "20@"

CeladonGameCornerCoins40:
	db "40@"

CeladonGameCornerCoins100:
	db "100@"

CeladonGameCornerFoundCoinsStdScript:
	opentext
	writetext CeladonGameCornerFoundCoinsStdText
	promptbutton
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	writetext CeladonGameCornerGotCoinsText
	playsound SFX_ITEM
	waitsfx
	waitbutton
	closetext
	end

.NoCoinCase:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	writetext CeladonGameCornerNoCoinCaseText
	waitbutton
	closetext
	end

.FullCoinCase:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	writetext CeladonGameCornerCoinCaseFullText
	waitbutton
	closetext
	end

CeladonGameCornerGotCoinsText:
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer4
	text " coins!"
	done

CeladonGameCornerFoundCoinsStdText:
	text "There are some"
	line "coins here!"
	done

CeladonGameCornerNoCoinCaseText:
	text "But <PLAYER>"
	line "doesn't have a"
	cont "COIN CASE."
	done

CeladonGameCornerCoinCaseFullText:
	text "But <PLAYER>'s"
	line "COIN CASE is full!"
	done

CeladonGameCornerRocketGoAroundMovement:
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	big_step UP
	step_end

CeladonGameCornerRocketRunAwayMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

; itemfinder spoofs
CeladonGameCorner10Coins1I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_1
CeladonGameCorner10Coins2I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_2
CeladonGameCorner10Coins3I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_3
CeladonGameCorner10Coins4I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_4
CeladonGameCorner10Coins5I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_5
CeladonGameCorner10Coins6I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_6
CeladonGameCorner10Coins7I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_7
CeladonGameCorner10Coins8I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_8
CeladonGameCorner20Coins1I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_1
CeladonGameCorner20Coins2I:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_2
CeladonGameCorner40CoinsI:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_40
CeladonGameCorner100CoinsI:
	hiddenitem ORAN_BERRY, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_100

CeladonGameCorner_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 13, CELADON_CITY, 6
	warp_event 15, 13, CELADON_CITY, 6
	warp_event 17,  0, ROCKET_HIDEOUT_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  9,  0, BGEVENT_READ, CeladonGameCornerPosterScript
;
;	bg_event  1,  6, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
	bg_event  1,  7, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
	bg_event  1,  8, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
;	bg_event  1,  9, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
	bg_event  1, 10, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
	bg_event  1, 11, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
	bg_event  6,  6, BGEVENT_RIGHT, CeladonGameCornerCardFlipScript
;	bg_event  6,  7, BGEVENT_RIGHT, CeladonGameCornerCardFlipScript
	bg_event  6,  8, BGEVENT_RIGHT, CeladonGameCornerOutOfOrderScript ; Out of Order
	bg_event  6,  9, BGEVENT_RIGHT, CeladonGameCornerCardFlipScript
	bg_event  6, 10, BGEVENT_RIGHT, CeladonGameCornerCardFlipScript
	bg_event  6, 11, BGEVENT_RIGHT, CeladonGameCornerCardFlipScript
	bg_event  7,  6, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
;	bg_event  7,  7, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event  7,  8, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event  7,  9, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
;	bg_event  7, 10, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event  7, 11, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  6, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  7, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  8, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  9, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 12, 10, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
;	bg_event 12, 11, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  6, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
;	bg_event 13,  7, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  8, BGEVENT_LEFT, CeladonGameCornerOutToLunchScript ; Out to Lunch
	bg_event 13,  9, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 13, 10, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 13, 11, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  6, BGEVENT_RIGHT, CeladonGameCornerSomeonesKeysScript ; Someones Keys
	bg_event 18,  7, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  8, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
;	bg_event 18,  9, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 18, 10, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
;
	bg_event  0,  4, BGEVENT_IFNOTSET, CeladonGameCorner10Coins1
	bg_event  0,  4, BGEVENT_ITEM, CeladonGameCorner10Coins1I
	bg_event  1, 12, BGEVENT_IFNOTSET, CeladonGameCorner10Coins2
	bg_event  1, 12, BGEVENT_ITEM, CeladonGameCorner10Coins2I
	bg_event  3, 10, BGEVENT_IFNOTSET, CeladonGameCorner10Coins3
	bg_event  3, 10, BGEVENT_ITEM, CeladonGameCorner10Coins3I
	bg_event  4,  8, BGEVENT_IFNOTSET, CeladonGameCorner10Coins4
	bg_event  4,  8, BGEVENT_ITEM, CeladonGameCorner10Coins4I
	bg_event  9, 11, BGEVENT_IFNOTSET, CeladonGameCorner10Coins5
	bg_event  9, 11, BGEVENT_ITEM, CeladonGameCorner10Coins5I
	bg_event 10, 12, BGEVENT_IFNOTSET, CeladonGameCorner10Coins6
	bg_event 10, 12, BGEVENT_ITEM, CeladonGameCorner10Coins6I
	bg_event 12, 11, BGEVENT_IFNOTSET, CeladonGameCorner10Coins7
	bg_event 12, 11, BGEVENT_ITEM, CeladonGameCorner10Coins7I
	bg_event 16, 10, BGEVENT_IFNOTSET, CeladonGameCorner10Coins8
	bg_event 16, 10, BGEVENT_ITEM, CeladonGameCorner10Coins8I
	bg_event  3,  7, BGEVENT_IFNOTSET, CeladonGameCorner20Coins1
	bg_event  3,  7, BGEVENT_ITEM, CeladonGameCorner20Coins1I
	bg_event  9,  8, BGEVENT_IFNOTSET, CeladonGameCorner20Coins2
	bg_event  9,  8, BGEVENT_ITEM, CeladonGameCorner20Coins2I
	bg_event 11,  3, BGEVENT_IFNOTSET, CeladonGameCorner40Coins
	bg_event 11,  3, BGEVENT_ITEM, CeladonGameCorner40CoinsI
	bg_event 15,  4, BGEVENT_IFNOTSET, CeladonGameCorner100Coins
	bg_event 15,  4, BGEVENT_ITEM, CeladonGameCorner100CoinsI
	bg_event  0,  0, BGEVENT_IFNOTSET, CeladonGameCornerDebugCoins

	def_object_events
	object_event  9,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketGruntM6, EVENT_BEAT_GRUNTM_6
	object_event  5,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerClerkScript, -1
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerReceptionistScript, -1
	object_event  2,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPokefanMScript, -1
	object_event  2,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerBeautyScript, -1
	object_event  5,  7, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFishingGuruScript, -1
	object_event  8,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPokefanFScript, -1
	object_event  8, 10, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGymGuideScript, -1
	object_event 11, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGrampsScript, -1
	object_event 14,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFisherScript, -1
	object_event 17,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGentlemanScript, -1
; NITE, DAY