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
	iffalse .End
	writetext CeladonSeptStoreRoofGiveWhichDrinkText
	loadmenu .GirlMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveFreshWater
	ifequal 2, .GiveSodaPop
	ifequal 3, .GiveLemonade
.End:
	closetext
	end

.GiveFreshWater:
	getitemname STRING_BUFFER_3, FRESH_WATER
	checkitem FRESH_WATER
	iffalse .NoDrink
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
	getitemname STRING_BUFFER_3, SODA_POP
	checkitem SODA_POP
	iffalse .NoDrink
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
	getitemname STRING_BUFFER_3, LEMONADE
	checkitem LEMONADE
	iffalse .NoDrink
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

.NoDrink:
	writetext CeladonDeptStoreRoofNoDrinkText
	waitbutton
	closetext
	end

.GotTM:
	writetext CeladonDeptStoreRoofNoThanksText
	waitbutton
	closetext
	end

.GirlMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .GirlMenuData
	db 1 ; default option

.GirlMenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER@"
	db "SODA POP@"
	db "LEMONADE@"
	db "CANCEL@"

CeladonDeptStoreRoofGirlText:
	text "I'm thirsty! Do"
	line "you have anything"
	cont "to drink?"
	done

CeladonSeptStoreRoofGiveWhichDrinkText:
	text "Give her which"
	line "drink?"
	done

CeladonDeptStoreRoofNoDrinkText:
	text "<PLAYER> doesn't"
	line "have any"
	cont "@"
	text_ram wStringBuffer3
	text ""
	cont "to give!"
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
	object_event  4,  5, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStoreRoofGirlScript, -1
