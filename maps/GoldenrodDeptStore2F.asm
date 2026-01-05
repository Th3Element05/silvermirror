	object_const_def

GoldenrodDeptStore2F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore2FBallClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

GoldenrodDeptStore2FMedClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

GoldenrodDeptStore2FYoungsterScript:
	jumptextfaceplayer GoldenrodDeptStore2FYoungsterText
GoldenrodDeptStore2FYoungsterText:
	text "#GEAR can store"
	line "up to ten phone"
	cont "numbers."

	para "It's hard to de-"
	line "cide which numbers"
	cont "to keep."
	done

GoldenrodDeptStore2FCooltrainerFScript:
	jumptextfaceplayer GoldenrodDeptStore2FCooltrainerFText
GoldenrodDeptStore2FCooltrainerFText:
	text "I got TOGEPI at"
	line "the GAME CORNER."

	para "Now it's my best"
	line "partner."
	done

GoldenrodDeptStore2FGentlemanScript:
	jumptextfaceplayer GoldenrodDeptStore2FGentlemanText
GoldenrodDeptStore2FGentlemanText:
	text "This DEPT.STORE"
	line "makes me realize"
	cont "that GOLDENROD is"
	cont "a big city."

	para "The selection here"
	line "is unmatched any-"
	cont "where else."
	done

GoldenrodDeptStore2FDirectory:
	jumptext GoldenrodDeptStore2FDirectoryText
GoldenrodDeptStore2FDirectoryText:
	text "2F TRAINER's"
	line "   MARKET"

	para "Your Travel"
	line "Companion"
	done

GoldenrodDeptStore2FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1
	warp_event 12,  0, GOLDENROD_DEPT_STORE_3F, 3
	warp_event 10,  0, GOLDENROD_DEPT_STORE_1F, 2


	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, GoldenrodDeptStore2FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore2FElevatorButton

	def_object_events
	object_event 12,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FBallClerkScript, -1
	object_event 10,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FMedClerkScript, -1
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FYoungsterScript, -1
	object_event  3,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FCooltrainerFScript, -1
	object_event 13,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FGentlemanScript, -1
