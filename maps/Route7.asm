Route7_MapScripts:
	def_scene_scripts

	def_callbacks

Route7UndergroundPathSign:
	jumptext Route7UndergroundPathSignText
Route7UndergroundPathSignText:
	text "UNDERGROUND PATH"
	line "CELADON CITY -"
	cont "LAVENDER TOWN"
	done

Route7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 12, ROUTE_7_SAFFRON_GATE, 1
	warp_event 15, 13, ROUTE_7_SAFFRON_GATE, 2
	warp_event  7, 17, ROUTE_7_UNDERGROUND_PATH_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event  5, 17, BGEVENT_READ, Route7UndergroundPathSign

	def_object_events
