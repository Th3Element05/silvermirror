	object_const_def
	const ROUTE_18GATE_OFFICER

Route18Gate_MapScripts:
	def_scene_scripts
	scene_script Route18GateNoopScene, SCENE_ROUTE_18GATE_BICYCLE_CHECK

	def_callbacks
	callback MAPCALLBACK_TILES, Route18GateTilesCallback

Route18GateTilesCallback:
	changeblock 2, 2, $0c ; top left
	changeblock 4, 2, $0e ; top right
	changeblock 2, 6, $30 ; bottom left
	changeblock 4, 6, $31 ; bottom right
	endcallback

Route18GateNoopScene:
	end

Route18GateOfficerScript:
	jumptextfaceplayer Route18GateOfficerText

Route18GateBicycleCheck:
	checkitem BICYCLE
	iffalse .NoBicycle
	end

.NoBicycle:
	showemote EMOTE_SHOCK, ROUTE_18GATE_OFFICER, 15
	turnobject PLAYER, UP
	opentext
	writetext Route18GateCannotPassText
	waitbutton
	closetext
	applymovement PLAYER, Route18GateCannotPassMovement
	end

Route18GateCannotPassMovement:
	step RIGHT
	turn_head LEFT
	step_end

Route18GateOfficerText:
	text "CYCLING ROAD is"
	line "all uphill from"
	cont "here."
	done

Route18GateCannotPassText:
	text "Hey! Whoa! Stop!"

	para "You need to have"
	line "a BICYCLE to ride"
	cont "on CYCLING ROAD!"

	para "No pedestrians"
	line "allowed!"
	done

Route18Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_18, 1
	warp_event  0,  5, ROUTE_18, 2
	warp_event  7,  4, ROUTE_18, 3
	warp_event  7,  5, ROUTE_18, 4

	def_coord_events
	coord_event  3,  4, SCENE_ROUTE_18GATE_BICYCLE_CHECK, Route18GateBicycleCheck
	coord_event  3,  5, SCENE_ROUTE_18GATE_BICYCLE_CHECK, Route18GateBicycleCheck

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route18GateOfficerScript, -1
