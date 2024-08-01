DEF CELADONDEPTSTOREROOF_FRESH_WATER_PRICE EQU 200
DEF CELADONDEPTSTOREROOF_SODA_POP_PRICE    EQU 300
DEF CELADONDEPTSTOREROOF_LEMONADE_PRICE    EQU 350

	object_const_def

CeladonDeptStoreRoof_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStoreRoofVendingMachine:
	opentext
	writetext CeladonVendingText
.Start:
	special PlaceMoneyTopRight
	loadmenu .VendingMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
	closetext
	end

.FreshWater:
	checkmoney YOUR_MONEY, CELADONDEPTSTOREROOF_FRESH_WATER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONDEPTSTOREROOF_FRESH_WATER_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, CELADONDEPTSTOREROOF_SODA_POP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONDEPTSTOREROOF_SODA_POP_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, CELADONDEPTSTOREROOF_LEMONADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONDEPTSTOREROOF_LEMONADE_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext CeladonClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext CeladonVendingNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext CeladonVendingNoSpaceText
	waitbutton
	sjump .Start

.VendingMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .VendingMenuData
	db 1 ; default option

.VendingMenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER  ¥{d:CELADONDEPTSTOREROOF_FRESH_WATER_PRICE}@"
	db "SODA POP     ¥{d:CELADONDEPTSTOREROOF_SODA_POP_PRICE}@"
	db "LEMONADE     ¥{d:CELADONDEPTSTOREROOF_LEMONADE_PRICE}@"
	db "CANCEL@"

CeladonVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

CeladonClangText:
	text "Clang!"

	para "@"
	text_ram wStringBuffer3
	text_start
	line "popped out."
	done

CeladonVendingNoMoneyText:
	text "Oops, not enough"
	line "money…"
	done

CeladonVendingNoSpaceText:
	text "There's no more"
	line "room for stuff…"
	done

CeladonDeptStoreRoofGirlScript:
	faceplayer
	opentext
	writetext CeladonDeptStoreRoofGirlText
	yesorno
	iffalse .no_drink
	checkitem FRESH_WATER
	iftrue .own_water
	checkitem SODA_POP
	iftrue .own_soda
	checkitem LEMONADE
	iftrue .ask_lemonade
	writetext CeladonDeptStoreRoofNoYouDontText
	waitbutton
	closetext
	end

.own_water
	checkitem SODA_POP
	iftrue .own_water_and_soda
	checkitem LEMONADE
	iftrue .ask_water_lemonade
	jump .ask_water

.own_soda
	checkitem LEMONADE
	iftrue .ask_soda_lemonade
	jump .ask_soda

.own_water_and_soda
	checkitem LEMONADE
	iftrue .ask_water_soda_lemonade
	loadmenu .WaterSodaMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .IsFreshWater
	ifequal $2, .IsSodaPop
	jump .no_drink

.ask_water
	loadmenu .WaterMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .IsFreshWater
	jump .no_drink

.ask_soda
	loadmenu .SodaMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .IsSodaPop
	jump .no_drink

.ask_lemonade
	loadmenu .LemonadeMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .IsLemonade
	jump .no_drink

.ask_water_lemonade
	loadmenu .WaterLemonadeMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .IsFreshWater
	ifequal $2, .IsLemonade
	jump .no_drink

.ask_soda_lemonade
	loadmenu .SodaLemonadeMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .IsSodaPop
	ifequal $2, .IsLemonade
	jump .no_drink

.ask_water_soda_lemonade
	loadmenu .WaterSodaLemonadeMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .IsFreshWater
	ifequal $2, .IsSodaPop
	ifequal $3, .IsLemonade
	; fallthrough

.no_drink
	writetext CeladonDeptStoreRoofTooBadText
	waitbutton
	closetext
	end

.WaterMenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 6
	dw .WaterMenuData
	db 1 ; default option

.WaterMenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "FRESH WATER@"
	db "CANCEL@"

.SodaMenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, 6
	dw .SodaMenuData
	db 1 ; default option

.SodaMenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "SODA POP@"
	db "CANCEL@"

.LemonadeMenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, 6
	dw .LemonadeMenuData
	db 1 ; default option

.LemonadeMenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "LEMONADE@"
	db "CANCEL@"

.WaterSodaMenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 8
	dw .WaterSodaMenuData
	db 1 ; default option

.WaterSodaMenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "FRESH WATER@"
	db "SODA POP@"
	db "CANCEL@"

.WaterLemonadeMenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 8
	dw .WaterLemonadeMenuData
	db 1 ; default option

.WaterLemonadeMenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "FRESH WATER@"
	db "LEMONADE@"
	db "CANCEL@"

.SodaLemonadeMenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, 8
	dw .SodaLemonadeMenuData
	db 1 ; default option

.SodaLemonadeMenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "SODA POP@"
	db "LEMONADE@"
	db "CANCEL@"

.WaterSodaLemonadeMenuDataHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 10
	dw .WaterSodaLemonadeMenuData
	db 1 ; default option

.WaterSodaLemonadeMenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER@"
	db "SODA POP@"
	db "LEMONADE@"
	db "CANCEL@"

.IsFreshWater:
	getitemname STRING_BUFFER_3, FRESH_WATER
	writetext CeladonDeptStoreRoofCanHaveText
	yesorno
	iffalse .no_drink
	sjump .GiveFreshWater

.IsSodaPop:
	getitemname STRING_BUFFER_3, SODA_POP
	writetext CeladonDeptStoreRoofCanHaveText
	yesorno
	iffalse .no_drink
	sjump .GiveSodaPop

.IsLemonade:
	getitemname STRING_BUFFER_3, LEMONADE
	writetext CeladonDeptStoreRoofCanHaveText
	yesorno
	iffalse .no_drink
	sjump .GiveLemonade

.GiveFreshWater:
	checkevent EVENT_GOT_TM53_ICY_WIND
	iftrue .GotTM
	takeitem FRESH_WATER, 1
	writetext CeladonDeptStoreRoofGaveDrinkText
	promptbutton
	verbosegiveitem TM_ICY_WIND
	setevent EVENT_GOT_TM53_ICY_WIND
	writetext CeladonDeptStoreRoofIcyWindText
	waitbutton
	closetext
	end

.GiveSodaPop:
	checkevent EVENT_GOT_TM48_ROCK_SLIDE
	iftrue .GotTM
	takeitem SODA_POP, 1
	writetext CeladonDeptStoreRoofGaveDrinkText
	promptbutton
	verbosegiveitem TM_ROCK_SLIDE
	setevent EVENT_GOT_TM48_ROCK_SLIDE
	writetext CeladonDeptStoreRoofRockSlideText
	waitbutton
	closetext
	end

.GiveLemonade:
	checkevent EVENT_GOT_TM49_TRI_ATTACK
	iftrue .GotTM
	takeitem LEMONADE, 1
	writetext CeladonDeptStoreRoofGaveDrinkText
	promptbutton
	verbosegiveitem TM_TRI_ATTACK
	setevent EVENT_GOT_TM49_TRI_ATTACK
	writetext CeladonDeptStoreRoofTriAttackText
	waitbutton
	closetext
	end

.GotTM:
	writetext CeladonDeptStoreRoofNoThanksText
	waitbutton
	closetext
	end

CeladonDeptStoreRoofGirlText:
	text "I'm thirsty! Do"
	line "Do you have any-"
	cont "thing to drink?"
	done

CeladonDeptStoreRoofNoYouDontText:
	text "No you don't!"
	done

CeladonDeptStoreRoofTooBadText:
	text "Oh."
	line "That's too bad."
	done

CeladonDeptStoreRoofCanHaveText:
	text "I can have this"
	line "@"
	text_ram wStringBuffer3
	text "?"
	done

CeladonDeptStoreRoofGaveDrinkText:
	text "Yay!"
	line "@"
	text_ram wStringBuffer3
	text "!"
	
	para "You can have this,"
	line "from me!"
	done

CeladonDeptStoreRoofIcyWindText:
	text "TM58 contains"
	line "ICY WIND!"
	
	para "It slows down any"
	line "#MON it hits!"
	done

CeladonDeptStoreRoofRockSlideText:
	text "TM48 contains"
	line "ROCK SLIDE!"
	
	para "It might make the"
	line "target flinch!"
	done

CeladonDeptStoreRoofTriAttackText:
	text "TM49 contains"
	line "TRI ATTACK!"

	para "It has a chance"
	line "to PRALYZE, BURN,"
	cont "or even FREEZE"
	cont "opposing #MON!"
	done

CeladonDeptStoreRoofNoThanksText:
	text "No, thank you!"
	line "I'm not thirsty"
	cont "after all!"
	done

CeladonDeptStoreRoofSuperNerdScript:
	jumptextfaceplayer CeladonDeptStoreRoofSuperNerdText
CeladonDeptStoreRoofSuperNerdText:
	text "My sister is a"
	line "trainer, believe"
	cont "it or not."

	para "But, she's so"
	line "immature, she"
	cont "drives me nuts!"
	done

CeladonDeptStoreRoofDirectory:
	jumptext CeladonDeptStoreRoofDirectoryText
CeladonDeptStoreRoofDirectoryText:
	text "ROOFTOP SQUARE"
	line "VENDING MACHINES"
	done

CeladonDeptStoreRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  2, CELADON_DEPT_STORE_5F, 2

	def_coord_events

	def_bg_events
	bg_event 12,  2, BGEVENT_READ, CeladonDeptStoreRoofDirectory
	bg_event  8,  1, BGEVENT_UP, CeladonDeptStoreRoofVendingMachine
	bg_event  9,  1, BGEVENT_UP, CeladonDeptStoreRoofVendingMachine
	bg_event 10,  1, BGEVENT_UP, CeladonDeptStoreRoofVendingMachine

	def_object_events
	object_event  9,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStoreRoofSuperNerdScript, -1
	object_event  4,  5, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStoreRoofGirlScript, -1
