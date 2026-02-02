; Pokémon swarms in water

SwarmWaterWildMonsChallenge:

; KANTO swarms
;	; STARYU
	def_water_wildmons ROUTE_19 ;GEN2
	db 6 percent ; encounter rate
	db 16, STARYU     ; 50
	db 15, TENTACOOL  ; 30
	db 16, HORSEA     ; 10
	db 15, MANTINE    ; 10

	; HORSEA
	def_water_wildmons ROUTE_20 ;GEN2
	db 6 percent ; encounter rate
	db 16, HORSEA     ; 50
	db 15, TENTACOOL  ; 30
	db 16, HORSEA     ; 10
	db 15, MANTINE    ; 10

	; SHELLDER
	def_water_wildmons VERMILION_CITY ;GEN2
	db 6 percent ; encounter rate
	db 10, SHELLDER   ; 50
	db 10, TENTACOOL  ; 30
	db 10, HORSEA     ; 10
	db 10, MANTINE    ; 10


; JOHTO swarms
	; QWILFISH
	def_water_wildmons ROUTE_32
	db 6 percent ; encounter rate
	db 16, QWILFISH
	db 15, TENTACOOL
	db 15, WOOPER
	db 16, WOOPER

	; MANTINE
	def_water_wildmons ROUTE_41
	db 6 percent ; encounter rate
	db 16, MANTINE
	db 15, TENTACOOL
	db 16, HORSEA
	db 16, MANTINE

	; MARILL
	def_water_wildmons ROUTE_42
	db 4 percent ; encounter rate
	db 15, MARILL
	db 15, GOLDEEN
	db 10, MAGIKARP
	db 20, SEAKING

	; REMORAID
	def_water_wildmons ROUTE_44
	db 2 percent ; encounter rate
	db 16, REMORAID
	db 15, POLIWAG
	db 10, MAGIKARP
	db 10, MAGIKARP

	; WOOPER
	def_water_wildmons UNION_CAVE_B2F
	db 4 percent ; encounter rate
	db 15, WOOPER
	db 15, TENTACOOL
	db 25, TENTACRUEL
	db 20, QUAGSIRE

	; CHINCHOU
	def_water_wildmons OLIVINE_CITY
	db 6 percent ; encounter rate
	db 15, CHINCHOU
	db 15, TENTACOOL
	db 16, HORSEA
	db 16, HORSEA

	; MAGIKARP
	def_water_wildmons LAKE_OF_RAGE
	db 6 percent ; encounter rate
	db 10, MAGIKARP
	db  5, MAGIKARP
	db 15, MAGIKARP
	db 20, GYARADOS

	; DRATINI
	def_water_wildmons DRAGONS_DEN_B1F
	db 4 percent ; encounter rate
	db 10, DRATINI
	db  5, MAGIKARP
	db 10, DRATINI
	db 10, MAGIKARP

	db -1 ; end