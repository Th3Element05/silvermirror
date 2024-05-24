	object_const_def

SaffronPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SaffronPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

SaffronPokecenter1FBenchGuyScript:
	jumptext SaffronPokecenter1FBenchGuyText
SaffronPokecenter1FBenchGuyText:
	text "It would be great"
	line "if the ELITE FOUR"
	cont "came and stomped"
	cont "TEAM ROCKET!"
	done

SaffronPokecenter1FBeautyScript:
	jumptextfaceplayer SaffronPokecenter1FBeautyText
SaffronPokecenter1FBeautyText:
	text "Different #MON"
	line "species grow at"
	cont "different rates."
	done

SaffronPokecenter1FGentlemanScript:
	jumptextfaceplayer SaffronPokecenter1FGentlemanText
SaffronPokecenter1FGentlemanText:
	text "SILPH CO. is very"
	line "famous. That's"
	cont "why it attracted"
	cont "TEAM ROCKET!"
	done

SaffronPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 4
	warp_event  4,  7, SAFFRON_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FBenchGuyScript, -1
	object_event  5,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FBeautyScript, -1
	object_event  8,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FGentlemanScript, -1
