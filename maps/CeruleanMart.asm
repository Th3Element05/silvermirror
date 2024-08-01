	object_const_def

CeruleanMart_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanMartClerkScript:
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

CeruleanMartMedScript:
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

CeruleanMartCooltrainerFScript:
	jumptextfaceplayer CeruleanMartCooltrainerFText
CeruleanMartCooltrainerFText:
	text "Have you seen any"
	line "RARE CANDY?"

	para "It's supposed to"
	line "make #MON go"
	cont "up one level!"
	done

CeruleanMartCooltrainerMScript:
	jumptextfaceplayer CeruleanMartCooltrainerMText
CeruleanMartCooltrainerMText:
	text "Use REPEL to keep"
	line "bugs and weak"
	cont "#MON away."

	para "Put your strongest"
	line "#MON at the"
	cont "top of the list"
	cont "for best results!"
	done

CeruleanMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 9
	warp_event  4,  7, CERULEAN_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanMartMedScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMartCooltrainerFScript, -1
	object_event  3,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMartCooltrainerMScript, -1
