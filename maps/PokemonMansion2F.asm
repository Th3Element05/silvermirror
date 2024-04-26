	object_const_def

PokemonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
PokemonMansion2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  2, POKEMON_MANSION_3F, 1 ; 1
	warp_event  5, 10, POKEMON_MANSION_1F, 5 ; 2
	warp_event  7, 10, POKEMON_MANSION_3F, 2 ; 3
	warp_event 25, 14, POKEMON_MANSION_3F, 3 ; 4

	def_coord_events

	def_bg_events

	def_object_events
