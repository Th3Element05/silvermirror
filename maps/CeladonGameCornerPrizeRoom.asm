DEF GAMECORNER_CLEFAIRY_COINS     EQU 1000
DEF GAMECORNER_DRATINI_COINS      EQU 2000
DEF GAMECORNER_CHANSEY_COINS      EQU 3000
DEF GAMECORNER_PORYGON_COINS      EQU 4000
;
DEF GAMECORNER_DUNSPARCE_COINS    EQU 1000
DEF GAMECORNER_MURKROW_COINS      EQU 2000
DEF GAMECORNER_SLUGMA_COINS       EQU 3000
DEF GAMECORNER_LARVITAR_COINS     EQU 4000
;
DEF GAMECORNER_ETHER_COINS        EQU 200
DEF GAMECORNER_PP_UP_COINS        EQU 300
DEF GAMECORNER_RARE_CANDY_COINS   EQU 400
DEF GAMECORNER_NUGGET_COINS       EQU 500
;
;DEF GAMECORNER_FIRE_STONE_COINS   EQU 250
;DEF GAMECORNER_THUNDERSTONE_COINS EQU 250
;DEF GAMECORNER_WATER_STONE_COINS  EQU 250
;DEF GAMECORNER_LEAF_STONE_COINS   EQU 250
DEF GAMECORNER_EVO_STONE_COINS    EQU 250
;
;DEF GAMECORNER_KINGS_ROCK_COINS   EQU 1000
;DEF GAMECORNER_METAL_COAT_COINS   EQU 1000
;DEF GAMECORNER_DRAGON_SCALE_COINS EQU 1000
;DEF GAMECORNER_RAZOR_CLAW_COINS   EQU 1000
;DEF GAMECORNER_RAZOR_FANG_COINS   EQU 1000
DEF GAMECORNER_EVO_ITEM_COINS     EQU 1000
;DEF GAMECORNER_SUN_STONE_COINS    EQU 1000
;DEF GAMECORNER_DUSK_STONE_COINS   EQU 1000
;DEF GAMECORNER_UP_GRADE_COINS     EQU 1000
;
;50 coins = $1000
;500 coins = $10000

	object_const_def

CeladonGameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

; kanto pokemon prize vendor
GameCornerPrizesKantoPokemonVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCaseScript
.loop
	writetext GameCornerPrize_WhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu GameCornerPrizesKantoMonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Clefairy
	ifequal 2, .Dratini
	ifequal 3, .Chansey
	ifequal 4, .Porygon
	sjump GameCorner_CancelPurchaseScript

.Clefairy:
	checkcoins GAMECORNER_CLEFAIRY_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, CLEFAIRY
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval CLEFAIRY
	special GameCornerPrizeMonCheckDex
	givepoke CLEFAIRY, 12
	takecoins GAMECORNER_CLEFAIRY_COINS
	sjump .loop

.Dratini:
	checkcoins GAMECORNER_DRATINI_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, DRATINI
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval DRATINI
	special GameCornerPrizeMonCheckDex
	givepoke DRATINI, 24
	takecoins GAMECORNER_DRATINI_COINS
	sjump .loop

.Chansey:
	checkcoins GAMECORNER_CHANSEY_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, CHANSEY
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval CHANSEY
	special GameCornerPrizeMonCheckDex
	givepoke CHANSEY, 18
	takecoins GAMECORNER_CHANSEY_COINS
	sjump .loop

.Porygon:
	checkcoins GAMECORNER_PORYGON_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, PORYGON
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval PORYGON
	special GameCornerPrizeMonCheckDex
	givepoke PORYGON, 10
	takecoins GAMECORNER_PORYGON_COINS
	sjump .loop

GameCornerPrizesKantoMonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y ;- -1
	dw .MenuDataKantoMons
	db 1 ; default option
.MenuDataKantoMons:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "CLEFAIRY     {d:GAMECORNER_CLEFAIRY_COINS}@"
	db "DRATINI      {d:GAMECORNER_DRATINI_COINS}@"
	db "CHANSEY      {d:GAMECORNER_CHANSEY_COINS}@"
	db "PORYGON      {d:GAMECORNER_PORYGON_COINS}@"
;	db "CANCEL@"

; johto pokemon prize vendor
GameCornerPrizesJohtoPokemonVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCaseScript
.loop
	writetext GameCornerPrize_WhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu GameCornerPrizesJohtoMonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Dunsparce
	ifequal 2, .Murkrow
	ifequal 3, .Slugma
	ifequal 4, .Larvitar
	sjump GameCorner_CancelPurchaseScript

.Dunsparce:
	checkcoins GAMECORNER_DUNSPARCE_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, DUNSPARCE
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval DUNSPARCE
	special GameCornerPrizeMonCheckDex
	givepoke DUNSPARCE, 10
	takecoins GAMECORNER_CLEFAIRY_COINS
	sjump .loop

.Murkrow:
	checkcoins GAMECORNER_MURKROW_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, MURKROW
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval MURKROW
	special GameCornerPrizeMonCheckDex
	givepoke DRATINI, 18
	takecoins GAMECORNER_MURKROW_COINS
	sjump .loop

.Slugma:
	checkcoins GAMECORNER_SLUGMA_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, SLUGMA
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval SLUGMA
	special GameCornerPrizeMonCheckDex
	givepoke CHANSEY, 24
	takecoins GAMECORNER_SLUGMA_COINS
	sjump .loop

.Larvitar:
	checkcoins GAMECORNER_LARVITAR_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, LARVITAR
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	setval LARVITAR
	special GameCornerPrizeMonCheckDex
	givepoke PORYGON, 10
	takecoins GAMECORNER_LARVITAR_COINS
	sjump .loop

GameCornerPrizesJohtoMonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y ;- -1
	dw .MenuDataJohtoMons
	db 1 ; default option
.MenuDataJohtoMons:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "DUNSPARCE    {d:GAMECORNER_DUNSPARCE_COINS}@"
	db "MURKROW      {d:GAMECORNER_MURKROW_COINS}@"
	db "SLUGMA       {d:GAMECORNER_SLUGMA_COINS}@"
	db "LARVITAR     {d:GAMECORNER_LARVITAR_COINS}@"
;	db "CANCEL@"

; item prize vendor
GameCornerPrizesItemVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCaseScript
	writetext GameCornerPrize_WhichPrizeText
GameCornerPrizesItemVendorLoop:
	special DisplayCoinCaseBalance
	loadmenu GameCornerPrizesItemMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Ether
	ifequal 2, .PPUp
	ifequal 3, .RareCandy
	ifequal 4, .Nugget
	sjump GameCorner_CancelPurchaseScript

.Ether:
	checkcoins GAMECORNER_ETHER_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, ETHER
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem ETHER
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_ETHER_COINS
	sjump GameCornerPrizesItemVendor_FinishScript

.PPUp:
	checkcoins GAMECORNER_PP_UP_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, PP_UP
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem PP_UP
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_PP_UP_COINS
	sjump GameCornerPrizesItemVendor_FinishScript

.RareCandy:
	checkcoins GAMECORNER_RARE_CANDY_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, RARE_CANDY
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem RARE_CANDY
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_RARE_CANDY_COINS
	sjump GameCornerPrizesItemVendor_FinishScript

.Nugget:
	checkcoins GAMECORNER_NUGGET_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, NUGGET
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem NUGGET
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_NUGGET_COINS
	sjump GameCornerPrizesItemVendor_FinishScript

GameCornerPrizesItemMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y ;- -1
	dw .MenuDataItems
	db 1 ; default option
.MenuDataItems:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "ETHER        {d:GAMECORNER_ETHER_COINS}@"
	db "PP UP        {d:GAMECORNER_PP_UP_COINS}@"
	db "RARE CANDY   {d:GAMECORNER_RARE_CANDY_COINS}@"
	db "NUGGET       {d:GAMECORNER_NUGGET_COINS}@"
;	db "CANCEL@"

; stone prize vendor
GameCornerPrizesStoneVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCaseScript
	writetext GameCornerPrize_WhichPrizeText
GameCornerPrizesStoneVendorLoop:
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iftrue GameCornerPrizesEvolveVendor
	special DisplayCoinCaseBalance
	loadmenu GameCornerPrizesStoneMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FireStone
	ifequal 2, .Thunderstone
	ifequal 3, .WaterStone
	ifequal 4, .LeafStone
	sjump GameCorner_CancelPurchaseScript

.FireStone:
	checkcoins GAMECORNER_EVO_STONE_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, FIRE_STONE
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem FIRE_STONE
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_STONE_COINS
	sjump GameCornerPrizesStoneVendor_FinishScript

.Thunderstone:
	checkcoins GAMECORNER_EVO_STONE_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, THUNDERSTONE
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem THUNDERSTONE
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_STONE_COINS
	sjump GameCornerPrizesStoneVendor_FinishScript

.WaterStone:
	checkcoins GAMECORNER_EVO_STONE_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, WATER_STONE
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem WATER_STONE
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_STONE_COINS
	sjump GameCornerPrizesStoneVendor_FinishScript

.LeafStone:
	checkcoins GAMECORNER_EVO_STONE_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, LEAF_STONE
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem LEAF_STONE
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_STONE_COINS
	sjump GameCornerPrizesStoneVendor_FinishScript

GameCornerPrizesStoneMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y ;- -1
	dw .MenuDataItems
	db 1 ; default option
.MenuDataItems:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FIRE STONE   {d:GAMECORNER_EVO_STONE_COINS}@"
	db "THUNDERSTONE {d:GAMECORNER_EVO_STONE_COINS}@"
	db "WATER STONE  {d:GAMECORNER_EVO_STONE_COINS}@"
	db "LEAF STONE   {d:GAMECORNER_EVO_STONE_COINS}@"
;	db "CANCEL@"

; evolve prize vendor
GameCornerPrizesEvolveVendor:
	faceplayer
	opentext
	writetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCaseScript
	writetext GameCornerPrize_WhichPrizeText
GameCornerPrizesEvolveVendorLoop:
	writetext GameCornerPrize_WhichPrizeText_Short
	special DisplayCoinCaseBalance
	loadmenu GameCornerPrizesEvolveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .KingsRock
	ifequal 2, .MetalCoat
	ifequal 3, .DragonScale
	ifequal 4, .RazorClaw
	ifequal 5, .RazorFang
;	ifequal 4, .SunStone
;	ifequal 5, .DuskStone
	sjump GameCorner_CancelPurchaseScript

.KingsRock:
	checkcoins GAMECORNER_EVO_ITEM_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, KINGS_ROCK
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem KINGS_ROCK
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_ITEM_COINS
	sjump GameCornerPrizesEvolveVendor_FinishScript

.MetalCoat:
	checkcoins GAMECORNER_EVO_ITEM_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, METAL_COAT
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem METAL_COAT
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_ITEM_COINS
	sjump GameCornerPrizesEvolveVendor_FinishScript

.DragonScale:
	checkcoins GAMECORNER_EVO_ITEM_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, DRAGON_SCALE
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem DRAGON_SCALE
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_ITEM_COINS
	sjump GameCornerPrizesEvolveVendor_FinishScript

.RazorClaw:
	checkcoins GAMECORNER_EVO_ITEM_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, RAZOR_CLAW
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem RAZOR_CLAW
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_ITEM_COINS
	sjump GameCornerPrizesEvolveVendor_FinishScript

.RazorFang:
	checkcoins GAMECORNER_EVO_ITEM_COINS
	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, RAZOR_FANG
	scall GameCorner_ConfirmPurchaseScript
	iffalse GameCorner_CancelPurchaseScript
	giveitem RAZOR_FANG
	iffalse GameCorner_NoRoomScript
	takecoins GAMECORNER_EVO_ITEM_COINS
	sjump GameCornerPrizesEvolveVendor_FinishScript

;.SunStone:
;	checkcoins GAMECORNER_SUN_STONE_COINS
;	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, SUN_STONE
;	scall GameCorner_ConfirmPurchaseScript
;	iffalse GameCorner_CancelPurchaseScript
;	giveitem SUN_STONE
;	iffalse GameCorner_NoRoomScript
;	takecoins GAMECORNER_SUN_STONE_COINS
;	sjump GameCornerPrizesEvolveVendor_FinishScript

;.DuskStone:
;	checkcoins GAMECORNER_DUSK_STONE_COINS
;	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, DUSK_STONE
;	scall GameCorner_ConfirmPurchaseScript
;	iffalse GameCorner_CancelPurchaseScript
;	giveitem DUSK_STONE
;	iffalse GameCorner_NoRoomScript
;	takecoins GAMECORNER_DUSK_STONE_COINS
;	sjump GameCornerPrizesEvolveVendor_FinishScript

;.UpGrade:
;	checkcoins GAMECORNER_UP_GRADE_COINS
;	ifequal HAVE_LESS, GameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, UP_GRADE
;	scall GameCorner_ConfirmPurchaseScript
;	iffalse GameCorner_CancelPurchaseScript
;	giveitem UP_GRADE
;	iffalse GameCorner_NoRoomScript
;	takecoins GAMECORNER_UP_GRADE_COINS
;	sjump GameCornerPrizesStoneVendor_FinishScript

GameCornerPrizesEvolveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -2
	dw .MenuDataEvolve
	db 1 ; default option
.MenuDataEvolve:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "KING's ROCK   {d:GAMECORNER_EVO_ITEM_COINS}@"
	db "METAL COAT   {d:GAMECORNER_EVO_ITEM_COINS}@"
	db "DRAGON SCALE {d:GAMECORNER_EVO_ITEM_COINS}@"
	db "RAZOR CLAW   {d:GAMECORNER_EVO_ITEM_COINS}@"
	db "RAZOR FANG   {d:GAMECORNER_EVO_ITEM_COINS}@"
;	db "SUN STONE    {d:GAMECORNER_SUN_STONE_COINS}@"
;	db "DUSK STONE   {d:GAMECORNER_DUSK_STONE_COINS}@"
;	db "UP-GRADE     {d:GAMECORNER_UP_GRADE_COINS}@"
;	db "CANCEL@"

; vendor universal scripts
GameCornerPrizesItemVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	sjump GameCornerPrizesItemVendorLoop

GameCornerPrizesStoneVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	sjump GameCornerPrizesStoneVendorLoop

GameCornerPrizesEvolveVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrize_HereYouGoText
	waitbutton
	sjump GameCornerPrizesEvolveVendorLoop

GameCorner_NotEnoughCoinsScript:
	writetext GameCornerPrize_NotEnoughCoinsText
	waitbutton
	closetext
	end

GameCorner_NoRoomScript:
	writetext GameCornerPrize_NoRoomText
	waitbutton
	closetext
	end

GameCorner_ConfirmPurchaseScript:
	writetext GameCornerPrize_ConfirmPurchaseText
	yesorno
	end

GameCorner_CancelPurchaseScript:
	writetext GameCornerPrize_ComeAgainText
	waitbutton
	closetext
	end

GameCorner_NoCoinCaseScript:
	writetext GameCornerPrize_NoCoinCaseText
	waitbutton
	closetext
	end

; vendor texts
GameCornerPrize_IntroText:
	text "Welcome!"

	para "We exchange your"
	line "coins for fabulous"
	cont "prizes!"
	done

GameCornerPrize_WhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

GameCornerPrize_WhichPrizeText_Short:
	text " "
	line "Which prize?"
	done

GameCornerPrize_NotEnoughCoinsText:
	text "You don't have"
	line "enough coins."
	done

GameCornerPrize_NoRoomText:
	text "You have no room"
	line "for it."
	done

GameCornerPrize_ConfirmPurchaseText:
	text "OK, so you wanted"
	line "a @"
	text_ram wStringBuffer3
	text "?"
	done

GameCornerPrize_HereYouGoText:
	text "Here you go!"
	done

GameCornerPrize_ComeAgainText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

GameCornerPrize_NoCoinCaseText:
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
	warp_event  3,  7, CELADON_CITY, 7
	warp_event  4,  7, CELADON_CITY, 7

	def_coord_events

	def_bg_events
;	bg_event  2,  2, BGEVENT_READ, GameCornerPrizesKantoPokemonVendor
;	bg_event  4,  2, BGEVENT_READ, GameCornerPrizesItemVendor
;	bg_event  6,  2, BGEVENT_READ, GameCornerPrizesStoneVendor

	def_object_events
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameCornerPrizesKantoPokemonVendor, -1
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GameCornerPrizesItemVendor, -1
	object_event  5,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameCornerPrizesStoneVendor, -1
	object_event  0,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonPrizeRoomGentlemanScript, -1
	object_event  6,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPrizeRoomPharmacistScript, -1
