	object_const_def

Route5SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route5GateNoop1Scene, SCENE_ROUTE5GATE_CLOSED
	scene_script Route5GateNoop2Scene, SCENE_ROUTE5GATE_NOOP

	def_callbacks

Route5GateNoop1Scene:
Route5GateNoop2Scene:
	end

Route5GateGuardScript:
	checkevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	iffalse SaffronGateClosedScript ;Route5GateClosedScript
	jumptext Route5GateThanksText

Route5GateStopScript1:
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 20
	applymovement PLAYER, Route5GateStopMovement1
	sjump SaffronGateClosedScript ;Route5GateClosedScript

Route5GateStopScript2:
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 20
	applymovement PLAYER, Route5GateStopMovement2
	sjump SaffronGateClosedScript ;Route5GateClosedScript

Route5GateStopScript3:
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 20
	applymovement PLAYER, Route5GateStopMovement3
	sjump SaffronGateClosedScript ;Route5GateClosedScript

Route5GateStopScript4:
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 20
	applymovement PLAYER, Route5GateStopMovement4
	sjump SaffronGateClosedScript ;Route5GateClosedScript

;Route5GateClosedScript:
;	farscall SaffronGateClosedScript
;	end

Route5GateStopText:
	ntag "OFFICER:"
	text "Wait, stop! The"
	line "road is closed!"
	done

Route5GateThanksText:
	ntag "OFFICER:"
	text "Hi, thanks for"
	line "the cool drinks!"
	done

Route5GateStopMovement1:
	step LEFT
Route5GateStopMovement2:
	step LEFT
Route5GateStopMovement3:
	step LEFT
Route5GateStopMovement4:
	step UP
	turn_head LEFT
	step_end

; saffron gate close script
SaffronGateClosedScript:: ; other gates should be in same bank now, no need to farcall
	opentext
	writetext SaffronGateClosedText
	checkitem FRESH_WATER
	iftrue .own_water
	checkitem SODA_POP
	iftrue .own_soda
	checkitem LEMONADE
	iftrue .ask_lemonade
	waitbutton
.no_drink
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

;.no_drink
;	writetext SaffronGateTooBadText
;	waitbutton
;	closetext
;	end

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
	writetext SaffronGateCanHaveDrinkText
	promptbutton
	takeitem FRESH_WATER, 1
	writetext SaffronGateGiveDrinkText
	promptbutton
	sjump .SaffronGateOpenScript

.IsSodaPop:
	getitemname STRING_BUFFER_3, SODA_POP
	writetext SaffronGateCanHaveDrinkText
	promptbutton
	takeitem SODA_POP, 1
	writetext SaffronGateGiveDrinkText
	promptbutton
	sjump .SaffronGateOpenScript

.IsLemonade:
	getitemname STRING_BUFFER_3, LEMONADE
	writetext SaffronGateCanHaveDrinkText
	promptbutton
	takeitem LEMONADE, 1
	writetext SaffronGateGiveDrinkText
	promptbutton
	sjump .SaffronGateOpenScript

.SaffronGateOpenScript:
	writetext SaffronGateGulpText
	playsound SFX_POTION
	waitsfx
	promptbutton
	writetext SaffronGateOpenText
	waitbutton
	closetext
	setevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	setmapscene ROUTE_5_SAFFRON_GATE, SCENE_ROUTE5GATE_NOOP
	setmapscene ROUTE_6_SAFFRON_GATE, SCENE_ROUTE6GATE_NOOP
	setmapscene ROUTE_7_SAFFRON_GATE, SCENE_ROUTE7GATE_NOOP
	setmapscene ROUTE_8_SAFFRON_GATE, SCENE_ROUTE8GATE_NOOP
	end

SaffronGateClosedText:
	ntag "OFFICER:"
	text "TEAM ROCKET is"
	line "causing trouble"
	cont "in SAFFRON CITY."

	para "I'm on guard duty."
	line "I can't let you"
	cont "through."

	para "Gee, I'm thirsty,"
	line "though!"
	done

SaffronGateCanHaveDrinkText:
	ntag "OFFICER:"
	text "<……>"

	para "Huh? I can have"
	line "this drink?"

	para "Gee, thanks!"
	done

SaffronGateGiveDrinkText:
	text "<PLAYER> gave"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

SaffronGateGulpText:
	ntag "OFFICER:"
	text "…"
	line "Glug glug…"
	cont "…"
	cont "Gulp…" ;cont on purpose, not roll
	done

SaffronGateOpenText:
	ntag "OFFICER:"
	text "If you want to go"
	line "to SAFFRON CITY…"

	para "You can go on"
	line "through. I'll"
	cont "share this with"
	roll "the other guards!"
	
	para "Just be careful"
	line "with TEAM ROCKET"
	cont "around!"
	done


Route5SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_5, 2
	warp_event  4,  0, ROUTE_5, 3
	warp_event  3,  7, SAFFRON_CITY, 8
	warp_event  4,  7, SAFFRON_CITY, 8

	def_coord_events
	coord_event  5,  5, SCENE_ROUTE5GATE_CLOSED, Route5GateStopScript1
	coord_event  4,  5, SCENE_ROUTE5GATE_CLOSED, Route5GateStopScript2
	coord_event  3,  5, SCENE_ROUTE5GATE_CLOSED, Route5GateStopScript3
	coord_event  2,  5, SCENE_ROUTE5GATE_CLOSED, Route5GateStopScript4

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5GateGuardScript, -1
