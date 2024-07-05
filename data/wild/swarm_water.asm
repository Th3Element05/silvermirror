; Pokémon swarms in water

SwarmWaterWildMons:

	; STARYU swarm
	map_id ROUTE_19 ;SWARM1
	db 6 percent ; encounter rate
	db 16, STARYU     ; 50
	db 15, TENTACOOL  ; 30
	db 16, HORSEA     ; 10
	db 16, HORSEA     ; 10

	; HORSEA swarm
	map_id ROUTE_20 ;SWARM1
	db 6 percent ; encounter rate
	db 16, HORSEA     ; 50
	db 15, TENTACOOL  ; 30
	db 15, TENTACOOL  ; 10
	db 16, STARYU     ; 10

	; SHELLDER swarm
	map_id VERMILION_CITY ;SWARM1
	db 6 percent ; encounter rate
	db 10, SHELLDER   ; 50
	db 10, TENTACOOL  ; 30
	db 10, HORSEA     ; 10
	db 10, STARYU     ; 10

	db -1 ; end
