CeladonDeptStoreElevator_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStoreElevatorScript:
	opentext
	elevator CeladonDeptStoreElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done:
	end

CeladonDeptStoreElevatorData:
	db 5 ; floors
;	elevfloor FLOOR_6F, 1, CELADON_DEPT_STORE_6F
	elevfloor FLOOR_5F, 1, CELADON_DEPT_STORE_5F
	elevfloor FLOOR_4F, 1, CELADON_DEPT_STORE_4F
	elevfloor FLOOR_3F, 1, CELADON_DEPT_STORE_3F
	elevfloor FLOOR_2F, 1, CELADON_DEPT_STORE_2F
	elevfloor FLOOR_1F, 1, CELADON_DEPT_STORE_1F
	db -1 ; end

CeladonDeptStoreElevatorDirectory:
	jumptext CeladonDeptStoreElevatorDirectoryText
CeladonDeptStoreElevatorDirectoryText:
	text "1F: SERVICE"
	line "    COUNTER"

	para "2F: TRAINER's"
	line "    MARKET"

	para "3F: TM SHOP"

	para "4F: WISEMAN GIFTS"

	para "5F: DRUG STORE"
	done

CeladonDeptStoreElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, CELADON_DEPT_STORE_1F, -1
	warp_event  2,  3, CELADON_DEPT_STORE_1F, -1

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, CeladonDeptStoreElevatorScript
	bg_event  2,  0, BGEVENT_READ, CeladonDeptStoreElevatorDirectory
	def_object_events
