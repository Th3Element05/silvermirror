; Pokémon swarms in grass

;SwarmGrassWildMonsAlt:
SwarmGrassWildMonsAltChallenge:

; KANTO alt swarms (GEN2)
	; SENTRET (GEN2)
	def_grass_wildmons ROUTE_1 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  3, SENTRET    ; 20% chance
	db  4, SENTRET    ; 20% chance
	db  3, RATTATA    ; 15% chance
	db  5, SENTRET    ; 10% chance
	db  3, PIDGEY     ; 10% chance
	db  4, PIDGEY     ; 10% chance
	db  5, PIDGEY     ;  5% chance
	db  3, SENTRET    ;  5% chance
	db  4, SENTRET    ;  4% chance
	db  5, SENTRET    ;  1% chance
	; nite
	db  3, SENTRET    ; 20% chance
	db  4, SENTRET    ; 20% chance
	db  3, RATTATA    ; 15% chance
	db  4, RATTATA    ; 10% chance
	db  5, SENTRET    ; 10% chance
	db  3, HOOTHOOT   ; 10% chance
	db  4, HOOTHOOT   ;  5% chance
	db  5, HOOTHOOT   ;  5% chance
	db  5, RATTATA    ;  4% chance
	db  5, RATTATA    ;  1% chance

	; MANKEY (same)
	def_grass_wildmons ROUTE_3 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  8, MANKEY     ; 20% chance
	db  9, MANKEY     ; 20% chance
	db  8, RATTATA    ; 15% chance
	db  8, SPEAROW    ; 10% chance
	db  8, SPEAROW    ; 10% chance
	db  8, SANDSHREW  ; 10% chance
	db  4, JIGGLYPUFF ;  5% chance
	db  8, SPEAROW    ;  5% chance
	db  8, SPEAROW    ;  4% chance
	db  8, SPEAROW    ;  1% chance
	; nite
	db  8, MANKEY     ; 20% chance
	db  9, MANKEY     ; 20% chance
	db  8, RATTATA    ; 15% chance
	db  8, SPEAROW    ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  8, RATTATA    ; 10% chance
	db  8, RATTATA    ;  5% chance
	db  8, RATTATA    ;  5% chance
	db  4, JIGGLYPUFF ;  4% chance
	db  4, JIGGLYPUFF ;  1% chance

	; SANDSHREW (same)
	def_grass_wildmons ROUTE_4 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  8, SANDSHREW  ; 20% chance
	db  8, SANDSHREW  ; 20% chance
	db  8, EKANS      ; 15% chance
	db  8, RATTATA    ; 10% chance
	db  8, SPEAROW    ; 10% chance
	db  8, SPEAROW    ; 10% chance
	db  8, SPEAROW    ;  5% chance
	db  8, SPEAROW    ;  5% chance
	db  9, MANKEY     ;  4% chance
	db  9, MANKEY     ;  1% chance
	; nite
	db  8, SANDSHREW  ; 20% chance
	db  8, SANDSHREW  ; 20% chance
	db  8, RATTATA    ; 15% chance
	db  8, RATTATA    ; 10% chance
	db  8, SPEAROW    ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  9, MANKEY     ;  5% chance
	db  8, RATTATA    ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  8, CLEFAIRY   ;  1% chance

	; SNUBBULL (GEN2)
	def_grass_wildmons ROUTE_5 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 12, SNUBBULL   ; 20% chance
	db 12, SNUBBULL   ; 20% chance
	db 14, PIDGEY     ; 15% chance
	db 12, SNUBBULL   ; 10% chance
	db  8, ABRA       ; 10% chance
	db 14, PIDGEY     ; 10% chance
	db 14, PIDGEY     ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 12, SNUBBULL   ; 20% chance
	db 12, SNUBBULL   ; 20% chance
	db 14, HOOTHOOT   ; 15% chance
	db  8, ABRA       ; 10% chance
	db 12, MEOWTH     ; 10% chance
	db 12, MEOWTH     ; 10% chance
	db 14, HOOTHOOT   ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance

	; MURKROW (GEN2)
	def_grass_wildmons ROUTE_7 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, MURKROW    ; 20% chance
	db 20, MURKROW    ; 20% chance
	db 20, SNUBBULL   ; 15% chance
	db 20, SPEAROW    ; 10% chance
	db 20, SPEAROW    ; 10% chance
	db 18, GROWLITHE  ; 10% chance
	db 18, VULPIX     ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 20, MURKROW    ; 20% chance
	db 20, MURKROW    ; 20% chance
	db 20, MEOWTH     ; 15% chance
	db 20, MURKROW    ; 10% chance
	db 20, HOUNDOUR   ; 10% chance
	db 20, HOUNDOUR   ; 10% chance
	db 20, MEOWTH     ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance

	; HOUNDOUR (GEN2)
	def_grass_wildmons ROUTE_8 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 18, HOUNDOUR   ; 20% chance
	db 18, HOUNDOUR   ; 20% chance
	db 19, PIDGEY     ; 15% chance
	db 20, SNUBBULL   ; 10% chance
	db 20, SNUBBULL   ; 10% chance
	db 18, GROWLITHE  ; 10% chance
	db 18, VULPIX     ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 18, HOUNDOUR   ; 20% chance
	db 18, HOUNDOUR   ; 20% chance
	db 20, HOOTHOOT   ; 15% chance
	db 18, HOUNDOUR   ; 10% chance
	db 20, MEOWTH     ; 10% chance
	db 20, MEOWTH     ; 10% chance
	db 12, ABRA       ;  5% chance
	db 16, GASTLY     ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 20, HOOTHOOT   ;  1% chance

	; MAGNEMITE (GEN2)
	def_grass_wildmons ROUTE_10_NORTH ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 16, MAGNEMITE  ; 20% chance
	db 16, MAGNEMITE  ; 20% chance
	db 16, SPEAROW    ; 15% chance
	db 16, MAGNEMITE  ; 10% chance
	db 17, SANDSHREW  ; 10% chance
	db 17, VOLTORB    ; 10% chance
	db 16, EKANS      ;  5% chance
	db 16, EKANS      ;  5% chance
	db 16, MAREEP     ;  4% chance
	db 16, MAREEP     ;  1% chance
	; nite
	db 16, MAGNEMITE  ; 20% chance
	db 16, MAGNEMITE  ; 20% chance
	db 16, RATTATA    ; 15% chance
	db 16, RATTATA    ; 10% chance
	db 16, MAGNEMITE  ; 10% chance
	db 17, VOLTORB    ; 10% chance
	db 16, VENONAT    ;  5% chance
	db 15, ZUBAT      ;  5% chance
	db 16, MAREEP     ;  4% chance
	db 16, MAREEP     ;  1% chance

	; EKANS
	def_grass_wildmons ROUTE_11 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 15, EKANS      ; 20% chance
	db 15, EKANS      ; 20% chance
	db 15, SANDSHREW  ; 15% chance
	db 15, EKANS      ; 10% chance
	db 16, SPEAROW    ; 10% chance
	db 16, SPEAROW    ; 10% chance
	db 15, RATTATA    ;  5% chance
	db 15, RATTATA    ;  5% chance
	db 15, DROWZEE    ;  4% chance
	db 15, DROWZEE    ;  1% chance
	; nite
	db 15, EKANS      ; 20% chance
	db 15, EKANS      ; 20% chance
	db 15, DROWZEE    ; 15% chance
	db 15, DROWZEE    ; 10% chance
	db 15, RATTATA    ; 10% chance
	db 15, RATTATA    ; 10% chance
	db 20, RATICATE   ;  5% chance
	db 15, DROWZEE    ;  5% chance
	db 16, SPEAROW    ;  4% chance
	db 16, SPEAROW    ;  1% chance

	; HOOTHOOT
	def_grass_wildmons ROUTE_13 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 23, HOOTHOOT   ; 20% chance
	db 23, HOOTHOOT   ; 20% chance
	db 25, BELLSPROUT ; 15% chance
	db 24, PIDGEY     ; 10% chance
	db 24, PIDGEY     ; 10% chance
	db 24, PIDGEY     ; 10% chance
	db 28, WEEPINBELL ;  5% chance
	db 27, PIDGEOTTO  ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	; nite
	db 23, HOOTHOOT   ; 20% chance
	db 23, HOOTHOOT   ; 20% chance
	db 25, BELLSPROUT ; 15% chance
	db 25, ODDISH     ; 10% chance
	db 25, ODDISH     ; 10% chance
	db 24, VENONAT    ; 10% chance
	db 28, WEEPINBELL ;  5% chance
	db 28, GLOOM      ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance

	; VENONAT
	def_grass_wildmons ROUTE_15 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 24, VENONAT    ; 20% chance
	db 24, VENONAT    ; 20% chance
	db 26, BELLSPROUT ; 15% chance
	db 25, PIDGEY     ; 10% chance
	db 25, PIDGEY     ; 10% chance
	db 20, DITTO      ; 10% chance
	db 29, WEEPINBELL ;  5% chance
	db 25, PIDGEY     ;  5% chance
	db 28, PIDGEOTTO  ;  4% chance
	db 28, PIDGEOTTO  ;  1% chance
	; nite
	db 24, VENONAT    ; 20% chance
	db 24, VENONAT    ; 20% chance
	db 26, BELLSPROUT ; 15% chance
	db 24, VENONAT    ; 10% chance
	db 20, DITTO      ; 10% chance
	db 26, ODDISH     ; 10% chance
	db 29, WEEPINBELL ;  5% chance
	db 29, GLOOM      ;  5% chance
	db 28, VENOMOTH   ;  4% chance
	db 28, VENOMOTH   ;  1% chance

	; NATU
	def_grass_wildmons ROUTE_16 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, NATU       ; 20% chance
	db 20, NATU       ; 20% chance
	db 22, SPEAROW    ; 15% chance
	db 24, DODUO      ; 10% chance
	db 24, DODUO      ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 20, GRIMER     ;  5% chance
	db 26, RATICATE   ;  5% chance
	db 25, FEAROW     ;  4% chance
	db 25, FEAROW     ;  1% chance
	; nite
	db 20, NATU       ; 20% chance
	db 20, NATU       ; 20% chance
	db 23, RATTATA    ; 15% chance
	db 20, GRIMER     ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 22, DODUO      ;  5% chance
	db 22, SPEAROW    ;  5% chance
	db 26, RATICATE   ;  4% chance
	db 25, FEAROW     ;  1% chance

	; SLUGMA
	def_grass_wildmons ROUTE_17 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 22, SLUGMA     ; 20% chance
	db 22, SLUGMA     ; 20% chance
	db 24, DODUO      ; 15% chance
	db 20, GRIMER     ; 10% chance
	db 22, SPEAROW    ; 10% chance
	db 21, PONYTA     ; 10% chance
	db 21, PONYTA     ;  5% chance
	db 24, DODUO      ;  5% chance
	db 25, FEAROW     ;  4% chance
	db 26, DODRIO     ;  1% chance
	; nite
	db 22, SLUGMA     ; 20% chance
	db 22, SLUGMA     ; 20% chance
	db 23, RATTATA    ; 15% chance
	db 24, DODUO      ; 10% chance
	db 20, GRIMER     ; 10% chance
	db 21, PONYTA     ; 10% chance
	db 21, PONYTA     ;  5% chance
	db 23, RATTATA    ;  5% chance
	db 25, RATICATE   ;  4% chance
	db 25, RATICATE   ;  1% chance

	; TANGELA
	def_grass_wildmons ROUTE_21 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 25, TANGELA    ; 20% chance
	db 25, TANGELA    ; 20% chance
	db 16, PIDGEY     ; 15% chance
	db 16, PIDGEY     ; 10% chance
	db 14, RATTATA    ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance
	db 20, RATICATE   ;  5% chance
	db 14, RATTATA    ;  5% chance
	db 16, PIDGEY     ;  4% chance
	db 26, MR__MIME   ;  1% chance
	; nite
	db 25, TANGELA    ; 20% chance
	db 25, TANGELA    ; 20% chance
	db 14, RATTATA    ; 15% chance
	db 14, RATTATA    ; 10% chance
	db 16, PIDGEY     ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 14, RATTATA    ;  5% chance
	db 14, RATTATA    ;  5% chance
	db 28, PIDGEOTTO  ;  4% chance
	db 26, MR__MIME   ;  1% chance

	; NIDORAN_F
	def_grass_wildmons ROUTE_22 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  2, NIDORAN_F  ; 20% chance
	db  2, NIDORAN_F  ; 20% chance
	db  2, MANKEY     ; 15% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, SPEAROW    ; 10% chance
	db  2, NIDORAN_M  ; 10% chance
	db  2, NIDORAN_M  ;  5% chance
	db  2, RATTATA    ;  5% chance
	db  2, SPEAROW    ;  4% chance
	db  2, SPEAROW    ;  1% chance
	; nite
	db  2, NIDORAN_F  ; 20% chance
	db  2, NIDORAN_F  ; 20% chance
	db  2, MANKEY     ; 15% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, RATTATA    ; 10% chance
	db  2, NIDORAN_M  ; 10% chance
	db  2, NIDORAN_M  ;  5% chance
	db  2, SPEAROW    ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  2, RATTATA    ;  1% chance

	; POLIWAG
	def_grass_wildmons ROUTE_26 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, POLIWAG    ; 20% chance
	db 20, POLIWAG    ; 20% chance
	db 21, PONYTA     ; 15% chance
	db 20, SANDSHREW  ; 10% chance
	db 20, EKANS      ; 10% chance
	db 20, DODUO      ; 10% chance
	db 20, DODUO      ;  5% chance
	db 22, ARBOK      ;  5% chance
	db 22, SANDSLASH  ;  4% chance
	db 22, SANDSLASH  ;  1% chance
	; nite
	db 20, POLIWAG    ; 20% chance
	db 20, POLIWAG    ; 20% chance
	db 21, PONYTA     ; 15% chance
	db 20, POLIWAG    ; 10% chance
	db 20, RATTATA    ; 10% chance
	db 20, RATTATA    ; 10% chance
	db 23, RATICATE   ;  5% chance
	db 24, POLIWHIRL  ;  5% chance
	db 24, POLIWHIRL  ;  4% chance
	db 24, POLIWHIRL  ;  1% chance

	; CATERPIE
	def_grass_wildmons VIRIDIAN_FOREST ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  3, CATERPIE   ; 20% chance
	db  3, CATERPIE   ; 20% chance
	db  3, WEEDLE     ; 15% chance
	db  3, CATERPIE   ; 10% chance
	db  3, CATERPIE   ; 10% chance
	db  4, METAPOD    ; 10% chance
	db  4, KAKUNA     ;  5% chance
	db  3, PIDGEY     ;  5% chance
	db  3, PIKACHU    ;  4% chance
	db  4, PIKACHU    ;  1% chance
	; nite
	db  3, CATERPIE   ; 20% chance
	db  3, CATERPIE   ; 20% chance
	db  3, CATERPIE   ; 15% chance
	db  3, WEEDLE     ; 10% chance
	db  3, WEEDLE     ; 10% chance
	db  4, METAPOD    ; 10% chance
	db  4, KAKUNA     ;  5% chance
	db  3, CATERPIE   ;  5% chance
	db  3, PIKACHU    ;  4% chance
	db  4, PIKACHU    ;  1% chance

	; ZUBAT (1/2)
	def_grass_wildmons MOUNT_MOON ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, PARAS      ;  5% chance
	db  8, SANDSHREW  ;  5% chance
	db  7, ZUBAT      ;  4% chance
	db  8, CLEFAIRY   ;  1% chance
	; nite
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ;  5% chance
	db  6, PARAS      ;  5% chance
	db  8, CLEFAIRY   ;  4% chance
	db  8, ZUBAT      ;  1% chance

	; ZUBAT (2/2)
	def_grass_wildmons MOUNT_MOON_B2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  6, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  7, PARAS      ;  5% chance
	db  8, CLEFAIRY   ;  4% chance
	db  9, CLEFAIRY   ;  1% chance
	; nite
	db  7, ZUBAT      ; 20% chance
	db  6, GEODUDE    ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  7, PARAS      ;  5% chance
	db  8, CLEFAIRY   ;  4% chance
	db  9, CLEFAIRY   ;  1% chance

	; CUBONE (1/2)
	def_grass_wildmons ROCK_TUNNEL_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 12, CUBONE     ; 20% chance
	db 12, CUBONE     ; 20% chance
	db 16, GEODUDE    ; 15% chance
	db 15, ZUBAT      ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 17, MACHOP     ; 10% chance
	db 17, MACHOP     ;  5% chance
	db 15, ZUBAT      ;  5% chance
	db 14, ONIX       ;  4% chance
	db 16, GEODUDE    ;  1% chance
	; nite
	db 12, CUBONE     ; 20% chance
	db 12, CUBONE     ; 20% chance
	db 15, ZUBAT      ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 17, MACHOP     ; 10% chance
	db 17, MACHOP     ;  5% chance
	db 16, GEODUDE    ;  5% chance
	db 14, ONIX       ;  4% chance
	db 15, ZUBAT      ;  1% chance

	; CUBONE (2/2)
	def_grass_wildmons ROCK_TUNNEL_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 12, CUBONE     ; 20% chance
	db 12, CUBONE     ; 20% chance
	db 16, ZUBAT      ; 15% chance
	db 17, ZUBAT      ; 10% chance
	db 15, ONIX       ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ;  5% chance
	db 17, MACHOP     ;  5% chance
	db 17, MACHOP     ;  4% chance
	db 16, GEODUDE    ;  1% chance
	; nite
	db 12, CUBONE     ; 20% chance
	db 12, CUBONE     ; 20% chance
	db 17, GEODUDE    ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 15, ONIX       ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 17, ZUBAT      ;  5% chance
	db 17, MACHOP     ;  5% chance
	db 17, MACHOP     ;  4% chance
	db 17, ZUBAT      ;  1% chance

	; MISDREAVUS (1/5)
	def_grass_wildmons POKEMON_TOWER_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, MISDREAVUS ; 20% chance
	db 18, MISDREAVUS ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  4% chance
	db 25, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  4% chance
	db 25, HAUNTER    ;  1% chance

	; MISDREAVUS (2/5)
	def_grass_wildmons POKEMON_TOWER_4F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, MISDREAVUS ; 20% chance
	db 18, MISDREAVUS ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 19, GASTLY     ;  5% chance
	db 18, GASTLY     ;  4% chance
	db 25, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 19, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  4% chance
	db 18, GASTLY     ;  1% chance

	; MISDREAVUS (3/5)
	def_grass_wildmons POKEMON_TOWER_5F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, MISDREAVUS ; 20% chance
	db 18, MISDREAVUS ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  4% chance
	db 18, GASTLY     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ; 10% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  4% chance
	db 25, HAUNTER    ;  1% chance

	; MISDREAVUS (4/5)
	def_grass_wildmons POKEMON_TOWER_6F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, MISDREAVUS ; 20% chance
	db 18, MISDREAVUS ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance

	; MISDREAVUS (5/5)
	def_grass_wildmons POKEMON_TOWER_7F ;GEN2
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 18, MISDREAVUS ; 20% chance
	db 18, MISDREAVUS ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance

	; KRABBY (1/3)
	def_grass_wildmons SEAFOAM_ISLANDS ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 20, KRABBY     ; 20% chance
	db 20, KRABBY     ; 20% chance
	db 19, ZUBAT      ; 15% chance
	db 19, ZUBAT      ; 10% chance
	db 20, KRABBY     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 20, SHELLDER   ;  5% chance
	db 20, SHELLDER   ;  5% chance
	db 28, GOLBAT     ;  4% chance
	db 28, GOLBAT     ;  1% chance
	; nite
	db 20, KRABBY     ; 20% chance
	db 20, KRABBY     ; 20% chance
	db 19, ZUBAT      ; 15% chance
	db 19, ZUBAT      ; 10% chance
	db 20, KRABBY     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 20, SHELLDER   ;  5% chance
	db 20, STARYU     ;  5% chance
	db 28, GOLBAT     ;  4% chance
	db 28, GOLBAT     ;  1% chance

	; KRABBY (2/3)
	def_grass_wildmons SEAFOAM_ISLANDS_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 21, KRABBY     ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 20, ZUBAT      ; 15% chance
	db 20, ZUBAT      ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 21, SHELLDER   ; 10% chance
	db 28, GOLBAT     ;  5% chance
	db 20, SEEL       ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, KINGLER    ;  1% chance
	; nite
	db 21, KRABBY     ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 20, ZUBAT      ; 15% chance
	db 20, ZUBAT      ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 21, SHELLDER   ; 10% chance
	db 28, GOLBAT     ;  5% chance
	db 28, GOLBAT     ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, KINGLER    ;  1% chance

	; KRABBY (3/3)
	def_grass_wildmons SEAFOAM_ISLANDS_B2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 21, KRABBY     ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 21, ZUBAT      ; 15% chance
	db 28, GOLBAT     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 22, SHELLDER   ; 10% chance
	db 21, ZUBAT      ;  5% chance
	db 21, SEEL       ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 29, SLOWBRO    ;  1% chance
	; nite
	db 21, KRABBY     ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 21, ZUBAT      ; 15% chance
	db 28, GOLBAT     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 22, SHELLDER   ; 10% chance
	db 21, ZUBAT      ;  5% chance
	db 21, ZUBAT      ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 29, SLOWBRO    ;  1% chance

	; DITTO
	def_grass_wildmons POKEMON_MANSION_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 20% chance
	db 28, GRIMER     ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 28, KOFFING    ; 10% chance
	db 28, GRIMER     ;  5% chance
	db 38, MUK        ;  5% chance
	db 34, MAGMAR     ;  4% chance
	db 36, WEEZING    ;  1% chance
	; nite
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 20% chance
	db 28, GRIMER     ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 28, KOFFING    ; 10% chance
	db 28, GRIMER     ;  5% chance
	db 38, MUK        ;  5% chance
	db 34, MAGMAR     ;  4% chance
	db 36, WEEZING    ;  1% chance

	; LARVITAR (1/3)
	def_grass_wildmons VICTORY_ROAD_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 15, LARVITAR   ; 20% chance
	db 36, ZUBAT      ; 20% chance
	db 42, ONIX       ; 15% chance
	db 15, LARVITAR   ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 42, GOLBAT     ;  4% chance
	db 40, MAROWAK    ;  1% chance
	; nite
	db 15, LARVITAR   ; 20% chance
	db 36, ZUBAT      ; 20% chance
	db 42, ONIX       ; 15% chance
	db 15, LARVITAR   ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 42, GOLBAT     ;  4% chance
	db 40, MAROWAK    ;  1% chance

	; LARVITAR (2/3)
	def_grass_wildmons VICTORY_ROAD_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 15, LARVITAR   ; 20% chance
	db 36, ZUBAT      ; 20% chance
	db 42, ONIX       ; 15% chance
	db 15, LARVITAR   ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 42, GOLBAT     ;  4% chance
	db 40, MAROWAK    ;  1% chance
	; nite
	db 15, LARVITAR   ; 20% chance
	db 36, ZUBAT      ; 20% chance
	db 42, ONIX       ; 15% chance
	db 15, LARVITAR   ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 42, GOLBAT     ;  4% chance
	db 40, MAROWAK    ;  1% chance

	; LARVITAR (3/3)
	def_grass_wildmons VICTORY_ROAD_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 15, LARVITAR   ; 20% chance
	db 36, ZUBAT      ; 20% chance
	db 42, ONIX       ; 15% chance
	db 15, LARVITAR   ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 42, GOLBAT     ;  4% chance
	db 40, MAROWAK    ;  1% chance
	; nite
	db 15, LARVITAR   ; 20% chance
	db 36, ZUBAT      ; 20% chance
	db 42, ONIX       ; 15% chance
	db 15, LARVITAR   ; 10% chance
	db 34, MACHOP     ; 10% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ;  5% chance
	db 38, GRAVELER   ;  5% chance
	db 42, GOLBAT     ;  4% chance
	db 40, MAROWAK    ;  1% chance

	; EEVEE
	def_grass_wildmons BEHIND_BILLS_HOUSE ;GEN2
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
	db 12, BELLSPROUT ; 10% chance
	db  7, BULBASAUR  ;  5% chance
	db  7, CHARMANDER ;  5% chance
	db  7, SQUIRTLE   ;  4% chance
	db  7, SQUIRTLE   ;  1% chance


; JOHTO swarms
	; HOOTHOOT
	def_grass_wildmons ROUTE_29
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  4, HOPPIP     ; 20% chance
	db  5, HOPPIP     ; 20% chance
	db  3, SENTRET    ; 15% chance
	db  3, PIDGEY     ; 10% chance
	db  4, PIDGEY     ; 10% chance
	db  5, PIDGEY     ; 10% chance
	db  3, RATTATA    ;  5% chance
	db  4, SENTRET    ;  5% chance
	db  5, SENTRET    ;  4% chance
	db  6, SENTRET    ;  1% chance
	; nite
	db  4, HOPPIP     ; 20% chance
	db  5, HOPPIP     ; 20% chance
	db  3, HOOTHOOT   ; 15% chance
	db  4, HOOTHOOT   ; 10% chance
	db  5, HOOTHOOT   ; 10% chance
	db  3, RATTATA    ; 10% chance
	db  4, RATTATA    ;  5% chance
	db  5, RATTATA    ;  5% chance
	db  6, RATTATA    ;  4% chance
	db  7, RATTATA    ;  1% chance

	; BELLSPROUT
	def_grass_wildmons ROUTE_31
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  5, BELLSPROUT ; 20% chance
	db  6, BELLSPROUT ; 20% chance
	db  3, PIDGEY     ; 15% chance
	db  7, BELLSPROUT ; 10% chance
	db  4, LEDYBA     ; 10% chance
	db  4, PIDGEY     ; 10% chance
	db  5, PIDGEY     ;  5% chance
	db  4, CATERPIE   ;  5% chance
	db  4, WEEDLE     ;  4% chance
	db  5, WEEDLE     ;  1% chance
	; nite
	db  5, BELLSPROUT ; 20% chance
	db  6, BELLSPROUT ; 20% chance
	db  4, SPINARAK   ; 15% chance
	db  7, BELLSPROUT ; 10% chance
	db  5, HOOTHOOT   ; 10% chance
	db  4, POLIWAG    ; 10% chance
	db  5, POLIWAG    ;  5% chance
	db  4, ZUBAT      ;  5% chance
	db  5, GASTLY     ;  4% chance
	db  6, GASTLY     ;  1% chance

	; MAREEP
	def_grass_wildmons ROUTE_32
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  6, MAREEP     ; 20% chance
	db  7, MAREEP     ; 20% chance
	db  4, EKANS      ; 15% chance
	db  5, EKANS      ; 10% chance
	db  7, BELLSPROUT ; 10% chance
	db  8, MAREEP     ; 10% chance
	db  6, HOPPIP     ;  5% chance
	db  7, PIDGEY     ;  5% chance
	db  5, RATTATA    ;  4% chance
	db  6, RATTATA    ;  1% chance
	; nite
	db  6, MAREEP     ; 20% chance
	db  7, MAREEP     ; 20% chance
	db  5, RATTATA    ; 15% chance
	db  7, BELLSPROUT ; 10% chance
	db  8, MAREEP     ; 10% chance
	db  5, WOOPER     ; 10% chance
	db  6, WOOPER     ;  5% chance
	db  7, HOOTHOOT   ;  5% chance
	db  7, GASTLY     ;  4% chance
	db  8, GASTLY     ;  1% chance

	; AIPOM
	def_grass_wildmons ROUTE_33
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 10, AIPOM      ; 20% chance
	db 11, AIPOM      ; 20% chance
	db  7, SPEAROW    ; 15% chance
	db  7, RATTATA    ; 10% chance
	db  7, GEODUDE    ; 10% chance
	db  7, HOPPIP     ; 10% chance
	db  6, HOPPIP     ;  5% chance
	db  6, GEODUDE    ;  5% chance
	db  7, EKANS      ;  4% chance
	db  8, EKANS      ;  1% chance
	; nite
	db 10, AIPOM      ; 20% chance
	db 11, AIPOM      ; 20% chance
	db  7, RATTATA    ; 15% chance
	db  6, GEODUDE    ; 10% chance
	db  7, GEODUDE    ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  8, ZUBAT      ;  5% chance
	db  9, ZUBAT      ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  9, RATTATA    ;  1% chance

	; MILTANK
	def_grass_wildmons ROUTE_38
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 13, MILTANK    ; 20% chance
	db 14, MILTANK    ; 20% chance
	db 17, MAGNEMITE  ; 15% chance
	db 18, PIDGEOTTO  ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 16, RATTATA    ; 10% chance
	db 16, RATTATA    ;  5% chance
	db 13, TAUROS     ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, RATICATE   ;  1% chance
	; nite
	db 13, MILTANK    ; 20% chance
	db 14, MILTANK    ; 20% chance
	db 20, RATICATE   ; 15% chance
	db 16, MEOWTH     ; 10% chance
	db 17, MEOWTH     ; 10% chance
	db 16, MAGNEMITE  ; 10% chance
	db 17, MAGNEMITE  ;  5% chance
	db 16, RATTATA    ;  5% chance
	db 20, NOCTOWL    ;  4% chance
	db 20, NOCTOWL    ;  1% chance

	; MEOWTH
	def_grass_wildmons ROUTE_39
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 16, MEOWTH     ; 20% chance
	db 17, MEOWTH     ; 20% chance
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
	db 16, RATICATE   ; 15% chance
	db 16, MEOWTH     ; 10% chance
	db 17, MEOWTH     ; 10% chance
	db 17, MAGNEMITE  ; 10% chance
	db 16, MAGNEMITE  ;  5% chance
	db 16, RATTATA    ;  5% chance
	db 20, NOCTOWL    ;  4% chance
	db 20, NOCTOWL    ;  1% chance

	; GIRAFARIG
	def_grass_wildmons ROUTE_43
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 15, GIRAFARIG  ; 20% chance
	db 15, GIRAFARIG  ; 20% chance
	db 16, SENTRET    ; 15% chance
	db 18, PIDGEOTTO  ; 10% chance
	db 16, FARFETCH_D ; 10% chance
	db 15, GIRAFARIG  ; 10% chance
	db 16, FURRET     ;  5% chance
	db 16, MAREEP     ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, RATICATE   ;  1% chance
	; nite
	db 15, GIRAFARIG  ; 20% chance
	db 15, GIRAFARIG  ; 20% chance
	db 20, RATICATE   ; 15% chance
	db 15, GIRAFARIG  ; 10% chance
	db 17, VENONAT    ; 10% chance
	db 16, VENONAT    ; 10% chance
	db 16, MAREEP     ;  5% chance
	db 20, NOCTOWL    ;  5% chance
	db 31, VENOMOTH   ;  4% chance
	db 31, VENOMOTH   ;  1% chance

	; LICKITUNG
	def_grass_wildmons ROUTE_44
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 22, LICKITUNG  ; 20% chance
	db 23, LICKITUNG  ; 20% chance
	db 24, TANGELA    ; 15% chance
	db 22, LICKITUNG  ; 10% chance
	db 23, LICKITUNG  ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 23, BELLSPROUT ;  5% chance
	db 25, TANGELA    ;  5% chance
	db 25, WEEPINBELL ;  4% chance
	db 26, WEEPINBELL ;  1% chance
	; nite
	db 22, LICKITUNG  ; 20% chance
	db 23, LICKITUNG  ; 20% chance
	db 24, TANGELA    ; 15% chance
	db 23, POLIWAG    ; 10% chance
	db 23, POLIWAG    ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 23, BELLSPROUT ;  5% chance
	db 25, POLIWHIRL  ;  5% chance
	db 25, WEEPINBELL ;  4% chance
	db 26, WEEPINBELL ;  1% chance

	; GLIGAR
	def_grass_wildmons ROUTE_45
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 24, GLIGAR     ; 20% chance
	db 25, GLIGAR     ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 26, GLIGAR     ; 10% chance
	db 27, SKARMORY   ; 10% chance
	db 25, GRAVELER   ; 10% chance
	db 25, DONPHAN    ;  5% chance
	db 20, PHANPY     ;  5% chance
	db 15, LARVITAR   ;  4% chance
	db 25, DONPHAN    ;  1% chance
	; nite
	db 24, GLIGAR     ; 20% chance
	db 25, GLIGAR     ; 20% chance
	db 25, GRAVELER   ; 15% chance
	db 23, GEODUDE    ; 10% chance
	db 24, GEODUDE    ; 10% chance
	db 26, GLIGAR     ; 10% chance
	db 21, MURKROW    ;  5% chance
	db 22, MURKROW    ;  5% chance
	db 15, LARVITAR   ;  4% chance
	db 22, MURKROW    ;  1% chance

	; PHANPY
	def_grass_wildmons ROUTE_46
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 3, PHANPY     ; 20% chance
	db 4, PHANPY     ; 20% chance
	db 2, GEODUDE    ; 15% chance
	db 3, GEODUDE    ; 10% chance
	db 4, RATTATA    ; 10% chance
	db 2, SPEAROW    ; 10% chance
	db 3, SPEAROW    ;  5% chance
	db 4, SPEAROW    ;  5% chance
	db 3, GEODUDE    ;  4% chance
	db 4, GEODUDE    ;  1% chance
	; nite
	db 3, PHANPY     ; 20% chance
	db 4, PHANPY     ; 20% chance
	db 3, RATTATA    ; 15% chance
	db 4, RATTATA    ; 10% chance
	db 3, GEODUDE    ; 10% chance
	db 4, GEODUDE    ; 10% chance
	db 5, GEODUDE    ;  5% chance
	db 6, GEODUDE    ;  5% chance
	db 5, RATTATA    ;  4% chance
	db 6, RATTATA    ;  1% chance

	; KOFFING (1/2)
	def_grass_wildmons BURNED_TOWER_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 14, KOFFING    ; 20% chance
	db 15, KOFFING    ; 20% chance
	db 13, RATTATA    ; 15% chance
	db 14, RATTATA    ; 10% chance
	db 15, RATTATA    ; 10% chance
	db 16, KOFFING    ; 10% chance
	db 14, ZUBAT      ;  5% chance
	db 15, ZUBAT      ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, RATICATE   ;  1% chance
	; nite
	db 14, KOFFING    ; 20% chance
	db 15, KOFFING    ; 20% chance
	db 13, RATTATA    ; 15% chance
	db 14, RATTATA    ; 10% chance
	db 15, MISDREAVUS ; 10% chance
	db 16, KOFFING    ; 10% chance
	db 14, ZUBAT      ;  5% chance
	db 15, ZUBAT      ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, RATICATE   ;  1% chance

	; KOFFING (2/2)
	def_grass_wildmons BURNED_TOWER_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 14, KOFFING    ; 20% chance
	db 15, KOFFING    ; 20% chance
	db 14, RATTATA    ; 15% chance
	db 16, KOFFING    ; 10% chance
	db 16, KOFFING    ; 10% chance
	db 20, MAGMAR     ; 10% chance
	db 15, RATTATA    ;  5% chance
	db 15, SLUGMA     ;  5% chance
	db 15, ZUBAT      ;  4% chance
	db 16, ZUBAT      ;  1% chance
	; nite
	db 14, KOFFING    ; 20% chance
	db 15, KOFFING    ; 20% chance
	db 14, RATTATA    ; 15% chance
	db 16, KOFFING    ; 10% chance
	db 16, KOFFING    ; 10% chance
	db 15, MISDREAVUS ; 10% chance
	db 15, RATTATA    ;  5% chance
	db 15, SLUGMA     ;  5% chance
	db 15, ZUBAT      ;  4% chance
	db 16, ZUBAT      ;  1% chance

	; SPINARAK
	def_grass_wildmons NATIONAL_PARK
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, SPINARAK   ; 20% chance
	db 15, SPINARAK   ; 20% chance
	db 14, SUNKERN    ; 15% chance
	db 12, NIDORAN_M  ; 10% chance
	db 12, NIDORAN_F  ; 10% chance
	db 14, LEDYBA     ; 10% chance
	db 13, PIDGEY     ;  5% chance
	db 10, CATERPIE   ;  5% chance
	db 10, WEEDLE     ;  4% chance
	db 11, WEEDLE     ;  1% chance
	; nite
	db 14, SPINARAK   ; 20% chance
	db 15, SPINARAK   ; 20% chance
	db 14, HOOTHOOT   ; 15% chance
	db 13, HOOTHOOT   ; 10% chance
	db 14, SPINARAK   ; 10% chance
	db 12, PSYDUCK    ; 10% chance
	db 13, PSYDUCK    ;  5% chance
	db 10, VENONAT    ;  5% chance
	db 11, VENONAT    ;  4% chance
	db 12, VENONAT    ;  1% chance

	; PARAS
	def_grass_wildmons ILEX_FOREST
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db  6, PARAS      ; 20% chance
	db  7, PARAS      ; 20% chance
	db  5, WEEDLE     ; 15% chance
	db  5, CATERPIE   ; 10% chance
	db  6, CATERPIE   ; 10% chance
	db  7, METAPOD    ; 10% chance
	db  7, KAKUNA     ;  5% chance
	db  6, WEEDLE     ;  5% chance
	db  7, PIDGEY     ;  4% chance
	db  8, PIDGEY     ;  1% chance
	; nite
	db  6, PARAS      ; 20% chance
	db  7, PARAS      ; 20% chance
	db  5, ODDISH     ; 15% chance
	db  6, ODDISH     ; 10% chance
	db  7, PSYDUCK    ; 10% chance
	db  5, VENONAT    ; 10% chance
	db  6, VENONAT    ;  5% chance
	db  7, VENONAT    ;  5% chance
	db  7, HOOTHOOT   ;  4% chance
	db  8, HOOTHOOT   ;  1% chance

	; SLOWPOKE (1/2)
	def_grass_wildmons SLOWPOKE_WELL_B1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db  6, SLOWPOKE   ; 20% chance
	db  7, SLOWPOKE   ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  8, SLOWPOKE   ; 10% chance
	db  9, SLOWPOKE   ; 10% chance
	db  5, ZUBAT      ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  7, ZUBAT      ;  5% chance
	db  8, ZUBAT      ;  4% chance
	db  9, ZUBAT      ;  1% chance
	; nite
	db  6, SLOWPOKE   ; 20% chance
	db  7, SLOWPOKE   ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  8, SLOWPOKE   ; 10% chance
	db  9, SLOWPOKE   ; 10% chance
	db  5, ZUBAT      ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  7, ZUBAT      ;  5% chance
	db  8, ZUBAT      ;  4% chance
	db  9, ZUBAT      ;  1% chance

	; SLOWPOKE (2/2)
	def_grass_wildmons SLOWPOKE_WELL_B2F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 21, SLOWPOKE   ; 20% chance
	db 22, SLOWPOKE   ; 20% chance
	db 19, ZUBAT      ; 15% chance
	db 23, SLOWPOKE   ; 10% chance
	db 24, SLOWPOKE   ; 10% chance
	db 20, ZUBAT      ; 10% chance
	db 21, ZUBAT      ;  5% chance
	db 22, ZUBAT      ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 24, GOLBAT     ;  1% chance
	; nite
	db 21, SLOWPOKE   ; 20% chance
	db 22, SLOWPOKE   ; 20% chance
	db 19, ZUBAT      ; 15% chance
	db 23, SLOWPOKE   ; 10% chance
	db 24, SLOWPOKE   ; 10% chance
	db 20, ZUBAT      ; 10% chance
	db 21, ZUBAT      ;  5% chance
	db 22, ZUBAT      ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 24, GOLBAT     ;  1% chance

	; SMEARGLE
	def_grass_wildmons RUINS_OF_ALPH_OUTSIDE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, SMEARGLE   ; 20% chance
	db 21, SMEARGLE   ; 20% chance
	db 20, NATU       ; 15% chance
	db 21, NATU       ; 10% chance
	db 22, NATU       ; 10% chance
	db 23, NATU       ; 10% chance
	db 24, NATU       ;  5% chance
	db 22, SMEARGLE   ;  5% chance
	db 22, SMEARGLE   ;  4% chance
	db 22, SMEARGLE   ;  1% chance
	; nite
	db 20, SMEARGLE   ; 20% chance
	db 21, SMEARGLE   ; 20% chance
	db 18, NATU       ; 15% chance
	db 19, NATU       ; 10% chance
	db 21, NATU       ; 10% chance
	db 22, NATU       ; 10% chance
	db 22, WOOPER     ;  5% chance
	db 22, QUAGSIRE   ;  5% chance
	db 22, SMEARGLE   ;  4% chance
	db 22, SMEARGLE   ;  1% chance

	; TEDDIURSA (1/2)
	def_grass_wildmons DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 20, TEDDIURSA  ; 20% chance
	db 20, TEDDIURSA  ; 20% chance
	db 25, GRAVELER   ; 15% chance
	db 23, GEODUDE    ; 10% chance
	db 24, GEODUDE    ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 34, ZUBAT      ;  5% chance
	db 25, URSARING   ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance
	; nite
	db 20, TEDDIURSA  ; 20% chance
	db 20, TEDDIURSA  ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 25, GRAVELER   ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 20, WOBBUFFET  ; 10% chance
	db 21, WOBBUFFET  ;  5% chance
	db 24, GEODUDE    ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance

	; TEDDIURSA (2/2)
	def_grass_wildmons DARK_CAVE_BLACKTHORN_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 20, TEDDIURSA  ; 20% chance
	db 20, TEDDIURSA  ; 20% chance
	db 25, GRAVELER   ; 15% chance
	db 23, GEODUDE    ; 10% chance
	db 24, GEODUDE    ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 34, ZUBAT      ;  5% chance
	db 25, URSARING   ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance
	; nite
	db 20, TEDDIURSA  ; 20% chance
	db 20, TEDDIURSA  ; 20% chance
	db 23, GEODUDE    ; 15% chance
	db 25, GRAVELER   ; 10% chance
	db 23, ZUBAT      ; 10% chance
	db 20, WOBBUFFET  ; 10% chance
	db 21, WOBBUFFET  ;  5% chance
	db 24, GEODUDE    ;  5% chance
	db 23, GOLBAT     ;  4% chance
	db 18, DUNSPARCE  ;  1% chance

	; SWINUB (1/3)
	def_grass_wildmons ICE_PATH_1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 21, SWINUB     ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 21, SWINUB     ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, SNEASEL    ;  4% chance
	db 22, JYNX       ;  1% chance

	; SWINUB (2/3)
	def_grass_wildmons ICE_PATH_B1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 21, SWINUB     ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 21, SWINUB     ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, DELIBIRD   ;  5% chance
	db 22, SNEASEL    ;  4% chance
	db 22, JYNX       ;  1% chance

	; SWINUB (3/3)
	def_grass_wildmons ICE_PATH_B2F_B3F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 21, SWINUB     ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, JYNX       ;  5% chance
	db 22, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 21, SWINUB     ; 20% chance
	db 22, SWINUB     ; 20% chance
	db 22, ZUBAT      ; 15% chance
	db 21, SWINUB     ; 10% chance
	db 22, SWINUB     ; 10% chance
	db 22, GOLBAT     ; 10% chance
	db 21, DELIBIRD   ;  5% chance
	db 22, SNEASEL    ;  5% chance
	db 22, SNEASEL    ;  4% chance
	db 22, JYNX       ;  1% chance

	db -1 ; end
