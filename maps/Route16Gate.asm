	object_const_def
	const ROUTE_16GATE_OFFICER

Route16Gate_MapScripts:
	def_scene_scripts
	scene_script Route16GateNoopScene, SCENE_ROUTE_16GATE_BICYCLE_CHECK

	def_callbacks
	callback MAPCALLBACK_TILES, Route16GateTilesCallback

Route16GateTilesCallback:
	changeblock 2, 2, $0c ; top left
	changeblock 4, 2, $0e ; top right
	changeblock 2, 6, $30 ; bottom left
	changeblock 4, 6, $31 ; bottom right
	endcallback

Route16GateNoopScene:
	end

Route16GateOfficerScript:
	jumptextfaceplayer Route16GateOfficerText

Route16GateBicycleCheck:
	checkitem BICYCLE
	iffalse .NoBicycle
	end

.NoBicycle:
	showemote EMOTE_SHOCK, ROUTE_16GATE_OFFICER, 15
	turnobject PLAYER, UP
	opentext
	writetext Route16GateCannotPassText
	waitbutton
	closetext
	applymovement PLAYER, Route16GateCannotPassMovement
	end

Route16GateCannotPassMovement:
	step RIGHT
;	turn_head LEFT
	step_end

Route16GateOfficerText:
	text "CYCLING ROAD is a"
	line "downhill course"
	cont "by the sea. It's"
	cont "a great ride."
	done

Route16GateCannotPassText:
	text "Hey! Whoa! Stop!"

	para "You need to have"
	line "a BICYCLE to ride"
	cont "on CYCLING ROAD!"

	para "No pedestrians"
	line "allowed!"
	done

Route16Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_16, 4
	warp_event  0,  5, ROUTE_16, 5
	warp_event  7,  4, ROUTE_16, 2
	warp_event  7,  5, ROUTE_16, 3

	def_coord_events
	coord_event  3,  4, SCENE_ROUTE_16GATE_BICYCLE_CHECK, Route16GateBicycleCheck
	coord_event  3,  5, SCENE_ROUTE_16GATE_BICYCLE_CHECK, Route16GateBicycleCheck

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route16GateOfficerScript, -1
