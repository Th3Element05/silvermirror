	object_const_def

CinnabarMart_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarMartClerkScript:
	faceplayer
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

CinnabarMartMedScript:
	opentext
	readvar VAR_BADGES
	ifgreater 5, .MedSix
	pokemart MARTTYPE_STANDARD, MART_MED_FOUR
	closetext
	end
.MedSix
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

CinnabarMartSuperNerdScript:
	jumptextfaceplayer CinnabarMartSuperNerdText
CinnabarMartSuperNerdText:
	text "Don't they have"
	line "X ATTACK? It's"
	cont "good for battles!"
	done

CinnabarMartScientistScript:
	jumptextfaceplayer CinnabarMartScientistText
CinnabarMartScientistText:
	text "It never hurts to"
	line "have extra items!"
	done

CinnabarMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 5
	warp_event  4,  7, CINNABAR_ISLAND, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CinnabarMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CinnabarMartMedScript, -1
	object_event  7,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CinnabarMartSuperNerdScript, -1
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarMartScientistScript, -1
