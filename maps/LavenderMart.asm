	object_const_def

LavenderMart_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderMartClerkScript:
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

LavenderMartMedScript:
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

LavenderMartPokefanMScript:
	jumptextfaceplayer LavenderMartPokefanMText
LavenderMartPokefanMText:
	text "You know REVIVE?"
	line "It revives any"
	cont "fainted #MON!"
	done

LavenderMartCooltrainerMScript:
	jumptextfaceplayer LavenderMartCooltrainerMText
LavenderMartCooltrainerMText:
	text "I found a NUGGET"
	line "in the mountains."

	para "I thought it was"
	line "useless, but it"
	cont "sold for ¥5000!"
	done

LavenderMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 5
	warp_event  4,  7, LAVENDER_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LavenderMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderMartMedScript, -1
	object_event  4,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartPokefanMScript, -1
	object_event  9,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartCooltrainerMScript, -1
