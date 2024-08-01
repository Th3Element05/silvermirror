	object_const_def

CeruleanCave2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave2FFullRestore:
	itemball FULL_RESTORE

CeruleanCave2FPPUP:
	itemball PP_UP

CeruleanCave2FUltraBall:
	itemball ULTRA_BALL

CeruleanCave2FScopeLens:
	itemball SCOPE_LENS

CeruleanCave2FHiddenPPUP:
	hiddenitem PP_UP, EVENT_CERULEAN_CAVE_2F_HIDDEN_PP_UP

;CeruleanCave2FRock:
;	jumpstd SmashRockScript

CeruleanCave2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  1, CERULEAN_CAVE_1F, 2 ;1
	warp_event 29,  1, CERULEAN_CAVE_1F, 3 ;2
	warp_event 23,  7, CERULEAN_CAVE_1F, 4 ;3
	warp_event 19,  7, CERULEAN_CAVE_1F, 5 ;4
	warp_event  3, 11, CERULEAN_CAVE_1F, 6 ;5
	warp_event  1,  3, CERULEAN_CAVE_1F, 7 ;6

	def_coord_events

	def_bg_events
	bg_event 12, 16, BGEVENT_ITEM, CeruleanCave2FHiddenPPUP

	def_object_events
	object_event 16,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FFullRestore, EVENT_CERULEAN_CAVE_2F_FULL_RESTORE
	object_event 29,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FPPUP, EVENT_CERULEAN_CAVE_2F_PP_UP
	object_event  4, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FUltraBall, EVENT_CERULEAN_CAVE_2F_ULTRA_BALL
	object_event 19, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FScopeLens, EVENT_CERULEAN_CAVE_2F_SCOPE_LENS
;	object_event 17, 20, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCave2FRock, -1
