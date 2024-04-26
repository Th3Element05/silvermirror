	object_const_def

PokemonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
;PokemonMansion1FUltraBall:
;	itemball ULTRA_BALL

;PokemonMansion1FHiddenMaxElixer:
;	hiddenitem MAX_ELIXER, EVENT_POKEMON_MANSION_1F_HIDDEN_MAX_ELIXER

PokemonMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 27, CINNABAR_ISLAND, 2     ; 1
	warp_event  6, 27, CINNABAR_ISLAND, 2     ; 2
	warp_event 26, 27, CINNABAR_ISLAND, 2     ; 3
	warp_event 27, 27, CINNABAR_ISLAND, 2     ; 4
	warp_event  5, 10, POKEMON_MANSION_2F, 2  ; 5
	warp_event 21, 22, POKEMON_MANSION_B1F, 1 ; 6
	warp_event 16, 14, POKEMON_MANSION_1F, 7  ; 7
	warp_event 19, 14, POKEMON_MANSION_1F, 8  ; 8

	def_coord_events

	def_bg_events
;	bg_event 19, 18, BGEVENT_ITEM, PokemonMansion1FHiddenMaxElixer

	def_object_events
;	object_event 18,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FCalcium, EVENT_POKEMON_MANSION_1F_CALCIUM
;	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FUltraBall, EVENT_POKEMON_MANSION_1F_ULTRA_BALL
