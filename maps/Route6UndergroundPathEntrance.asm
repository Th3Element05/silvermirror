Route6UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route6UndergroundPathEntranceGirlScript:
	jumptextfaceplayer Route6UndergroundPathEntranceGirlText
Route6UndergroundPathEntranceGirlText:
	text "People often lose"
	line "things in that"
	cont "UNDERGROUND PATH."
	done

Route6UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_6, 1
	warp_event  4,  7, ROUTE_6, 1
	warp_event  4,  3, UNDERGROUND_PATH, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route6UndergroundPathEntranceGirlScript, -1
