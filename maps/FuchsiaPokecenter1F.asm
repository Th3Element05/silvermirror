	object_const_def

FuchsiaPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

FuchsiaPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

FuchsiaPokecenter1FBenchGuyScript:
	jumptext FuchsiaPokecenter1FBenchGuyText
FuchsiaPokecenter1FBenchGuyText:
	text "If you're studying "
	line "#MON, visit"
	cont "the SAFARI ZONE."

	para "It has all sorts"
	line "of rare #MON."
	done

FuchsiaPokecenter1FRockerScript:
	jumptextfaceplayer FuchsiaPokecenter1FRockerText
FuchsiaPokecenter1FRockerText:
	text "You can't win"
	line "with just one"
	cont "strong #MON."

	para "It's tough, but"
	line "you have to raise"
	cont "them evenly."
	done

FuchsiaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerFText
FuchsiaPokecenter1FCooltrainerFText:
	text "There's a route"
	line "to the west of"
	cont "VIRIDIAN CITY."

	para "It goes north to"
	line "#MON LEAGUE,"
	cont "which oversees all"
	roll "#MON trainers."
	done

FuchsiaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, FUCHSIA_CITY, 8
	warp_event  4,  7, FUCHSIA_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FBenchGuyScript, -1
	object_event  2,  3, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FRockerScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerFScript, -1
