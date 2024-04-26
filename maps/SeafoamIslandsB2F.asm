	object_const_def
;	const SEAFOAM_ISLANDS_B2F_POKE_BALL

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks

;SeafoamIslandsB2FHiddenPearl1:
;	hiddenitem PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL1

;SeafoamIslandsB2FHiddenPearl2:
;	hiddenitem PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL2

;SeafoamIslandsB2FWaterStone:
;	itemball WATER_STONE

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 2 ; 1
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 2 ; 2
	warp_event 21,  6, SEAFOAM_ISLANDS_B3F, 0 ; 3 pit
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 5 ; 4
	warp_event 16,  7, SEAFOAM_ISLANDS_B3F, 0 ; 5 pit
	warp_event 25, 11, SEAFOAM_ISLANDS_B1F, 7 ; 6
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 4 ; 7
	warp_event 25, 13, SEAFOAM_ISLANDS_B3F, 5 ; 8
	warp_event 19, 15, SEAFOAM_ISLANDS_B1F, 8 ; 9

	def_coord_events

	def_bg_events
;	bg_event 23, 12, BGEVENT_ITEM, SeafoamIslandsB2FHiddenPearl1
;	bg_event 11, -2, BGEVENT_ITEM, SeafoamIslandsB2FHiddenPearl2

	def_object_events
;	object_event 12, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB2FWaterStone, EVENT_SEAFOAM_ISLANDS_B2F_WATER_STONE
