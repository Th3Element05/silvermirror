	object_const_def

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMartClerkScript:
	opentext
	readvar VAR_BADGES
	ifgreater 4, .BallsFive
	ifequal 3, .BallsThree
	pokemart MARTTYPE_STANDARD, MART_BALLS_ONE
	closetext
	end
.BallsThree
	pokemart MARTTYPE_STANDARD, MART_BALLS_THREE
	closetext
	end
.BallsFive
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

VermilionMartMedScript:
	opentext
	readvar VAR_BADGES
	ifgreater 5, .MedSix
	ifequal 4, .MedFour
	ifequal 2, .MedTwo
	pokemart MARTTYPE_STANDARD, MART_MED_ZERO
	closetext
	end
.MedTwo
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

VermilionMartCooltrainerFScript:
	jumptextfaceplayer VermilionMartCooltrainerFText
VermilionMartCooltrainerFText:
	text "I think #MON"
	line "can be good or"
	cont "evil. It depends"
	cont "on the trainer."
	done

VermilionMartCooltrainerMScript:
	jumptextfaceplayer VermilionMartCooltrainerMText
VermilionMartCooltrainerMText:
	text "There are evil"
	line "people who will"
	cont "use #MON for"
	cont "criminal acts."

	para "TEAM ROCKET"
	line "traffics in rare"
	cont "#MON."

	para "They also abandon"
	line "#MON that they"
	cont "consider not to"
	cont "be popular or"
	cont "useful."
	done

VermilionMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 5
	warp_event  4,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionMartMedScript, -1
	object_event  3,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionMartCooltrainerFScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMartCooltrainerMScript, -1
