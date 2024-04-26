UndergroundPath_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathNSHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_UNDERGROUND_PATH_NS_HIDDEN_FULL_RESTORE

UndergroundPathNSHiddenXSpecial:
	hiddenitem X_SPECIAL, EVENT_UNDERGROUND_PATH_NS_HIDDEN_X_SPECIAL

UndergroundPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  2, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event  1, 25, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 3

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_ITEM, UndergroundPathNSHiddenFullRestore
	bg_event  3, 19, BGEVENT_ITEM, UndergroundPathNSHiddenXSpecial

	def_object_events
