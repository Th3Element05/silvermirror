; Pokémon swarms in water

SwarmWaterWildMons:

	; STARYU swarm
	map_id ROUTE_19
	db 6 percent ; encounter rate
	db 16, STARYU     ; 50
	db 15, TENTACOOL  ; 30
	db 16, HORSEA     ; 10
	db 16, HORSEA     ; 10

	; HORSEA swarm
	map_id ROUTE_20
	db 6 percent ; encounter rate
	db 16, HORSEA     ; 50
	db 15, TENTACOOL  ; 30
	db 15, TENTACOOL  ; 10
	db 16, STARYU     ; 10

	; SHELLDER swarm
	map_id VERMILION_CITY
	db 6 percent ; encounter rate
	db 10, SHELLDER   ; 50
	db 10, TENTACOOL  ; 30
	db 10, HORSEA     ; 10
	db 10, STARYU     ; 10

;	; QWILFISH swarm
;	map_id ROUTE_32
;	db 6 percent ; encounter rate
;	db 15, QWILFISH
;	db 20, QWILFISH
;	db 20, TENTACRUEL

;	; CHINCHOU swarm
;	map_id OLIVINE_CITY
;	db 6 percent ; encounter rate
;	db 10, CHINCHOU
;	db 15, CHINCHOU
;	db 20, TENTACRUEL

;	; REMORAID swarm
;	map_id ROUTE_44
;	db 6 percent ; encounter rate
;	db 10, REMORAID
;	db 15, REMORAID
;	db 25, POLIWHIRL

;	; MANTINE swarm
;	map_id ROUTE_41
;	db 6 percent ; encounter rate
;	db 20, MANTINE
;	db 20, MANTINE
;	db 20, TENTACRUEL

;	; DRATINI swarm
;	map_id DRAGONS_DEN_B1F
;	db 6 percent ; encounter rate
;	db 15, DRATINI
;	db 10, DRATINI
;	db 15, MAGIKARP

	db -1 ; end
