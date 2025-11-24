	object_const_def

BehindBillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BehindBillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  3, BILLS_HOUSE, 1
	warp_event 10, 15, BILLS_HOUSE, 1
;	warp_event 16,  3, DARK_CAVE_VIOLET_ENTRANCE, 4
;	warp_event 10, 15, DARK_CAVE_VIOLET_ENTRANCE, 5

	def_coord_events

	def_bg_events

	def_object_events