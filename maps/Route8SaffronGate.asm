	object_const_def

Route8SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route8GateNoop1Scene, SCENE_ROUTE8GATE_CLOSED
	scene_script Route8GateNoop2Scene, SCENE_ROUTE8GATE_NOOP

	def_callbacks

Route8GateNoop1Scene:
Route8GateNoop2Scene:
	end

Route8GateGuardScript:
	checkevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	iffalse Route8GateClosedScript
	jumptext Route8GateThanksText

Route8GateStopScript1:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route8GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route8GateStopMovement1
	sjump Route8GateClosedScript

Route8GateStopScript2:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route8GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route8GateStopMovement2
	sjump Route8GateClosedScript

Route8GateStopScript3:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route8GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route8GateStopMovement3
	sjump Route8GateClosedScript

Route8GateStopScript4:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route8GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route8GateStopMovement4
	; fallthrough

Route8GateClosedScript:
	farscall SaffronGateClosedScript
	end

Route8GateStopText:
	text "Wait, stop! The"
	line "road is closed!"
	done

Route8GateThanksText:
	text "Hi, thanks for"
	line "the cool drinks!"
	done

Route8GateStopMovement1:
	step UP
Route8GateStopMovement2:
	step UP
Route8GateStopMovement3:
	step UP
Route8GateStopMovement4:
	step RIGHT
	turn_head UP
	step_end

Route8SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, SAFFRON_CITY, 13
	warp_event  0,  5, SAFFRON_CITY, 14
	warp_event  7,  4, ROUTE_8, 1
	warp_event  7,  5, ROUTE_8, 2

	def_coord_events
	coord_event  3,  6, SCENE_ROUTE8GATE_CLOSED, Route8GateStopScript1
	coord_event  3,  5, SCENE_ROUTE8GATE_CLOSED, Route8GateStopScript2
	coord_event  3,  4, SCENE_ROUTE8GATE_CLOSED, Route8GateStopScript3
	coord_event  3,  3, SCENE_ROUTE8GATE_CLOSED, Route8GateStopScript4

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route8GateGuardScript, -1
