; Pokémon swarms in grass

SwarmGrassWildMons:

; JIGGLYPUFF swarm
	map_id ROUTE_3 ;SWARM1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  4, JIGGLYPUFF ; 20% chance 40
	db  5, JIGGLYPUFF ; 20% chance
	db  8, SPEAROW    ; 15% chance 30
	db  8, SPEAROW    ; 10% chance
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  8, SPEAROW    ;  5% chance
	db  8, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  4% chance
	db  9, MANKEY     ;  1% chance
	; nite
	db  8, RATTATA    ; 20% chance 25
	db  4, JIGGLYPUFF ; 20% chance 35
	db  5, JIGGLYPUFF ; 15% chance
	db  6, ZUBAT      ; 10% chance 10
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  8, RATTATA    ;  5% chance
	db  8, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  4% chance
	db  9, MANKEY     ;  1% chance



; JOHTO swarms
	def_grass_wildmons ROUTE_29
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  2, PIDGEY     ; 20% chance
	db  3, PIDGEY     ; 20% chance
	db  2, SENTRET    ; 15% chance
	db  4, PIDGEY     ; 10% chance
	db  3, SENTRET    ; 10% chance
	db  4, SENTRET    ; 10% chance
	db  5, SENTRET    ;  5% chance
	db  2, RATTATA    ;  5% chance
	db  3, HOPPIP     ;  4% chance
	db  4, HOPPIP     ;  1% chance
	; nite
	db  2, HOOTHOOT   ; 20% chance
	db  3, HOOTHOOT   ; 20% chance
	db  4, HOOTHOOT   ; 15% chance
	db  2, RATTATA    ; 10% chance
	db  3, RATTATA    ; 10% chance
	db  4, RATTATA    ; 10% chance
	db  5, RATTATA    ;  5% chance
	db  6, RATTATA    ;  5% chance
	db  7, RATTATA    ;  4% chance
	db  8, RATTATA    ;  1% chance

	def_grass_wildmons ROUTE_30
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  2, PIDGEY     ; 20% chance
	db  3, PIDGEY     ; 20% chance
	db  3, CATERPIE   ; 15% chance
	db  3, LEDYBA     ; 10% chance
	db  4, LEDYBA     ; 10% chance
	db  2, WEEDLE     ; 10% chance
	db  4, CATERPIE   ;  5% chance
	db  5, LEDYBA     ;  5% chance
	db  4, HOPPIP     ;  4% chance
	db  5, HOPPIP     ;  1% chance
	; nite
	db  4, HOOTHOOT   ; 20% chance
	db  5, HOOTHOOT   ; 20% chance
	db  3, SPINARAK   ; 15% chance
	db  4, SPINARAK   ; 10% chance
	db  4, POLIWAG    ; 10% chance
	db  5, POLIWAG    ; 10% chance
	db  6, HOOTHOOT   ;  5% chance
	db  5, SPINARAK   ;  5% chance
	db  3, ZUBAT      ;  4% chance
	db  4, ZUBAT      ;  1% chance

	def_grass_wildmons ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, PIDGEY     ; 20% chance
	db 12, SNUBBULL   ; 20% chance
	db 13, GROWLITHE  ; 15% chance
	db 15, PIDGEY     ; 10% chance
	db 13, SNUBBULL   ; 10% chance
	db 12, ABRA       ; 10% chance
	db 14, GROWLITHE  ;  5% chance
	db 12, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 12, YANMA      ;  1% chance
	; nite
	db 14, HOOTHOOT   ; 20% chance
	db 12, DROWZEE    ; 20% chance
	db 13, PSYDUCK    ; 15% chance
	db 15, HOOTHOOT   ; 10% chance
	db 13, DROWZEE    ; 10% chance
	db 12, ABRA       ; 10% chance
	db 14, PSYDUCK    ;  5% chance
	db 12, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 12, YANMA      ;  1% chance

	def_grass_wildmons ROUTE_37
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 13, LEDYBA     ; 20% chance
	db 15, PIDGEY     ; 20% chance
	db 17, GROWLITHE  ; 15% chance
	db 14, LEDYBA     ; 10% chance
	db 16, VULPIX     ; 10% chance
	db 17, VULPIX     ; 10% chance
	db 16, GROWLITHE  ;  5% chance
	db 18, PIDGEOTTO  ;  5% chance
	db 18, LEDIAN     ;  4% chance
	db 18, LEDIAN     ;  1% chance
	; nite
	db 14, STANTLER   ; 20% chance
	db 13, SPINARAK   ; 20% chance
	db 16, HOUNDOUR   ; 15% chance
	db 15, STANTLER   ; 10% chance
	db 14, SPINARAK   ; 10% chance
	db 15, HOOTHOOT   ; 10% chance
	db 20, NOCTOWL    ;  5% chance
	db 22, ARIADOS    ;  5% chance
	db 16, HOOTHOOT   ;  4% chance
	db 17, HOOTHOOT   ;  1% chance

	def_grass_wildmons ROUTE_38
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 16, RATTATA    ; 20% chance
	db 20, RATICATE   ; 20% chance
	db 16, MAGNEMITE  ; 15% chance
	db 17, RATTATA    ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 18, PIDGEOTTO  ; 10% chance
	db 17, MAGNEMITE  ;  5% chance
	db 13, MILTANK    ;  5% chance
	db 13, TAUROS     ;  4% chance
	db 14, TAUROS     ;  1% chance
	; nite
	db 16, MEOWTH     ; 20% chance
	db 17, MEOWTH     ; 20% chance
	db 16, MAGNEMITE  ; 15% chance
	db 17, RATTATA    ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 17, MAGNEMITE  ;  5% chance
	db 20, NOCTOWL    ;  5% chance
	db 20, NOCTOWL    ;  4% chance
	db 20, NOCTOWL    ;  1% chance

	def_grass_wildmons ROUTE_42
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, SPEAROW    ; 20% chance
	db 13, EKANS      ; 20% chance
	db 15, RATTATA    ; 15% chance
	db 15, MANKEY     ; 10% chance
	db 16, MAREEP     ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 16, RATTATA    ;  5% chance
	db 22, ARBOK      ;  5% chance
	db 20, FEAROW     ;  4% chance
	db 20, FEAROW     ;  1% chance
	; nite
	db 15, RATTATA    ; 20% chance
	db 14, ZUBAT      ; 20% chance
	db 20, RATICATE   ; 15% chance
	db 15, MANKEY     ; 10% chance
	db 16, MAREEP     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 22, GOLBAT     ;  5% chance
	db 20, RATICATE   ;  5% chance
	db 15, MARILL     ;  4% chance
	db 16, MARILL     ;  1% chance

	def_grass_wildmons ROUTE_45
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 23, GEODUDE    ; 20% chance
	db 25, GRAVELER   ; 20% chance
	db 24, GLIGAR     ; 15% chance
	db 24, GEODUDE    ; 10% chance
	db 27, SKARMORY   ; 10% chance
	db 25, DONPHAN    ; 10% chance
	db 25, GLIGAR     ;  5% chance
	db 20, PHANPY     ;  5% chance
	db 15, LARVITAR   ;  4% chance
	db 21, PHANPY     ;  1% chance
	; nite
	db 23, GEODUDE    ; 20% chance
	db 25, GRAVELER   ; 20% chance
	db 24, GEODUDE    ; 15% chance
	db 21, MURKROW    ; 10% chance
	db 24, GLIGAR     ; 10% chance
	db 25, GLIGAR     ; 10% chance
	db 26, GLIGAR     ;  5% chance
	db 22, MURKROW    ;  5% chance
	db 15, LARVITAR   ;  4% chance
	db 22, MURKROW    ;  1% chance

	def_grass_wildmons NATIONAL_PARK
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 12, NIDORAN_M  ; 20% chance
	db 12, NIDORAN_F  ; 20% chance
	db 14, LEDYBA     ; 15% chance
	db 14, SUNKERN    ; 10% chance
	db 15, SUNKERN    ; 10% chance
	db 13, PIDGEY     ; 10% chance
	db 15, LEDYBA     ;  5% chance
	db 10, CATERPIE   ;  5% chance
	db 10, WEEDLE     ;  4% chance
	db 11, WEEDLE     ;  1% chance
	; nite
	db 13, HOOTHOOT   ; 20% chance
	db 14, HOOTHOOT   ; 20% chance
	db 12, PSYDUCK    ; 15% chance
	db 13, PSYDUCK    ; 10% chance
	db 14, SPINARAK   ; 10% chance
	db 15, SPINARAK   ; 10% chance
	db 14, PSYDUCK    ;  5% chance
	db 10, VENONAT    ;  5% chance
	db 11, VENONAT    ;  4% chance
	db 12, VENONAT    ;  1% chance

	def_grass_wildmons ILEX_FOREST
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db  5, CATERPIE   ; 20% chance
	db  5, WEEDLE     ; 20% chance
	db  7, METAPOD    ; 15% chance
	db  6, CATERPIE   ; 10% chance
	db  6, WEEDLE     ; 10% chance
	db  7, KAKUNA     ; 10% chance
	db  8, METAPOD    ;  5% chance
	db  6, PARAS      ;  5% chance
	db  7, PIDGEY     ;  4% chance
	db  8, PIDGEY     ;  1% chance
	; nite
	db  5, ODDISH     ; 20% chance
	db  6, ODDISH     ; 20% chance
	db  5, VENONAT    ; 15% chance
	db  7, ODDISH     ; 10% chance
	db  7, PSYDUCK    ; 10% chance
	db  6, VENONAT    ; 10% chance
	db  7, VENONAT    ;  5% chance
	db  6, PARAS      ;  5% chance
	db  7, HOOTHOOT   ;  4% chance
	db  8, HOOTHOOT   ;  1% chance

	def_grass_wildmons UNION_CAVE_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  6, GEODUDE    ; 20% chance
	db  6, SANDSHREW  ; 20% chance
	db  5, ZUBAT      ; 15% chance
	db  7, GEODUDE    ; 10% chance
	db  7, SANDSHREW  ; 10% chance
	db  4, RATTATA    ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  7, ZUBAT      ;  5% chance
	db  6, ONIX       ;  4% chance
	db  7, ONIX       ;  1% chance
	; nite
	db  6, GEODUDE    ; 20% chance
	db  6, RATTATA    ; 20% chance
	db  5, WOOPER     ; 15% chance
	db  7, GEODUDE    ; 10% chance
	db  7, RATTATA    ; 10% chance
	db  5, ZUBAT      ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  6, WOOPER     ;  5% chance
	db  6, ONIX       ;  4% chance
	db  7, ONIX       ;  1% chance

	def_grass_wildmons DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 23, GEODUDE    ; 20% chance
	db 23, ZUBAT      ; 20% chance
	db 25, GRAVELER   ; 15% chance
	db 24, GEODUDE    ; 10% chance
	db 24, ZUBAT      ; 10% chance
	db 20, TEDDIURSA  ; 10% chance
	db 30, URSARING   ;  5% chance
	db 26, GRAVELER   ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance
	; nite
	db 23, GEODUDE    ; 20% chance
	db 23, ZUBAT      ; 20% chance
	db 25, GRAVELER   ; 15% chance
	db 24, GEODUDE    ; 10% chance
	db 24, ZUBAT      ; 10% chance
	db 20, WOBBUFFET  ; 10% chance
	db 21, WOBBUFFET  ;  5% chance
	db 26, GRAVELER   ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance

	def_grass_wildmons DARK_CAVE_BLACKTHORN_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 23, GEODUDE    ; 20% chance
	db 23, ZUBAT      ; 20% chance
	db 25, GRAVELER   ; 15% chance
	db 24, GEODUDE    ; 10% chance
	db 24, ZUBAT      ; 10% chance
	db 20, TEDDIURSA  ; 10% chance
	db 30, URSARING   ;  5% chance
	db 26, GRAVELER   ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance
	; nite
	db 23, GEODUDE    ; 20% chance
	db 23, ZUBAT      ; 20% chance
	db 25, GRAVELER   ; 15% chance
	db 24, GEODUDE    ; 10% chance
	db 24, ZUBAT      ; 10% chance
	db 20, WOBBUFFET  ; 10% chance
	db 21, WOBBUFFET  ;  5% chance
	db 26, GRAVELER   ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance

	def_grass_wildmons ICE_PATH_1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 23, ZUBAT      ; 10% chance
	db 21, DELIBIRD   ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 23, GOLBAT     ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 21, SWINUB     ; 20% chance
	db 21, DELIBIRD   ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 23, ZUBAT      ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 23, GOLBAT     ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, SNEASEL    ;  4% chance
	db 22, JYNX       ;  1% chance

	def_grass_wildmons ICE_PATH_B1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 23, ZUBAT      ; 10% chance
	db 21, DELIBIRD   ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 23, GOLBAT     ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 21, SWINUB     ; 20% chance
	db 21, DELIBIRD   ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 23, ZUBAT      ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 23, GOLBAT     ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, SNEASEL    ;  4% chance
	db 22, JYNX       ;  1% chance

	def_grass_wildmons ICE_PATH_B2F_B3F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; morn
	; day
	db 22, SWINUB     ; 20% chance
	db 23, SWINUB     ; 20% chance
	db 23, ZUBAT      ; 15% chance
	db 24, ZUBAT      ; 10% chance
	db 22, DELIBIRD   ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 24, GOLBAT     ;  5% chance
	db 23, JYNX       ;  5% chance
	db 23, JYNX       ;  4% chance
	db 24, JYNX       ;  1% chance
	; nite
	db 22, SWINUB     ; 20% chance
	db 22, DELIBIRD   ; 20% chance
	db 23, ZUBAT      ; 15% chance
	db 24, ZUBAT      ; 10% chance
	db 23, SWINUB     ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 24, GOLBAT     ;  5% chance
	db 23, SNEASEL    ;  5% chance
	db 23, SNEASEL    ;  4% chance
	db 23, JYNX       ;  1% chance

	db -1 ; end
