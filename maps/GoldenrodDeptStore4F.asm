	object_const_def

GoldenrodDeptStore4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodDeptStore4FChangeBlockCallback

GoldenrodDeptStore4FChangeBlockCallback:
	changeblock 14, 0, $1b ; shelves
	changeblock  2, 2, $1a ; coolers
	changeblock  4, 2, $1a ; coolers
	endcallback

GoldenrodDeptStore4FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_VITAMINS_1
	closetext
	end

GoldenrodDeptStore4FGameboyKidScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStore4FGameboyKidText
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

GoldenrodDeptStore4FGameboyKidText:
	text "Some #MON only"
	line "evolve by being"
	cont "exposed to a"
	roll "Game Link cable."

	para "I know of four:"
	line "MACHOKE, KADABRA,"
	cont "HAUNTER and, um,"
	roll "GRAVELER."

	para "I heard there are"
	line "others too."
	done

GoldenrodDeptStore4FCooltrainerMScript:
	jumptextfaceplayer GoldenrodDeptStore4FCooltrainerMText
GoldenrodDeptStore4FCooltrainerMText:
	text "Hey. I love strong"
	line "#MON."

	para "I feed them PRO-"
	line "TEIN to crank up"
	cont "their ATTACK."
	done

GoldenrodDeptStore4FBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStore4FBugCatcherText
GoldenrodDeptStore4FBugCatcherText:
	text "IRON adds to your"
	line "#MON's DEFENSE."
	done

GoldenrodDeptStore4FDirectory:
	jumptext GoldenrodDeptStore4FDirectoryText
GoldenrodDeptStore4FDirectoryText:
	text "4F MEDICINE BOX"

	para "Let Us Pump Up"
	line "Your #MON!"
	done

GoldenrodDeptStore4FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1
	warp_event 12,  0, GOLDENROD_DEPT_STORE_5F, 3
	warp_event 10,  0, GOLDENROD_DEPT_STORE_3F, 2


	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, GoldenrodDeptStore4FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore4FElevatorButton

	def_object_events
	object_event 11,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FClerkScript, -1
	object_event  8,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FGameboyKidScript, -1
	object_event 14,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FCooltrainerMScript, -1
	object_event  4,  4, SPRITE_BOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FBugCatcherScript, -1
