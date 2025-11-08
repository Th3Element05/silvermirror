	object_const_def

CianwoodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CianwoodPokecenter1FLassScript:
	jumptextfaceplayer CianwoodPokecenter1FLassText
CianwoodPokecenter1FLassText:
	text "Have you met the"
	line "#MANIAC?"

	para "He's always brag-"
	line "ging about his"
	cont "rare #MON."
	done

CianwoodPokecenter1FSuperNerdScript:
	jumptextfaceplayer CianwoodPokecenter1FSuperNerdText
CianwoodPokecenter1FSuperNerdText:
	text "I love showing off"
	line "the #MON that I've"
	cont "raised."

	para "Don't you?"

	para "I'm going to get"
	line "into a bunch of"
	cont "battles, and show"
	cont "off my #MON!"
	done

CianwoodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CIANWOOD_CITY, 3
	warp_event  4,  7, CIANWOOD_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FLassScript, -1
	object_event  8,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FSuperNerdScript, -1
