	object_const_def

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks

;SeafoamIslandsB3FHiddenMaxRevive:
;	hiddenitem MAX_REVIVE, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_MAX_REVIVE

;SeafoamIslandsB3FHiddenRareCandy:
;	hiddenitem RARE_CANDY, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_RARE_CANDY

;SeafoamIslandsB3FBigPearl:
;	itemball BIG_PEARL

;SeafoamIslandsB3FRevive:
;	itemball REVIVE

;SeafoamIslandsB3FBoulder:
;	jumpstd StrengthBoulderScript

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  1, SEAFOAM_ISLANDS_B4F, 1 ; 1
	warp_event 25,  3, SEAFOAM_ISLANDS_B2F, 2 ; 2
	warp_event  8,  7, SEAFOAM_ISLANDS_B4F, 2 ; 3
	warp_event  5, 12, SEAFOAM_ISLANDS_B2F, 7 ; 4
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 8 ; 5
	warp_event  3, 16, SEAFOAM_ISLANDS_B4F, 0 ; 6 pit
	warp_event  6, 17, SEAFOAM_ISLANDS_B4F, 0 ; 7 pit

	def_coord_events

	def_bg_events
;	bg_event 24, 17, BGEVENT_ITEM, SeafoamIslandsB3FHiddenMaxRevive
;	bg_event  3,  3, BGEVENT_ITEM, SeafoamIslandsB3FHiddenRareCandy

	def_object_events
