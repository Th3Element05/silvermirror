	object_const_def

VermilionPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

VermilionPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

VermilionPokecenter1FBenchGuyScript:
	jumptext VermilionPokecenter1FBenchGuyText
VermilionPokecenter1FBenchGuyText:
	text "It is true that a"
	line "higher level"
	cont "#MON will be"
	cont "more powerful…"

	para "But, all #MON"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #MON."
	done

VermilionPokecenter1FSailorScript:
	jumptextfaceplayer VermilionPokecenter1FSailorText
VermilionPokecenter1FSailorText:
	text "My #MON was"
	line "poisoned! It"
	cont "fainted while we"
	cont "were walking!"
	done

VermilionPokecenter1FGuruScript:
	jumptextfaceplayer VermilionPokecenter1FGuruText
VermilionPokecenter1FGuruText:
	text "Even if they are"
	line "the same level,"
	cont "#MON can have"
	cont "very different"
	cont "abilities."

	para "A #MON raised"
	line "by a trainer is"
	cont "stronger than one"
	cont "in the wild."
	done

VermilionPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 2
	warp_event  4,  7, VERMILION_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FBenchGuyScript, -1
	object_event  5,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FSailorScript, -1
	object_event 10,  5, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FGuruScript, -1
