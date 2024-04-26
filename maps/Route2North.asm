	object_const_def

Route2North_MapScripts:
	def_scene_scripts

	def_callbacks

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText
Route2DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route2North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 17, ROUTE_2_NUGGET_HOUSE, 1
	warp_event 16, 33, ROUTE_2_GATE, 1
	warp_event 17, 33, ROUTE_2_GATE, 2
	warp_event 12,  9, DIGLETTS_CAVE, 3
	warp_event  3, 11, VIRIDIAN_FOREST_GATE_N, 1
	warp_event  4, 11, VIRIDIAN_FOREST_GATE_N, 2

	def_coord_events

	def_bg_events
	bg_event 11, 11, BGEVENT_READ, Route2DiglettsCaveSign

	def_object_events
