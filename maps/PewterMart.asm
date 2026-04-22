	object_const_def

PewterMart_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMartClerkScript:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifgreater 4, .BallsFive
	ifequal 3, .BallsThree
	ifequal 1, .BallsOne
	pokemart MARTTYPE_STANDARD, MART_BALLS_ZERO
	closetext
	end
.BallsOne
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

PewterMartMedScript:
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

PewterMartYoungsterScript:
	jumptextfaceplayer PewterMartYoungsterText
PewterMartYoungsterText:
	text "A shady, old man"
	line "got me to buy"
	cont "this really weird"
	roll "fish #MON!"

	para "It's totally weak"
	line "and it cost ¥500!"
	done

PewterMartSuperNerdScript:
	jumptextfaceplayer PewterMartSuperNerdText
PewterMartSuperNerdText:
	text "Good things can"
	line "happen if you"
	cont "raise #MON"
	roll "diligently, even"
	cont "the weak ones!"
	done

PewterMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 3
	warp_event  4,  7, PEWTER_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterMartMedScript, -1
	object_event  8,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMartYoungsterScript, -1
	object_event  4,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, PewterMartSuperNerdScript, -1
