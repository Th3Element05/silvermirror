; Pokémon swarms in water

SwarmWaterWildMonsAlt:

	; QWILFISH swarm
	map_id ROUTE_12
	db 6 percent ; encounter rate
	db 10, QWILFISH
	db 10, SLOWPOKE
	db 10, TENTACOOL
	db 10, WOOPER

	; MAGIKARP swarm
	map_id LAKE_OF_RAGE
	db 6 percent ; encounter rate
	db 12, MAGIKARP   ; 50
	db  7, MAGIKARP   ; 30
	db  2, MAGIKARP   ; 10
	db 15, MAGIKARP   ; 10

	db -1 ; end
