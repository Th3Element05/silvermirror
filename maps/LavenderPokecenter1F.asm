	object_const_def

LavenderPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LavenderPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

LavenderPokecenter1FBenchGuyScript:
	jumptext LavenderPokecenter1FBenchGuyText
LavenderPokecenter1FBenchGuyText:
	text "CUBONEs wear"
	line "skulls, right?"

	para "People will pay a"
	line "lot for one!"
	done

LavenderPokecenter1FGirlScript:
	jumptextfaceplayer LavenderPokecenter1FGirlText
LavenderPokecenter1FGirlText:
	text "I saw CUBONE's"
	line "mother die trying"
	cont "to escape from"
	cont "TEAM ROCKET!"
	done

LavenderPokecenter1FGentlemanScript:
	jumptextfaceplayer LavenderPokecenter1FGentlemanText
LavenderPokecenter1FGentlemanText:
	text "TEAM ROCKET will"
	line "do anything for"
	cont "the sake of gold!"
	done

LavenderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 1
	warp_event  4,  7, LAVENDER_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FBenchGuyScript, -1
	object_event  2,  6, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FGirlScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FGentlemanScript, -1
