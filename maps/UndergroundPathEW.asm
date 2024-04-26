UndergroundPathEW_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathEWHiddenNugget:
	hiddenitem NUGGET, EVENT_UNDERGROUND_PATH_EW_HIDDEN_NUGGET

UndergroundPathEWHiddenElixer:
	hiddenitem ELIXER, EVENT_UNDERGROUND_PATH_EW_HIDDEN_ELIXER

UndergroundPathEW_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, ROUTE_7_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event 30,  2, ROUTE_8_UNDERGROUND_PATH_ENTRANCE, 3

	def_coord_events

	def_bg_events
	bg_event  8,  2, BGEVENT_ITEM, UndergroundPathEWHiddenNugget
	bg_event 15,  4, BGEVENT_ITEM, UndergroundPathEWHiddenElixer

	def_object_events
