	object_const_def
	const ROUTE26GATE_OFFICER

Route26Gate_MapScripts:
	def_scene_scripts
	scene_script Route26GateClosedScene, SCENE_ROUTE26GATE_CLOSED
	scene_script Route26GateNoop2Scene, SCENE_ROUTE26GATE_NOOP

	def_callbacks

Route26GateClosedScene:
;	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
;	iffalse .Gen1
;	setscene SCENE_ROUTE26GATE_NOOP
;.Gen1
	checkevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	iffalse .CannotPass
	setscene SCENE_ROUTE26GATE_NOOP
.CannotPass
	; fallthrough
Route26GateNoop2Scene:
	end

Route26GateGuardScript:
	checkevent EVENT_GAVE_SAFFRON_GUARD_DRINK
	iffalse .GateClosed
	jumptext Route26GateOpenText
.GateClosed
	jumptext Route26ComeBackLaterText

Route26GateStopScript1:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route26GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route26GateStopMovement1
	jumptext Route26ComeBackLaterText

Route26GateStopScript2:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route26GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route26GateStopMovement2
	jumptext Route26ComeBackLaterText

Route26GateStopScript3:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route26GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route26GateStopMovement3
	jumptext Route26ComeBackLaterText

Route26GateStopScript4:
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route26GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route26GateStopMovement4
	jumptext Route26ComeBackLaterText

Route26GateStopText:
	text "Hey, wait!"
	done

Route26ComeBackLaterText:
	text "The #MON past"
	line "here are somewhat"
	cont "stronger than the"
	roll "ones on ROUTE 22!"
	
	para "I don't think you"
	line "can handle them."
	
	para "You should come"
	line "back later."
	done

Route26GateOpenText:
	text "Your #MON look"
	line "like they could"
	cont "handle anything!"

	para "Go on through!"
	done

Route26GateStopMovement1:
	step LEFT
Route26GateStopMovement2:
	step LEFT
Route26GateStopMovement3:
	step LEFT
Route26GateStopMovement4:
	step UP
	turn_head LEFT
	step_end

Route26Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_22, 2
	warp_event  4,  0, ROUTE_22, 3
	warp_event  3,  7, ROUTE_26, 1
	warp_event  4,  7, ROUTE_26, 1

	def_coord_events
	coord_event  5,  5, SCENE_ROUTE26GATE_CLOSED, Route26GateStopScript1
	coord_event  4,  5, SCENE_ROUTE26GATE_CLOSED, Route26GateStopScript2
	coord_event  3,  5, SCENE_ROUTE26GATE_CLOSED, Route26GateStopScript3
	coord_event  2,  5, SCENE_ROUTE26GATE_CLOSED, Route26GateStopScript4

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route26GateGuardScript, -1
