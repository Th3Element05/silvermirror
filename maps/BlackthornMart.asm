	object_const_def

BlackthornMart_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornMartClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

BlackthornMartMedScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

BlackthornMartCooltrainerMScript:
	jumptextfaceplayer BlackthornMartCooltrainerMText
BlackthornMartCooltrainerMText:
	text "You can't buy MAX"
	line "REVIVE in most"
	cont "shops."

	para "It will restore"
	line "a fainted #MON"
	cont "to full HP!"

	para "But it doesn't"
	line "restore PP of the"
	cont "#MON's moves."
	done

BlackthornMartBlackBeltScript:
	jumptextfaceplayer BlackthornMartBlackBeltText
BlackthornMartBlackBeltText:
	text "MAX REPEL keeps"
	line "weak #MON away"
	cont "from you."

	para "It's the longest"
	line "lasting of the"
	cont "REPEL sprays."
	done

BlackthornMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, BLACKTHORN_CITY, 4
	warp_event  4,  7, BLACKTHORN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornMartMedScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartCooltrainerMScript, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornMartBlackBeltScript, -1
