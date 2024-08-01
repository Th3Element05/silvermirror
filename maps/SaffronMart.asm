	object_const_def

SaffronMart_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronMartClerkScript:
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

SaffronMartMedScript:
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

SaffronMartCooltrainerMScript:
	jumptextfaceplayer SaffronMartCooltrainerMText
SaffronMartCooltrainerMText:
	text "MAX REPEL lasts"
	line "longer than SUPER"
	cont "REPEL for keeping"
	cont "weaker #MON"
	cont "away!"
	done


SaffronMartCooltrainerFScript:
	jumptextfaceplayer SaffronMartCooltrainerFText
SaffronMartCooltrainerFText:
	text "REVIVE is costly,"
	line "but it revives"
	cont "fainted #MON!"
	done

SaffronMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 3
	warp_event  4,  7, SAFFRON_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronMartMedScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronMartCooltrainerMScript, -1
	object_event  8,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMartCooltrainerFScript, -1
