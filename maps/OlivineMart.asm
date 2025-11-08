	object_const_def

OlivineMart_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineMartClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

OlivineMartMedScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

OlivineMartCooltrainerFScript:
	jumptextfaceplayer OlivineMartCooltrainerFText
OlivineMartCooltrainerFText:
	text "Do your #MON"
	line "already know the"
	cont "move for carrying"
	cont "people on water?"
	done

OlivineMartLassScript:
	jumptextfaceplayer OlivineMartLassText
OlivineMartLassText:
	text "My BUTTERFREE came"
	line "from my boyfriend"
	cont "overseas."

	para "It carried some"
	line "MAIL from him."

	para "Want to know what"
	line "it says?"

	para "Let's see… Nope!"
	line "It's a secret!"
	done

OlivineMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, OLIVINE_CITY, 8
	warp_event  4,  7, OLIVINE_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlivineMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineMartMedScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OlivineMartCooltrainerFScript, -1
	object_event  2,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineMartLassScript, -1
