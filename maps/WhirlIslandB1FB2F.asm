	object_const_def
	const WHIRLISLANDB1F_BOULDER

WhirlIslandB1FB2F_MapScripts:
	def_scene_scripts

	def_callbacks

;B1F
WhirlIslandB1FBoulder:
	jumpstd StrengthBoulderScript

WhirlIslandB1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_WHIRL_ISLAND_B1F_HIDDEN_RARE_CANDY

WhirlIslandB1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_WHIRL_ISLAND_B1F_HIDDEN_ULTRA_BALL

WhirlIslandB1FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_WHIRL_ISLAND_B1F_HIDDEN_FULL_RESTORE

WhirlIslandB1FFullRestore:
	itemball FULL_RESTORE

WhirlIslandB1FCarbos:
	itemball CARBOS

WhirlIslandB1FCalcium:
	itemball CALCIUM

WhirlIslandB1FNugget:
	itemball NUGGET

WhirlIslandB1FEscapeRope:
	itemball ESCAPE_ROPE

;B2F
WhirlIslandB2FFullRestore:
	itemball FULL_RESTORE

WhirlIslandB2FMaxRevive:
	itemball MAX_REVIVE

WhirlIslandB2FMaxElixer:
	itemball MAX_ELIXER


WhirlIslandB1FB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;B1F
	warp_event 27,  5, WHIRL_ISLAND_CAVES, 2  ;1 to NW,2
	warp_event 57,  3, WHIRL_ISLAND_CAVES, 6  ;2 to NE,2
	warp_event 51,  9, WHIRL_ISLAND_CAVES, 7  ;3 to NE,3
	warp_event 31, 31, WHIRL_ISLAND_CAVES, 10 ;4 to SW,3
	warp_event 45, 31, WHIRL_ISLAND_CAVES, 9  ;5 to SW,2
	warp_event 53, 29, WHIRL_ISLAND_CAVES, 14 ;6 to SE,2
	warp_event 47, 21, WHIRL_ISLAND_B1F_B2F, 10 ;7 to B2F,1
	warp_event 35, 27, WHIRL_ISLAND_B1F_B2F, 11 ;8 to B2F,2
	warp_event 39, 21, WHIRL_ISLAND_CAVES, 15 ;9 to Cave1
;B2F
	warp_event 11,  5, WHIRL_ISLAND_B1F_B2F, 7 ;10 to B1F,7
	warp_event  7, 11, WHIRL_ISLAND_B1F_B2F, 8 ;11 to B1F,8
	warp_event  7, 25, WHIRL_ISLAND_LUGIA_CHAMBER, 1 ;12
	warp_event 13, 31, WHIRL_ISLAND_CAVES, 12 ;13 to SW,5

	def_coord_events

	def_bg_events
	bg_event 52,  4, BGEVENT_ITEM, WhirlIslandB1FHiddenRareCandy
	bg_event 58, 18, BGEVENT_ITEM, WhirlIslandB1FHiddenUltraBall
	bg_event 24, 23, BGEVENT_ITEM, WhirlIslandB1FHiddenFullRestore

	def_object_events
;B1F
	object_event 45, 26, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandB1FBoulder, -1
	object_event 29, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB1FFullRestore, EVENT_WHIRL_ISLAND_B1F_FULL_RESTORE
	object_event 24, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB1FCarbos, EVENT_WHIRL_ISLAND_B1F_CARBOS
	object_event 55, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB1FCalcium, EVENT_WHIRL_ISLAND_B1F_CALCIUM
	object_event 39,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB1FNugget, EVENT_WHIRL_ISLAND_B1F_NUGGET
	object_event 41, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB1FEscapeRope, EVENT_WHIRL_ISLAND_B1F_ESCAPE_ROPE
;B2F
	object_event 10, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB2FFullRestore, EVENT_WHIRL_ISLAND_B2F_FULL_RESTORE
	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB2FMaxRevive, EVENT_WHIRL_ISLAND_B2F_MAX_REVIVE
	object_event  5, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB2FMaxElixer, EVENT_WHIRL_ISLAND_B2F_MAX_ELIXER
