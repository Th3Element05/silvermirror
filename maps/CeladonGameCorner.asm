	object_const_def
	const CELADONGAMECORNER_ROCKET
;	const CELADONGAMECORNER_CLERK
;	const CELADONGAMECORNER_RECEPTIONIST
;	const CELADONGAMECORNER_POKEFAN_M
;	const CELADONGAMECORNER_BEAUTY
;	const CELADONGAMECORNER_FISHING_GURU
;	const CELADONGAMECORNER_POKEFAN_F
;	const CELADONGAMECORNER_GYM_GUIDE
;	const CELADONGAMECORNER_GRAMPS
;	const CELADONGAMECORNER_FISHER
;	const CELADONGAMECORNER_GENTLEMAN

CeladonGameCorner_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGameCornerClerkScript:
	jumpstd GameCornerCoinVendorScript

CeladonGameCornerReceptionistScript:
	jumptextfaceplayer CeladonGameCornerReceptionistText
CeladonGameCornerReceptionistText:
	text "Welcome!"

	para "You may exchange"
	line "your coins for"

	para "fabulous prizes"
	line "next door."
	done

CeladonGameCornerRocketScript:
; battle, run away after
	end



CeladonGameCornerPosterScript:
	jumptext CeladonGameCornerPosterText
CeladonGameCornerPosterText:
	text "Hey!"

	para "Underneath this"
	line "poster…"

	para "There's nothing!"
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
	text "The slot machines"
	line "are all state of"
	cont "the art."
	done

CeladonGameCornerBeautyScript:
;text
	end

CeladonGameCornerFishingGuruScript:
; 10 coins
	end

CeladonGameCornerPokefanFScript:
;text
	end

CeladonGymGuideScript:
;gym guide erika
	end

CeladonGameCornerGrampsScript:
;gambler text
	end

CeladonGameCornerFisherScript:
;20 coins
	end

CeladonGameCornerGentlemanScript:
;20 coins
	end

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



;CeladonGameCornerFisherScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_COINS_FROM_GAMBLER_AT_CELADON
;	iftrue .GotCoins
;	writetext CeladonGameCornerFisherText1
;	promptbutton
;	checkitem COIN_CASE
;	iffalse .NoCoinCase
;	checkcoins MAX_COINS - 1
;	ifequal HAVE_MORE, .FullCoinCase
;	getstring STRING_BUFFER_4, .coinname
;	scall .GiveCoins
;	givecoins 18
;	setevent EVENT_GOT_COINS_FROM_GAMBLER_AT_CELADON
;.GotCoins:
;	writetext CeladonGameCornerFisherText2
;	waitbutton
;	closetext
;	turnobject LAST_TALKED, LEFT
;	end
;
;.GiveCoins:
;	jumpstd ReceiveItemScript
;	end
;
;.coinname
;	db "COIN@"
;
;.NoCoinCase:
;	writetext CeladonGameCornerFisherNoCoinCaseText
;	waitbutton
;	closetext
;	turnobject LAST_TALKED, LEFT
;	end
;
;.FullCoinCase:
;	writetext CeladonGameCornerFisherFullCoinCaseText
;	waitbutton
;	closetext
;	turnobject LAST_TALKED, LEFT
;	end
;
;CeladonGameCornerFisherNoCoinCaseText:
;	text "Hey, you don't"
;	line "have a COIN CASE."
;
;	para "How am I supposed"
;	line "to give you any"
;	cont "coins, kid?"
;	done
;
;CeladonGameCornerFisherFullCoinCaseText:
;	text "Hey, your COIN"
;	line "CASE is full, kid."
;
;	para "You must be riding"
;	line "a winning streak"
;	cont "too."
;	done



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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	waitbutton
;	closetext
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
;	getstring STRING_BUFFER_4, CaladonGameCornerCoinName
;	scall .GiveCoins
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

;.GiveCoins:
;	jumpstd ReceiveItemScript
;	end

;CaladonGameCornerCoinName:
;	db "COIN@"

;CeladonGameCornerFoundCoinsText:
;	text "<PLAYER> found"
;	line "some coins!"
;	done

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

CeladonGameCorner_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 13, CELADON_CITY, 6
	warp_event 15, 13, CELADON_CITY, 6
	warp_event 17,  0, ROCKET_HIDEOUT_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  1,  6, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1,  7, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1,  8, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1,  9, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1, 10, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1, 11, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
	bg_event  6,  6, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  6,  7, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  6,  8, BGEVENT_READ, CeladonGameCornerOutOfOrderScript
	bg_event  6,  9, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  6, 10, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  6, 11, BGEVENT_RIGHT, CeladonGameCornerCardFlipScript
	bg_event  7,  6, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event  7,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event  7,  8, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event  7,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event  7, 10, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event  7, 11, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  6, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  8, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12, 10, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  6, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  8, BGEVENT_READ, CeladonGameCornerOutToLunchScript
	bg_event 13,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 13, 10, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 13, 11, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  6, BGEVENT_READ, CeladonGameCornerSomeonesKeysScript
	bg_event 18,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  8, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 18, 10, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event  9,  0, BGEVENT_READ, CeladonGameCornerPosterScript
;
	bg_event  0,  4, BGEVENT_IFNOTSET, CeladonGameCorner10Coins1
	bg_event  1, 12, BGEVENT_IFNOTSET, CeladonGameCorner10Coins2
	bg_event  3, 10, BGEVENT_IFNOTSET, CeladonGameCorner10Coins3
	bg_event  4,  8, BGEVENT_IFNOTSET, CeladonGameCorner10Coins4
	bg_event  9, 11, BGEVENT_IFNOTSET, CeladonGameCorner10Coins5
	bg_event 10, 12, BGEVENT_IFNOTSET, CeladonGameCorner10Coins6
	bg_event 12, 11, BGEVENT_IFNOTSET, CeladonGameCorner10Coins7
	bg_event 16, 10, BGEVENT_IFNOTSET, CeladonGameCorner10Coins8
	bg_event  3,  7, BGEVENT_IFNOTSET, CeladonGameCorner20Coins1
	bg_event  9,  8, BGEVENT_IFNOTSET, CeladonGameCorner20Coins2
	bg_event 11,  3, BGEVENT_IFNOTSET, CeladonGameCorner40Coins
	bg_event 15,  4, BGEVENT_IFNOTSET, CeladonGameCorner100Coins
	bg_event  0,  0, BGEVENT_IFNOTSET, CeladonGameCornerDebugCoins

;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_1
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_2
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_3
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_4
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_5
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_6
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_7
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_8
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_1
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_2
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_40
;	EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_100

	def_object_events
	object_event  9,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerRocketScript, -1
	object_event  5,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerClerkScript, -1
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerReceptionistScript, -1
	object_event  2,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPokefanMScript, -1
	object_event  2,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerBeautyScript, -1
	object_event  5,  7, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFishingGuruScript, -1
	object_event  8,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPokefanFScript, -1
	object_event  8, 10, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGymGuideScript, -1
	object_event 11, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGrampsScript, -1
	object_event 14,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, NITE, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFisherScript, -1
	object_event 17,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, DAY, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGentlemanScript, -1
