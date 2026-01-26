	object_const_def

WhirlIslandCaves_MapScripts:
	def_scene_scripts

	def_callbacks

;NW
;	none

;NE
WhirlIslandNEUltraBall:
	itemball ULTRA_BALL

;SW
WhirlIslandSWUltraBall:
	itemball ULTRA_BALL

;SE
;	none

;Cave
;	none


WhirlIslandCaves_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;NW
	warp_event  5, 27, ROUTE_41, 1            ;1  ;NW,1
	warp_event  5, 23, WHIRL_ISLAND_B1F, 1    ;2  ;NW,2
	warp_event  3, 35, WHIRL_ISLAND_CAVES, 11 ;3  ;NW,3 to SW,4
	warp_event  7, 35, WHIRL_ISLAND_CAVES, 16 ;4  ;NW,4 to Cave2
;NE
	warp_event 25, 13, ROUTE_41, 2           ;5  ;NE,1
	warp_event 39,  3, WHIRL_ISLAND_B1F, 2   ;6  ;NE,2
	warp_event 35, 11, WHIRL_ISLAND_B1F, 3   ;7  ;NE,3
;SW
	warp_event  5,  7, ROUTE_41, 3           ;8  ;SW,1
	warp_event 17,  3, WHIRL_ISLAND_B1F, 5   ;9  ;SW,2
	warp_event  3,  3, WHIRL_ISLAND_B1F, 4   ;10 ;SW,3
	warp_event  3, 15, WHIRL_ISLAND_CAVES, 3 ;11 ;SW,4 to NW,3 (to Cave,2)
	warp_event 17, 15, WHIRL_ISLAND_B2F, 4   ;12 ;SW,5
;SE
	warp_event 35, 35, ROUTE_41, 4           ;13 ;SE,1
	warp_event 35, 25, WHIRL_ISLAND_B1F, 6   ;14 ;SE,2
;Cave
	warp_event 19, 27, WHIRL_ISLAND_B1F, 9   ;15 ;Cave,1
	warp_event 15, 35, WHIRL_ISLAND_CAVES, 4 ;16 ;Cave,2 to NW,4

	def_coord_events

	def_bg_events

	def_object_events
;NW
;	none
;NE
	object_event 33, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandNEUltraBall, EVENT_WHIRL_ISLAND_NE_ULTRA_BALL
;SW
	object_event 15,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandSWUltraBall, EVENT_WHIRL_ISLAND_SW_ULTRA_BALL
;SE
;	none
;Cave
;	none
