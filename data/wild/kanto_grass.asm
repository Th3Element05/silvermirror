; Kanto Pokémon in grass

KantoGrassWildMons:

	def_grass_wildmons ROUTE_1 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  2, PIDGEY     ; 20% chance
	db  3, PIDGEY     ; 20% chance
	db  2, PIDGEY     ; 15% chance
	db  3, PIDGEY     ; 10% chance
	db  2, RATTATA    ; 10% chance
	db  3, RATTATA    ; 10% chance
	db  4, RATTATA    ;  5% chance
	db  4, PIDGEY     ;  5% chance
	db  5, PIDGEY     ;  4% chance
	db  5, PIDGEY     ;  1% chance
	; nite
	db  2, RATTATA    ; 20% chance
	db  3, RATTATA    ; 20% chance
	db  4, RATTATA    ; 15% chance
	db  2, RATTATA    ; 10% chance
	db  2, RATTATA    ; 10% chance
	db  2, PIDGEY     ; 10% chance
	db  3, PIDGEY     ;  5% chance
	db  4, PIDGEY     ;  5% chance
	db  5, PIDGEY     ;  4% chance
	db  5, PIDGEY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_2_SOUTH ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  3, PIDGEY     ; 20% chance
	db  2, PIDGEY     ; 20% chance
	db  3, RATTATA    ; 15% chance
	db  3, CATERPIE   ; 10% chance
	db  2, WEEDLE     ; 10% chance
	db  3, NIDORAN_M  ; 10% chance
	db  2, CATERPIE   ;  5% chance
	db  3, NIDORAN_F  ;  5% chance
	db  2, NIDORAN_F  ;  4% chance
	db  2, NIDORAN_M  ;  1% chance
	; nite
	db  3, RATTATA    ; 20% chance
	db  3, RATTATA    ; 20% chance
	db  3, PIDGEY     ; 15% chance
	db  3, CATERPIE   ; 10% chance
	db  2, WEEDLE     ; 10% chance
	db  3, NIDORAN_M  ; 10% chance
	db  2, CATERPIE   ;  5% chance
	db  3, NIDORAN_F  ;  5% chance
	db  2, NIDORAN_F  ;  4% chance
	db  2, NIDORAN_M  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_2_NORTH ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  4, PIDGEY     ; 20% chance
	db  3, PIDGEY     ; 20% chance
	db  4, RATTATA    ; 15% chance
	db  4, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance
	db  4, NIDORAN_M  ; 10% chance
	db  3, CATERPIE   ;  5% chance
	db  4, NIDORAN_F  ;  5% chance
	db  3, NIDORAN_F  ;  4% chance
	db  3, NIDORAN_M  ;  1% chance
	; nite
	db  4, RATTATA    ; 20% chance
	db  4, RATTATA    ; 20% chance
	db  4, PIDGEY     ; 15% chance
	db  4, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance
	db  4, NIDORAN_M  ; 10% chance
	db  3, CATERPIE   ;  5% chance
	db  4, NIDORAN_F  ;  5% chance
	db  3, NIDORAN_F  ;  4% chance
	db  3, NIDORAN_M  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_3 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  8, SPEAROW    ; 20% chance
	db  8, SPEAROW    ; 20% chance
	db  8, RATTATA    ; 15% chance
	db  4, JIGGLYPUFF ; 10% chance
	db  8, SANDSHREW  ; 10% chance
	db  8, MANKEY     ; 10% chance
	db  8, SANDSHREW  ;  5% chance
	db  9, MANKEY     ;  5% chance
	db  8, SPEAROW    ;  4% chance
	db  8, SPEAROW    ;  1% chance
	; nite
	db  8, RATTATA    ; 20% chance
	db  8, RATTATA    ; 20% chance
	db  8, SPEAROW    ; 15% chance
	db  4, JIGGLYPUFF ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  8, MANKEY     ; 10% chance
	db  9, MANKEY     ;  5% chance
	db  8, RATTATA    ;  5% chance
	db  7, ZUBAT      ;  4% chance
	db  7, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_4 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  8, SPEAROW    ; 20% chance
	db  8, SPEAROW    ; 20% chance
	db  8, RATTATA    ; 15% chance
	db  8, EKANS      ; 10% chance
	db  8, EKANS      ; 10% chance
	db  8, SANDSHREW  ; 10% chance
	db  8, SANDSHREW  ;  5% chance
	db  9, MANKEY     ;  5% chance
	db  9, MANKEY     ;  4% chance
	db  9, MANKEY     ;  1% chance
	; nite
	db  8, RATTATA    ; 20% chance
	db  8, RATTATA    ; 20% chance
	db  8, SPEAROW    ; 15% chance
	db  8, RATTATA    ; 10% chance
	db  9, MANKEY     ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  7, ZUBAT      ;  5% chance
	db  7, ZUBAT      ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  8, CLEFAIRY   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_5 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 11, BELLSPROUT ; 20% chance
	db 14, PIDGEY     ; 20% chance
	db 14, PIDGEY     ; 15% chance
	db 12, BELLSPROUT ; 10% chance
	db 12, MEOWTH     ; 10% chance
	db  8, ABRA       ; 10% chance
	db 14, PIDGEY     ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 11, BELLSPROUT ; 20% chance
	db 12, ODDISH     ; 20% chance
	db 12, MEOWTH     ; 15% chance
	db 12, MEOWTH     ; 10% chance
	db 12, ODDISH     ; 10% chance
	db  8, ABRA       ; 10% chance
	db 12, BELLSPROUT ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_6 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, PIDGEY     ; 20% chance
	db 14, PIDGEY     ; 20% chance
	db 14, RATTATA    ; 15% chance
	db 14, PIDGEY     ; 10% chance
	db 12, MEOWTH     ; 10% chance
	db  8, ABRA       ; 10% chance
	db 14, RATTATA    ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance
	db 18, PIDGEOTTO  ;  1% chance
	; nite
	db 14, RATTATA    ; 20% chance
	db 14, RATTATA    ; 20% chance
	db 12, MEOWTH     ; 15% chance
	db 12, MEOWTH     ; 10% chance
	db 14, PIDGEY     ; 10% chance
	db  8, ABRA       ; 10% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 13, PSYDUCK    ;  5% chance
	db 13, PSYDUCK    ;  4% chance
	db 13, PSYDUCK    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_7 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, SPEAROW    ; 20% chance
	db 18, BELLSPROUT ; 20% chance
	db 18, GROWLITHE  ; 15% chance
	db 19, MANKEY     ; 10% chance
	db 19, MANKEY     ; 10% chance
	db 18, VULPIX     ; 10% chance
	db 12, JIGGLYPUFF ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, ABRA       ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 20, MEOWTH     ; 20% chance
	db 18, BELLSPROUT ; 20% chance
	db 18, ODDISH     ; 15% chance
	db 19, MANKEY     ; 10% chance
	db 19, MANKEY     ; 10% chance
	db 12, ABRA       ; 10% chance
	db 18, ODDISH     ;  5% chance
	db 20, MEOWTH     ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_8 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 17, EKANS      ; 20% chance
	db 17, SANDSHREW  ; 20% chance
	db 18, GROWLITHE  ; 15% chance
	db 19, MANKEY     ; 10% chance
	db 19, MANKEY     ; 10% chance
	db 18, VULPIX     ; 10% chance
	db 12, JIGGLYPUFF ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, ABRA       ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 19, MANKEY     ; 20% chance
	db 20, MEOWTH     ; 20% chance
	db 20, MEOWTH     ; 15% chance
	db 20, MEOWTH     ; 10% chance
	db 19, MANKEY     ; 10% chance
	db 12, ABRA       ; 10% chance
	db 18, GROWLITHE  ;  5% chance
	db 18, VULPIX     ;  5% chance
	db 12, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_9 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 16, NIDORAN_M  ; 20% chance
	db 16, NIDORAN_F  ; 20% chance
	db 16, SPEAROW    ; 15% chance
	db 17, RATTATA    ; 10% chance
	db 16, EKANS      ; 10% chance
	db 17, SANDSHREW  ; 10% chance
	db 18, NIDORINO   ;  5% chance
	db 18, NIDORINA   ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, FEAROW     ;  1% chance
	; nite
	db 16, NIDORAN_M  ; 20% chance
	db 16, NIDORAN_F  ; 20% chance
	db 17, RATTATA    ; 15% chance
	db 17, RATTATA    ; 10% chance
	db 17, RATTATA    ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 18, NIDORINO   ;  5% chance
	db 18, NIDORINA   ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, RATICATE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 16, MAGNEMITE  ; 20% chance
	db 16, SPEAROW    ; 20% chance
	db 17, SANDSHREW  ; 15% chance
	db 16, EKANS      ; 10% chance
	db 16, SPEAROW    ; 10% chance
	db 17, VOLTORB    ; 10% chance
	db 16, MAGNEMITE  ;  5% chance
	db 16, RATTATA    ;  5% chance
	db 16, RATTATA    ;  4% chance
	db 16, RATTATA    ;  1% chance
	; nite
	db 16, MAGNEMITE  ; 20% chance
	db 16, RATTATA    ; 20% chance
	db 16, RATTATA    ; 15% chance
	db 16, VENONAT    ; 10% chance
	db 14, ZUBAT      ; 10% chance
	db 17, VOLTORB    ; 10% chance
	db 16, RATTATA    ;  5% chance
	db 16, MAGNEMITE  ;  5% chance
	db 20, RATICATE   ;  4% chance
	db 20, RATICATE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_11 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 15, EKANS      ; 20% chance
	db 15, SANDSHREW  ; 20% chance
	db 16, SPEAROW    ; 15% chance
	db 16, SPEAROW    ; 10% chance
	db 15, EKANS      ; 10% chance
	db 15, SANDSHREW  ; 10% chance
	db 15, RATTATA    ;  5% chance
	db 15, RATTATA    ;  5% chance
	db 15, DROWZEE    ;  4% chance
	db 15, DROWZEE    ;  1% chance
	; nite
	db 15, RATTATA    ; 20% chance
	db 15, DROWZEE    ; 20% chance
	db 15, DROWZEE    ; 15% chance
	db 16, SPEAROW    ; 10% chance
	db 15, RATTATA    ; 10% chance
	db 15, RATTATA    ; 10% chance
	db 15, RATTATA    ;  5% chance
	db 20, RATICATE   ;  5% chance
	db 15, DROWZEE    ;  4% chance
	db 15, DROWZEE    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_13 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 24, PIDGEY     ; 20% chance
	db 25, BELLSPROUT ; 20% chance
	db 24, PIDGEY     ; 15% chance
	db 24, PIDGEY     ; 10% chance
	db 25, BELLSPROUT ; 10% chance
	db 27, PIDGEOTTO  ; 10% chance
	db 28, WEEPINBELL ;  5% chance
	db 24, PIDGEY     ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	; nite
	db 25, ODDISH     ; 20% chance
	db 25, BELLSPROUT ; 20% chance
	db 24, VENONAT    ; 15% chance
	db 25, ODDISH     ; 10% chance
	db 25, ODDISH     ; 10% chance
	db 25, BELLSPROUT ; 10% chance
	db 28, WEEPINBELL ;  5% chance
	db 28, GLOOM      ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_14; | ROUTE_15 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 25, PIDGEY     ; 20% chance
	db 26, BELLSPROUT ; 20% chance
	db 20, DITTO      ; 15% chance
	db 26, BELLSPROUT ; 10% chance
	db 15, PIDGEY     ; 10% chance
	db 15, PIDGEY     ; 10% chance
	db 29, WEEPINBELL ;  5% chance
	db 28, PIDGEOTTO  ;  5% chance
	db 28, PIDGEOTTO  ;  4% chance
	db 28, PIDGEOTTO  ;  1% chance
	; nite
	db 26, ODDISH     ; 20% chance
	db 26, BELLSPROUT ; 20% chance
	db 20, DITTO      ; 15% chance
	db 26, BELLSPROUT ; 10% chance
	db 26, ODDISH     ; 10% chance
	db 24, VENONAT    ; 10% chance
	db 29, WEEPINBELL ;  5% chance
	db 29, GLOOM      ;  5% chance
	db 24, VENONAT    ;  4% chance
	db 28, VENOMOTH   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_15 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 25, PIDGEY     ; 20% chance
	db 26, BELLSPROUT ; 20% chance
	db 20, DITTO      ; 15% chance
	db 26, BELLSPROUT ; 10% chance
	db 25, PIDGEY     ; 10% chance
	db 25, PIDGEY     ; 10% chance
	db 29, WEEPINBELL ;  5% chance
	db 28, PIDGEOTTO  ;  5% chance
	db 28, PIDGEOTTO  ;  4% chance
	db 28, PIDGEOTTO  ;  1% chance
	; nite
	db 24, VENONAT    ; 20% chance
	db 26, BELLSPROUT ; 20% chance
	db 20, DITTO      ; 15% chance
	db 26, BELLSPROUT ; 10% chance
	db 26, ODDISH     ; 10% chance
	db 26, ODDISH     ; 10% chance
	db 29, WEEPINBELL ;  5% chance
	db 29, GLOOM      ;  5% chance
	db 28, VENOMOTH   ;  4% chance
	db 28, VENOMOTH   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_16 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 22, DODUO      ; 20% chance
	db 22, DODUO      ; 20% chance
	db 22, SPEAROW    ; 15% chance
	db 22, SPEAROW    ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 20, GRIMER     ; 10% chance
	db 20, GRIMER     ;  5% chance
	db 26, RATICATE   ;  5% chance
	db 25, FEAROW     ;  4% chance
	db 25, FEAROW     ;  1% chance
	; nite
	db 20, GRIMER     ; 20% chance
	db 23, RATTATA    ; 20% chance
	db 23, RATTATA    ; 15% chance
	db 23, RATTATA    ; 10% chance
	db 22, DODUO      ; 10% chance
	db 22, SPEAROW    ; 10% chance
	db 26, RATICATE   ;  5% chance
	db 26, RATICATE   ;  5% chance
	db 23, RATTATA    ;  4% chance
	db 25, FEAROW     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_17 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 22, SPEAROW    ; 20% chance
	db 24, DODUO      ; 20% chance
	db 24, DODUO      ; 15% chance
	db 20, GRIMER     ; 10% chance
	db 21, PONYTA     ; 10% chance
	db 21, PONYTA     ; 10% chance
	db 21, PONYTA     ;  5% chance
	db 24, DODUO      ;  5% chance
	db 25, FEAROW     ;  4% chance
	db 26, DODRIO     ;  1% chance
	; nite
	db 23, RATTATA    ; 20% chance
	db 23, RATTATA    ; 20% chance
	db 24, DODUO      ; 15% chance
	db 20, GRIMER     ; 10% chance
	db 20, GRIMER     ; 10% chance
	db 21, PONYTA     ; 10% chance
	db 21, PONYTA     ;  5% chance
	db 25, RATICATE   ;  5% chance
	db 25, RATICATE   ;  4% chance
	db 25, RATICATE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_18 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 22, DODUO      ; 20% chance
	db 22, DODUO      ; 20% chance
	db 22, SPEAROW    ; 15% chance
	db 22, SPEAROW    ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 20, GRIMER     ; 10% chance
	db 20, GRIMER     ;  5% chance
	db 26, RATICATE   ;  5% chance
	db 25, FEAROW     ;  4% chance
	db 25, FEAROW     ;  1% chance
	; nite
	db 20, GRIMER     ; 20% chance
	db 23, RATTATA    ; 20% chance
	db 23, RATTATA    ; 15% chance
	db 23, RATTATA    ; 10% chance
	db 22, DODUO      ; 10% chance
	db 22, SPEAROW    ; 10% chance
	db 26, RATICATE   ;  5% chance
	db 26, RATICATE   ;  5% chance
	db 23, RATTATA    ;  4% chance
	db 25, FEAROW     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_21 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 16, PIDGEY     ; 20% chance
	db 16, PIDGEY     ; 20% chance
	db 14, RATTATA    ; 15% chance
	db 14, RATTATA    ; 10% chance
	db 16, PIDGEY     ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance
	db 20, RATICATE   ;  5% chance
	db 25, TANGELA    ;  5% chance
	db 25, TANGELA    ;  4% chance
	db 26, MR__MIME   ;  1% chance
	; nite
	db 14, RATTATA    ; 20% chance
	db 14, RATTATA    ; 20% chance
	db 16, PIDGEY     ; 15% chance
	db 16, PIDGEY     ; 10% chance
	db 14, RATTATA    ; 10% chance
	db 20, RATICATE   ; 10% chance
	db 28, PIDGEOTTO  ;  5% chance
	db 25, TANGELA    ;  5% chance
	db 25, TANGELA    ;  4% chance
	db 26, MR__MIME   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_22 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  2, NIDORAN_M  ; 20% chance
	db  2, NIDORAN_F  ; 20% chance
	db  2, MANKEY     ; 15% chance
	db  2, NIDORAN_M  ; 10% chance
	db  2, RATTATA    ; 10% chance
	db  2, SPEAROW    ; 10% chance
	db  2, MANKEY     ;  5% chance
	db  2, SPEAROW    ;  5% chance
	db  2, SPEAROW    ;  4% chance
	db  2, SPEAROW    ;  1% chance
	; nite
	db  2, NIDORAN_M  ; 20% chance
	db  2, NIDORAN_F  ; 20% chance
	db  2, MANKEY     ; 15% chance
	db  2, NIDORAN_M  ; 10% chance
	db  2, RATTATA    ; 10% chance
	db  2, SPEAROW    ; 10% chance
	db  2, MANKEY     ;  5% chance
	db  2, RATTATA    ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  2, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_23 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 36, NIDORINO   ; 20% chance
	db 36, NIDORINA   ; 20% chance
	db 38, FEAROW     ; 15% chance
	db 34, ARBOK      ; 10% chance
	db 34, SANDSLASH  ; 10% chance
	db 36, PRIMEAPE   ; 10% chance
	db 34, ARBOK      ;  5% chance
	db 34, SANDSLASH  ;  5% chance
	db 36, PRIMEAPE   ;  4% chance
	db 36, PRIMEAPE   ;  1% chance
	; nite
	db 36, NIDORINO   ; 20% chance
	db 36, NIDORINA   ; 20% chance
	db 38, FEAROW     ; 15% chance
	db 34, ARBOK      ; 10% chance
	db 34, SANDSLASH  ; 10% chance
	db 36, PRIMEAPE   ; 10% chance
	db 34, ARBOK      ;  5% chance
	db 34, SANDSLASH  ;  5% chance
	db 36, PRIMEAPE   ;  4% chance
	db 36, PRIMEAPE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_24 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 10, BELLSPROUT ; 20% chance
	db 10, BELLSPROUT ; 20% chance
	db 13, PIDGEY     ; 15% chance
	db 13, PIDGEY     ; 10% chance
	db 13, PIDGEY     ; 10% chance
	db 10, BELLSPROUT ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance
	db 13, PIDGEY     ;  1% chance
	; nite
	db 10, BELLSPROUT ; 20% chance
	db 10, ODDISH     ; 20% chance
	db 12, VENONAT    ; 15% chance
	db 10, BELLSPROUT ; 10% chance
	db 10, ODDISH     ; 10% chance
	db 10, PSYDUCK    ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 10, ODDISH     ;  4% chance
	db 10, ODDISH     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_25 ;
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 10, BELLSPROUT ; 20% chance
	db 10, BELLSPROUT ; 20% chance
	db 13, PIDGEY     ; 15% chance
	db 13, PIDGEY     ; 10% chance
	db 13, PIDGEY     ; 10% chance
	db 10, BELLSPROUT ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance
	db 13, PIDGEY     ;  1% chance
	; nite
	db 10, BELLSPROUT ; 20% chance
	db 10, ODDISH     ; 20% chance
	db 12, VENONAT    ; 15% chance
	db 10, BELLSPROUT ; 10% chance
	db 10, ODDISH     ; 10% chance
	db 10, PSYDUCK    ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 10, ODDISH     ;  4% chance
	db 10, ODDISH     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_26 ;after saffron access
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, SANDSHREW  ; 20% chance
	db 20, EKANS      ; 20% chance
	db 21, PONYTA     ; 15% chance
	db 22, SANDSLASH  ; 10% chance
	db 22, ARBOK      ; 10% chance
	db 20, DODUO      ; 10% chance
	db 20, DODUO      ;  5% chance
	db 20, DODUO      ;  5% chance
	db 21, PONYTA     ;  4% chance
	db 21, PONYTA     ;  1% chance
	; nite
	db 20, RATTATA    ; 20% chance
	db 21, PONYTA     ; 20% chance
	db 23, RATICATE   ; 15% chance
	db 20, POLIWAG    ; 10% chance
	db 20, POLIWAG    ; 10% chance
	db 20, POLIWAG    ; 10% chance
	db 24, POLIWHIRL  ;  5% chance
	db 24, POLIWHIRL  ;  5% chance
	db 24, POLIWHIRL  ;  4% chance
	db 24, POLIWHIRL  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_27_EAST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 21, SANDSHREW  ; 20% chance
	db 21, EKANS      ; 20% chance
	db 21, PONYTA     ; 15% chance
	db 24, SANDSLASH  ; 10% chance
	db 24, ARBOK      ; 10% chance
	db 21, DODUO      ; 10% chance
	db 21, DODUO      ;  5% chance
	db 21, DODUO      ;  5% chance
	db 21, PONYTA     ;  4% chance
	db 21, PONYTA     ;  1% chance
	; nite
	db 21, RATTATA    ; 20% chance
	db 21, PONYTA     ; 20% chance
	db 24, RATICATE   ; 15% chance
	db 21, POLIWAG    ; 10% chance
	db 21, POLIWAG    ; 10% chance
	db 21, POLIWAG    ; 10% chance
	db 24, POLIWHIRL  ;  5% chance
	db 24, POLIWHIRL  ;  5% chance
	db 24, POLIWHIRL  ;  4% chance
	db 24, POLIWHIRL  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_28 ;GEN1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 40, URSARING   ; 20% chance
	db 40, DONPHAN    ; 20% chance
	db 40, PONYTA     ; 15% chance
	db 42, RAPIDASH   ; 10% chance
	db 39, TANGELA    ; 10% chance
	db 39, TANGELA    ; 10% chance
	db 40, PONYTA     ;  5% chance
	db 40, DODUO      ;  5% chance
	db 43, DODRIO     ;  4% chance
	db 43, DODRIO     ;  1% chance
	; nite
	db 39, TANGELA    ; 20% chance
	db 40, GOLBAT     ; 20% chance
	db 40, PONYTA     ; 15% chance
	db 42, RAPIDASH   ; 10% chance
	db 40, SNEASEL    ; 10% chance
	db 38, POLIWHIRL  ; 10% chance
	db 40, PONYTA     ;  5% chance
	db 38, POLIWHIRL  ;  5% chance
	db 38, POLIWHIRL  ;  4% chance
	db 38, POLIWHIRL  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VIRIDIAN_FOREST ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  3, CATERPIE   ; 20% chance
	db  3, WEEDLE     ; 20% chance
	db  3, CATERPIE   ; 15% chance
	db  3, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance
	db  4, METAPOD    ; 10% chance
	db  4, KAKUNA     ;  5% chance
	db  3, PIDGEY     ;  5% chance
	db  3, PIKACHU    ;  4% chance
	db  4, PIKACHU    ;  1% chance
	; nite
	db  3, CATERPIE   ; 20% chance
	db  3, WEEDLE     ; 20% chance
	db  3, CATERPIE   ; 15% chance
	db  3, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance
	db  4, METAPOD    ; 10% chance
	db  4, KAKUNA     ;  5% chance
	db  3, WEEDLE     ;  5% chance
	db  3, PIKACHU    ;  4% chance
	db  4, PIKACHU    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, PARAS      ;  5% chance
	db  8, SANDSHREW  ;  5% chance
	db  7, ZUBAT      ;  4% chance
	db  8, CLEFAIRY   ;  1% chance
	; nite
	db  6, GEODUDE    ; 20% chance
	db  6, GEODUDE    ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  6, ZUBAT      ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ;  5% chance
	db  6, PARAS      ;  5% chance
	db  8, CLEFAIRY   ;  4% chance
	db  8, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON_B2F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  7, PARAS      ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  6, ZUBAT      ;  5% chance
	db  8, CLEFAIRY   ;  4% chance
	db  9, CLEFAIRY   ;  1% chance
	; nite
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  7, PARAS      ; 10% chance
	db  6, ZUBAT      ;  5% chance
	db  8, CLEFAIRY   ;  5% chance
	db  9, CLEFAIRY   ;  4% chance
	db  6, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons DIGLETTS_CAVE ;GEN1
	db 4 percent, 4 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 15, DIGLETT    ; 20% chance
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 15% chance
	db 16, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 18, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 26, DUGTRIO    ;  4% chance
	db 27, DUGTRIO    ;  1% chance
	; nite
	db 15, DIGLETT    ; 20% chance
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 15% chance
	db 16, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 18, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 26, DUGTRIO    ;  4% chance
	db 27, DUGTRIO    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 15, ZUBAT      ; 20% chance
	db 15, ZUBAT      ; 20% chance
	db 17, MACHOP     ; 15% chance
	db 17, MACHOP     ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ;  5% chance
	db 16, GEODUDE    ;  5% chance
	db 14, ONIX       ;  4% chance
	db 12, CUBONE     ;  1% chance
	; nite
	db 16, GEODUDE    ; 20% chance
	db 16, GEODUDE    ; 20% chance
	db 17, MACHOP     ; 15% chance
	db 17, MACHOP     ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 15, ZUBAT      ;  5% chance
	db 15, ZUBAT      ;  5% chance
	db 14, ONIX       ;  4% chance
	db 12, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 16, ZUBAT      ; 20% chance
	db 17, ZUBAT      ; 20% chance
	db 17, MACHOP     ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 17, GEODUDE    ; 10% chance
	db 15, ONIX       ;  5% chance
	db 14, ONIX       ;  5% chance
	db 12, CUBONE     ;  4% chance
	db 17, MACHOP     ;  1% chance
	; nite
	db 16, GEODUDE    ; 20% chance
	db 17, GEODUDE    ; 20% chance
	db 17, MACHOP     ; 15% chance
	db 16, ZUBAT      ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 17, ZUBAT      ; 10% chance
	db 15, ONIX       ;  5% chance
	db 14, ONIX       ;  5% chance
	db 12, CUBONE     ;  4% chance
	db 17, MACHOP     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_3F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
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
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_4F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
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
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_5F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
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
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_6F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
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
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_7F ;GEN1
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; day
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
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 19, ZUBAT      ; 20% chance
	db 20, SLOWPOKE   ; 20% chance
	db 20, KRABBY     ; 15% chance
	db 19, ZUBAT      ; 10% chance
	db 19, ZUBAT      ; 10% chance
	db 20, SHELLDER   ; 10% chance
	db 20, KRABBY     ;  5% chance
	db 20, KRABBY     ;  5% chance
	db 28, GOLBAT     ;  4% chance
	db 28, GOLBAT     ;  1% chance
	; nite
	db 19, ZUBAT      ; 20% chance
	db 20, SLOWPOKE   ; 20% chance
	db 20, KRABBY     ; 15% chance
	db 19, ZUBAT      ; 10% chance
	db 20, STARYU     ; 10% chance
	db 20, SHELLDER   ; 10% chance
	db 20, KRABBY     ;  5% chance
	db 20, KRABBY     ;  5% chance
	db 28, GOLBAT     ;  4% chance
	db 28, GOLBAT     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 20, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 20, ZUBAT      ; 15% chance
	db 28, GOLBAT     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 21, SHELLDER   ; 10% chance
	db 20, SEEL       ;  5% chance
	db 20, SEEL       ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, KINGLER    ;  1% chance
	; nite
	db 20, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 20, ZUBAT      ; 15% chance
	db 28, GOLBAT     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 21, SHELLDER   ; 10% chance
	db 20, ZUBAT      ;  5% chance
	db 28, GOLBAT     ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, KINGLER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B2F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 21, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 28, GOLBAT     ; 15% chance
	db 20, ZUBAT      ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 22, SHELLDER   ; 10% chance
	db 21, SEEL       ;  5% chance
	db 21, SEEL       ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 29, SLOWBRO    ;  1% chance
	; nite
	db 21, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 28, GOLBAT     ; 15% chance
	db 20, ZUBAT      ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 22, SHELLDER   ; 10% chance
	db 21, ZUBAT      ;  5% chance
	db 28, GOLBAT     ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 29, SLOWBRO    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B3F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 22, ZUBAT      ; 20% chance
	db 22, KRABBY     ; 20% chance
	db 29, GOLBAT     ; 15% chance
	db 22, SEEL       ; 10% chance
	db 22, SEEL       ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 34, DEWGONG    ;  5% chance
	db 23, SHELLDER   ;  5% chance
	db 30, JYNX       ;  4% chance
	db 23, SHELLDER   ;  1% chance
	; nite
	db 22, ZUBAT      ; 20% chance
	db 22, KRABBY     ; 20% chance
	db 29, GOLBAT     ; 15% chance
	db 22, ZUBAT      ; 10% chance
	db 28, GOLBAT     ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 22, KRABBY     ;  5% chance
	db 23, SHELLDER   ;  5% chance
	db 30, JYNX       ;  4% chance
	db 23, SHELLDER   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B4F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 22, ZUBAT      ; 20% chance
	db 22, KRABBY     ; 20% chance
	db 29, GOLBAT     ; 15% chance
	db 22, SEEL       ; 10% chance
	db 22, SEEL       ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 34, DEWGONG    ;  5% chance
	db 23, SHELLDER   ;  5% chance
	db 30, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	; nite
	db 22, ZUBAT      ; 20% chance
	db 22, KRABBY     ; 20% chance
	db 29, GOLBAT     ; 15% chance
	db 22, ZUBAT      ; 10% chance
	db 28, GOLBAT     ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 22, KRABBY     ;  5% chance
	db 23, SHELLDER   ;  5% chance
	db 30, JYNX       ;  4% chance
	db 23, JYNX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POWER_PLANT ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 22, VOLTORB    ; 20% chance
	db 21, MAGNEMITE  ; 20% chance
	db 20, PIKACHU    ; 15% chance
	db 22, VOLTORB    ; 10% chance
	db 22, VOLTORB    ; 10% chance
	db 30, MAGNETON   ; 10% chance
	db 20, PIKACHU    ;  5% chance
	db 23, MAGNEMITE  ;  5% chance
	db 30, ELECTABUZZ ;  4% chance
	db 30, ELECTABUZZ ;  1% chance
	; nite
	db 22, VOLTORB    ; 20% chance
	db 21, MAGNEMITE  ; 20% chance
	db 20, PIKACHU    ; 15% chance
	db 22, VOLTORB    ; 10% chance
	db 22, VOLTORB    ; 10% chance
	db 30, MAGNETON   ; 10% chance
	db 20, PIKACHU    ;  5% chance
	db 23, MAGNEMITE  ;  5% chance
	db 30, ELECTABUZZ ;  4% chance
	db 30, ELECTABUZZ ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, GROWLITHE  ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 28, GRIMER     ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 27, VULPIX     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, GROWLITHE  ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 28, GRIMER     ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 27, VULPIX     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_2F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, GROWLITHE  ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 28, GRIMER     ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 27, VULPIX     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, GROWLITHE  ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 28, GRIMER     ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 27, VULPIX     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_3F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 26, VULPIX     ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 34, MAGMAR     ; 10% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, GROWLITHE  ;  5% chance
	db 36, WEEZING    ;  5% chance
	db 35, WEEZING    ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 26, VULPIX     ; 15% chance
	db 28, KOFFING    ; 10% chance
	db 24, MAGMAR     ; 10% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, GROWLITHE  ;  5% chance
	db 36, WEEZING    ;  5% chance
	db 35, WEEZING    ;  4% chance
	db 38, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_B1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, GRIMER     ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 38, MUK        ; 10% chance
	db 28, KOFFING    ;  5% chance
	db 34, MAGMAR     ;  5% chance
	db 20, DITTO      ;  4% chance
	db 36, WEEZING    ;  1% chance
	; nite
	db 28, GRIMER     ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 26, VULPIX     ; 10% chance
	db 38, MUK        ; 10% chance
	db 28, KOFFING    ;  5% chance
	db 34, MAGMAR     ;  5% chance
	db 20, DITTO      ;  4% chance
	db 36, WEEZING    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 42, ONIX       ; 20% chance
	db 34, MACHOP     ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ; 10% chance
	db 38, GRAVELER   ; 10% chance
	db 42, GOLBAT     ;  5% chance
	db 42, GOLBAT     ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 42, ONIX       ;  1% chance
	; nite
	db 42, ONIX       ; 20% chance
	db 34, MACHOP     ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ; 10% chance
	db 38, GRAVELER   ; 10% chance
	db 42, GOLBAT     ;  5% chance
	db 42, GOLBAT     ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 42, ONIX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_2F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 42, ONIX       ; 20% chance
	db 34, MACHOP     ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ; 10% chance
	db 38, GRAVELER   ; 10% chance
	db 42, GOLBAT     ;  5% chance
	db 42, GOLBAT     ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 42, ONIX       ;  1% chance
	; nite
	db 42, ONIX       ; 20% chance
	db 34, MACHOP     ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ; 10% chance
	db 38, GRAVELER   ; 10% chance
	db 42, GOLBAT     ;  5% chance
	db 42, GOLBAT     ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 42, ONIX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_3F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 42, ONIX       ; 20% chance
	db 34, MACHOP     ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ; 10% chance
	db 38, GRAVELER   ; 10% chance
	db 42, GOLBAT     ;  5% chance
	db 42, GOLBAT     ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 42, ONIX       ;  1% chance
	; nite
	db 42, ONIX       ; 20% chance
	db 34, MACHOP     ; 20% chance
	db 36, ZUBAT      ; 15% chance
	db 34, GEODUDE    ; 10% chance
	db 40, MACHOKE    ; 10% chance
	db 38, GRAVELER   ; 10% chance
	db 42, GOLBAT     ;  5% chance
	db 42, GOLBAT     ;  5% chance
	db 40, MAROWAK    ;  4% chance
	db 42, ONIX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 50, GOLBAT     ; 20% chance
	db 50, GOLBAT     ; 20% chance
	db 48, MACHOKE    ; 15% chance
	db 50, SANDSLASH  ; 10% chance
	db 50, ARBOK      ; 10% chance
	db 52, PARASECT   ; 10% chance
	db 52, VENOMOTH   ;  5% chance
	db 52, VENOMOTH   ;  5% chance
	db 48, MACHOKE    ;  4% chance
	db 48, MACHOKE    ;  1% chance
	; nite
	db 50, GOLBAT     ; 20% chance
	db 50, GOLBAT     ; 20% chance
	db 48, MACHOKE    ; 15% chance
	db 50, SANDSLASH  ; 10% chance
	db 50, ARBOK      ; 10% chance
	db 52, PARASECT   ; 10% chance
	db 52, VENOMOTH   ;  5% chance
	db 52, VENOMOTH   ;  5% chance
	db 48, MACHOKE    ;  4% chance
	db 48, MACHOKE    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_2F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 52, GOLBAT     ; 20% chance
	db 48, KADABRA    ; 20% chance
	db 50, HYPNO      ; 15% chance
	db 52, GOLBAT     ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 48, MAGNETON   ; 10% chance
	db 50, HYPNO      ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 40, DITTO      ;  4% chance
	db 40, DITTO      ;  1% chance
	; nite
	db 52, GOLBAT     ; 20% chance
	db 48, KADABRA    ; 20% chance
	db 50, HYPNO      ; 15% chance
	db 50, HYPNO      ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 48, MAGNETON   ; 10% chance
	db 48, KADABRA    ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 40, DITTO      ;  4% chance
	db 40, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_B1F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 54, GOLBAT     ; 20% chance
	db 48, GRAVELER   ; 20% chance
	db 52, RHYHORN    ; 15% chance
	db 62, RHYDON     ; 10% chance
	db 50, DITTO      ; 10% chance
	db 54, GOLBAT     ; 10% chance
	db 52, RHYHORN    ;  5% chance
	db 56, CHANSEY    ;  5% chance
	db 50, LICKITUNG  ;  4% chance
	db 50, LICKITUNG  ;  1% chance
	; nite
	db 54, GOLBAT     ; 20% chance
	db 48, GRAVELER   ; 20% chance
	db 52, RHYHORN    ; 15% chance
	db 62, RHYDON     ; 10% chance
	db 50, DITTO      ; 10% chance
	db 48, GRAVELER   ; 10% chance
	db 52, RHYHORN    ;  5% chance
	db 56, CHANSEY    ;  5% chance
	db 50, LICKITUNG  ;  4% chance
	db 50, LICKITUNG  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 22, ZUBAT      ; 20% chance
	db 22, RATICATE   ; 20% chance
	db 21, SLOWPOKE   ; 15% chance
	db 22, ZUBAT      ; 10% chance
	db 24, GOLBAT     ; 10% chance
	db 24, GOLBAT     ; 10% chance
	db 22, RATICATE   ;  5% chance
	db 20, RATTATA    ;  5% chance
	db 20, RATTATA    ;  4% chance
	db 20, RATTATA    ;  1% chance
	; nite
	db 22, ZUBAT      ; 20% chance
	db 22, RATICATE   ; 20% chance
	db 21, SLOWPOKE   ; 15% chance
	db 21, SLOWPOKE   ; 10% chance
	db 24, GOLBAT     ; 10% chance
	db 22, RATICATE   ; 10% chance
	db 20, RATTATA    ;  5% chance
	db 20, RATTATA    ;  5% chance
	db 20, RATTATA    ;  4% chance
	db 20, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons BILLS_BACK_YARD ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 16, PIDGEY     ; 20% chance
	db 12, BELLSPROUT ; 20% chance
	db 12, BELLSPROUT ; 15% chance
	db 18, PIDGEOTTO  ; 10% chance
	db 12, ABRA       ; 10% chance
	db 10, EEVEE      ; 10% chance
	db  7, BULBASAUR  ;  5% chance
	db  7, CHARMANDER ;  5% chance
	db  7, SQUIRTLE   ;  4% chance
	db  7, SQUIRTLE   ;  1% chance
	; nite
	db 12, BELLSPROUT ; 20% chance
	db 12, VENONAT    ; 20% chance
	db 12, ODDISH     ; 15% chance
	db 12, ODDISH     ; 10% chance
	db 12, ABRA       ; 10% chance
	db 10, EEVEE      ; 10% chance
	db  7, BULBASAUR  ;  5% chance
	db  7, CHARMANDER ;  5% chance
	db  7, SQUIRTLE   ;  4% chance
	db  7, SQUIRTLE   ;  1% chance
	end_grass_wildmons

; these are dummys for pokedex habitat marker for safari zone mons
	def_grass_wildmons SAFARI_ZONE_AREA_1
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; day
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 10, EXEGGCUTE
	db 24, DODUO
	db  5, NIDORINO
	db  5, NIDORINA
	db  5, TAUROS
	db  5, LICKITUNG
	db  5, CHANSEY
	db  1, EEVEE
	; nite
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 10, EXEGGCUTE
	db 24, DODUO
	db  5, NIDORINO
	db  5, NIDORINA
	db  5, TAUROS
	db  5, LICKITUNG
	db  5, CHANSEY
	db  1, EEVEE
	end_grass_wildmons

; these are dummys for pokedex habitat marker for safari zone mons
	def_grass_wildmons SAFARI_ZONE_AREA_2
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; day
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 10, EXEGGCUTE
	db  8, PARAS
	db  8, PARAS
	db  8, PARAS
	db  5, PARASECT
	db 10, SCYTHER
	db 10, PINSIR
	db  1, CHANSEY
	; nite
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 10, EXEGGCUTE
	db  4, PARAS
	db 10, VENONAT
	db 10, VENONAT
	db  5, VENOMOTH
	db 10, SCYTHER
	db 10, PINSIR
	db  1, CHANSEY
	end_grass_wildmons

; these are dummys for pokedex habitat marker for safari zone mons
	def_grass_wildmons SAFARI_ZONE_AREA_3
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; day
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 10, EXEGGCUTE
	db  5, NIDORINO
	db  5, NIDORINA
	db 14, RHYHORN
	db 10, TAUROS
	db 10, KANGASKHAN
	db  5, CUBONE
	db  1, CHANSEY
	; nite
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 10, EXEGGCUTE
	db  5, NIDORINO
	db  5, NIDORINA
	db 14, RHYHORN
	db 10, TAUROS
	db 10, KANGASKHAN
	db  5, CUBONE
	db  1, CHANSEY
	end_grass_wildmons

; these are dummys for pokedex habitat marker for safari zone mons
	def_grass_wildmons SAFARI_ZONE_AREA_4
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; day
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 20, EXEGGCUTE
	db 10, TANGELA
	db  5, TANGELA
	db  5, NIDORINO
	db  5, NIDORINA
	db 10, FARFETCH_D
	db  4, CHANSEY
	db  1, CHANSEY
	; nite
	db 20, NIDORAN_M
	db 20, NIDORAN_F
	db 20, EXEGGCUTE
	db 10, TANGELA
	db  5, TANGELA
	db  5, NIDORINO
	db  5, NIDORINA
	db 10, FARFETCH_D
	db  4, CHANSEY
	db  1, CHANSEY
	end_grass_wildmons

	db -1 ; end
