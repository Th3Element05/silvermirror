	object_const_def
;	const SEAFOAM_ISLANDS_B1F_BOULDER1
;	const SEAFOAM_ISLANDS_B1F_BOULDER2
;	const SEAFOAM_ISLANDS_B1F_BOULDER3
;	const SEAFOAM_ISLANDS_B1F_BOULDER4
;	const SEAFOAM_ISLANDS_B1F_BOULDER5
;	const SEAFOAM_ISLANDS_B1F_POKE_BALL1
;	const SEAFOAM_ISLANDS_B1F_POKE_BALL2

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks

;SeafoamIslandsB1FHiddenIceHeal:
;	hiddenitem ICE_HEAL, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_ICE_HEAL

;SeafoamIslandsB1FBoulder:
;	jumpstd StrengthBoulderScript

;SeafoamIslandsB1FMaxElixer:
;	itemball MAX_ELIXER

;SeafoamIslandsB1FIceHeal:
;	itemball ICE_HEAL

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  3, SEAFOAM_ISLANDS, 1     ; 1
	warp_event  5,  5, SEAFOAM_ISLANDS_B2F, 1 ; 2
	warp_event  7,  7, SEAFOAM_ISLANDS, 2     ; 3
	warp_event 28,  8, SEAFOAM_ISLANDS_B2F, 0 ; 4 pit
	warp_event 13,  9, SEAFOAM_ISLANDS_B2F, 4 ; 5
	warp_event 18,  9, SEAFOAM_ISLANDS_B2F, 0 ; 6 pit
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 6 ; 7
	warp_event 19, 17, SEAFOAM_ISLANDS_B2F, 9 ; 8
	warp_event 23, 17, SEAFOAM_ISLANDS, 6     ; 9

	def_coord_events

	def_bg_events
;	bg_event 14, 10, BGEVENT_ITEM, SeafoamIslandsB1FHiddenIceHeal

	def_object_events
;	object_event  1, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
;	object_event  6, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
;	object_event 32, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
;	object_event 31,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
;	object_event  4,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
;	object_event 30,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
;	object_event 21,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FMaxElixer, EVENT_SEAFOAM_ISLANDS_B1F_MAX_ELIXER
;	object_event 11,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FIceHeal, EVENT_SEAFOAM_ISLANDS_B1F_ICE_HEAL
