	object_const_def
;	const ROUTE2S_POKE_BALL1
;	const ROUTE2S_POKE_BALL2

Route2South_MapScripts:
	def_scene_scripts

	def_callbacks

Route2HPUp:
	itemball HP_UP

Route2MoonStone:
	itemball MOON_STONE

Route2Sign:
	jumptext Route2SignText
Route2SignText:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

Route2South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, ROUTE_2_GATE, 3
	warp_event  3,  5, VIRIDIAN_FOREST_GATE_S, 3

	def_coord_events

	def_bg_events
	bg_event  5, 27, BGEVENT_READ, Route2Sign

	def_object_events
	object_event 13,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2HPUp, EVENT_ROUTE_2_HP_UP
	object_event 13, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MoonStone, EVENT_ROUTE_2_MOON_STONE
