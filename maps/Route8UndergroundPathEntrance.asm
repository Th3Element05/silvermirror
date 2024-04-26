	object_const_def

Route8UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route8UndergroundPathEntranceGirlScript:
	jumptextfaceplayer Route8UndergroundPathEntranceGirlText
Route8UndergroundPathEntranceGirlText:
	text "The dept. store"
	line "in CELADON has a"
	cont "great selection!"
	done

Route8UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_8, 3
	warp_event  4,  7, ROUTE_8, 3
	warp_event  4,  3, UNDERGROUND_PATH_EW, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route8UndergroundPathEntranceGirlScript, -1
