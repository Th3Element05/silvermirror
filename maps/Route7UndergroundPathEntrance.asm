	object_const_def

Route7UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route7UndergroundPathEntrancePokefanMScript:
	jumptextfaceplayer Route7UndergroundPathEntrancePokefanMText
Route7UndergroundPathEntrancePokefanMText:
	text "I heard a sleepy"
	line "#MON appeared"
	cont "near CELADON CITY."
	done

Route7UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_7, 3
	warp_event  4,  7, ROUTE_7, 3
	warp_event  4,  3, UNDERGROUND_PATH_EW, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route7UndergroundPathEntrancePokefanMScript, -1
