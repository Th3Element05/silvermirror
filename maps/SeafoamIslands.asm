	object_const_def

SeafoamIslands_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslands_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  3, SEAFOAM_ISLANDS_B1F, 1 ; 1
	warp_event  7,  5, SEAFOAM_ISLANDS_B1F, 3 ; 2
	warp_event 16,  7, SEAFOAM_ISLANDS_B1F, 1 ; 3 pit
	warp_event 24,  7, SEAFOAM_ISLANDS_B1F, 1 ; 4 pit
	warp_event  5, 15, ROUTE_20, 1            ; 5
	warp_event 23, 17, SEAFOAM_ISLANDS_B1F, 9 ; 6
	warp_event 25, 17, ROUTE_20, 2            ; 7

	def_coord_events

	def_bg_events

	def_object_events
