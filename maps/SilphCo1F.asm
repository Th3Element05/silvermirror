	object_const_def

SilphCo1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 24,  0, SILPH_CO_2F, 3
	warp_event 10, 17, SAFFRON_CITY, 6
	warp_event 11, 17, SAFFRON_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
