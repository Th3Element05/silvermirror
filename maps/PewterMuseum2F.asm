	object_const_def

PewterMuseum2F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseum2F_Scientist_Script:
	jumptextfaceplayer PewterMuseum2F_Scientist_Text

PewterMuseum2F_Granny_Script:
	jumptextfaceplayer PewterMuseum2F_Granny_Text

PewterMuseum2F_Youngster_Script:
	jumptextfaceplayer PewterMuseum2F_Youngster_Text

PewterMuseum2F_PokefanM_Script:
	jumptextfaceplayer PewterMuseum2F_PokefanM_Text

PewterMuseum2F_Girl_Script:
	jumptextfaceplayer PewterMuseum2F_Girl_Text

PewterMuseum2FMeteoriteSign:
	jumptext PewterMuseum2FMeteoriteSignText

PewterMuseum2FShuttleSign:
	jumptext PewterMuseum2FShuttleSignText

PewterMuseum2F_Scientist_Text:
	text "Welcome to the"
	line "2nd floor space"
	cont "exhibit!"
	done

PewterMuseum2F_Granny_Text:
	text "I remember when"
	line "they first sent"
	cont "man into space!"

	para "I watched it on a"
	line "colored TV so many"
	cont "years ago!"
	done

PewterMuseum2F_Youngster_Text:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

PewterMuseum2F_PokefanM_Text:
	text "Yeah, a PIKACHU"
	line "soon, I promise!"
	done

PewterMuseum2F_Girl_Text:
	text "I want a PIKACHU!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done

PewterMuseum2FMeteoriteSignText:
	text "A meteorite that"
	line "fell on MT.MOON."
	
	para "It is thought to"
	line "be a MOON STONE."
	done

PewterMuseum2FShuttleSignText:
	text "SPACE SHUTTLE"
	done

PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, PEWTER_MUSEUM_1F, 5

	def_coord_events

	def_bg_events
	bg_event  3,  4, BGEVENT_READ, PewterMuseum2FMeteoriteSign
	bg_event 10,  3, BGEVENT_READ, PewterMuseum2FShuttleSign
	bg_event 11,  3, BGEVENT_READ, PewterMuseum2FShuttleSign

	def_object_events
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_Scientist_Script, -1
	object_event  1,  4, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_Granny_Script, -1
	object_event  5,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_Youngster_Script, -1
	object_event 11,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_Girl_Script, -1
	object_event 12,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_PokefanM_Script, -1
