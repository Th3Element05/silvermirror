TinTowerFloors_MapScripts:
	def_scene_scripts

	def_callbacks

;3f
TinTower3FFullHeal:
	itemball FULL_HEAL

;4f
TinTower4FUltraBall:
	itemball ULTRA_BALL

TinTower4FPPUp:
	itemball PP_UP

TinTower4FEscapeRope:
	itemball ESCAPE_ROPE

TinTower4FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_TIN_TOWER_4F_HIDDEN_MAX_POTION

;5f
TinTower5FRareCandy:
	itemball RARE_CANDY

TinTower5FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_TIN_TOWER_5F_HIDDEN_FULL_RESTORE

TinTower5FHiddenCarbos:
	hiddenitem CARBOS, EVENT_TIN_TOWER_5F_HIDDEN_CARBOS

;6f
TinTower6FMaxPotion:
	itemball MAX_POTION

;7f
TinTower7FMaxRevive:
	itemball MAX_REVIVE

;8f
TinTower8FNugget:
	itemball NUGGET

TinTower8FMaxElixer:
	itemball MAX_ELIXER

TinTower8FFullRestore:
	itemball FULL_RESTORE

;9f
TinTower9FHPUp:
	itemball HP_UP

TinTowerFloors_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;2f
	warp_event  8, 154, TIN_TOWER_FLOORS, 3  ;2f-1  ;TIN_TOWER_3F, 1
	warp_event  8, 142, TIN_TOWER_1F, 3      ;2f-2
;3f
	warp_event  8, 134, TIN_TOWER_FLOORS, 1  ;3f-3  ;TIN_TOWER_2F, 1
	warp_event 14, 122, TIN_TOWER_FLOORS, 6  ;3f-4  ;TIN_TOWER_4F, 2
;4f
	warp_event  0, 104, TIN_TOWER_FLOORS, 10 ;4f-5  ;TIN_TOWER_5F, 2
	warp_event 14, 102, TIN_TOWER_FLOORS, 4  ;4f-6  ;TIN_TOWER_3F, 2
	warp_event  0, 114, TIN_TOWER_FLOORS, 11 ;4f-7  ;TIN_TOWER_5F, 3
	warp_event 15, 115, TIN_TOWER_FLOORS, 12 ;4f-8  ;TIN_TOWER_5F, 4
;5f
	warp_event  9, 95, TIN_TOWER_FLOORS, 14 ;5f-9  ;TIN_TOWER_6F, 2
	warp_event  0, 84, TIN_TOWER_FLOORS, 5  ;5f-10 ;TIN_TOWER_4F, 1
	warp_event  0, 94, TIN_TOWER_FLOORS, 7  ;5f-11 ;TIN_TOWER_4F, 3
	warp_event 15, 95, TIN_TOWER_FLOORS, 8  ;5f-12 ;TIN_TOWER_4F, 4
;6f
	warp_event  1, 69, TIN_TOWER_FLOORS, 15 ;6f-13 ;TIN_TOWER_7F, 1
	warp_event  9, 75, TIN_TOWER_FLOORS, 9  ;6f-14 ;TIN_TOWER_5F, 1
;7f
	warp_event  1, 49, TIN_TOWER_FLOORS, 13 ;7f-15 ;TIN_TOWER_6F, 1
	warp_event  8, 55, TIN_TOWER_FLOORS, 20 ;7f-16 ;TIN_TOWER_8F, 1
	warp_event 10, 47, TIN_TOWER_FLOORS, 18 ;7f-17 ;TIN_TOWER_7F, 4
	warp_event  6, 43, TIN_TOWER_FLOORS, 17 ;7f-18 ;TIN_TOWER_7F, 3
	warp_event  4, 49, TIN_TOWER_FLOORS, 30 ;7f-19 ;TIN_TOWER_9F, 5
;8f
	warp_event  0, 25, TIN_TOWER_FLOORS, 16 ;8f-20 ;TIN_TOWER_7F, 2
	warp_event  0, 31, TIN_TOWER_FLOORS, 26 ;8f-21 ;TIN_TOWER_9F, 1
	warp_event 14, 27, TIN_TOWER_FLOORS, 27 ;8f-22 ;TIN_TOWER_9F, 2
	warp_event  8, 23, TIN_TOWER_FLOORS, 28 ;8f-23 ;TIN_TOWER_9F, 3
	warp_event 12, 35, TIN_TOWER_FLOORS, 31 ;8f-24 ;TIN_TOWER_9F, 6
	warp_event  4, 29, TIN_TOWER_FLOORS, 32 ;8f-25 ;TIN_TOWER_9F, 7
;9f
	warp_event 10,  3, TIN_TOWER_FLOORS, 21 ;9f-26 ;TIN_TOWER_8F, 2
	warp_event  0,  5, TIN_TOWER_FLOORS, 22 ;9f-27 ;TIN_TOWER_8F, 3
	warp_event 10,  7, TIN_TOWER_FLOORS, 23 ;9f-28 ;TIN_TOWER_8F, 4
	warp_event  5,  9, TIN_TOWER_ROOF, 1 ;9f-29
	warp_event 14,  7, TIN_TOWER_FLOORS, 19 ;9f-30 ;TIN_TOWER_7F, 5
	warp_event  4, 13, TIN_TOWER_FLOORS, 24 ;9f-31 ;TIN_TOWER_8F, 5
	warp_event  6, 13, TIN_TOWER_FLOORS, 25 ;9f-32 ;TIN_TOWER_8F, 6

	def_coord_events

	def_bg_events
	;4f
	bg_event  9, 106, BGEVENT_ITEM, TinTower4FHiddenMaxPotion
	;5f
	bg_event 14, 94, BGEVENT_ITEM, TinTower5FHiddenFullRestore
	bg_event  1, 95, BGEVENT_ITEM, TinTower5FHiddenCarbos

	def_object_events
;3f
	object_event  1, 134, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower3FFullHeal, EVENT_TIN_TOWER_3F_FULL_HEAL
;4f
	object_event 12, 110, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FUltraBall, EVENT_TIN_TOWER_4F_ULTRA_BALL
	object_event 15, 114, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FPPUp, EVENT_TIN_TOWER_4F_PP_UP
	object_event  0, 112, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FEscapeRope, EVENT_TIN_TOWER_4F_ESCAPE_ROPE
;5f
	object_event  7, 89, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower5FRareCandy, EVENT_TIN_TOWER_5F_RARE_CANDY
;6f
	object_event  6, 67, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower6FMaxPotion, EVENT_TIN_TOWER_6F_MAX_POTION
;7f
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower7FMaxRevive, EVENT_TIN_TOWER_7F_MAX_REVIVE
;8f
	object_event  5, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower8FNugget, EVENT_TIN_TOWER_8F_NUGGET
	object_event  9, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower8FMaxElixer, EVENT_TIN_TOWER_8F_MAX_ELIXER
	object_event  1, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower8FFullRestore, EVENT_TIN_TOWER_8F_FULL_RESTORE
;9f
	object_event  7,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower9FHPUp, EVENT_TIN_TOWER_9F_HP_UP
