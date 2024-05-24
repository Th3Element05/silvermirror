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
	iffalse Route5GateClosedScript
	jumptext Route5GateThanksText

Route5GateStopScript1:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route5GateStopMovement1
	sjump Route5GateClosedScript

Route5GateStopScript2:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route5GateStopMovement2
	sjump Route5GateClosedScript

Route5GateStopScript3:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route5GateStopMovement3
	sjump Route5GateClosedScript

Route5GateStopScript4:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route5GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route5GateStopMovement4
	; fallthrough
Route5GateClosedScript:
	opentext
	writetext Route5GateClosedText
	waitbutton
	checkitem FRESH_WATER
	iftrue .FreshWater
	checkitem SODA_POP
	iftrue .SodaPop
	checkitem LEMONADE
	iftrue .Lemonade
	; else
	closetext
	end

.FreshWater
	getitemname STRING_BUFFER_3, FRESH_WATER
	writetext Route5GateHaveDrinkText
	promptbutton
	takeitem FRESH_WATER, 1
	writetext Route5GateGiveDrinkText
	promptbutton
	sjump Route5GateOpenScript

.SodaPop
	getitemname STRING_BUFFER_3, SODA_POP
	writetext Route5GateHaveDrinkText
	promptbutton
	takeitem SODA_POP, 1
	writetext Route5GateGiveDrinkText
	promptbutton
	sjump Route5GateOpenScript

.Lemonade
	getitemname STRING_BUFFER_3, LEMONADE
	writetext Route5GateHaveDrinkText
	promptbutton
	takeitem LEMONADE, 1
	writetext Route5GateGiveDrinkText
	promptbutton
	; fallthrough
Route5GateOpenScript:
	playsound SFX_POTION
	writetext Route5GateOpenText
	waitbutton
	closetext
	setevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	setscene SCENE_ROUTE5GATE_NOOP
	setscene SCENE_ROUTE6GATE_NOOP
	setscene SCENE_ROUTE7GATE_NOOP
	setscene SCENE_ROUTE8GATE_NOOP
	end

Route5GateStopText:
	text "Wait, stop! The"
	line "road is closed!"
	done

Route5GateClosedText:
	text "TEAM ROCKET is"
	line "causing trouble"
	cont "in SAFFRON CITY."

	para "I'm on guard duty."
	line "You can't go"
	cont "through."

	para "Gee, I'm thirsty,"
	line "though!"
	done

Route5GateHaveDrinkText:
	text "..."
	line "Huh? I can have"
	cont "this drink?"

	para "Gee, thanks!"
	done

Route5GateGiveDrinkText:
	text "<PLAYER> gave"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route5GateOpenText:
	text "..."
	line "Glug glug..."
	cont "..."
	cont "Gulp..."

	para "If you want to go"
	line "to SAFFRON CITY..."

	para "You can go on"
	line "through. I'll"
	cont "share this with"
	cont "the other guards!"
	
	para "Just be careful"
	line "with TEAM ROCKET"
	cont "around!"
	done

Route5GateThanksText:
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
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5GateGuardScript, -1
