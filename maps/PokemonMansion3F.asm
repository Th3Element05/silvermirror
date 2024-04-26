	object_const_def

PokemonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks
	
PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  2, POKEMON_MANSION_2F, 1 ; 1
	warp_event  7, 10, POKEMON_MANSION_2F, 3 ; 2
	warp_event 25, 14, POKEMON_MANSION_2F, 4 ; 3
	warp_event 16, 14, POKEMON_MANSION_1F, 7 ; 4 pit
	warp_event 17, 14, POKEMON_MANSION_1F, 7 ; 5 pit
	warp_event 19, 14, POKEMON_MANSION_1F, 8 ; 6 pit

	def_coord_events

	def_bg_events

	def_object_events
