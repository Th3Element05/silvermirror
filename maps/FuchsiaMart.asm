	object_const_def

FuchsiaMart_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaMartClerkScript:
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

FuchsiaMartMedScript:
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

FuchsiaMartPokefanMScript:
	jumptextfaceplayer FuchsiaMartPokefanMText
FuchsiaMartPokefanMText:
	text "I'm looking for"
	line "SAFARI ZONE"
	cont "souvenirs."
	done

FuchsiaMartCooltrainerFScript:
	jumptextfaceplayer FuchsiaMartCooltrainerFText
FuchsiaMartCooltrainerFText:
	text "They don't sell"
	line "SAFARI BALLs here."

	para "You can only use"
	line "those inside the"
	cont "SAFARI ZONE!"
	done

FuchsiaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, FUCHSIA_CITY, 2
	warp_event  4,  7, FUCHSIA_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaMartMedScript, -1
	object_event  5,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMartPokefanMScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMartCooltrainerFScript, -1
