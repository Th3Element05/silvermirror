	object_const_def
;	const ROUTE_18GATE_OFFICER

Route18Gate_MapScripts:
	def_scene_scripts
	scene_script Route18GateNoopScene, SCENE_ROUTE_18GATE_BICYCLE_CHECK

	def_callbacks
	callback MAPCALLBACK_TILES, Route18GateTilesCallback

Route18GateTilesCallback:
	changeblock 2, 6, $12 ; open counter
	changeblock 4, 6, $1b ; open counter
	changeblock 4, 8, $19 ; stairs
	endcallback

Route18GateNoopScene:
	end

Route18GateBicycleCheck1:
	checkitem BICYCLE
	iftrue Route18Bicycle
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route18GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route18GateStopMovement1
	jumptext Route18GateCannotPassText

Route18GateBicycleCheck2:
	checkitem BICYCLE
	iftrue Route18Bicycle
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route18GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route18GateStopMovement2
	jumptext Route18GateCannotPassText

Route18GateBicycleCheck3:
	checkitem BICYCLE
	iftrue Route18Bicycle
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route18GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route18GateStopMovement3
	jumptext Route18GateCannotPassText

Route18GateBicycleCheck4:
	checkitem BICYCLE
	iftrue Route18Bicycle
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext Route18GateStopText
	waitbutton
	closetext
	applymovement PLAYER, Route18GateStopMovement4
	jumptext Route18GateCannotPassText

Route18Bicycle:
	end

Route18GateOfficerScript:
	jumptextfaceplayer Route18GateOfficerText

;Route18GateBicycleCheck:
;	checkitem BICYCLE
;	iffalse .NoBicycle
;	end
;
;.NoBicycle:
;	showemote EMOTE_SHOCK, ROUTE_18GATE_OFFICER, 15
;	turnobject PLAYER, UP
;	opentext
;	writetext Route18GateCannotPassText
;	waitbutton
;	closetext
;	applymovement PLAYER, Route18GateCannotPassMovement
;	end
;
;Route18GateCannotPassMovement:
;	step RIGHT
;	step_end

Route18GateStopMovement1:
	step UP
Route18GateStopMovement2:
	step UP
Route18GateStopMovement3:
	step UP
Route18GateStopMovement4:
	step RIGHT
	turn_head UP
	step_end

Route18GateOfficerText:
	text "CYCLING ROAD is"
	line "all uphill from"
	cont "here."
	done

Route18GateStopText:
	text "Hey! Whoa! Stop!"
	done

Route18GateCannotPassText:
	text "You need to have"
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
	warp_event  4,  8, ROUTE_18_GATE_2F, 1

	def_coord_events
	coord_event  2,  6, SCENE_ROUTE_18GATE_BICYCLE_CHECK, Route18GateBicycleCheck1
	coord_event  2,  5, SCENE_ROUTE_18GATE_BICYCLE_CHECK, Route18GateBicycleCheck2
	coord_event  2,  4, SCENE_ROUTE_18GATE_BICYCLE_CHECK, Route18GateBicycleCheck3
	coord_event  2,  3, SCENE_ROUTE_18GATE_BICYCLE_CHECK, Route18GateBicycleCheck4

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route18GateOfficerScript, -1
