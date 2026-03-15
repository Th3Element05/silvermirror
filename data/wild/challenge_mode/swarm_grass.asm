; Pokémon swarms in grass

SwarmGrassWildMonsChallenge:

; KANTO swarms (GEN2)
	; JIGGLYPUFF (same)
	def_grass_wildmons ROUTE_3 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  8, JIGGLYPUFF ; 20% chance
	db  8, JIGGLYPUFF ; 20% chance
	db  8, SPEAROW    ; 15% chance
	db  8, RATTATA    ; 10% chance
	db  8, SANDSHREW  ; 10% chance
	db  8, MANKEY     ; 10% chance
	db  8, RATTATA    ;  5% chance
	db  8, SPEAROW    ;  5% chance
	db  8, SPEAROW    ;  4% chance
	db  8, SPEAROW    ;  1% chance
	; nite
	db  8, JIGGLYPUFF ; 20% chance
	db  8, JIGGLYPUFF ; 20% chance
	db  8, RATTATA    ; 15% chance
	db  8, SPEAROW    ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  8, MANKEY     ; 10% chance
	db  8, RATTATA    ;  5% chance
	db  8, RATTATA    ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  8, RATTATA    ;  1% chance

	; DITTO (GEN2)
	def_grass_wildmons ROUTE_5 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 14, PIDGEY     ; 15% chance
	db 14, PIDGEY     ; 10% chance
	db  8, ABRA       ; 10% chance
	db 12, SNUBBULL   ; 10% chance
	db 12, SNUBBULL   ;  5% chance
	db 12, SNUBBULL   ;  5% chance
	db  8, JIGGLYPUFF ;  4% chance
	db  8, JIGGLYPUFF ;  1% chance
	; nite
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 12, MEOWTH     ; 15% chance
	db 12, MEOWTH     ; 10% chance
	db  8, ABRA       ; 10% chance
	db 14, HOOTHOOT   ; 10% chance
	db 14, HOOTHOOT   ;  5% chance
	db 14, HOOTHOOT   ;  5% chance
	db  8, JIGGLYPUFF ;  4% chance
	db  8, JIGGLYPUFF ;  1% chance

	; PSYDUCK (GEN2)
	def_grass_wildmons ROUTE_6 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 13, PSYDUCK    ; 20% chance
	db 13, PSYDUCK    ; 20% chance
	db 14, PIDGEY     ; 15% chance
	db 14, PIDGEY     ; 10% chance
	db 12, SNUBBULL   ; 10% chance
	db 14, RATTATA    ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 11, MAGNEMITE  ;  4% chance
	db 11, MAGNEMITE  ;  1% chance
	; nite
	db 13, PSYDUCK    ; 20% chance
	db 13, PSYDUCK    ; 20% chance
	db 12, RATTATA    ; 15% chance
	db 14, RATTATA    ; 10% chance
	db 12, MEOWTH     ; 10% chance
	db 12, MEOWTH     ; 10% chance
	db  8, JIGGLYPUFF ;  5% chance
	db  8, ABRA       ;  5% chance
	db 11, MAGNEMITE  ;  4% chance
	db 11, MAGNEMITE  ;  1% chance

	; VULPIX (GEN2)
	def_grass_wildmons ROUTE_7 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 18, VULPIX     ; 20% chance
	db 18, VULPIX     ; 20% chance
	db 20, SNUBBULL   ; 15% chance
	db 20, SPEAROW    ; 10% chance
	db 20, SPEAROW    ; 10% chance
	db 18, GROWLITHE  ; 10% chance
	db 20, SNUBBULL   ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 18, VULPIX     ; 20% chance
	db 18, VULPIX     ; 20% chance
	db 20, MEOWTH     ; 15% chance
	db 20, MURKROW    ; 10% chance
	db 20, MURKROW    ; 10% chance
	db 18, HOUNDOUR   ; 10% chance
	db 20, MEOWTH     ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance

	; GROWLITHE (GEN2)
	def_grass_wildmons ROUTE_8 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 18, GROWLITHE  ; 20% chance
	db 18, GROWLITHE  ; 20% chance
	db 20, SNUBBULL   ; 15% chance
	db 20, SNUBBULL   ; 10% chance
	db 19, PIDGEY     ; 10% chance
	db 19, PIDGEY     ; 10% chance
	db 18, VULPIX     ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 18, GROWLITHE  ; 20% chance
	db 18, GROWLITHE  ; 20% chance
	db 20, HOOTHOOT   ; 15% chance
	db 20, MEOWTH     ; 10% chance
	db 20, MEOWTH     ; 10% chance
	db 20, HOUNDOUR   ; 10% chance
	db 12, ABRA       ;  5% chance
	db 16, GASTLY     ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 20, HOOTHOOT   ;  1% chance

	; VOLTORB (GEN2)
	def_grass_wildmons ROUTE_10_NORTH ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 17, VOLTORB    ; 20% chance
	db 17, VOLTORB    ; 20% chance
	db 16, SPEAROW    ; 15% chance
	db 16, MAGNEMITE  ; 10% chance
	db 16, MAGNEMITE  ; 10% chance
	db 17, SANDSHREW  ; 10% chance
	db 16, EKANS      ;  5% chance
	db 16, EKANS      ;  5% chance
	db 16, MAREEP     ;  4% chance
	db 16, MAREEP     ;  1% chance
	; nite
	db 17, VOLTORB    ; 20% chance
	db 17, VOLTORB    ; 20% chance
	db 16, MAGNEMITE  ; 15% chance
	db 16, RATTATA    ; 10% chance
	db 16, RATTATA    ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 16, VENONAT    ;  5% chance
	db 16, VENONAT    ;  5% chance
	db 16, MAREEP     ;  4% chance
	db 16, MAREEP     ;  1% chance

	; DROWZEE (GEN2)
	def_grass_wildmons ROUTE_11 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 15, DROWZEE    ; 20% chance
	db 15, DROWZEE    ; 20% chance
	db 16, SPEAROW    ; 15% chance
	db 10, HOPPIP     ; 10% chance
	db 15, SANDSHREW  ; 10% chance
	db 15, EKANS      ; 10% chance
	db 15, EKANS      ;  5% chance
	db 15, RATTATA    ;  5% chance
	db 13, MAGNEMITE  ;  4% chance
	db 13, MAGNEMITE  ;  1% chance
	; nite
	db 15, DROWZEE    ; 20% chance
	db 15, DROWZEE    ; 20% chance
	db 16, HOOTHOOT   ; 15% chance
	db 15, DROWZEE    ; 10% chance
	db 14, MEOWTH     ; 10% chance
	db 15, RATTATA    ; 10% chance
	db 15, RATTATA    ;  5% chance
	db 14, MEOWTH     ;  5% chance
	db 13, MAGNEMITE  ;  4% chance
	db 13, MAGNEMITE  ;  1% chance

	; FARFETCH_D (GEN2)
	def_grass_wildmons ROUTE_13 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 26, FARFETCH_D ; 20% chance
	db 26, FARFETCH_D ; 20% chance
	db 24, PIDGEY     ; 15% chance
	db 24, PIDGEY     ; 10% chance
	db 25, BELLSPROUT ; 10% chance
	db 21, HOPPIP     ; 10% chance
	db 21, HOPPIP     ;  5% chance
	db 25, BELLSPROUT ;  5% chance
	db 27, PIDGEOTTO  ;  4% chance
	db 27, PIDGEOTTO  ;  1% chance
	; nite
	db 26, FARFETCH_D ; 20% chance
	db 26, FARFETCH_D ; 20% chance
	db 25, BELLSPROUT ; 15% chance
	db 23, HOOTHOOT   ; 10% chance
	db 22, WOOPER     ; 10% chance
	db 25, ODDISH     ; 10% chance
	db 25, ODDISH     ;  5% chance
	db 22, WOOPER     ;  5% chance
	db 27, NOCTOWL    ;  4% chance
	db 27, NOCTOWL    ;  1% chance

	; GRIMER (GEN2)
	def_grass_wildmons ROUTE_16 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, GRIMER     ; 20% chance
	db 20, GRIMER     ; 20% chance
	db 22, SPEAROW    ; 15% chance
	db 22, DODUO      ; 10% chance
	db 22, DODUO      ; 10% chance
	db 20, NATU       ; 10% chance
	db 22, SPEAROW    ;  5% chance
	db 25, FEAROW     ;  5% chance
	db 22, SLUGMA     ;  4% chance
	db 22, SLUGMA     ;  1% chance
	; nite
	db 20, GRIMER     ; 20% chance
	db 20, GRIMER     ; 20% chance
	db 22, MURKROW    ; 15% chance
	db 20, GRIMER     ; 10% chance
	db 20, NATU       ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 23, RATTATA    ;  5% chance
	db 26, RATICATE   ;  5% chance
	db 22, SLUGMA     ;  4% chance
	db 22, SLUGMA     ;  1% chance

	; PONYTA (GEN2)
	def_grass_wildmons ROUTE_17 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 21, PONYTA     ; 20% chance
	db 21, PONYTA     ; 20% chance
	db 24, DODUO      ; 15% chance
	db 21, PONYTA     ; 10% chance
	db 24, DODUO      ; 10% chance
	db 22, SLUGMA     ; 10% chance
	db 24, DODUO      ;  5% chance
	db 20, NATU       ;  5% chance
	db 22, SLUGMA     ;  4% chance
	db 26, DODRIO     ;  1% chance
	; nite
	db 21, PONYTA     ; 20% chance
	db 21, PONYTA     ; 20% chance
	db 22, SLUGMA     ; 15% chance
	db 22, MURKROW    ; 10% chance
	db 22, MURKROW    ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 23, RATTATA    ;  5% chance
	db 20, NATU       ;  5% chance
	db 25, RATICATE   ;  4% chance
	db 25, RATICATE   ;  1% chance

	; MR__MIME (GEN2)
	def_grass_wildmons ROUTE_21 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 26, MR__MIME   ; 20% chance
	db 26, MR__MIME   ; 20% chance
	db 16, PIDGEY     ; 15% chance
	db 16, PIDGEY     ; 10% chance
	db 14, RATTATA    ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance
	db 20, RATICATE   ;  5% chance
	db 25, TANGELA    ;  5% chance
	db 25, TANGELA    ;  4% chance
	db 14, RATTATA    ;  1% chance
	; nite
	db 26, MR__MIME   ; 20% chance
	db 26, MR__MIME   ; 20% chance
	db 14, RATTATA    ; 15% chance
	db 14, RATTATA    ; 10% chance
	db 16, HOOTHOOT   ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 28, NOCTOWL    ;  5% chance
	db 25, TANGELA    ;  5% chance
	db 25, TANGELA    ;  4% chance
	db 14, RATTATA    ;  1% chance

	; NIDORAN_M (GEN2)
	def_grass_wildmons ROUTE_22 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  2, NIDORAN_M  ; 20% chance
	db  2, NIDORAN_M  ; 20% chance
	db  2, MANKEY     ; 15% chance
	db  2, NIDORAN_M  ; 10% chance
	db  2, SPEAROW    ; 10% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, NIDORAN_F  ;  5% chance
	db  2, RATTATA    ;  5% chance
	db  2, SPEAROW    ;  4% chance
	db  2, SPEAROW    ;  1% chance
	; nite
	db  2, NIDORAN_M  ; 20% chance
	db  2, NIDORAN_M  ; 20% chance
	db  2, MANKEY     ; 15% chance
	db  2, NIDORAN_M  ; 10% chance
	db  2, RATTATA    ; 10% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, NIDORAN_F  ;  5% chance
	db  2, POLIWAG    ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  2, RATTATA    ;  1% chance

	; ABRA (GEN2)
	def_grass_wildmons ROUTE_24 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 12, ABRA       ; 20% chance
	db 12, ABRA       ; 20% chance
	db 13, PIDGEY     ; 15% chance
	db 10, BELLSPROUT ; 10% chance
	db 10, BELLSPROUT ; 10% chance
	db 10, BELLSPROUT ; 10% chance
	db 12, SUNKERN    ;  5% chance
	db 12, SUNKERN    ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance
	db 12, SUNKERN    ;  1% chance
	; nite
	db 12, ABRA       ; 20% chance
	db 12, ABRA       ; 20% chance
	db 10, ODDISH     ; 15% chance
	db 10, PSYDUCK    ; 10% chance
	db 12, VENONAT    ; 10% chance
	db 10, BELLSPROUT ; 10% chance
	db 10, BELLSPROUT ;  5% chance
	db 10, ODDISH     ;  5% chance
	db 10, ODDISH     ;  4% chance
	db 10, ODDISH     ;  1% chance

	; PIKACHU (GEN2)
	def_grass_wildmons VIRIDIAN_FOREST ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  4, PIKACHU    ; 20% chance
	db  5, PIKACHU    ; 20% chance
	db  3, WEEDLE     ; 15% chance
	db  3, CATERPIE   ; 10% chance
	db  3, CATERPIE   ; 10% chance
	db  3, CATERPIE   ; 10% chance
	db  3, PIDGEY     ;  5% chance
	db  4, METAPOD    ;  5% chance
	db  4, KAKUNA     ;  4% chance
	db  4, KAKUNA     ;  1% chance
	; nite
	db  4, PIKACHU    ; 20% chance
	db  5, PIKACHU    ; 20% chance
	db  3, CATERPIE   ; 15% chance
	db  3, WEEDLE     ; 10% chance
	db  3, SPINARAK   ; 10% chance
	db  3, SPINARAK   ; 10% chance
	db  3, ZUBAT      ;  5% chance
	db  3, PARAS      ;  5% chance
	db  4, SPINARAK   ;  4% chance
	db  4, SPINARAK   ;  1% chance

	; CLEFAIRY (1/2) (same)
	def_grass_wildmons MOUNT_MOON ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  8, CLEFAIRY   ; 20% chance
	db  6, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  8, CLEFAIRY   ; 10% chance
	db  6, PARAS      ;  5% chance
	db  8, SANDSHREW  ;  5% chance
	db  8, CLEFAIRY   ;  4% chance
	db  8, CLEFAIRY   ;  1% chance
	; nite
	db  8, CLEFAIRY   ; 20% chance
	db  8, CLEFAIRY   ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ;  5% chance
	db  6, PARAS      ;  5% chance
	db  6, GEODUDE    ;  4% chance
	db  6, GEODUDE    ;  1% chance

	; CLEFAIRY (2/2) (same)
	def_grass_wildmons MOUNT_MOON_B2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  8, CLEFAIRY   ; 20% chance
	db  9, CLEFAIRY   ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  6, ZUBAT      ; 10% chance
	db  7, PARAS      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  7, ZUBAT      ;  5% chance
	db  6, ZUBAT      ;  5% chance
	db  6, ZUBAT      ;  4% chance
	db  6, ZUBAT      ;  1% chance
	; nite
	db  8, CLEFAIRY   ; 20% chance
	db  9, CLEFAIRY   ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  6, ZUBAT      ; 10% chance
	db  7, PARAS      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ;  5% chance
	db  6, GEODUDE    ;  5% chance
	db  6, GEODUDE    ;  4% chance
	db  6, GEODUDE    ;  1% chance

	; ONIX (1/2) (same)
	def_grass_wildmons ROCK_TUNNEL_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 14, ONIX       ; 20% chance
	db 15, ONIX       ; 20% chance
	db 16, GEODUDE    ; 15% chance
	db 15, ZUBAT      ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 17, MACHOP     ; 10% chance
	db 17, MACHOP     ;  5% chance
	db 15, ZUBAT      ;  5% chance
	db 16, GEODUDE    ;  4% chance
	db 12, CUBONE     ;  1% chance
	; nite
	db 14, ONIX       ; 20% chance
	db 15, ONIX       ; 20% chance
	db 15, ZUBAT      ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 17, MACHOP     ; 10% chance
	db 17, MACHOP     ;  5% chance
	db 16, GEODUDE    ;  5% chance
	db 15, ZUBAT      ;  4% chance
	db 12, CUBONE     ;  1% chance

	; ONIX (2/2) (same)
	def_grass_wildmons ROCK_TUNNEL_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 16, ONIX       ; 20% chance
	db 15, ONIX       ; 20% chance
	db 16, ZUBAT      ; 15% chance
	db 17, ZUBAT      ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 17, GEODUDE    ; 10% chance
	db 17, MACHOP     ;  5% chance
	db 17, MACHOP     ;  5% chance
	db 12, CUBONE     ;  4% chance
	db 16, ZUBAT      ;  1% chance
	; nite
	db 16, ONIX       ; 20% chance
	db 15, ONIX       ; 20% chance
	db 16, GEODUDE    ; 15% chance
	db 17, GEODUDE    ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 17, ZUBAT      ; 10% chance
	db 17, MACHOP     ;  5% chance
	db 17, MACHOP     ;  5% chance
	db 12, CUBONE     ;  4% chance
	db 16, GEODUDE    ;  1% chance

	; JYNX (1/2) (GEN2)
	def_grass_wildmons SEAFOAM_ISLANDS_B3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 30, JYNX       ; 20% chance
	db 30, JYNX       ; 20% chance
	db 22, KRABBY     ; 15% chance
	db 22, ZUBAT      ; 10% chance
	db 28, GOLBAT     ; 10% chance
	db 22, SEEL       ; 10% chance
	db 28, KINGLER    ;  5% chance
	db 34, DEWGONG    ;  5% chance
	db 23, SHELLDER   ;  4% chance
	db 23, SHELLDER   ;  1% chance
	; nite
	db 30, JYNX       ; 20% chance
	db 30, JYNX       ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 22, KRABBY     ; 10% chance
	db 22, KRABBY     ; 10% chance
	db 28, GOLBAT     ; 10% chance
	db 28, SHELLDER   ;  5% chance
	db 28, KINGLER    ;  5% chance
	db 23, SNEASEL    ;  4% chance
	db 23, SHELLDER   ;  1% chance

	; JYNX (2/2) (GEN2)
	def_grass_wildmons SEAFOAM_ISLANDS_B4F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 30, JYNX       ; 20% chance
	db 30, JYNX       ; 20% chance
	db 22, KRABBY     ; 15% chance
	db 22, ZUBAT      ; 10% chance
	db 28, GOLBAT     ; 10% chance
	db 22, SEEL       ; 10% chance
	db 28, KINGLER    ;  5% chance
	db 34, DEWGONG    ;  5% chance
	db 23, SHELLDER   ;  4% chance
	db 23, SHELLDER   ;  1% chance
	; nite
	db 30, JYNX       ; 20% chance
	db 30, JYNX       ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 22, KRABBY     ; 10% chance
	db 22, KRABBY     ; 10% chance
	db 28, GOLBAT     ; 10% chance
	db 28, SHELLDER   ;  5% chance
	db 28, KINGLER    ;  5% chance
	db 23, SNEASEL    ;  4% chance
	db 23, SHELLDER   ;  1% chance

	; ELECTABUZZ (same)
	def_grass_wildmons POWER_PLANT ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 30, ELECTABUZZ ; 20% chance
	db 30, ELECTABUZZ ; 20% chance
	db 22, VOLTORB    ; 15% chance
	db 22, VOLTORB    ; 10% chance
	db 30, PIKACHU    ; 10% chance
	db 21, MAGNEMITE  ; 10% chance
	db 20, PIKACHU    ;  5% chance
	db 23, MAGNEMITE  ;  5% chance
	db 30, MAGNETON   ;  4% chance
	db 30, MAGNETON   ;  1% chance
	; nite
	db 30, ELECTABUZZ ; 20% chance
	db 30, ELECTABUZZ ; 20% chance
	db 22, VOLTORB    ; 15% chance
	db 22, VOLTORB    ; 10% chance
	db 30, PIKACHU    ; 10% chance
	db 21, MAGNEMITE  ; 10% chance
	db 20, PIKACHU    ;  5% chance
	db 23, MAGNEMITE  ;  5% chance
	db 30, MAGNETON   ;  4% chance
	db 30, MAGNETON   ;  1% chance

	; MAGMAR (1/4) (GEN2)
	def_grass_wildmons POKEMON_MANSION_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 24, SLUGMA     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, GRIMER     ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 27, HOUNDOUR   ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 24, SLUGMA     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance

	; MAGMAR (2/4) (GEN2)
	def_grass_wildmons POKEMON_MANSION_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 24, SLUGMA     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, GRIMER     ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 27, HOUNDOUR   ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 24, SLUGMA     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance

	; MAGMAR (3/4) (GEN2)
	def_grass_wildmons POKEMON_MANSION_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 36, VULPIX     ; 10% chance
	db 28, GRIMER     ; 10% chance
	db 28, KOFFING    ;  5% chance
	db 36, WEEZING    ;  5% chance
	db 35, WEEZING    ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 27, HOUNDOUR   ; 10% chance
	db 36, VULPIX     ; 10% chance
	db 28, GRIMER     ; 10% chance
	db 28, KOFFING    ;  5% chance
	db 36, WEEZING    ;  5% chance
	db 35, WEEZING    ;  4% chance
	db 38, MUK        ;  1% chance

	; MAGMAR (4/4) (GEN2)
	def_grass_wildmons POKEMON_MANSION_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, GRIMER     ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 24, SLUGMA     ; 10% chance
	db 28, KOFFING    ;  5% chance
	db 38, MUK        ;  5% chance
	db 20, DITTO      ;  4% chance
	db 36, WEEZING    ;  1% chance
	; nite
	db 34, MAGMAR     ; 20% chance
	db 34, MAGMAR     ; 20% chance
	db 28, GRIMER     ; 15% chance
	db 27, HOUNDOUR   ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 24, SLUGMA     ; 10% chance
	db 28, KOFFING    ;  5% chance
	db 38, MUK        ;  5% chance
	db 20, DITTO      ;  4% chance
	db 36, WEEZING    ;  1% chance

	; GEODUDE (1/3) (GEN2)
	def_grass_wildmons VICTORY_ROAD_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 34, GEODUDE    ; 20% chance
	db 34, GEODUDE    ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 42, ONIX       ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 42, GOLBAT     ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	; nite
	db 34, GEODUDE    ; 20% chance
	db 34, GEODUDE    ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 42, ONIX       ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 42, GOLBAT     ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance

	; GEODUDE (2/3) (GEN2)
	def_grass_wildmons VICTORY_ROAD_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 34, GEODUDE    ; 20% chance
	db 34, GEODUDE    ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 42, ONIX       ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 42, GOLBAT     ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	; nite
	db 34, GEODUDE    ; 20% chance
	db 34, GEODUDE    ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 42, ONIX       ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 42, GOLBAT     ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance

	; GEODUDE (3/3) (GEN2)
	def_grass_wildmons VICTORY_ROAD_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 34, GEODUDE    ; 20% chance
	db 34, GEODUDE    ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 42, ONIX       ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 42, GOLBAT     ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	; nite
	db 34, GEODUDE    ; 20% chance
	db 34, GEODUDE    ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 42, ONIX       ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 42, GOLBAT     ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance

	; EEVEE (GEN2)
	def_grass_wildmons BILLS_BACK_YARD ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 10, EEVEE      ; 20% chance
	db 10, EEVEE      ; 20% chance
	db 12, BELLSPROUT ; 15% chance
	db 16, PIDGEY     ; 10% chance
	db 16, PIDGEY     ; 10% chance
	db 12, ABRA       ; 10% chance
	db  7, BULBASAUR  ;  5% chance
	db  7, CHARMANDER ;  5% chance
	db  7, SQUIRTLE   ;  4% chance
	db  7, SQUIRTLE   ;  1% chance
	; nite
	db 10, EEVEE      ; 20% chance
	db 10, EEVEE      ; 20% chance
	db 12, ODDISH     ; 15% chance
	db 12, VENONAT    ; 10% chance
	db 12, ABRA       ; 10% chance
	db 16, HOOTHOOT   ; 10% chance
	db  7, BULBASAUR  ;  5% chance
	db  7, CHARMANDER ;  5% chance
	db  7, SQUIRTLE   ;  4% chance
	db  7, SQUIRTLE   ;  1% chance


; JOHTO swarms
	; PINECO
	def_grass_wildmons ROUTE_29
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 10, PINECO     ; 20% chance
	db 11, PINECO     ; 20% chance
	db  4, SENTRET    ; 15% chance
	db  3, PIDGEY     ; 10% chance
	db  4, PIDGEY     ; 10% chance
	db  5, PIDGEY     ; 10% chance
	db  5, SENTRET    ;  5% chance
	db  3, RATTATA    ;  5% chance
	db  4, HOPPIP     ;  4% chance
	db  5, HOPPIP     ;  1% chance
	; nite
	db 10, PINECO     ; 20% chance
	db 11, PINECO     ; 20% chance
	db  3, HOOTHOOT   ; 15% chance
	db  4, HOOTHOOT   ; 10% chance
	db  5, HOOTHOOT   ; 10% chance
	db  3, RATTATA    ; 10% chance
	db  4, RATTATA    ;  5% chance
	db  5, RATTATA    ;  5% chance
	db  6, RATTATA    ;  4% chance
	db  7, RATTATA    ;  1% chance

	; LEDYBA
	def_grass_wildmons ROUTE_30
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  3, LEDYBA     ; 20% chance
	db  4, LEDYBA     ; 20% chance
	db  3, PIDGEY     ; 15% chance
	db  5, LEDYBA     ; 10% chance
	db  3, WEEDLE     ; 10% chance
	db  3, CATERPIE   ; 10% chance
	db  4, CATERPIE   ;  5% chance
	db  4, PIDGEY     ;  5% chance
	db  4, HOPPIP     ;  4% chance
	db  5, HOPPIP     ;  1% chance
	; nite
	db  3, LEDYBA     ; 20% chance
	db  4, LEDYBA     ; 20% chance
	db  3, HOOTHOOT   ; 15% chance
	db  4, HOOTHOOT   ; 10% chance
	db  4, POLIWAG    ; 10% chance
	db  3, SPINARAK   ; 10% chance
	db  4, SPINARAK   ;  5% chance
	db  5, HOOTHOOT   ;  5% chance
	db  3, ZUBAT      ;  4% chance
	db  4, ZUBAT      ;  1% chance

	; YANMA
	def_grass_wildmons ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 12, YANMA      ; 20% chance
	db 12, YANMA      ; 20% chance
	db 14, PIDGEY     ; 15% chance
	db 14, GROWLITHE  ; 10% chance
	db 12, ABRA       ; 10% chance
	db 12, SNUBBULL   ; 10% chance
	db 13, SNUBBULL   ;  5% chance
	db 12, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 12, YANMA      ;  1% chance
	; nite
	db 12, YANMA      ; 20% chance
	db 12, YANMA      ; 20% chance
	db 14, HOOTHOOT   ; 15% chance
	db 14, PSYDUCK    ; 10% chance
	db 12, ABRA       ; 10% chance
	db 12, DROWZEE    ; 10% chance
	db 13, DROWZEE    ;  5% chance
	db 12, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 12, YANMA      ;  1% chance

	; STANTLER
	def_grass_wildmons ROUTE_37
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, STANTLER   ; 20% chance
	db 15, STANTLER   ; 20% chance
	db 14, LEDYBA     ; 15% chance
	db 17, GROWLITHE  ; 10% chance
	db 16, VULPIX     ; 10% chance
	db 15, PIDGEY     ; 10% chance
	db 15, PIDGEY     ;  5% chance
	db 18, PIDGEOTTO  ;  5% chance
	db 18, LEDIAN     ;  4% chance
	db 18, LEDIAN     ;  1% chance
	; nite
	db 14, STANTLER   ; 20% chance
	db 15, STANTLER   ; 20% chance
	db 14, SPINARAK   ; 15% chance
	db 16, STANTLER   ; 10% chance
	db 16, HOUNDOUR   ; 10% chance
	db 15, HOOTHOOT   ; 10% chance
	db 20, NOCTOWL    ;  5% chance
	db 22, ARIADOS    ;  5% chance
	db 16, HOOTHOOT   ;  4% chance
	db 17, HOOTHOOT   ;  1% chance

	; TAUROS
	def_grass_wildmons ROUTE_38
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 13, TAUROS     ; 20% chance
	db 14, TAUROS     ; 20% chance
	db 17, MAGNEMITE  ; 15% chance
	db 18, PIDGEOTTO  ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 16, RATTATA    ; 10% chance
	db 16, RATTATA    ;  5% chance
	db 13, MILTANK    ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, RATICATE   ;  1% chance
	; nite
	db 13, TAUROS     ; 20% chance
	db 14, TAUROS     ; 20% chance
	db 20, RATICATE   ; 15% chance
	db 16, MEOWTH     ; 10% chance
	db 17, MEOWTH     ; 10% chance
	db 16, MAGNEMITE  ; 10% chance
	db 17, MAGNEMITE  ;  5% chance
	db 16, RATTATA    ;  5% chance
	db 20, NOCTOWL    ;  4% chance
	db 20, NOCTOWL    ;  1% chance

	; MARILL
	def_grass_wildmons ROUTE_42
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 15, MARILL     ; 20% chance
	db 16, MARILL     ; 20% chance
	db 15, RATTATA    ; 15% chance
	db 15, SPEAROW    ; 10% chance
	db 14, EKANS      ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 15, MANKEY     ;  5% chance
	db 22, ARBOK      ;  5% chance
	db 16, MAREEP     ;  4% chance
	db 16, MAREEP     ;  1% chance
	; nite
	db 15, MARILL     ; 20% chance
	db 16, MARILL     ; 20% chance
	db 20, RATICATE   ; 15% chance
	db 15, RATTATA    ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 15, MANKEY     ;  5% chance
	db 20, RATICATE   ;  5% chance
	db 16, MAREEP     ;  4% chance
	db 16, MAREEP     ;  1% chance

	; SKARMORY
	def_grass_wildmons ROUTE_45
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 27, SKARMORY   ; 20% chance
	db 27, SKARMORY   ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 25, GRAVELER   ; 10% chance
	db 24, GLIGAR     ; 10% chance
	db 25, DONPHAN    ; 10% chance
	db 27, SKARMORY   ;  5% chance
	db 20, PHANPY     ;  5% chance
	db 15, LARVITAR   ;  4% chance
	db 21, PHANPY     ;  1% chance
	; nite
	db 27, SKARMORY   ; 20% chance
	db 27, SKARMORY   ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 21, MURKROW    ; 10% chance
	db 25, GRAVELER   ; 10% chance
	db 24, GLIGAR     ; 10% chance
	db 25, GLIGAR     ;  5% chance
	db 24, GEODUDE    ;  5% chance
	db 15, LARVITAR   ;  4% chance
	db 22, MURKROW    ;  1% chance

	; SUNKERN
	def_grass_wildmons NATIONAL_PARK
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, SUNKERN    ; 20% chance
	db 15, SUNKERN    ; 20% chance
	db 14, LEDYBA     ; 15% chance
	db 14, SUNKERN    ; 10% chance
	db 12, NIDORAN_M  ; 10% chance
	db 12, NIDORAN_F  ; 10% chance
	db 13, PIDGEY     ;  5% chance
	db 10, CATERPIE   ;  5% chance
	db 10, WEEDLE     ;  4% chance
	db 11, WEEDLE     ;  1% chance
	; nite
	db 14, SUNKERN    ; 20% chance
	db 15, SUNKERN    ; 20% chance
	db 14, SPINARAK   ; 15% chance
	db 13, HOOTHOOT   ; 10% chance
	db 14, HOOTHOOT   ; 10% chance
	db 12, PSYDUCK    ; 10% chance
	db 13, PSYDUCK    ;  5% chance
	db 10, VENONAT    ;  5% chance
	db 11, VENONAT    ;  4% chance
	db 12, VENONAT    ;  1% chance

	; ODDISH
	def_grass_wildmons ILEX_FOREST
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db  6, ODDISH     ; 20% chance
	db  7, ODDISH     ; 20% chance
	db  5, WEEDLE     ; 15% chance
	db  5, CATERPIE   ; 10% chance
	db  6, CATERPIE   ; 10% chance
	db  7, METAPOD    ; 10% chance
	db  7, KAKUNA     ;  5% chance
	db  6, PARAS      ;  5% chance
	db  7, PIDGEY     ;  4% chance
	db  8, PIDGEY     ;  1% chance
	; nite
	db  5, ODDISH     ; 20% chance
	db  6, ODDISH     ; 20% chance
	db  5, VENONAT    ; 15% chance
	db  7, ODDISH     ; 10% chance
	db  7, ODDISH     ; 10% chance
	db  6, VENONAT    ; 10% chance
	db  7, PSYDUCK    ;  5% chance
	db  6, PARAS      ;  5% chance
	db  7, HOOTHOOT   ;  4% chance
	db  8, HOOTHOOT   ;  1% chance

	; WOOPER (1/3)
	def_grass_wildmons UNION_CAVE_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  5, WOOPER     ; 20% chance
	db  6, WOOPER     ; 20% chance
	db  5, ZUBAT      ; 15% chance
	db  7, GEODUDE    ; 10% chance
	db  7, SANDSHREW  ; 10% chance
	db  4, RATTATA    ; 10% chance
	db  6, GEODUDE    ;  5% chance
	db  7, SANDSHREW  ;  5% chance
	db  6, ONIX       ;  4% chance
	db  7, ONIX       ;  1% chance
	; nite
	db  6, WOOPER     ; 20% chance
	db  6, WOOPER     ; 20% chance
	db  5, RATTATA    ; 15% chance
	db  7, WOOPER     ; 10% chance
	db  7, GEODUDE    ; 10% chance
	db  5, GEODUDE    ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  6, ZUBAT      ;  5% chance
	db  6, ONIX       ;  4% chance
	db  7, ONIX       ;  1% chance

	; WOOPER (2/3)
	def_grass_wildmons UNION_CAVE_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  8, WOOPER     ; 20% chance
	db  9, WOOPER     ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  8, ONIX       ; 10% chance
	db  8, GEODUDE    ; 10% chance
	db  9, GEODUDE    ;  5% chance
	db  6, RATTATA    ;  5% chance
	db  7, RATTATA    ;  4% chance
	db  8, RATTATA    ;  1% chance
	; nite
	db  8, WOOPER     ; 20% chance
	db  9, WOOPER     ; 20% chance
	db  8, GEODUDE    ; 15% chance
	db  8, WOOPER     ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  9, GEODUDE    ;  5% chance
	db  8, ONIX       ;  5% chance
	db  6, RATTATA    ;  4% chance
	db  7, RATTATA    ;  1% chance

	; WOOPER (3/3)
	def_grass_wildmons UNION_CAVE_B2F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 20, WOOPER     ; 20% chance
	db 21, WOOPER     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 23, ZUBAT      ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 24, GOLBAT     ; 10% chance
	db 21, RATICATE   ;  5% chance
	db 20, GEODUDE    ;  5% chance
	db 23, ONIX       ;  4% chance
	db 24, ONIX       ;  1% chance
	; nite
	db 20, WOOPER     ; 20% chance
	db 21, WOOPER     ; 20% chance
	db 22, QUAGSIRE   ; 15% chance
	db 22, ZUBAT      ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 21, RATICATE   ;  5% chance
	db 20, GEODUDE    ;  5% chance
	db 23, ONIX       ;  4% chance
	db 24, ONIX       ;  1% chance

	; DUNSPARCE (1/2)
	def_grass_wildmons DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 18, DUNSPARCE  ; 20% chance
	db 18, DUNSPARCE  ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 25, GRAVELER   ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 20, TEDDIURSA  ; 10% chance
	db 25, URSARING   ;  5% chance
	db 23, GOLBAT     ;  5% chance
	db 24, ZUBAT      ;  4% chance
	db 24, ZUBAT      ;  1% chance
	; nite
	db 18, DUNSPARCE  ; 20% chance
	db 18, DUNSPARCE  ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 25, GRAVELER   ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 20, WOBBUFFET  ; 10% chance
	db 21, WOBBUFFET  ;  5% chance
	db 23, GOLBAT     ;  5% chance
	db 24, ZUBAT      ;  4% chance
	db 24, ZUBAT      ;  1% chance

	; DUNSPARCE (2/2)
	def_grass_wildmons DARK_CAVE_BLACKTHORN_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 18, DUNSPARCE  ; 20% chance
	db 18, DUNSPARCE  ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 25, GRAVELER   ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 20, TEDDIURSA  ; 10% chance
	db 25, URSARING   ;  5% chance
	db 23, GOLBAT     ;  5% chance
	db 24, ZUBAT      ;  4% chance
	db 24, ZUBAT      ;  1% chance
	; nite
	db 18, DUNSPARCE  ; 20% chance
	db 18, DUNSPARCE  ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 25, GRAVELER   ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 20, WOBBUFFET  ; 10% chance
	db 21, WOBBUFFET  ;  5% chance
	db 23, GOLBAT     ;  5% chance
	db 24, ZUBAT      ;  4% chance
	db 24, ZUBAT      ;  1% chance

	; SNEASEL (1/3)
	def_grass_wildmons ICE_PATH_1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 22, SNEASEL    ; 20% chance
	db 23, SNEASEL    ; 20% chance
	db 21, SWINUB     ; 15% chance
	db 22, SWINUB     ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 22, ZUBAT      ; 10% chance
	db 23, ZUBAT      ;  5% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 22, SNEASEL    ; 20% chance
	db 23, SNEASEL    ; 20% chance
	db 21, SWINUB     ; 15% chance
	db 22, DELIBIRD   ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 22, ZUBAT      ; 10% chance
	db 23, ZUBAT      ;  5% chance
	db 21, SWINUB     ;  5% chance
	db 22, ZUBAT      ;  4% chance
	db 23, JYNX       ;  1% chance

	; SNEASEL (2/3)
	def_grass_wildmons ICE_PATH_B1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 22, SNEASEL    ; 20% chance
	db 23, SNEASEL    ; 20% chance
	db 21, SWINUB     ; 15% chance
	db 22, SWINUB     ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 22, ZUBAT      ; 10% chance
	db 23, ZUBAT      ;  5% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 22, SNEASEL    ; 20% chance
	db 23, SNEASEL    ; 20% chance
	db 21, SWINUB     ; 15% chance
	db 22, DELIBIRD   ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 22, ZUBAT      ; 10% chance
	db 23, ZUBAT      ;  5% chance
	db 21, SWINUB     ;  5% chance
	db 22, ZUBAT      ;  4% chance
	db 23, JYNX       ;  1% chance

	; SNEASEL (3/3)
	def_grass_wildmons ICE_PATH_B2F_B3F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; morn
	; day
	db 22, SNEASEL    ; 20% chance
	db 23, SNEASEL    ; 20% chance
	db 23, SWINUB     ; 15% chance
	db 24, GOLBAT     ; 10% chance
	db 23, DELIBIRD   ; 10% chance
	db 24, ZUBAT      ; 10% chance
	db 25, ZUBAT      ;  5% chance
	db 23, JYNX       ;  5% chance
	db 23, JYNX       ;  4% chance
	db 24, JYNX       ;  1% chance
	; nite
	db 22, SNEASEL    ; 20% chance
	db 23, SNEASEL    ; 20% chance
	db 24, ZUBAT      ; 15% chance
	db 23, SWINUB     ; 10% chance
	db 24, DELIBIRD   ; 10% chance
	db 24, GOLBAT     ; 10% chance
	db 23, SWINUB     ;  5% chance
	db 23, DELIBIRD   ;  5% chance
	db 24, ZUBAT      ;  4% chance
	db 22, JYNX       ;  1% chance

	db -1 ; end
