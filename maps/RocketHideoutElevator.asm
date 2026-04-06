RocketHideoutElevator_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .RocketHideoutElevatorCallback

.RocketHideoutElevatorCallback:
	changeblock 0, 0, $0c ; elevator exit
	changeblock 2, 0, $3d ; elevator panel
	changeblock 0, 2, $25 ; floor
	changeblock 2, 2, $25 ; floor
	endcallback

RocketHideoutElevatorScript:
	checkitem LIFT_KEY
	iffalse .NeedKey
	opentext
	elevator RocketHideoutElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done:
	end

.NeedKey
	jumptext RocketHideoutElevatorNeedKeyText


RocketHideoutElevatorNeedKeyText:
	text "It appears to"
	line "need a key."
	done

RocketHideoutElevatorData:
	db 3 ; floors
	elevfloor FLOOR_B1F, 1, ROCKET_HIDEOUT_B1F
	elevfloor FLOOR_B2F, 1, ROCKET_HIDEOUT_B2F
;	elevfloor FLOOR_B3F, 1, ROCKET_HIDEOUT_B3F
	elevfloor FLOOR_B4F, 1, ROCKET_HIDEOUT_B4F
	db -1 ; end

RocketHideoutElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  0, ROCKET_HIDEOUT_B1F, -1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RocketHideoutElevatorScript

	def_object_events
