GoldenrodDeptStoreElevator_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GoldenRodDeptStoreElevatorSceneCallback

GoldenRodDeptStoreElevatorSceneCallback:
	setmapscene GOLDENROD_DEPT_STORE_B1F, SCENE_GOLDENRODDEPTSTOREB1F_BOXES
	endcallback

GoldenrodDeptStoreElevatorScript:
	opentext
	elevator GoldenrodDeptStoreElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done:
	end

GoldenrodDeptStoreElevatorData:
	db 6 ; floors
;	elevfloor FLOOR_6F,  1, GOLDENROD_DEPT_STORE_6F  ;2
	elevfloor FLOOR_5F,  1, GOLDENROD_DEPT_STORE_5F  ;3
	elevfloor FLOOR_4F,  1, GOLDENROD_DEPT_STORE_4F  ;3
	elevfloor FLOOR_3F,  1, GOLDENROD_DEPT_STORE_3F  ;3
	elevfloor FLOOR_2F,  1, GOLDENROD_DEPT_STORE_2F  ;3
	elevfloor FLOOR_1F,  1, GOLDENROD_DEPT_STORE_1F  ;4
	elevfloor FLOOR_B1F, 1, GOLDENROD_DEPT_STORE_B1F ;2
	db -1 ; end

GoldenrodDeptStoreElevatorDirectory:
	jumptext GoldenrodDeptStoreElevatorDirectoryText
GoldenrodDeptStoreElevatorDirectoryText:
	text "1F SERVICE COUNTER"

	para "2F TRAINER's"
	line "   MARKET"

	para "3F BATTLE"
	line "   COLLECTION"

	para "4F MEDICINE BOX"

	para "5F TM CORNER"
	done

GoldenrodDeptStoreElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, GOLDENROD_DEPT_STORE_1F, -1
	warp_event  2,  3, GOLDENROD_DEPT_STORE_1F, -1

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, GoldenrodDeptStoreElevatorScript
	bg_event  2,  0, BGEVENT_READ, GoldenrodDeptStoreElevatorDirectory

	def_object_events
