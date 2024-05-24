	object_const_def

Route7SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route7GateNoop1Scene, SCENE_ROUTE7GATE_CLOSED
	scene_script Route7GateNoop2Scene, SCENE_ROUTE7GATE_NOOP

	def_callbacks

Route7GateNoop1Scene:
Route7GateNoop2Scene:
	end

Route7GateGuardScript:
	checkevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	iffalse Route7GateClosedScript
	jumptext Route7GateThanksText

Route7GateStopScript1:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route7GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route7GateStopMovement1
	sjump Route7GateClosedScript

Route7GateStopScript2:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route7GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route7GateStopMovement2
	sjump Route7GateClosedScript

Route7GateStopScript3:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route7GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route7GateStopMovement3
	sjump Route7GateClosedScript

Route7GateStopScript4:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route7GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route7GateStopMovement4
	; fallthrough
Route7GateClosedScript:
	opentext
	writetext Route7GateClosedText
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
	writetext Route7GateHaveDrinkText
	promptbutton
	takeitem FRESH_WATER, 1
	writetext Route7GateGiveDrinkText
	promptbutton
	sjump Route7GateOpenScript

.SodaPop
	getitemname STRING_BUFFER_3, SODA_POP
	writetext Route7GateHaveDrinkText
	promptbutton
	takeitem SODA_POP, 1
	writetext Route7GateGiveDrinkText
	promptbutton
	sjump Route7GateOpenScript

.Lemonade
	getitemname STRING_BUFFER_3, LEMONADE
	writetext Route7GateHaveDrinkText
	promptbutton
	takeitem LEMONADE, 1
	writetext Route7GateGiveDrinkText
	promptbutton
	; fallthrough
Route7GateOpenScript:
	playsound SFX_POTION
	writetext Route7GateOpenText
	waitbutton
	closetext
	setevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	setscene SCENE_ROUTE5GATE_NOOP
	setscene SCENE_ROUTE6GATE_NOOP
	setscene SCENE_ROUTE7GATE_NOOP
	setscene SCENE_ROUTE8GATE_NOOP
	end

Route7GateStopText:
	text "Wait, stop! The"
	line "road is closed!"
	done

Route7GateClosedText:
	text "TEAM ROCKET is"
	line "causing trouble"
	cont "in SAFFRON CITY."

	para "I'm on guard duty."
	line "You can't go"
	cont "through."

	para "Gee, I'm thirsty,"
	line "though!"
	done

Route7GateHaveDrinkText:
	text "..."
	line "Huh? I can have"
	cont "this drink?"

	para "Gee, thanks!"
	done

Route7GateGiveDrinkText:
	text "<PLAYER> gave"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route7GateOpenText:
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

Route7GateThanksText:
	text "Hi, thanks for"
	line "the cool drinks!"
	done

Route7GateStopMovement1:
	step UP
Route7GateStopMovement2:
	step UP
Route7GateStopMovement3:
	step UP
Route7GateStopMovement4:
	step LEFT
	turn_head UP
	step_end

Route7SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_7, 1
	warp_event  0,  5, ROUTE_7, 2
	warp_event  7,  4, SAFFRON_CITY, 9
	warp_event  7,  5, SAFFRON_CITY, 10

	def_coord_events
	coord_event  5,  6, SCENE_ROUTE7GATE_CLOSED, Route7GateStopScript1
	coord_event  5,  5, SCENE_ROUTE7GATE_CLOSED, Route7GateStopScript2
	coord_event  5,  4, SCENE_ROUTE7GATE_CLOSED, Route7GateStopScript3
	coord_event  5,  3, SCENE_ROUTE7GATE_CLOSED, Route7GateStopScript4

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route7GateGuardScript, -1
