	object_const_def

GoldenrodDeptStore1F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore1FReceptionistScript:
	jumptextfaceplayer GoldenrodDeptStore1FReceptionistText
GoldenrodDeptStore1FReceptionistText:
	text "Welcome to GOLDEN-"
	line "ROD DEPT.STORE."
	done

GoldenrodDeptStore1FPokefanFScript:
	jumptextfaceplayer GoldenrodDeptStore1FPokefanFText
GoldenrodDeptStore1FPokefanFText:
	text "I'm raring to shop"
	line "again today!"
	done

GoldenrodDeptStore1FBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStore1FBugCatcherText
GoldenrodDeptStore1FBugCatcherText:
	text "Mom's good at"
	line "bargain hunting."

	para "She always buys"
	line "stuff at lower"
	cont "prices."
	done

GoldenrodDeptStore1FDirectory:
	jumptext GoldenrodDeptStore1FDirectoryText
GoldenrodDeptStore1FDirectoryText:
	text "1F SERVICE COUNTER"

	para "2F TRAINER's"
	line "   MARKET"

	para "3F BATTLE"
	line "   COLLECTION"

	para "4F MEDICINE BOX"

	para "5F TM CORNER"

;	para "6F TRANQUIL SQUARE"
;
	para "ROOFTOP LOOKOUT"
	done

GoldenrodDeptStore1FCurrentFloorSign:
	jumptext GoldenrodDeptStore1FCurrentFloorSignText
GoldenrodDeptStore1FCurrentFloorSignText:
	text "1F: SERVICE"
	line "    COUNTER"
	done

GoldenrodDeptStore1FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1
	warp_event 12,  0, GOLDENROD_DEPT_STORE_2F, 3
	warp_event  7,  7, GOLDENROD_CITY, 12
	warp_event  8,  7, GOLDENROD_CITY, 12

	def_coord_events

	def_bg_events
	bg_event  9,  2, BGEVENT_READ, GoldenrodDeptStore1FDirectory
	bg_event 11,  0, BGEVENT_READ, GoldenrodDeptStore1FCurrentFloorSign
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore1FElevatorButton

	def_object_events
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FReceptionistScript, -1
	object_event  4,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FPokefanFScript, -1
	object_event  4,  6, SPRITE_BOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FBugCatcherScript, -1
