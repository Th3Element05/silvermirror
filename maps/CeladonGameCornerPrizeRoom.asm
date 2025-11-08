;DEF CELADONGAMECORNERPRIZEROOM_TM50_COINS     EQU 3300
;DEF CELADONGAMECORNERPRIZEROOM_TM23_COINS     EQU 5500
;DEF CELADONGAMECORNERPRIZEROOM_TM15_COINS     EQU 7700
DEF CELADONGAMECORNERPRIZEROOM_NUGGET_COINS     EQU 500
DEF CELADONGAMECORNERPRIZEROOM_PP_UP_COINS      EQU 500
DEF CELADONGAMECORNERPRIZEROOM_RARE_CANDY_COINS EQU 500
DEF CELADONGAMECORNERPRIZEROOM_ABRA_COINS       EQU 180
DEF CELADONGAMECORNERPRIZEROOM_PIKACHU_COINS    EQU 600
DEF CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS   EQU 1200
DEF CELADONGAMECORNERPRIZEROOM_DRATINI_COINS    EQU 3333
DEF CELADONGAMECORNERPRIZEROOM_CHANSEY_COINS    EQU 7777
DEF CELADONGAMECORNERPRIZEROOM_PORYGON_COINS    EQU 9000
;50 coins = $1000
;500 coins = $10000
;pp_up
;rare_candy
;nugget?

	object_const_def

CeladonGameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGameCornerPrizeRoomGentlemanScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomGentlemanText

CeladonGameCornerPrizeRoomPharmacistScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomPharmacistText

CeladonGameCornerPrizeRoomTMVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
	writetext CeladonPrizeRoom_AskWhichPrizeText
CeladonPrizeRoom_tmcounterloop:
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoom_TMMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Substitute
	ifequal 2, .Dragonbreath
	ifequal 3, .HyperBeam
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Substitute:
	checkitem TM_SUBSTITUTE
	iftrue CeladonPrizeRoom_alreadyhavetm
	checkcoins CELADONGAMECORNERPRIZEROOM_NUGGET_COINS ;CELADONGAMECORNERPRIZEROOM_TM50_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_SUBSTITUTE
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_SUBSTITUTE
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_NUGGET_COINS ;CELADONGAMECORNERPRIZEROOM_TM50_COINS
	sjump CeladonPrizeRoom_purchased

.Dragonbreath:
	checkitem TM_DRAGONBREATH
	iftrue CeladonPrizeRoom_alreadyhavetm
	checkcoins CELADONGAMECORNERPRIZEROOM_PP_UP_COINS ;CELADONGAMECORNERPRIZEROOM_TM23_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_DRAGONBREATH
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_DRAGONBREATH
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_PP_UP_COINS ;CELADONGAMECORNERPRIZEROOM_TM23_COINS
	sjump CeladonPrizeRoom_purchased

.HyperBeam:
	checkitem TM_HYPER_BEAM
	iftrue CeladonPrizeRoom_alreadyhavetm
	checkcoins CELADONGAMECORNERPRIZEROOM_RARE_CANDY_COINS ;CELADONGAMECORNERPRIZEROOM_TM15_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_HYPER_BEAM
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_HYPER_BEAM
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_RARE_CANDY_COINS ;CELADONGAMECORNERPRIZEROOM_TM15_COINS
	sjump CeladonPrizeRoom_purchased

CeladonPrizeRoom_askbuy:
	writetext CeladonPrizeRoom_ConfirmPurchaseText
	yesorno
	end

CeladonPrizeRoom_purchased:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	sjump CeladonPrizeRoom_tmcounterloop

CeladonPrizeRoom_alreadyhavetm:
	writetext CeladonPrizeRoom_AlreadyHaveTMText
	waitbutton
	sjump CeladonPrizeRoom_tmcounterloop

CeladonPrizeRoom_notenoughcoins:
	writetext CeladonPrizeRoom_NotEnoughCoinsText
	waitbutton
	closetext
	end

CeladonPrizeRoom_notenoughroom:
	writetext CeladonPrizeRoom_NotEnoughRoomText
	waitbutton
	closetext
	end

CeladonPrizeRoom_CancelPurchaseScript:
	writetext CeladonPrizeRoom_ComeAgainText
	waitbutton
	closetext
	end

CeladonPrizeRoom_NoCoinCase:
	writetext CeladonPrizeRoom_NoCoinCaseText
	waitbutton
	closetext
	end

CeladonPrizeRoom_TMMenuHeader:
;	db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 3, 19, TEXTBOX_Y - 2
;	dw .MenuData
;	db 1 ; default option

	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

;.MenuData:
;	db STATICMENU_CURSOR ; flags
;	db 4 ; items
;	db "TM50      {d:CELADONGAMECORNERPRIZEROOM_TM50_COINS}@"
;	db "TM23      {d:CELADONGAMECORNERPRIZEROOM_TM23_COINS}@"
;	db "TM15      {d:CELADONGAMECORNERPRIZEROOM_TM15_COINS}@"
;	db "CANCEL@"

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "NUGGET     {d:CELADONGAMECORNERPRIZEROOM_NUGGET_COINS}@"
	db "PP UP      {d:CELADONGAMECORNERPRIZEROOM_PP_UP_COINS}@"
	db "RARE CANDY {d:CELADONGAMECORNERPRIZEROOM_RARE_CANDY_COINS}@"
	db "CANCEL@"

CeladonGameCornerPrizeRoomPokemonVendor1:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
.loop
	writetext CeladonPrizeRoom_AskWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Abra
	ifequal 2, .Pikachu
	ifequal 3, .Clefairy
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Abra:
	checkcoins CELADONGAMECORNERPRIZEROOM_ABRA_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, ABRA
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval ABRA
	special GameCornerPrizeMonCheckDex
	givepoke ABRA, 8
	takecoins CELADONGAMECORNERPRIZEROOM_ABRA_COINS
	sjump .loop

.Pikachu:
	checkcoins CELADONGAMECORNERPRIZEROOM_PIKACHU_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, PIKACHU
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval PIKACHU
	special GameCornerPrizeMonCheckDex
	givepoke PIKACHU, 10
	takecoins CELADONGAMECORNERPRIZEROOM_PIKACHU_COINS
	sjump .loop

.Clefairy:
	checkcoins CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, CLEFAIRY
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval CLEFAIRY
	special GameCornerPrizeMonCheckDex
	givepoke CLEFAIRY, 12
	takecoins CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "ABRA       {d:CELADONGAMECORNERPRIZEROOM_ABRA_COINS}@"
	db "PIKACHU    {d:CELADONGAMECORNERPRIZEROOM_PIKACHU_COINS}@"
	db "CLEFAIRY   {d:CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS}@"
	db "CANCEL@"

CeladonGameCornerPrizeRoomPokemonVendor2:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
.loop
	writetext CeladonPrizeRoom_AskWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Dratini
	ifequal 2, .Chansey
	ifequal 3, .Porygon
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Dratini:
	checkcoins CELADONGAMECORNERPRIZEROOM_DRATINI_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, DRATINI
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval DRATINI
	special GameCornerPrizeMonCheckDex
	givepoke DRATINI, 24
	takecoins CELADONGAMECORNERPRIZEROOM_DRATINI_COINS
	sjump .loop

.Chansey:
	checkcoins CELADONGAMECORNERPRIZEROOM_CHANSEY_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, CHANSEY
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval CHANSEY
	special GameCornerPrizeMonCheckDex
	givepoke CHANSEY, 18
	takecoins CELADONGAMECORNERPRIZEROOM_CHANSEY_COINS
	sjump .loop

.Porygon:
	checkcoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, PORYGON
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval PORYGON
	special GameCornerPrizeMonCheckDex
	givepoke PORYGON, 10
	takecoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "DRATINI    {d:CELADONGAMECORNERPRIZEROOM_DRATINI_COINS}@"
	db "CHANSEY    {d:CELADONGAMECORNERPRIZEROOM_CHANSEY_COINS}@"
	db "PORYGON    {d:CELADONGAMECORNERPRIZEROOM_PORYGON_COINS}@"
	db "CANCEL@"

CeladonGameCornerPrizeRoomGentlemanText:
	text "I wanted PORYGON,"
	line "but I was short by"
	cont "100 coins…"
	done

CeladonGameCornerPrizeRoomPharmacistText:
	text "I had a major"
	line "haul today!"
	done

CeladonPrizeRoom_PrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "coins for fabulous"
	cont "prizes!"
	done

CeladonPrizeRoom_AskWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

CeladonPrizeRoom_ConfirmPurchaseText:
	text "OK, so you wanted"
	line "a @"
	text_ram wStringBuffer3
	text "?"
	done

CeladonPrizeRoom_HereYouGoText:
	text "Here you go!"
	done

CeladonPrizeRoom_AlreadyHaveTMText:
	text "You already have"
	line "that TM."
	done

CeladonPrizeRoom_NotEnoughCoinsText:
	text "You don't have"
	line "enough coins."
	done

CeladonPrizeRoom_NotEnoughRoomText:
	text "You have no room"
	line "for it."
	done

CeladonPrizeRoom_ComeAgainText:
	text "Oh. Please come"
	line "back with coins!"
	done

CeladonPrizeRoom_NoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

CeladonGameCornerPrizeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, CELADON_CITY, 7
	warp_event  4,  5, CELADON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomTMVendor
	bg_event  2,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomPokemonVendor1
	bg_event  4,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomPokemonVendor2

	def_object_events
	object_event  0,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomGentlemanScript, -1
	object_event  6,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomPharmacistScript, -1
