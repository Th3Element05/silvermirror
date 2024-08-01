	object_const_def

CeruleanCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave1FNugget:
	itemball NUGGET

CeruleanCave1FFullRestore:
	itemball FULL_RESTORE

CeruleanCave1FMaxElixer:
	itemball MAX_ELIXER

CeruleanCave1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CERULEAN_CAVE_1F_HIDDEN_RARE_CANDY

CeruleanCave1FRock:
	jumpstd SmashRockScript

CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 17, CERULEAN_CITY, 2     ;1
	warp_event  9,  3, CERULEAN_CAVE_2F, 1  ;2
	warp_event 29,  3, CERULEAN_CAVE_2F, 2  ;3
	warp_event 25,  9, CERULEAN_CAVE_2F, 3  ;4
	warp_event 19, 11, CERULEAN_CAVE_2F, 4  ;5
	warp_event  5, 13, CERULEAN_CAVE_2F, 5  ;6
	warp_event  4,  4, CERULEAN_CAVE_2F, 6  ;7
	warp_event  3,  9, CERULEAN_CAVE_B1F, 1  ;8

	def_coord_events

	def_bg_events
	bg_event 16, 13, BGEVENT_ITEM, CeruleanCave1FHiddenRareCandy

	def_object_events
	object_event  7,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FNugget, EVENT_CERULEAN_CAVE_1F_NUGGET
	object_event  9, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FFullRestore, EVENT_CERULEAN_CAVE_1F_FULL_RESTORE
	object_event 21,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FMaxElixer, EVENT_CERULEAN_CAVE_1F_MAX_ELIXER
	object_event 22, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCave1FRock, -1
	object_event  8, 18, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCave1FRock, -1
