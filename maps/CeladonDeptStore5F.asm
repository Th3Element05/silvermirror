	object_const_def

CeladonDeptStore5F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore5FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_VITAMINS
	closetext
	end

CeladonDeptStore5FClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_BATTLE
	closetext
	end

CeladonDeptStore5FGentlemanScript:
	jumptextfaceplayer CeladonDeptStore5FGentlemanText
CeladonDeptStore5FGentlemanText:
	text "#MON ability"
	line "enhancers can be"
	cont "bought only here."

	para "Use CALCIUM to"
	line "increase SPECIAL"
	cont "abilities."

	para "Use CARBOS to"
	line "increase SPEED."
	done

CeladonDeptStore5FSailorScript:
	jumptextfaceplayer CeladonDeptStore5FSailorText
CeladonDeptStore5FSailorText:
	text "I'm here for"
	line "#MON ability"
	cont "enhancers."

	para "PROTEIN increases"
	line "ATTACK power."

	para "IRON increases"
	line "DEFENSE!"
	done

CeladonDeptStore5FDirectory:
	jumptext CeladonDeptStore5FDirectoryText
CeladonDeptStore5FDirectoryText:
	text "5F: DRUG STORE"

	para "#MON vitamins"
	line "and supplements!"
	done

CeladonDeptStore5FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1
	warp_event 12,  0, CELADON_DEPT_STORE_ROOF, 1
	warp_event 10,  0, CELADON_DEPT_STORE_4F, 2

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, CeladonDeptStore5FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore5FElevatorButton

	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FClerk1Script, -1
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FClerk2Script, -1
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FGentlemanScript, -1
	object_event  1,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FSailorScript, -1
