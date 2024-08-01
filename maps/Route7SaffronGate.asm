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
	farscall SaffronGateClosedScript
	end

Route7GateStopText:
	text "Wait, stop! The"
	line "road is closed!"
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
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7GateGuardScript, -1
