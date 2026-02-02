; Pokémon swarms in water

SwarmWaterWildMonsAltChallenge:

; KANTO alt swarms
	; QWILFISH swarm
	map_id ROUTE_12 ;GEN2
	db 6 percent ; encounter rate
	db 10, QWILFISH
	db 10, SLOWPOKE
	db 10, TENTACOOL
	db 10, WOOPER

; JOHTO alt swarms
	; CORSOLA swarm
	def_water_wildmons OLIVINE_CITY
	db 6 percent ; encounter rate
	db 15, CORSOLA
	db 15, TENTACOOL
	db 16, HORSEA
	db 16, HORSEA

	db -1 ; end
