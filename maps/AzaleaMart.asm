	object_const_def

AzaleaMart_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaMartClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

AzaleaMartMedScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

AzaleaMartCooltrainerMScript:
	jumptextfaceplayer AzaleaMartCooltrainerMText
AzaleaMartCooltrainerMText:
	text "Normal #BALLs"
	line "are alright, but"
	cont "I wish KURT would"
	roll "make me some of"
	cont "his custom BALLs."
	done

AzaleaMartBugCatcherScript:
	jumptextfaceplayer AzaleaMartBugCatcherText
AzaleaMartBugCatcherText:
	text "A GREAT BALL is"
	line "better for catch-"
	cont "ing #MON than"
	roll "a #BALL."

	para "But KURT's might"
	line "be better some-"
	cont "times."
	done

AzaleaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 3
	warp_event  4,  7, AZALEA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaMartMedScript, -1
	object_event  4,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMartCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaMartBugCatcherScript, -1
