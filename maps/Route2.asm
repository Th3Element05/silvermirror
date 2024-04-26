	object_const_def

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

Route2Sign:
	jumptext Route2SignText

Route2HPUp:
	itemball HP_UP

Route2MoonStone:
	itemball MOON_STONE

Route2SignText:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText
Route2DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 11, VIRIDIAN_FOREST_GATE_N, 1 ; 1
	warp_event  4, 11, VIRIDIAN_FOREST_GATE_N, 2 ; 2
	warp_event  3, 35, VIRIDIAN_FOREST_GATE_S, 3 ; 3
	warp_event 16, 27, ROUTE_2_GATE, 1           ; 4
	warp_event 17, 27, ROUTE_2_GATE, 2           ; 5
	warp_event 15, 31, ROUTE_2_GATE, 3           ; 6
	warp_event 12,  9, DIGLETTS_CAVE, 3          ; 7
	warp_event 15, 17, ROUTE_2_NUGGET_HOUSE, 1   ; 8

	def_coord_events

	def_bg_events
	bg_event  5, 57, BGEVENT_READ, Route2Sign
	bg_event 11, 11, BGEVENT_READ, Route2DiglettsCaveSign

	def_object_events
	object_event 13, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2HPUp, EVENT_ROUTE_2_HP_UP
	object_event 13, 46, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MoonStone, EVENT_ROUTE_2_MOON_STONE
