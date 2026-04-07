DEF GOLDENRODDEPTSTOREROOF_FRESH_WATER_PRICE EQU 200
DEF GOLDENRODDEPTSTOREROOF_SODA_POP_PRICE    EQU 300
DEF GOLDENRODDEPTSTOREROOF_LEMONADE_PRICE    EQU 350

	object_const_def

GoldenrodDeptStoreRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodDeptStoreRoofCheckSaleChangeBlockCallback
	callback MAPCALLBACK_OBJECTS, GoldenrodDeptStoreRoofCheckSaleChangeClerkCallback

GoldenrodDeptStoreRoofCheckSaleChangeBlockCallback:
	changeblock 8, 0, $1f ; gatcha machines
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleIsOn
	changeblock 2, 2, $40 ; vendor booth
	changeblock 4, 2, $41 ; vendor booth
	endcallback

.SaleIsOn:
	changeblock 2, 0, $22 ; cardboard boxes
	changeblock 2, 2, $42 ; cardboard boxes
	changeblock 4, 2, $43 ; cardboard boxes
	endcallback

GoldenrodDeptStoreRoofCheckSaleChangeClerkCallback:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .ChangeClerk
	setevent EVENT_GOLDENROD_SALE_OFF
	clearevent EVENT_GOLDENROD_SALE_ON
	endcallback

.ChangeClerk:
	clearevent EVENT_GOLDENROD_SALE_OFF
	setevent EVENT_GOLDENROD_SALE_ON
	endcallback

GoldenrodDeptStoreRoofClerkScript:
	opentext
	pokemart MARTTYPE_ROOFTOP, 0
	closetext
	end

GoldenrodDeptStoreRoofPokefanFScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanFText
GoldenrodDeptStoreRoofPokefanFText:
	text "Whew, I'm tired."

	para "I sometimes come"
	line "up to the rooftop"
	cont "to take a break"
	roll "from shopping."
	done

GoldenrodDeptStoreRoofFisherScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStoreRoofFisherText
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

GoldenrodDeptStoreRoofFisherText:
	text "Pardon? Who says"
	line "an adult can't get"
	cont "into this?"

	para "I'm going to be"
	line "back every day to"
	cont "collect all the"
	roll "dolls!"
	done

GoldenrodDeptStoreRoofTwinScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTwinText
GoldenrodDeptStoreRoofTwinText:
	text "They have bargain"
	line "sales here every"
	cont "so often."
	done

GoldenrodDeptStoreRoofSuperNerdScript:
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdOhWowText
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodDeptStoreRoofSuperNerdOhWowText:
	text "Oh, wow!"
	done

GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText:
	text "Will you quit"
	line "bothering me?"
	done

GoldenrodDeptStoreRoofPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanMText
GoldenrodDeptStoreRoofPokefanMText:
	text "There's something"
	line "I really want,"
	cont "but I don't have"
	roll "enough money…"

	para "Maybe I'll sell"
	line "all these BERRIES"
	cont "I've collected…"
	done

GoldenrodDeptStoreRoofTeacherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTeacherText
GoldenrodDeptStoreRoofTeacherText:
	text "Oh, everything is"
	line "so cheap!"

	para "I bought so much,"
	line "my PACK's crammed!"
	done

GoldenrodDeptStoreRoofBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofBugCatcherText
GoldenrodDeptStoreRoofBugCatcherText:
	text "My #MON always"
	line "get paralyzed or"
	cont "poisoned…"

	para "So I came to buy"
	line "some FULL HEAL."

	para "I wonder if"
	line "there's any left?"
	done

GoldenrodDeptStoreRoofDirectory:
	jumptext GoldenrodDeptStoreRoofDirectoryText
GoldenrodDeptStoreRoofDirectoryText:
	text "ROOFTOP SQUARE"
	done

PokeDollVendingMachine:
	jumptext PokeDollVendingMachineText
PokeDollVendingMachineText:
	text "A vending machine"
	line "for #MON dolls?"

	para "Insert money, then"
	line "turn the crank…"

	para "But it's almost"
	line "empty…"
	done

Binoculars1:
	jumptext Binoculars1Text
Binoculars1Text:
	text "Hey! Some trainers"
	line "are battling on"
	cont "the road!"

	para "A #MON fired a"
	line "flurry of leaves!"
	done

Binoculars2:
	jumptext Binoculars2Text
Binoculars2Text:
	text "A FISHER caught a"
	line "lot of MAGIKARP…"

	para "They're splashing"
	line "at the same time!"

	para "Look at the water"
	line "going everywhere!"
	done

Binoculars3:
	jumptext Binoculars3Text
Binoculars3Text:
	text "These are pointed"
	line "straight towards"
	cont "someone's house…"
	done

GoldenrodDeptStoreRoofVendingMachine:
	opentext
	writetext GoldenrodVendingText
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
	checkmoney YOUR_MONEY, GOLDENRODDEPTSTOREROOF_FRESH_WATER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GOLDENRODDEPTSTOREROOF_FRESH_WATER_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, GOLDENRODDEPTSTOREROOF_SODA_POP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GOLDENRODDEPTSTOREROOF_SODA_POP_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, GOLDENRODDEPTSTOREROOF_LEMONADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GOLDENRODDEPTSTOREROOF_LEMONADE_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext GoldenrodClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext GoldenrodVendingNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext GoldenrodVendingNoSpaceText
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
	db "FRESH WATER  ¥{d:GOLDENRODDEPTSTOREROOF_FRESH_WATER_PRICE}@"
	db "SODA POP     ¥{d:GOLDENRODDEPTSTOREROOF_SODA_POP_PRICE}@"
	db "LEMONADE     ¥{d:GOLDENRODDEPTSTOREROOF_LEMONADE_PRICE}@"
	db "CANCEL@"

GoldenrodVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

GoldenrodClangText:
	text "Clang!"

	para "@"
	text_ram wStringBuffer3
	text_start
	line "popped out."
	done

GoldenrodVendingNoMoneyText:
	text "Oops, not enough"
	line "money…"
	done

GoldenrodVendingNoSpaceText:
	text "There's no more"
	line "room for stuff…"
	done

GoldenrodDeptStoreRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  2, GOLDENROD_DEPT_STORE_5F, 2

	def_coord_events

	def_bg_events
	bg_event 12,  2, BGEVENT_READ, GoldenrodDeptStoreRoofDirectory
	bg_event  9,  1, BGEVENT_READ, PokeDollVendingMachine
	bg_event  8,  1, BGEVENT_READ, PokeDollVendingMachine
	bg_event 10,  1, BGEVENT_UP, GoldenrodDeptStoreRoofVendingMachine
	bg_event 15,  4, BGEVENT_RIGHT, Binoculars1
	bg_event 15,  5, BGEVENT_RIGHT, Binoculars2
	bg_event 15,  6, BGEVENT_RIGHT, Binoculars3

	def_object_events
;sale active
	object_event  3,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofClerkScript, EVENT_GOLDENROD_SALE_OFF
	object_event  7,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanMScript, EVENT_GOLDENROD_SALE_OFF
	object_event 12,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTeacherScript, EVENT_GOLDENROD_SALE_OFF
	object_event  2,  5, SPRITE_BOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofBugCatcherScript, EVENT_GOLDENROD_SALE_OFF
;sale not active
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTwinScript, EVENT_GOLDENROD_SALE_ON
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofSuperNerdScript, EVENT_GOLDENROD_SALE_ON
	object_event  7,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanFScript, EVENT_GOLDENROD_SALE_ON
;always
	object_event  8,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofFisherScript, -1

