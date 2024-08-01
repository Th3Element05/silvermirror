	object_const_def

CeladonDeptStore4F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore4FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_EVOLUTION_1
	closetext
	end

CeladonDeptStore4FSuperNerdScript:
	jumptextfaceplayer CeladonDeptStore4FSuperNerdText
CeladonDeptStore4FSuperNerdText:
	text "I'm getting a"
	line "# DOLL for my"
	cont "girl friend!"
	done

CeladonDeptStore4FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore4FYoungsterText
CeladonDeptStore4FYoungsterText:
	text "I heard something"
	line "useful."

	para "You can run from"
	line "wild #MON by"
	cont "distracting them"
	cont "with a # DOLL!"
	done

CeladonDeptStore4FDirectory:
	jumptext CeladonDeptStore4FDirectoryText
CeladonDeptStore4FDirectoryText:
	text "4F: WISEMAN GIFTS"

	para "Evolution Stones"
	line "on sale now!"
	done

CeladonDeptStore4FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1
	warp_event 10,  0, CELADON_DEPT_STORE_5F, 3
	warp_event 12,  0, CELADON_DEPT_STORE_3F, 2

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, CeladonDeptStore4FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore4FElevatorButton

	def_object_events
	object_event  4,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FClerkScript, -1
	object_event 14,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FSuperNerdScript, -1
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FYoungsterScript, -1
