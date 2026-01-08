	object_const_def

Route27East_MapScripts:
	def_scene_scripts

	def_callbacks

TohjoFallsEastSign:
	jumptext TohjoFallsEastSignText
TohjoFallsEastSignText:
	text "TOHJO FALLS"

	para "THE LINK BETWEEN"
	line "KANTO AND JOHTO"
	done

Route27RareCandy:
	itemball RARE_CANDY

Route27East_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, TOHJO_FALLS, 2

	def_coord_events

	def_bg_events
	bg_event  7,  7, BGEVENT_READ, TohjoFallsEastSign

	def_object_events
	object_event 25, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route27RareCandy, EVENT_ROUTE_27_RARE_CANDY
