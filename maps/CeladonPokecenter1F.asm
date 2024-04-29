	object_const_def
	const CELADONPOKECENTER1F_NURSE

CeladonPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CeladonPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

CeladonPokecenter1FBenchGuyScript:
	jumptext CeladonPokecenter1FBenchGuyText
CeladonPokecenter1FBenchGuyText:
	text "If I had a BIKE,"
	line "I would go to"
	cont "CYCLING ROAD!"
	done

CeladonPokecenter1FGentlemanScript:
	jumptextfaceplayer CeladonPokecenter1FGentlemanText
CeladonPokecenter1FGentlemanText:
	text "# FLUTE awakens"
	line "#MON with a"
	cont "sound that only"
	cont "they can hear!"
	done

CeladonPokecenter1FBeautyScript:
	jumptextfaceplayer CeladonPokecenter1FBeautyText
CeladonPokecenter1FBeautyText:
	text "I rode uphill on"
	line "CYCLING ROAD from"
	cont "FUCHSIA!"
	done

CeladonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 5
	warp_event  4,  7, CELADON_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FBenchGuyScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FGentlemanScript, -1
	object_event 10,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FBeautyScript, -1