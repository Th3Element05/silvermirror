	object_const_def

Route10Pokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, RockTunnelFlypointCallback

RockTunnelFlypointCallback:
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	endcallback

Route10Pokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

Route10Pokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

Route10Pokecenter1FBenchGuyScript:
	jumptext Route10Pokecenter1FBenchGuyText
Route10Pokecenter1FBenchGuyText:
	text "I heard that"
	line "GHOSTs haunt"
	cont "LAVENDER TOWN!"
	done

Route10Pokecenter1FGentlemanScript:
	jumptextfaceplayer Route10Pokecenter1FGentlemanText
Route10Pokecenter1FGentlemanText:
	text "The element types"
	line "of #MON make"
	cont "them stronger"
	cont "than some types"
	cont "and weaker than"
	cont "others!"
	done

Route10Pokecenter1FFisherScript:
	jumptextfaceplayer Route10Pokecenter1FFisherText
Route10Pokecenter1FFisherText:
	text "I sold a useless"
	line "NUGGET for ¥5000!"
	done

Route10Pokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_10_NORTH, 1
	warp_event  4,  7, ROUTE_10_NORTH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10Pokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route10Pokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route10Pokecenter1FBenchGuyScript, -1
	object_event  2,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route10Pokecenter1FFisherScript, -1
	object_event  6,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route10Pokecenter1FGentlemanScript, -1
