	object_const_def

CherrygroveMart_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveMartClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

CherrygroveMartMedScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

;CherrygroveMartCooltrainerMScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue .PokeBallsInStock
;	writetext CherrygroveMartCooltrainerMText
;	waitbutton
;	closetext
;	end
;
;.PokeBallsInStock:
;	writetext CherrygroveMartCooltrainerMText_PokeBallsInStock
;	waitbutton
;	closetext
;	end
;
;CherrygroveMartCooltrainerMText:
;	text "They're fresh out"
;	line "of # BALLS!"
;
;	para "When will they get"
;	line "more of them?"
;	done
;
;CherrygroveMartCooltrainerMText_PokeBallsInStock:
;	text "# BALLS are in"
;	line "stock! Now I can"
;	cont "catch #MON!"
;	done

CherrygroveMartYoungsterScript:
	jumptextfaceplayer CherrygroveMartYoungsterText
CherrygroveMartYoungsterText:
	text "When I was walking"
	line "in the grass, a"

	para "bug #MON poi-"
	line "soned my #MON!"

	para "I just kept going,"
	line "but then my"
	cont "#MON fainted."

	para "You should keep an"
	line "ANTIDOTE with you."
	done

CherrygroveMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CHERRYGROVE_CITY, 1
	warp_event  4,  7, CHERRYGROVE_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveMartMedScript, -1
;	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveMartCooltrainerMScript, -1
	object_event  7,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveMartYoungsterScript, -1
