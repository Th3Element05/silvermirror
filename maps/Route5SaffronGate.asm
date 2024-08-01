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
	farscall SaffronGateClosedScript
	end

Route5GateStopText:
	text "Wait, stop! The"
	line "road is closed!"
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
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5GateGuardScript, -1
