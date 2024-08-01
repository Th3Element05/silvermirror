	object_const_def

CeladonDeptStore2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart2FClerkScript:
	opentext
	readvar VAR_BADGES
	ifgreater 4, .BallsFive
	pokemart MARTTYPE_STANDARD, MART_BALLS_THREE
	closetext
	end
.BallsFive
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

CeladonMart2FMedScript:
	opentext
	readvar VAR_BADGES
	ifgreater 5, .MedSix
	ifequal 4, .MedFour
	pokemart MARTTYPE_STANDARD, MART_MED_TWO
	closetext
	end
.MedFour
	pokemart MARTTYPE_STANDARD, MART_MED_FOUR
	closetext
	end
.MedSix
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

CeladonDeptStore2FElevatorButton:
	jumpstd ElevatorButtonScript
CeladonDeptStore2FPokefanMScript:
	jumptextfaceplayer CeladonDeptStore2FPokefanMText
CeladonDeptStore2FPokefanMText:
	text "SUPER REPEL keeps"
	line "weak #MON at"
	cont "bay..."

	para "Hmm, it's a more"
	line "powerful REPEL!"
	done

CeladonDeptStore2FLassScript:
	jumptextfaceplayer CeladonDeptStore2FLassText
CeladonDeptStore2FLassText:
	text "For long outings,"
	line "you should buy"
	cont "REVIVE."
	done

CeladonDeptStore2FDirectory:
	jumptext CeladonDeptStore2FDirectoryText
CeladonDeptStore2FDirectoryText:
	text "2F: TRAINER'S"
	line "    MARKET"

	para "Top Grade Items"
	line "for Trainers!"
	done

CeladonDeptStore2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1
	warp_event 10,  0, CELADON_DEPT_STORE_3F, 3
	warp_event 12,  0, CELADON_DEPT_STORE_1F, 2

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, CeladonDeptStore2FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore2FElevatorButton

	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonMart2FClerkScript, -1
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonMart2FMedScript, -1
	object_event 12,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FPokefanMScript, -1
	object_event  8,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FLassScript, -1
