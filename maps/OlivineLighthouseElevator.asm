OlivineLighthouseElevator_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineLighthouseElevatorScript:
	opentext
	elevator OlivineLighthouseElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done:
	end

OlivineLighthouseElevatorData:
	db 5 ; floors
;	elevfloor FLOOR_6F, 1, OLIVINE_LIGHTHOUSE_6F
	elevfloor FLOOR_5F, 1, OLIVINE_LIGHTHOUSE_5F
;	elevfloor FLOOR_4F, 1, OLIVINE_LIGHTHOUSE_4F
;	elevfloor FLOOR_3F, 1, OLIVINE_LIGHTHOUSE_3F
;	elevfloor FLOOR_2F, 1, OLIVINE_LIGHTHOUSE_2F
	elevfloor FLOOR_1F, 1, OLIVINE_LIGHTHOUSE_1F
	db -1 ; end

OlivineLighthouseElevatorDirectory:
	jumptext OlivineLighthouseElevatorDirectoryText
OlivineLighthouseElevatorDirectoryText:
;	text "ELEVATOR TO"
;	line "LANTERN ROOM"
;	done
	text "IN CASE OF FIRE"
	line "USE STAIRS"
	done

OlivineLighthouseElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, OLIVINE_LIGHTHOUSE_1F, -1
	warp_event  2,  3, OLIVINE_LIGHTHOUSE_1F, -1

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, OlivineLighthouseElevatorScript
	bg_event  2,  0, BGEVENT_READ, OlivineLighthouseElevatorDirectory
	def_object_events
