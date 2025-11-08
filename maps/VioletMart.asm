	object_const_def

VioletMart_MapScripts:
	def_scene_scripts

	def_callbacks

VioletMartClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

VioletMartMedScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

VioletMartGrannyScript:
	jumptextfaceplayer VioletMartGrannyText
VioletMartGrannyText:
	text "When you first"
	line "catch a #MON,"
	cont "it may be weak."

	para "But it will even-"
	line "tually grow to be"
	cont "strong."

	para "It's important to"
	line "treat #MON with"
	cont "love."
	done

VioletMartCooltrainerMScript:
	jumptextfaceplayer VioletMartCooltrainerMText
VioletMartCooltrainerMText:
	text "#MON can hold"
	line "items like POTION"
	cont "and ANTIDOTE."

	para "But they don't"
	line "appear to know how"
	cont "to use manmade"
	cont "items."
	done

VioletMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 1
	warp_event  4,  7, VIOLET_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletMartMedScript, -1
	object_event  7,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletMartGrannyScript, -1
	object_event  5,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletMartCooltrainerMScript, -1
