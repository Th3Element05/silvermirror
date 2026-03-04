;DEF GOLDENRODGAMECORNER_TOGEPI_COINS       EQU 1000
DEF GOLDENRODGAMECORNER_MURKROW_COINS      EQU 2000
DEF GOLDENRODGAMECORNER_SLUGMA_COINS       EQU 3000
DEF GOLDENRODGAMECORNER_LARVITAR_COINS     EQU 4000
;DEF GOLDENRODGAMECORNER_HOUNDOUR_COINS     EQU 2000
;DEF GOLDENRODGAMECORNER_MISDREAVUS_COINS   EQU 3000
;
DEF GOLDENRODGAMECORNER_ETHER_COINS        EQU 200
DEF GOLDENRODGAMECORNER_PP_UP_COINS        EQU 300
DEF GOLDENRODGAMECORNER_RARE_CANDY_COINS   EQU 400
DEF GOLDENRODGAMECORNER_NUGGET_COINS       EQU 500
;
DEF GOLDENRODGAMECORNER_KINGS_ROCK_COINS   EQU 1000
DEF GOLDENRODGAMECORNER_METAL_COAT_COINS   EQU 1000
DEF GOLDENRODGAMECORNER_DRAGON_SCALE_COINS EQU 1000
DEF GOLDENRODGAMECORNER_UP_GRADE_COINS     EQU 1000
;
DEF GOLDENRODGAMECORNER_EGG_COINS          EQU 5000
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

; pokemon prize vendor
GoldenrodGameCornerPokemonVendor:
	faceplayer
	opentext
	farwritetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GoldenrodGameCorner_NoCoinCaseScript
.loop
	farwritetext GameCornerPrize_WhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu GoldenrodGameCornerMonVendorMenuHeader
	verticalmenu
	closewindow
;	ifequal 1, .Togepi
	ifequal 1, .Murkrow
	ifequal 2, .Slugma
	ifequal 3, .Larvitar
	sjump GoldenrodGameCorner_CancelPurchaseScript

;.Togepi:
;	checkcoins GOLDENRODGAMECORNER_TOGEPI_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	readvar VAR_PARTYCOUNT
;	ifequal PARTY_LENGTH, GoldenrodGameCorner_NoRoomScript
;	getmonname STRING_BUFFER_3, TOGEPI
;	scall GoldenrodGameCorner_ConfirmPurchaseScript
;	iffalse GoldenrodGameCorner_CancelPurchaseScript
;	waitsfx
;	playsound SFX_TRANSACTION
;	farwritetext GameCornerPrize_HereYouGoText
;	waitbutton
;	setval TOGEPI
;	special GameCornerPrizeMonCheckDex
;	givepoke TOGEPI, 10
;	takecoins GOLDENRODGAMECORNER_TOGEPI_COINS
;	sjump .loop

.Murkrow:
	checkcoins GOLDENRODGAMECORNER_MURKROW_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GoldenrodGameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, MURKROW
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext GameCornerPrize_HereYouGoText
	waitbutton
	setval MURKROW
	special GameCornerPrizeMonCheckDex
	givepoke MURKROW, 18
	takecoins GOLDENRODGAMECORNER_MURKROW_COINS
	sjump .loop

.Slugma:
	checkcoins GOLDENRODGAMECORNER_SLUGMA_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GoldenrodGameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, SLUGMA
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext GameCornerPrize_HereYouGoText
	waitbutton
	setval SLUGMA
	special GameCornerPrizeMonCheckDex
	givepoke SLUGMA, 24
	takecoins GOLDENRODGAMECORNER_SLUGMA_COINS
	sjump .loop

.Larvitar:
	checkcoins GOLDENRODGAMECORNER_LARVITAR_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GoldenrodGameCorner_NoRoomScript
	getmonname STRING_BUFFER_3, LARVITAR
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext GameCornerPrize_HereYouGoText
	waitbutton
	setval LARVITAR
	special GameCornerPrizeMonCheckDex
	givepoke LARVITAR, 20
	takecoins GOLDENRODGAMECORNER_LARVITAR_COINS
	sjump .loop

GoldenrodGameCornerMonVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -1
	dw .MenuDataMons
	db 1 ; default option
.MenuDataMons:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
;	db "TOGEPI     {d:GOLDENRODGAMECORNER_TOGEPI_COINS}@"
	db "MURKROW    {d:GOLDENRODGAMECORNER_MURKROW_COINS}@"
	db "SLUGMA     {d:GOLDENRODGAMECORNER_SLUGMA_COINS}@"
	db "LARVITAR   {d:GOLDENRODGAMECORNER_LARVITAR_COINS}@"
	db "CANCEL@"

; item prize vendor
GoldenrodGameCornerItemVendor:
	faceplayer
	opentext
	farwritetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GoldenrodGameCorner_NoCoinCaseScript
	farwritetext GameCornerPrize_WhichPrizeText
GoldenrodGameCornerItemVendorLoop:
	special DisplayCoinCaseBalance
	loadmenu GoldenrodGameCornerItemVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Ether
	ifequal 2, .PPUp
	ifequal 3, .RareCandy
	ifequal 4, .Nugget
	sjump GoldenrodGameCorner_CancelPurchaseScript

.Ether:
	checkcoins GOLDENRODGAMECORNER_ETHER_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, ETHER
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem ETHER
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_ETHER_COINS
	sjump GoldenrodGameCornerItemVendor_FinishScript

.PPUp:
	checkcoins GOLDENRODGAMECORNER_PP_UP_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, PP_UP
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem PP_UP
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_PP_UP_COINS
	sjump GoldenrodGameCornerItemVendor_FinishScript

.RareCandy:
	checkcoins GOLDENRODGAMECORNER_RARE_CANDY_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, RARE_CANDY
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem RARE_CANDY
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_RARE_CANDY_COINS
	sjump GoldenrodGameCornerItemVendor_FinishScript

.Nugget:
	checkcoins GOLDENRODGAMECORNER_NUGGET_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, NUGGET
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem NUGGET
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_NUGGET_COINS
	sjump GoldenrodGameCornerItemVendor_FinishScript

GoldenrodGameCornerItemVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -1
	dw .MenuDataItems
	db 1 ; default option
.MenuDataItems:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "ETHER        {d:GOLDENRODGAMECORNER_ETHER_COINS}@"
	db "PP UP        {d:GOLDENRODGAMECORNER_PP_UP_COINS}@"
	db "RARE CANDY   {d:GOLDENRODGAMECORNER_RARE_CANDY_COINS}@"
	db "NUGGET       {d:GOLDENRODGAMECORNER_NUGGET_COINS}@"
	db "CANCEL@"

; evolve prize vendor
GoldenrodGameCornerEvolveVendor:
	faceplayer
	opentext
	farwritetext GameCornerPrize_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GoldenrodGameCorner_NoCoinCaseScript
	farwritetext GameCornerPrize_WhichPrizeText
GoldenrodGameCornerEvolveVendorLoop:
	special DisplayCoinCaseBalance
	loadmenu GoldenrodGameCornerEvolveVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .KingsRock
	ifequal 2, .MetalCoat
	ifequal 3, .DragonScale
	ifequal 4, .UpGrade
	sjump GoldenrodGameCorner_CancelPurchaseScript

.KingsRock:
	checkcoins GOLDENRODGAMECORNER_KINGS_ROCK_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, KINGS_ROCK
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem KINGS_ROCK
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_KINGS_ROCK_COINS
	sjump GoldenrodGameCornerEvolveVendor_FinishScript

.MetalCoat:
	checkcoins GOLDENRODGAMECORNER_METAL_COAT_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, METAL_COAT
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem METAL_COAT
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_METAL_COAT_COINS
	sjump GoldenrodGameCornerEvolveVendor_FinishScript

.DragonScale:
	checkcoins GOLDENRODGAMECORNER_DRAGON_SCALE_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, DRAGON_SCALE
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem DRAGON_SCALE
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_DRAGON_SCALE_COINS
	sjump GoldenrodGameCornerEvolveVendor_FinishScript

.UpGrade:
	checkcoins GOLDENRODGAMECORNER_UP_GRADE_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, UP_GRADE
	scall GoldenrodGameCorner_ConfirmPurchaseScript
	iffalse GoldenrodGameCorner_CancelPurchaseScript
	giveitem UP_GRADE
	iffalse GoldenrodGameCorner_NoRoomScript
	takecoins GOLDENRODGAMECORNER_UP_GRADE_COINS
	sjump GoldenrodGameCornerEvolveVendor_FinishScript

GoldenrodGameCornerEvolveVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - -1
	dw .MenuDataItems
	db 1 ; default option
.MenuDataItems:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "KING's ROCK  {d:GOLDENRODGAMECORNER_KINGS_ROCK_COINS}@"
	db "METAL COAT   {d:GOLDENRODGAMECORNER_METAL_COAT_COINS}@"
	db "DRAGON SCALE {d:GOLDENRODGAMECORNER_DRAGON_SCALE_COINS}@"
	db "UP-GRADE     {d:GOLDENRODGAMECORNER_UP_GRADE_COINS}@"
	db "CANCEL@"

; egg vendor
GoldenrodGameCornerEggVendor:
	faceplayer
	opentext
	writetext GoldenrodGameCornerEggVendor_IntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GoldenrodGameCorner_NoCoinCaseScript
	special DisplayCoinCaseBalance
	writetext GoldenrodGameCornerEggVendor_OfferText
	pause 15
	yesorno
	iffalse .NoThanks
	checkcoins GOLDENRODGAMECORNER_EGG_COINS
	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GoldenrodGameCorner_NoRoomScript
	playsound SFX_TRANSACTION
	takecoins GOLDENRODGAMECORNER_EGG_COINS
	waitsfx
	special GiveOddEgg
	writetext GoldenrodGameCornerEggVendor_GotEggText
	playsound SFX_GET_EGG
	waitsfx
	promptbutton
	writetext GoldenrodGameCornerEggVendor_FinishText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

.NoThanks
	writetext GoldenrodGameCornerEggVendor_OfferStandsText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerEggVendor_IntroText:
	text "Psst. You there."
	line "You got coins?"
	done

GoldenrodGameCornerEggVendor_OfferText:
	text "I've got some rare"
	line "#MON eggs, but"
	cont "they'll cost you."

	para "One rare egg for"
	line "5000 coins, deal?"
	done

GoldenrodGameCornerEggVendor_GotEggText:
	text "<PLAYER> received"
	line "the EGG!"
	done

GoldenrodGameCornerEggVendor_FinishText:
	text "I have more eggs,"
	line "if you have more"
	cont "coins."
	done

GoldenrodGameCornerEggVendor_OfferStandsText:
	text "Come back when you"
	line "change your mind."
	done

; vendor universal scripts
GoldenrodGameCornerItemVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext GameCornerPrize_HereYouGoText
	waitbutton
	sjump GoldenrodGameCornerItemVendorLoop

GoldenrodGameCornerEvolveVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext GameCornerPrize_HereYouGoText
	waitbutton
	sjump GoldenrodGameCornerEvolveVendorLoop

GoldenrodGameCorner_NotEnoughCoinsScript:
	farwritetext GameCornerPrize_NotEnoughCoinsText
	waitbutton
	closetext
	end

GoldenrodGameCorner_NoRoomScript:
	farwritetext GameCornerPrize_NoRoomText
	waitbutton
	closetext
	end

GoldenrodGameCorner_ConfirmPurchaseScript:
	farwritetext GameCornerPrize_ConfirmPurchaseText
	yesorno
	end

GoldenrodGameCorner_CancelPurchaseScript:
	farwritetext GameCornerPrize_ComeAgainText
	waitbutton
	closetext
	end

GoldenrodGameCorner_NoCoinCaseScript:
	farwritetext GameCornerPrize_NoCoinCaseText
	waitbutton
	closetext
	end

; vendor texts
;GoldenrodGameCorner_IntroText:
;	text "Welcome!"
;
;	para "We exchange your"
;	line "coins for fabulous"
;	cont "prizes!"
;	done
;
;GoldenrodGameCorner_WhichPrizeText:
;	text "Which prize would"
;	line "you like?"
;	done
;
;GoldenrodGameCorner_NotEnoughCoinsText:
;	text "You don't have"
;	line "enough coins."
;	done
;
;GoldenrodGameCorner_NoRoomText:
;	text "You have no room"
;	line "for it."
;	done
;
;GoldenrodGameCorner_ConfirmPurchaseText:
;	text "OK, so you wanted"
;	line "a @"
;	text_ram wStringBuffer3
;	text "?"
;	done
;
;GoldenrodGameCorner_HereYouGoText:
;	text "Here you go!"
;	done
;
;GoldenrodGameCorner_ComeAgainText:
;	text "OK. Please save"
;	line "your coins and"
;	cont "come again!"
;	done
;
;GoldenrodGameCorner_NoCoinCaseText:
;	text "Oh? You don't have"
;	line "a COIN CASE."
;	done

; special (multi menu)
;GoldenrodGameCornerSpecialVendorScript:
;	faceplayer
;	opentext
;	writetext GoldenrodGameCornerPrizeVendorIntroText
;	waitbutton
;	checkitem COIN_CASE
;	iffalse GoldenrodGameCornerPrizeVendor_NoCoinCaseScript
;	writetext GoldenrodGameCornerPrizeVendorWhichPrizeText
;	special DisplayCoinCaseBalance
;	loadmenu GoldenrodGameCornerSpecialVendorMenuHeader
;	verticalmenu
;	closewindow
;	ifequal 1, GoldenrodGameCornerStoneVendorScript
;	ifequal 2, GoldenrodGameCornerItemVendorScript
;	sjump GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;
;GoldenrodGameCornerStoneVendorScript:
;	special DisplayCoinCaseBalance
;	loadmenu GoldenrodGameCornerStoneVendorMenuHeader
;	verticalmenu
;	closewindow
;	ifequal 1, .FireStone
;	ifequal 2, .ThunderStone
;	ifequal 3, .WaterStone
;	ifequal 4, .LeafStone
;	sjump GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;
;.FireStone:
;	checkcoins GOLDENRODGAMECORNER_FIRE_STONE_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, FIRE_STONE
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem FIRE_STONE
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_FIRE_STONE_COINS
;	sjump GoldenrodGameCornerStoneVendor_FinishScript
;
;.ThunderStone:
;	checkcoins GOLDENRODGAMECORNER_THUNDERSTONE_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, THUNDERSTONE
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem THUNDERSTONE
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_THUNDERSTONE_COINS
;	sjump GoldenrodGameCornerStoneVendor_FinishScript
;
;.WaterStone:
;	checkcoins GOLDENRODGAMECORNER_WATER_STONE_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, WATER_STONE
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem WATER_STONE
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_WATER_STONE_COINS
;	sjump GoldenrodGameCornerStoneVendor_FinishScript
;
;.LeafStone:
;	checkcoins GOLDENRODGAMECORNER_LEAF_STONE_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, LEAF_STONE
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem LEAF_STONE
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_LEAF_STONE_COINS
;	sjump GoldenrodGameCornerStoneVendor_FinishScript
;
;GoldenrodGameCornerItemVendorScript:
;	special DisplayCoinCaseBalance
;	loadmenu GoldenrodGameCornerItemVendorMenuHeader
;	verticalmenu
;	closewindow
;	ifequal 1, .KingsRock
;	ifequal 2, .MetalCoat
;	ifequal 3, .NextMenu2
;	sjump GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;
;.KingsRock:
;	checkcoins GOLDENRODGAMECORNER_KINGS_ROCK_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, KINGS_ROCK
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem KINGS_ROCK
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_KINGS_ROCK_COINS
;	sjump GoldenrodGameCornerItemVendor_FinishScript
;
;.MetalCoat:
;	checkcoins GOLDENRODGAMECORNER_METAL_COAT_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, METAL_COAT
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem METAL_COAT
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_METAL_COAT_COINS
;	sjump GoldenrodGameCornerItemVendor_FinishScript
;
;.NextMenu2
;	loadmenu GoldenrodGameCornerItemVendorMenu2Header
;	verticalmenu
;	closewindow
;	ifequal 1, .DragonScale
;	ifequal 2, .Up_Grade
;	ifequal 3, .LinkingCord
;	sjump GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;
;.DragonScale:
;	checkcoins GOLDENRODGAMECORNER_DRAGON_SCALE_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, DRAGON_SCALE
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem DRAGON_SCALE
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_DRAGON_SCALE_COINS
;	sjump GoldenrodGameCornerItemVendor_FinishScript
;
;.Up_Grade:
;	checkcoins GOLDENRODGAMECORNER_UP_GRADE_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, UP_GRADE
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem UP_GRADE
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_UP_GRADE_COINS
;	sjump GoldenrodGameCornerItemVendor_FinishScript
;
;.LinkingCord:
;	checkcoins GOLDENRODGAMECORNER_LINKING_CORD_COINS
;	ifequal HAVE_LESS, GoldenrodGameCorner_NotEnoughCoinsScript
;	getitemname STRING_BUFFER_3, LINKING_CORD
;	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
;	iffalse GoldenrodGameCornerPrizeVendor_CancelPurchaseScript
;	giveitem LINKING_CORD
;	iffalse GoldenrodGameCorner_NoRoomScript
;	takecoins GOLDENRODGAMECORNER_LINKING_CORD_COINS
;	sjump GoldenrodGameCornerItemVendor_FinishScript
;
;GoldenrodGameCornerSpecialVendorMenuHeader:
;	db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 3, 19, TEXTBOX_Y - 2
;	dw .MenuDataSpecial
;	db 1 ; default option
;.MenuDataSpecial:
;	db STATICMENU_CURSOR ; flags
;	db 3 ; items
;	db "EVOLUTION STONES@"
;	db "EVOLUTION ITEMS@"
;	db "CANCEL@"
;
;GoldenrodGameCornerStoneVendorMenuHeader:
;	db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 2, 19, TEXTBOX_Y - -1
;	dw .MenuDataStone
;	db 1 ; default option
;.MenuDataStone:
;	db STATICMENU_CURSOR ; flags
;	db 5 ; items
;	db "FIRE STONE   1000@"
;	db "THUNDERSTONE 1000@"
;	db "WATER STONE  1000@"
;	db "LEAF STONE   1000@"
;	db "CANCEL@"
;
;GoldenrodGameCornerItemVendorMenuHeader:
;	db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 3, 19, TEXTBOX_Y - 2
;	dw .MenuDataItems
;	db 1 ; default option
;.MenuDataItems:
;	db STATICMENU_CURSOR ; flags
;	db 3 ; items
;	db "KING's ROCK  2000@"
;	db "METAL COAT   2000@"
;	db "NEXT@"
;
;GoldenrodGameCornerItemVendorMenu2Header:
;	db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 2, 19, TEXTBOX_Y - 1
;	dw .MenuDataItems2
;	db 1 ; default option
;.MenuDataItems2:
;	db STATICMENU_CURSOR ; flags
;	db 4 ; items
;	db "DRAGON SCALE 2000@"
;	db "UP-GRADE     2000@"
;	db "LINKING CORD 3000@"
;	db "CANCEL@"
;

GoldenrodGameCornerLuckySeatScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPharmacistText
	sjump GoldenrodGameCornerEndRightScript

GoldenrodGameCornerPharmacistText:
	text "I always play this"
	line "slot machine. It"
	cont "pays out more than"
	cont "others, I think."
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
	cont "figure the odds."

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
	object_event 15,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokemonVendor, -1
	object_event 19,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerItemVendor, -1
	object_event 17,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerEvolveVendor, -1
	object_event 10,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerEggVendor, -1
	object_event  5,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, MORN | DAY, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerLuckySeatScript, -1
	object_event  5, 10, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, EVE | NITE, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerLuckySeatScript, -1
	object_event  8,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanM1Script, -1
	object_event 11,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCooltrainerFScript, -1
	object_event 14,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCooltrainerMScript, -1
	object_event 17, 10, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanFScript, -1

; MORN | DAY | EVE | NITE