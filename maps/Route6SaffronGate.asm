	object_const_def

Route6SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route6GateNoop1Scene, SCENE_ROUTE6GATE_CLOSED
	scene_script Route6GateNoop2Scene, SCENE_ROUTE6GATE_NOOP

	def_callbacks

Route6GateNoop1Scene:
Route6GateNoop2Scene:
	end

Route6GateGuardScript:
	checkevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	iffalse Route6GateClosedScript
	jumptext Route6GateThanksText

Route6GateStopScript1:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route6GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route6GateStopMovement1
	sjump Route6GateClosedScript

Route6GateStopScript2:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route6GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route6GateStopMovement2
	sjump Route6GateClosedScript

Route6GateStopScript3:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route6GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route6GateStopMovement3
	sjump Route6GateClosedScript

Route6GateStopScript4:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route6GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route6GateStopMovement4
	; fallthrough

Route6GateClosedScript:
	farscall SaffronGateClosedScript
	end

Route6GateStopText:
	text "Wait, stop! The"
	line "road is closed!"
	done

Route6GateThanksText:
	text "Hi, thanks for"
	line "the cool drinks!"
	done

Route6GateStopMovement1:
	step LEFT
Route6GateStopMovement2:
	step LEFT
Route6GateStopMovement3:
	step LEFT
Route6GateStopMovement4:
	step DOWN
	turn_head LEFT
	step_end

Route6SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, SAFFRON_CITY, 11
	warp_event  4,  0, SAFFRON_CITY, 12
	warp_event  3,  7, ROUTE_6, 2
	warp_event  4,  7, ROUTE_6, 2

	def_coord_events
	coord_event  5,  3, SCENE_ROUTE6GATE_CLOSED, Route6GateStopScript1
	coord_event  4,  3, SCENE_ROUTE6GATE_CLOSED, Route6GateStopScript2
	coord_event  3,  3, SCENE_ROUTE6GATE_CLOSED, Route6GateStopScript3
	coord_event  2,  3, SCENE_ROUTE6GATE_CLOSED, Route6GateStopScript4

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route6GateGuardScript, -1
