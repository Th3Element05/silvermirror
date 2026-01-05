DEF CELADONGAMECORNER_CLEFAIRY_COINS     EQU 1000
DEF CELADONGAMECORNER_DRATINI_COINS      EQU 3000
DEF CELADONGAMECORNER_CHANSEY_COINS      EQU 5000
DEF CELADONGAMECORNER_PORYGON_COINS      EQU 7000
;
DEF CELADONGAMECORNER_ETHER_COINS        EQU 200
DEF CELADONGAMECORNER_PP_UP_COINS        EQU 300
DEF CELADONGAMECORNER_RARE_CANDY_COINS   EQU 400
DEF CELADONGAMECORNER_NUGGET_COINS       EQU 500
;
DEF CELADONGAMECORNER_FIRE_STONE_COINS   EQU 250
DEF CELADONGAMECORNER_THUNDERSTONE_COINS EQU 250
DEF CELADONGAMECORNER_WATER_STONE_COINS  EQU 250
DEF CELADONGAMECORNER_LEAF_STONE_COINS   EQU 250
;
DEF CELADONGAMECORNER_KINGS_ROCK_COINS   EQU 1000
DEF CELADONGAMECORNER_METAL_COAT_COINS   EQU 1000
DEF CELADONGAMECORNER_DRAGON_SCALE_COINS EQU 1000
DEF CELADONGAMECORNER_UP_GRADE_COINS     EQU 1000
;50 coins = $1000
;500 coins = $10000

	object_const_def

CeladonGameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

; pokemon prize vendor
CeladonPrizeRoomPokemonVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCaseScript
.loop
	writetext GameCornerPrize_WhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoomMonVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Clefairy
	ifequal 2, .Dratini
	ifequal 3, .Chansey
	ifequal 4, .Porygon
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Clefairy:
	checkcoins CELADONGAMECORNER_CLEFAIRY_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_NoRoomScript
	getmonname STRING_BUFFER_3, CLEFAIRY
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval CLEFAIRY
	special GameCornerPrizeMonCheckDex
	givepoke CLEFAIRY, 12
	takecoins CELADONGAMECORNER_CLEFAIRY_COINS
	sjump .loop

.Dratini:
	checkcoins CELADONGAMECORNER_DRATINI_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_NoRoomScript
	getmonname STRING_BUFFER_3, DRATINI
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval DRATINI
	special GameCornerPrizeMonCheckDex
	givepoke DRATINI, 24
	takecoins CELADONGAMECORNER_DRATINI_COINS
	sjump .loop

.Chansey:
	checkcoins CELADONGAMECORNER_CHANSEY_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_NoRoomScript
	getmonname STRING_BUFFER_3, CHANSEY
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval CHANSEY
	special GameCornerPrizeMonCheckDex
	givepoke CHANSEY, 18
	takecoins CELADONGAMECORNER_CHANSEY_COINS
	sjump .loop

.Porygon:
	checkcoins CELADONGAMECORNER_PORYGON_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_NoRoomScript
	getmonname STRING_BUFFER_3, PORYGON
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval PORYGON
	special GameCornerPrizeMonCheckDex
	givepoke PORYGON, 10
	takecoins CELADONGAMECORNER_PORYGON_COINS
	sjump .loop

CeladonPrizeRoomMonVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -1
	dw .MenuDataMons
	db 1 ; default option
.MenuDataMons:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "CLEFAIRY   {d:CELADONGAMECORNER_CLEFAIRY_COINS}@"
	db "DRATINI    {d:CELADONGAMECORNER_DRATINI_COINS}@"
	db "CHANSEY    {d:CELADONGAMECORNER_CHANSEY_COINS}@"
	db "PORYGON    {d:CELADONGAMECORNER_PORYGON_COINS}@"
	db "CANCEL@"
;
;CeladonPrizeRoomMonVendorMenuHeader:
;	db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 2, 17, TEXTBOX_Y - 1
;	dw .MenuData
;	db 1 ; default option
;.MenuData:
;	db STATICMENU_CURSOR ; flags
;	db 4 ; items
;	db "DRATINI    {d:CELADONGAMECORNER_DRATINI_COINS}@"
;	db "CHANSEY    {d:CELADONGAMECORNER_CHANSEY_COINS}@"
;	db "PORYGON    {d:CELADONGAMECORNER_PORYGON_COINS}@"
;	db "CANCEL@"

; item prize vendor
CeladonPrizeRoomItemVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCaseScript
	writetext GameCornerPrize_WhichPrizeText
CeladonPrizeRoomItemVendorLoop:
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoomItemVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Ether
	ifequal 2, .PPUp
	ifequal 3, .RareCandy
	ifequal 4, .Nugget
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Ether:
	checkcoins CELADONGAMECORNER_ETHER_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, ETHER
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem ETHER
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_ETHER_COINS
	sjump CeladonPrizeRoomItemVendor_FinishScript

.PPUp:
	checkcoins CELADONGAMECORNER_PP_UP_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, PP_UP
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem PP_UP
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_PP_UP_COINS
	sjump CeladonPrizeRoomItemVendor_FinishScript

.RareCandy:
	checkcoins CELADONGAMECORNER_RARE_CANDY_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, RARE_CANDY
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem RARE_CANDY
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_RARE_CANDY_COINS
	sjump CeladonPrizeRoomItemVendor_FinishScript

.Nugget:
	checkcoins CELADONGAMECORNER_NUGGET_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, NUGGET
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem NUGGET
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_NUGGET_COINS
	sjump CeladonPrizeRoomItemVendor_FinishScript

CeladonPrizeRoomItemVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -1
	dw .MenuDataItems
	db 1 ; default option
.MenuDataItems:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "ETHER      {d:CELADONGAMECORNER_ETHER_COINS}@"
	db "PP UP      {d:CELADONGAMECORNER_PP_UP_COINS}@"
	db "RARE CANDY {d:CELADONGAMECORNER_RARE_CANDY_COINS}@"
	db "NUGGET     {d:CELADONGAMECORNER_NUGGET_COINS}@"
	db "CANCEL@"

; stone prize vendor
CeladonPrizeRoomStoneVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCaseScript
	writetext GameCornerPrize_WhichPrizeText
CeladonPrizeRoomStoneVendorLoop:
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iftrue CeladonPrizeRoomEvolveVendorLoop
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoomStoneVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FireStone
	ifequal 2, .Thunderstone
	ifequal 3, .WaterStone
	ifequal 4, .LeafStone
	sjump CeladonPrizeRoom_CancelPurchaseScript

.FireStone:
	checkcoins CELADONGAMECORNER_FIRE_STONE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, FIRE_STONE
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem FIRE_STONE
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_FIRE_STONE_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

.Thunderstone:
	checkcoins CELADONGAMECORNER_THUNDERSTONE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, THUNDERSTONE
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem THUNDERSTONE
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_THUNDERSTONE_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

.WaterStone:
	checkcoins CELADONGAMECORNER_WATER_STONE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, WATER_STONE
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem WATER_STONE
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_WATER_STONE_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

.LeafStone:
	checkcoins CELADONGAMECORNER_LEAF_STONE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, LEAF_STONE
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem LEAF_STONE
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_LEAF_STONE_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

CeladonPrizeRoomStoneVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -1
	dw .MenuDataItems
	db 1 ; default option
.MenuDataItems:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "FIRE STONE   {d:CELADONGAMECORNER_FIRE_STONE_COINS}@"
	db "THUNDERSTONE {d:CELADONGAMECORNER_THUNDERSTONE_COINS}@"
	db "WATER STONE  {d:CELADONGAMECORNER_WATER_STONE_COINS}@"
	db "LEAF STONE   {d:CELADONGAMECORNER_LEAF_STONE_COINS}@"
	db "CANCEL@"

;CeladonPrizeRoomEvolveVendor:
;	faceplayer
;	opentext
;	writetext GameCornerPrize_IntroText
;	waitbutton
;	checkitem COIN_CASE
;	iffalse CeladonPrizeRoom_NoCoinCaseScript
;	writetext GameCornerPrize_WhichPrizeText
CeladonPrizeRoomEvolveVendorLoop:
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoomEvolveVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .KingsRock
	ifequal 2, .MetalCoat
	ifequal 3, .DragonScale
	ifequal 4, .UpGrade
	sjump CeladonPrizeRoom_CancelPurchaseScript

.KingsRock:
	checkcoins CELADONGAMECORNER_KINGS_ROCK_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, KINGS_ROCK
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem KINGS_ROCK
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_KINGS_ROCK_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

.MetalCoat:
	checkcoins CELADONGAMECORNER_METAL_COAT_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, METAL_COAT
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem METAL_COAT
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_METAL_COAT_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

.DragonScale:
	checkcoins CELADONGAMECORNER_DRAGON_SCALE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, DRAGON_SCALE
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem DRAGON_SCALE
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_DRAGON_SCALE_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

.UpGrade:
	checkcoins CELADONGAMECORNER_UP_GRADE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, UP_GRADE
	scall CeladonPrizeRoom_ConfirmPurchaseScript
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem UP_GRADE
	iffalse CeladonPrizeRoom_NoRoomScript
	takecoins CELADONGAMECORNER_UP_GRADE_COINS
	sjump CeladonPrizeRoomStoneVendor_FinishScript

CeladonPrizeRoomEvolveVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -1
	dw .MenuDataItems
	db 1 ; default option
.MenuDataItems:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "KING's ROCK  {d:CELADONGAMECORNER_KINGS_ROCK_COINS}@"
	db "METAL COAT   {d:CELADONGAMECORNER_METAL_COAT_COINS}@"
	db "DRAGON SCALE {d:CELADONGAMECORNER_DRAGON_SCALE_COINS}@"
	db "UP-GRADE     {d:CELADONGAMECORNER_UP_GRADE_COINS}@"
	db "CANCEL@"

; vendor universal scripts
CeladonPrizeRoomItemVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	sjump CeladonPrizeRoomItemVendorLoop

CeladonPrizeRoomStoneVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	sjump CeladonPrizeRoomStoneVendorLoop

CeladonPrizeRoom_NotEnoughCoinsScript:
	writetext GameCornerPrize_NotEnoughCoinsText
	waitbutton
	closetext
	end

CeladonPrizeRoom_NoRoomScript:
	writetext GameCornerPrize_NoRoomText
	waitbutton
	closetext
	end

CeladonPrizeRoom_ConfirmPurchaseScript:
	writetext GameCornerPrize_ConfirmPurchaseText
	yesorno
	end

CeladonPrizeRoom_CancelPurchaseScript:
	writetext GameCornerPrize_ComeAgainText
	waitbutton
	closetext
	end

CeladonPrizeRoom_NoCoinCaseScript:
	writetext GameCornerPrize_NoCoinCaseText
	waitbutton
	closetext
	end

; vendor texts
GameCornerPrize_IntroText::
	text "Welcome!"

	para "We exchange your"
	line "coins for fabulous"
	cont "prizes!"
	done

GameCornerPrize_WhichPrizeText::
	text "Which prize would"
	line "you like?"
	done

GameCornerPrize_NotEnoughCoinsText::
	text "You don't have"
	line "enough coins."
	done

GameCornerPrize_NoRoomText::
	text "You have no room"
	line "for it."
	done

GameCornerPrize_ConfirmPurchaseText::
	text "OK, so you wanted"
	line "a @"
	text_ram wStringBuffer3
	text "?"
	done

GameCornerPrize_HereYouGoText::
	text "Here you go!"
	done

GameCornerPrize_ComeAgainText::
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

GameCornerPrize_NoCoinCaseText::
	text "Oh? You don't have"
	line "a COIN CASE."
	done

; npc
CeladonPrizeRoomGentlemanScript:
	jumptextfaceplayer CeladonPrizeRoomGentlemanText
CeladonPrizeRoomGentlemanText:
	text "I want a PORYGON,"
	line "but I'm short by"
	cont "100 coins…"
	done
	
CeladonPrizeRoomPharmacistScript:
	jumptextfaceplayer CeladonPrizeRoomPharmacistText
CeladonPrizeRoomPharmacistText:
	text "I had a major"
	line "haul today!"
	done

CeladonGameCornerPrizeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, CELADON_CITY, 7
	warp_event  4,  5, CELADON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, CeladonPrizeRoomPokemonVendor
	bg_event  4,  1, BGEVENT_READ, CeladonPrizeRoomItemVendor
	bg_event  6,  1, BGEVENT_READ, CeladonPrizeRoomStoneVendor

	def_object_events
	object_event  0,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonPrizeRoomGentlemanScript, -1
	object_event  6,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPrizeRoomPharmacistScript, -1
