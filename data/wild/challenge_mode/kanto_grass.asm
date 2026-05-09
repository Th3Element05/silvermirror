; Kanto Pokémon in grass

KantoGrassWildMonsChallenge:

	def_grass_wildmons ROUTE_1 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  2, PIDGEY     ; 20% chance
	db  3, PIDGEY     ; 20% chance
	db  3, RATTATA    ; 15% chance
	db  4, PIDGEY     ; 10% chance
	db  2, SENTRET    ; 10% chance
	db  3, SENTRET    ; 10% chance
	db  4, SENTRET    ;  5% chance
	db  5, PIDGEY     ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  4, RATTATA    ;  1% chance
	; nite
	db  2, RATTATA    ; 20% chance
	db  3, RATTATA    ; 20% chance
	db  4, RATTATA    ; 15% chance
	db  2, HOOTHOOT   ; 10% chance
	db  3, HOOTHOOT   ; 10% chance
	db  3, HOOTHOOT   ; 10% chance
	db  4, HOOTHOOT   ;  5% chance
	db  4, HOOTHOOT   ;  5% chance
	db  5, HOOTHOOT   ;  4% chance
	db  5, HOOTHOOT   ;  1% chance
	end_grass_wildmons

;	def_grass_wildmons ROUTE_2_SOUTH ;GEN2
;	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
;	; day
;	db  2, PIDGEY     ; 20% chance
;	db  2, LEDYBA     ; 20% chance
;	db  3, PIDGEY     ; 15% chance
;	db  2, WEEDLE     ; 10% chance
;	db  3, NIDORAN_M  ; 10% chance
;	db  2, CATERPIE   ; 10% chance
;	db  2, CATERPIE   ;  5% chance
;	db  3, NIDORAN_F  ;  5% chance
;	db  2, NIDORAN_F  ;  4% chance
;	db  2, NIDORAN_M  ;  1% chance
;	; nite
;	db  2, HOOTHOOT   ; 20% chance
;	db  3, HOOTHOOT   ; 20% chance
;	db  3, SPINARAK   ; 15% chance
;	db  3, HOOTHOOT   ; 10% chance
;	db  3, NIDORAN_M  ; 10% chance
;	db  2, SPINARAK   ; 10% chance
;	db  2, SPINARAK   ;  5% chance
;	db  3, NIDORAN_F  ;  5% chance
;	db  2, NIDORAN_F  ;  4% chance
;	db  2, NIDORAN_M  ;  1% chance
;	end_grass_wildmons

	def_grass_wildmons ROUTE_2_NORTH ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  3, PIDGEY     ; 20% chance
	db  4, PIDGEY     ; 20% chance
	db  3, LEDYBA     ; 15% chance
	db  3, LEDYBA     ; 10% chance
	db  4, NIDORAN_M  ; 10% chance
	db  3, CATERPIE   ; 10% chance
	db  3, WEEDLE     ;  5% chance
	db  4, NIDORAN_F  ;  5% chance
	db  3, NIDORAN_F  ;  4% chance
	db  3, NIDORAN_M  ;  1% chance
	; nite
	db  3, HOOTHOOT   ; 20% chance
	db  4, HOOTHOOT   ; 20% chance
	db  3, SPINARAK   ; 15% chance
	db  2, HOOTHOOT   ; 10% chance
	db  3, NIDORAN_M  ; 10% chance
	db  3, SPINARAK   ; 10% chance
	db  3, SPINARAK   ;  5% chance
	db  3, NIDORAN_F  ;  5% chance
	db  4, NIDORAN_F  ;  4% chance
	db  4, NIDORAN_M  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_3 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  8, SPEAROW    ; 20% chance
	db  8, SPEAROW    ; 20% chance
	db  6, SANDSHREW  ; 15% chance
	db  4, JIGGLYPUFF ; 10% chance
	db  8, SENTRET    ; 10% chance
	db  8, MANKEY     ; 10% chance
	db  8, MANKEY     ;  5% chance
	db  8, RATTATA    ;  5% chance
	db  8, SPEAROW    ;  4% chance
	db  8, SPEAROW    ;  1% chance
	; nite
	db  8, RATTATA    ; 20% chance
	db  8, RATTATA    ; 20% chance
	db  8, SPEAROW    ; 15% chance
	db  4, JIGGLYPUFF ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  8, MANKEY     ; 10% chance
	db  8, MANKEY     ;  5% chance
	db  8, RATTATA    ;  5% chance
	db  6, ZUBAT      ;  4% chance
	db  6, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_4 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db  8, SPEAROW    ; 20% chance
	db  8, SPEAROW    ; 20% chance
	db  8, SANDSHREW  ; 15% chance
	db  8, EKANS      ; 10% chance
	db  8, EKANS      ; 10% chance
	db  8, SENTRET    ; 10% chance
	db  8, RATTATA    ;  5% chance
	db  9, MANKEY     ;  5% chance
	db  9, MANKEY     ;  4% chance
	db  9, MANKEY     ;  1% chance
	; nite
	db  8, RATTATA    ; 20% chance
	db  8, RATTATA    ; 20% chance
	db  8, SPEAROW    ; 15% chance
	db  8, RATTATA    ; 10% chance
	db  9, MANKEY     ; 10% chance
	db  8, ZUBAT      ; 10% chance
	db  8, ZUBAT      ;  5% chance
	db  8, ZUBAT      ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  8, CLEFAIRY   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_5 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, PIDGEY     ; 20% chance
	db 10, SNUBBULL   ; 20% chance
	db  8, ABRA       ; 15% chance
	db 14, PIDGEY     ; 10% chance
	db 14, PIDGEY     ; 10% chance
	db 10, SNUBBULL   ; 10% chance
	db 10, SNUBBULL   ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 14, HOOTHOOT   ; 20% chance
	db 12, MEOWTH     ; 20% chance
	db  8, ABRA       ; 15% chance
	db 14, HOOTHOOT   ; 10% chance
	db 14, HOOTHOOT   ; 10% chance
	db 12, MEOWTH     ; 10% chance
	db 12, MEOWTH     ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_6 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 14, PIDGEY     ; 20% chance
	db 14, PIDGEY     ; 20% chance
	db 10, SNUBBULL   ; 15% chance
	db 10, SNUBBULL   ; 10% chance
	db 13, SENTRET    ; 10% chance
	db  8, ABRA       ; 10% chance
	db 10, SNUBBULL   ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, MAGNEMITE  ;  4% chance
	db 10, MAGNEMITE  ;  1% chance
	; nite
	db 14, RATTATA    ; 20% chance
	db 14, RATTATA    ; 20% chance
	db 12, MEOWTH     ; 15% chance
	db 12, MEOWTH     ; 10% chance
	db 13, PSYDUCK    ; 10% chance
	db  8, ABRA       ; 10% chance
	db 12, MEOWTH     ;  5% chance
	db  8, JIGGLYPUFF ;  5% chance
	db 10, MAGNEMITE  ;  4% chance
	db 10, MAGNEMITE  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_7 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 19, SPEAROW    ; 20% chance
	db 20, SNUBBUL    ; 20% chance
	db 20, GROWLITHE  ; 15% chance
	db 19, SPEAROW    ; 10% chance
	db 18, VULPIX     ; 10% chance
	db 20, SNUBBULL   ; 10% chance
	db 14, JIGGLYPUFF ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, ABRA       ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 19, MURKROW    ; 20% chance
	db 19, HOUNDOUR   ; 20% chance
	db 20, MEOWTH     ; 15% chance
	db 20, MEOWTH     ; 10% chance
	db 19, MURKROW    ; 10% chance
	db 12, ABRA       ; 10% chance
	db 20, MEOWTH     ;  5% chance
	db 19, HOUNDOUR   ;  5% chance
	db 14, JIGGLYPUFF ;  4% chance
	db 16, KADABRA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_8 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, PIDGEY     ; 20% chance
	db 20, SNUBBULL   ; 20% chance
	db 20, GROWLITHE  ; 15% chance
	db 20, PIDGEY     ; 10% chance
	db 18, VULPIX     ; 10% chance
	db 20, SNUBBULL   ; 10% chance
	db 14, JIGGLYPUFF ;  5% chance
	db 12, ABRA       ;  5% chance
	db 12, ABRA       ;  4% chance
	db 16, KADABRA    ;  1% chance
	; nite
	db 20, HOOTHOOT   ; 20% chance
	db 19, HOUNDOUR   ; 20% chance
	db 20, MEOWTH     ; 15% chance
	db 20, MEOWTH     ; 10% chance
	db 19, MURKROW    ; 10% chance
	db 12, ABRA       ; 10% chance
	db 20, MEOWTH     ;  5% chance
	db 14, JIGGLYPUFF ;  5% chance
	db 15, GASTLY     ;  4% chance
	db 16, KADABRA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_9 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 16, NIDORAN_M  ; 20% chance
	db 16, NIDORAN_F  ; 20% chance
	db 16, SPEAROW    ; 15% chance
	db 16, SENTRET    ; 10% chance
	db 16, EKANS      ; 10% chance
	db 16, SANDSHREW  ; 10% chance
	db 20, NIDORINO   ;  5% chance
	db 20, NIDORINA   ;  5% chance
	db 16, SPEAROW    ;  4% chance
	db 16, YANMA      ;  1% chance
	; nite
	db 16, NIDORAN_M  ; 20% chance
	db 16, NIDORAN_F  ; 20% chance
	db 16, RATTATA    ; 15% chance
	db 16, RATTATA    ; 10% chance
	db 16, RATTATA    ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 20, NIDORINO   ;  5% chance
	db 20, NIDORINA   ;  5% chance
	db 16, ZUBAT      ;  4% chance
	db 16, YANMA      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 16, SPEAROW    ; 20% chance
	db 16, MAGNEMITE  ; 20% chance
	db 16, SANDSHREW  ; 15% chance
	db 16, EKANS      ; 10% chance
	db 16, VOLTORB    ; 10% chance
	db 16, MAREEP     ; 10% chance
	db 16, MAREEP     ;  5% chance
	db 16, SENTRET    ;  5% chance
	db 16, RATTATA    ;  4% chance
	db 16, RATTATA    ;  1% chance
	; nite
	db 16, MAGNEMITE  ; 20% chance
	db 16, RATTATA    ; 20% chance
	db 16, RATTATA    ; 15% chance
	db 16, VOLTORB    ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 16, MAREEP     ; 10% chance
	db 16, MAREEP     ;  5% chance
	db 16, VENONAT    ;  5% chance
	db 16, VENONAT    ;  4% chance
	db 16, VENONAT    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_11 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 12, HOPPIP     ; 20% chance
	db 15, SPEAROW    ; 20% chance
	db 15, EKANS      ; 15% chance
	db 15, SPEAROW    ; 10% chance
	db 14, SENTRET    ; 10% chance
	db 15, SANDSHREW  ; 10% chance
	db 15, SANDSHREW  ;  5% chance
	db 15, EKANS      ;  5% chance
	db 12, MAGNEMITE  ;  4% chance
	db 12, MAGNEMITE  ;  1% chance
	; nite
	db 15, HOOTHOOT   ; 20% chance
	db 14, RATTATA    ; 20% chance
	db 15, DROWZEE    ; 15% chance
	db 15, DROWZEE    ; 10% chance
	db 14, MEOWTH     ; 10% chance
	db 14, MEOWTH     ; 10% chance
	db 15, HOOTHOOT   ;  5% chance
	db 14, RATTATA    ;  5% chance
	db 12, MAGNEMITE  ;  4% chance
	db 12, MAGNEMITE  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_12 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 24, PIDGEY     ; 20% chance
	db 24, PIDGEY     ; 20% chance
	db 24, BELLSPROUT ; 15% chance
	db 24, BELLSPROUT ; 10% chance
	db 21, HOPPIP     ; 10% chance
	db 21, HOPPIP     ; 10% chance
	db 21, HOPPIP     ;  5% chance
	db 27, PIDGEOTTO  ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	; nite
	db 23, HOOTHOOT   ; 20% chance
	db 24, BELLSPROUT ; 20% chance
	db 24, ODDISH     ; 15% chance
	db 24, ODDISH     ; 10% chance
	db 23, WOOPER     ; 10% chance
	db 23, WOOPER     ; 10% chance
	db 26, QUAGSIRE   ;  5% chance
	db 27, NOCTOWL    ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_13 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 24, PIDGEY     ; 20% chance
	db 24, PIDGEY     ; 20% chance
	db 24, BELLSPROUT ; 15% chance
	db 24, BELLSPROUT ; 10% chance
	db 21, HOPPIP     ; 10% chance
	db 21, HOPPIP     ; 10% chance
	db 21, HOPPIP     ;  5% chance
	db 27, PIDGEOTTO  ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	; nite
	db 23, HOOTHOOT   ; 20% chance
	db 24, BELLSPROUT ; 20% chance
	db 24, ODDISH     ; 15% chance
	db 24, ODDISH     ; 10% chance
	db 23, WOOPER     ; 10% chance
	db 23, WOOPER     ; 10% chance
	db 26, QUAGSIRE   ;  5% chance
	db 27, NOCTOWL    ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_14 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 25, PIDGEY     ; 20% chance
	db 22, HOPPIP     ; 20% chance
	db 20, DITTO      ; 15% chance
	db 25, PIDGEY     ; 10% chance
	db 22, HOPPIP     ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance
	db 28, SKIPLOOM   ;  5% chance
	db 28, SKIPLOOM   ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	; nite
	db 24, HOOTHOOT   ; 20% chance
	db 24, VENONAT    ; 20% chance
	db 20, DITTO      ; 15% chance
	db 24, VENONAT    ; 10% chance
	db 27, NOCTOWL    ; 10% chance
	db 24, HOOTHOOT   ; 10% chance
	db 24, HOOTHOOT   ;  5% chance
	db 29, VENOMOTH   ;  5% chance
	db 26, FARFETCH_D ;  4% chance
	db 26, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_15 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 25, PIDGEY     ; 20% chance
	db 25, BELLSPROUT ; 20% chance
	db 20, DITTO      ; 15% chance
	db 25, BELLSPROUT ; 10% chance
	db 28, WEEPINBELL ; 10% chance
	db 25, PIDGEY     ; 10% chance
	db 25, PIDGEY     ;  5% chance
	db 28, PIDGEOTTO  ;  5% chance
	db 28, PIDGEOTTO  ;  4% chance
	db 28, PIDGEOTTO  ;  1% chance
	; nite
	db 24, HOOTHOOT   ; 20% chance
	db 25, BELLSPROUT ; 20% chance
	db 20, DITTO      ; 15% chance
	db 24, VENONAT    ; 10% chance
	db 25, ODDISH     ; 10% chance
	db 25, ODDISH     ; 10% chance
	db 28, WEEPINBELL ;  5% chance
	db 28, GLOOM      ;  5% chance
	db 29, VENOMOTH   ;  4% chance
	db 29, VENOMOTH   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_16 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 22, SPEAROW    ; 20% chance
	db 23, DODUO      ; 20% chance
	db 20, GRIMER     ; 15% chance
	db 23, DODUO      ; 10% chance
	db 22, NATU       ; 10% chance
	db 22, RATTATA    ; 10% chance
	db 26, FEAROW     ;  5% chance
	db 22, SPEAROW    ;  5% chance
	db 20, SLUGMA     ;  4% chance
	db 20, SLUGMA     ;  1% chance
	; nite
	db 22, RATTATA    ; 20% chance
	db 22, MURKROW    ; 20% chance
	db 20, GRIMER     ; 15% chance
	db 22, RATTATA    ; 10% chance
	db 22, NATU       ; 10% chance
	db 26, RATICATE   ; 10% chance
	db 22, MURKROW    ;  5% chance
	db 20, GRIMER     ;  5% chance
	db 20, SLUGMA     ;  4% chance
	db 20, SLUGMA     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_17 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 21, SLUGMA     ; 20% chance
	db 24, DODUO      ; 20% chance
	db 24, DODUO      ; 15% chance
	db 22, NATU       ; 10% chance
	db 24, PONYTA     ; 10% chance
	db 24, PONYTA     ; 10% chance
	db 24, PONYTA     ;  5% chance
	db 24, DODUO      ;  5% chance
	db 26, DODRIO     ;  4% chance
	db 21, SLUGMA     ;  1% chance
	; nite
	db 21, SLUGMA     ; 20% chance
	db 22, MURKROW    ; 20% chance
	db 22, MURKROW    ; 15% chance
	db 22, NATU       ; 10% chance
	db 22, RATTATA    ; 10% chance
	db 22, RATTATA    ; 10% chance
	db 22, RATTATA    ;  5% chance
	db 26, RATICATE   ;  5% chance
	db 26, RATICATE   ;  4% chance
	db 26, RATICATE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_18 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 22, SPEAROW    ; 20% chance
	db 23, DODUO      ; 20% chance
	db 20, GRIMER     ; 15% chance
	db 23, DODUO      ; 10% chance
	db 22, NATU       ; 10% chance
	db 22, RATTATA    ; 10% chance
	db 26, FEAROW     ;  5% chance
	db 22, SPEAROW    ;  5% chance
	db 20, SLUGMA     ;  4% chance
	db 20, SLUGMA     ;  1% chance
	; nite
	db 22, RATTATA    ; 20% chance
	db 22, MURKROW    ; 20% chance
	db 20, GRIMER     ; 15% chance
	db 22, RATTATA    ; 10% chance
	db 22, NATU       ; 10% chance
	db 26, RATICATE   ; 10% chance
	db 22, MURKROW    ;  5% chance
	db 20, GRIMER     ;  5% chance
	db 20, SLUGMA     ;  4% chance
	db 20, SLUGMA     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_21 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 21, PIDGEY     ; 20% chance
	db 22, SENTRET    ; 20% chance
	db 21, RATTATA    ; 15% chance
	db 21, PIDGEY     ; 10% chance
	db 28, FURRET     ; 10% chance
	db 30, PIDGEOTTO  ; 10% chance
	db 30, PIDGEOTTO  ;  5% chance
	db 26, TANGELA    ;  5% chance
	db 26, TANGELA    ;  4% chance
	db 24, MR__MIME   ;  1% chance
	; nite
	db 21, RATTATA    ; 20% chance
	db 21, RATTATA    ; 20% chance
	db 21, HOOTHOOT   ; 15% chance
	db 21, HOOTHOOT   ; 10% chance
	db 29, NOCTOWL    ; 10% chance
	db 24, RATICATE   ; 10% chance
	db 21, HOOTHOOT   ;  5% chance
	db 26, TANGELA    ;  5% chance
	db 26, TANGELA    ;  4% chance
	db 24, MR__MIME   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_22 ;GEN2
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
	db  2, POLIWAG    ; 10% chance
	db  2, MANKEY     ;  5% chance
	db  2, RATTATA    ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  2, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_23 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 36, NIDORINO   ; 20% chance
	db 36, NIDORINA   ; 20% chance
	db 36, SKARMORY   ; 15% chance
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
	db 36, SKARMORY   ; 15% chance
	db 34, ARBOK      ; 10% chance
	db 34, SANDSLASH  ; 10% chance
	db 36, PRIMEAPE   ; 10% chance
	db 34, ARBOK      ;  5% chance
	db 34, SANDSLASH  ;  5% chance
	db 36, PRIMEAPE   ;  4% chance
	db 36, PRIMEAPE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_24 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 10, BELLSPROUT ; 20% chance
	db 10, BELLSPROUT ; 20% chance
	db 10, SUNKERN    ; 15% chance
	db 12, PIDGEY     ; 10% chance
	db 12, PIDGEY     ; 10% chance
	db 10, BELLSPROUT ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance
	db 10, SUNKERN    ;  1% chance
	; nite
	db 10, BELLSPROUT ; 20% chance
	db 10, ODDISH     ; 20% chance
	db 10, VENONAT    ; 15% chance
	db 10, BELLSPROUT ; 10% chance
	db 10, ODDISH     ; 10% chance
	db 11, PSYDUCK    ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 10, ODDISH     ;  4% chance
	db 10, ODDISH     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_25 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 10, BELLSPROUT ; 20% chance
	db 10, BELLSPROUT ; 20% chance
	db 10, SUNKERN    ; 15% chance
	db 12, PIDGEY     ; 10% chance
	db 12, PIDGEY     ; 10% chance
	db 10, BELLSPROUT ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance
	db 10, SUNKERN    ;  1% chance
	; nite
	db 10, BELLSPROUT ; 20% chance
	db 10, ODDISH     ; 20% chance
	db 10, VENONAT    ; 15% chance
	db 10, BELLSPROUT ; 10% chance
	db 10, ODDISH     ; 10% chance
	db 11, PSYDUCK    ; 10% chance
	db  8, ABRA       ;  5% chance
	db  8, ABRA       ;  5% chance
	db 10, ODDISH     ;  4% chance
	db 10, ODDISH     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_26 ;GEN2 ;after saffron access
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, SANDSHREW  ; 20% chance
	db 20, EKANS      ; 20% chance
	db 22, PONYTA     ; 15% chance
	db 22, SANDSLASH  ; 10% chance
	db 22, ARBOK      ; 10% chance
	db 20, DODUO      ; 10% chance
	db 20, DODUO      ;  5% chance
	db 20, DODUO      ;  5% chance
	db 22, PONYTA     ;  4% chance
	db 22, PONYTA     ;  1% chance
	; nite
	db 20, HOOTHOOT   ; 20% chance
	db 22, PONYTA     ; 20% chance
	db 23, NOCTOWL    ; 15% chance
	db 21, POLIWAG    ; 10% chance
	db 21, WOOPER     ; 10% chance
	db 21, WOOPER     ; 10% chance
	db 25, POLIWHIRL  ;  5% chance
	db 24, QUAGSIRE   ;  5% chance
	db 24, QUAGSIRE   ;  4% chance
	db 24, QUAGSIRE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_27_EAST ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 20, SANDSHREW  ; 20% chance
	db 20, EKANS      ; 20% chance
	db 22, PONYTA     ; 15% chance
	db 22, SANDSLASH  ; 10% chance
	db 22, ARBOK      ; 10% chance
	db 20, DODUO      ; 10% chance
	db 20, DODUO      ;  5% chance
	db 20, DODUO      ;  5% chance
	db 22, PONYTA     ;  4% chance
	db 22, PONYTA     ;  1% chance
	; nite
	db 20, HOOTHOOT   ; 20% chance
	db 22, PONYTA     ; 20% chance
	db 23, NOCTOWL    ; 15% chance
	db 21, POLIWAG    ; 10% chance
	db 21, WOOPER     ; 10% chance
	db 21, WOOPER     ; 10% chance
	db 25, POLIWHIRL  ;  5% chance
	db 24, QUAGSIRE   ;  5% chance
	db 24, QUAGSIRE   ;  4% chance
	db 24, QUAGSIRE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_28 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; day
	db 40, URSARING   ; 20% chance
	db 40, DONPHAN    ; 20% chance
	db 36, PONYTA     ; 15% chance
	db 42, RAPIDASH   ; 10% chance
	db 41, TANGELA    ; 10% chance
	db 41, TANGELA    ; 10% chance
	db 36, PONYTA     ;  5% chance
	db 34, DODUO      ;  5% chance
	db 42, DODRIO     ;  4% chance
	db 42, DODRIO     ;  1% chance
	; nite
	db 41, TANGELA    ; 20% chance
	db 38, GOLBAT     ; 20% chance
	db 36, PONYTA     ; 15% chance
	db 42, RAPIDASH   ; 10% chance
	db 36, SNEASEL    ; 10% chance
	db 38, POLIWHIRL  ; 10% chance
	db 36, PONYTA     ;  5% chance
	db 38, POLIWHIRL  ;  5% chance
	db 38, POLIWHIRL  ;  4% chance
	db 38, POLIWHIRL  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VIRIDIAN_FOREST ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  2, CATERPIE   ; 20% chance
	db  3, WEEDLE     ; 20% chance
	db  3, CATERPIE   ; 15% chance
	db  3, CATERPIE   ; 10% chance
	db  2, WEEDLE     ; 10% chance
	db  4, METAPOD    ; 10% chance
	db  4, KAKUNA     ;  5% chance
	db  3, PARAS      ;  5% chance
	db  3, PIKACHU    ;  4% chance
	db  4, PIKACHU    ;  1% chance
	; nite
	db  2, SPINARAK   ; 20% chance
	db  3, SPINARAK   ; 20% chance
	db  3, WEEDLE     ; 15% chance
	db  2, CATERPIE   ; 10% chance
	db  3, CATERPIE   ; 10% chance
	db  3, CATERPIE   ; 10% chance
	db  3, ZUBAT      ;  5% chance
	db  3, PARAS      ;  5% chance
	db  3, PIKACHU    ;  4% chance
	db  4, PIKACHU    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  6, PARAS      ;  5% chance
	db  8, SANDSHREW  ;  5% chance
	db  6, ZUBAT      ;  4% chance
	db  7, CLEFAIRY   ;  1% chance
	; nite
	db  6, GEODUDE    ; 20% chance
	db  6, GEODUDE    ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  6, ZUBAT      ; 10% chance
	db  6, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ;  5% chance
	db  6, PARAS      ;  5% chance
	db  7, CLEFAIRY   ;  4% chance
	db  7, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON_B2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  6, GEODUDE    ; 10% chance
	db  6, GEODUDE    ; 10% chance
	db  7, PARAS      ; 10% chance
	db  8, ZUBAT      ;  5% chance
	db  8, ZUBAT      ;  5% chance
	db  8, CLEFAIRY   ;  4% chance
	db  9, CLEFAIRY   ;  1% chance
	; nite
	db  6, GEODUDE    ; 20% chance
	db  6, GEODUDE    ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  8, ZUBAT      ; 10% chance
	db  7, PARAS      ; 10% chance
	db  8, ZUBAT      ;  5% chance
	db  8, CLEFAIRY   ;  5% chance
	db  9, CLEFAIRY   ;  4% chance
	db  8, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons DIGLETTS_CAVE ;GEN2
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; day
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 20% chance
	db 14, DIGLETT    ; 15% chance
	db 13, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 15, DIGLETT    ; 10% chance
	db 12, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 26, DUGTRIO    ;  4% chance
	db 12, DUNSPARCE  ;  1% chance
	; nite
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 20% chance
	db 14, DIGLETT    ; 15% chance
	db 13, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 16, DIGLETT    ; 10% chance
	db 12, DIGLETT    ;  5% chance
	db 26, DUGTRIO    ;  5% chance
	db 18, DIGLETT    ;  4% chance
	db 12, DUNSPARCE  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 15, ZUBAT      ; 20% chance
	db 15, ZUBAT      ; 20% chance
	db 16, MACHOP     ; 15% chance
	db 16, MACHOP     ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ; 10% chance
	db 16, GEODUDE    ;  5% chance
	db 16, GEODUDE    ;  5% chance
	db 14, ONIX       ;  4% chance
	db 12, CUBONE     ;  1% chance
	; nite
	db 16, GEODUDE    ; 20% chance
	db 16, GEODUDE    ; 20% chance
	db 16, MACHOP     ; 15% chance
	db 16, MACHOP     ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 15, ZUBAT      ;  5% chance
	db 15, ZUBAT      ;  5% chance
	db 14, ONIX       ;  4% chance
	db 12, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 15, ZUBAT      ; 20% chance
	db 16, ZUBAT      ; 20% chance
	db 16, MACHOP     ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 17, GEODUDE    ; 10% chance
	db 17, GEODUDE    ; 10% chance
	db 14, ONIX       ;  5% chance
	db 14, ONIX       ;  5% chance
	db 13, CUBONE     ;  4% chance
	db 16, MACHOP     ;  1% chance
	; nite
	db 16, GEODUDE    ; 20% chance
	db 17, GEODUDE    ; 20% chance
	db 16, MACHOP     ; 15% chance
	db 15, ZUBAT      ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 15, ONIX       ;  5% chance
	db 14, ONIX       ;  5% chance
	db 13, CUBONE     ;  4% chance
	db 16, MACHOP     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 16, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  4% chance
	db 25, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 16, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  5% chance
	db 18, GASTLY     ;  4% chance
	db 25, HAUNTER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_4F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 16, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 19, GASTLY     ;  5% chance
	db 19, GASTLY     ;  4% chance
	db 25, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 15% chance
	db 18, GASTLY     ; 10% chance
	db 17, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 19, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  4% chance
	db 20, GASTLY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_5F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 17, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  4% chance
	db 20, GASTLY     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 17, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  4% chance
	db 25, HAUNTER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_6F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 17, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 18, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_7F ;GEN2
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; day
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 20, GASTLY     ; 10% chance
	db 18, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 20, GASTLY     ; 10% chance
	db 18, MISDREAVUS ; 10% chance
	db 18, ZUBAT      ; 10% chance
	db 20, GASTLY     ;  5% chance
	db 25, HAUNTER    ;  5% chance
	db 20, CUBONE     ;  4% chance
	db 20, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS ;GEN2
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
	db 22, GOLBAT     ;  4% chance
	db 22, GOLBAT     ;  1% chance
	; nite
	db 19, ZUBAT      ; 20% chance
	db 20, SLOWPOKE   ; 20% chance
	db 20, KRABBY     ; 15% chance
	db 19, ZUBAT      ; 10% chance
	db 20, STARYU     ; 10% chance
	db 20, SHELLDER   ; 10% chance
	db 20, KRABBY     ;  5% chance
	db 20, KRABBY     ;  5% chance
	db 22, GOLBAT     ;  4% chance
	db 22, GOLBAT     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 19, ZUBAT      ; 20% chance
	db 20, KRABBY     ; 20% chance
	db 19, ZUBAT      ; 15% chance
	db 22, GOLBAT     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 20, SHELLDER   ; 10% chance
	db 20, SEEL       ;  5% chance
	db 20, SEEL       ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, KINGLER    ;  1% chance
	; nite
	db 19, ZUBAT      ; 20% chance
	db 20, KRABBY     ; 20% chance
	db 19, ZUBAT      ; 15% chance
	db 22, GOLBAT     ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 20, SHELLDER   ; 10% chance
	db 19, ZUBAT      ;  5% chance
	db 22, GOLBAT     ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, KINGLER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 19, ZUBAT      ; 20% chance
	db 20, KRABBY     ; 20% chance
	db 22, GOLBAT     ; 15% chance
	db 19, ZUBAT      ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 22, SHELLDER   ; 10% chance
	db 20, SEEL       ;  5% chance
	db 20, SEEL       ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, SLOWBRO    ;  1% chance
	; nite
	db 19, ZUBAT      ; 20% chance
	db 20, KRABBY     ; 20% chance
	db 22, GOLBAT     ; 15% chance
	db 19, ZUBAT      ; 10% chance
	db 20, SLOWPOKE   ; 10% chance
	db 22, SHELLDER   ; 10% chance
	db 19, ZUBAT      ;  5% chance
	db 22, GOLBAT     ;  5% chance
	db 28, KINGLER    ;  4% chance
	db 28, SLOWBRO    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 20, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 23, GOLBAT     ; 15% chance
	db 20, SEEL       ; 10% chance
	db 20, SEEL       ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 30, DEWGONG    ;  5% chance
	db 22, SHELLDER   ;  5% chance
	db 26, JYNX       ;  4% chance
	db 22, SHELLDER   ;  1% chance
	; nite
	db 20, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 23, GOLBAT     ; 15% chance
	db 20, ZUBAT      ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 21, KRABBY     ;  5% chance
	db 22, SHELLDER   ;  5% chance
	db 25, SNEASEL    ;  4% chance
	db 26, JYNX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B4F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 20, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 23, GOLBAT     ; 15% chance
	db 20, SEEL       ; 10% chance
	db 20, SEEL       ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 30, DEWGONG    ;  5% chance
	db 22, SHELLDER   ;  5% chance
	db 26, JYNX       ;  4% chance
	db 26, JYNX       ;  1% chance
	; nite
	db 20, ZUBAT      ; 20% chance
	db 21, KRABBY     ; 20% chance
	db 23, GOLBAT     ; 15% chance
	db 20, ZUBAT      ; 10% chance
	db 23, GOLBAT     ; 10% chance
	db 28, KINGLER    ; 10% chance
	db 21, KRABBY     ;  5% chance
	db 22, SHELLDER   ;  5% chance
	db 25, SNEASEL    ;  4% chance
	db 26, JYNX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POWER_PLANT ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 23, VOLTORB    ; 20% chance
	db 22, MAGNEMITE  ; 20% chance
	db 20, PIKACHU    ; 15% chance
	db 23, VOLTORB    ; 10% chance
	db 23, VOLTORB    ; 10% chance
	db 31, MAGNETON   ; 10% chance
	db 20, PIKACHU    ;  5% chance
	db 22, MAGNEMITE  ;  5% chance
	db 32, ELECTABUZZ ;  4% chance
	db 32, ELECTABUZZ ;  1% chance
	; nite
	db 23, VOLTORB    ; 20% chance
	db 22, MAGNEMITE  ; 20% chance
	db 20, PIKACHU    ; 15% chance
	db 23, VOLTORB    ; 10% chance
	db 23, VOLTORB    ; 10% chance
	db 31, MAGNETON   ; 10% chance
	db 20, PIKACHU    ;  5% chance
	db 22, MAGNEMITE  ;  5% chance
	db 32, ELECTABUZZ ;  4% chance
	db 32, ELECTABUZZ ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, VULPIX     ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 27, GROWLITHE  ; 10% chance
	db 23, SLUGMA     ; 10% chance
	db 26, VULPIX     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, VULPIX     ; 15% chance
	db 27, HOUNDOUR   ; 10% chance
	db 27, HOUNDOUR   ; 10% chance
	db 23, SLUGMA     ; 10% chance
	db 27, HOUNDOUR   ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, VULPIX     ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 27, GROWLITHE  ; 10% chance
	db 23, SLUGMA     ; 10% chance
	db 26, VULPIX     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, VULPIX     ; 15% chance
	db 27, HOUNDOUR   ; 10% chance
	db 27, HOUNDOUR   ; 10% chance
	db 23, SLUGMA     ; 10% chance
	db 27, HOUNDOUR   ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 38, MUK        ;  4% chance
	db 38, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, VULPIX     ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 27, GROWLITHE  ; 10% chance
	db 28, KOFFING    ; 10% chance
	db 31, MAGMAR     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 35, WEEZING    ;  4% chance
	db 38, MUK        ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance
	db 28, GRIMER     ; 20% chance
	db 27, HOUNDOUR   ; 15% chance
	db 27, HOUNDOUR   ; 10% chance
	db 27, VULPIX     ; 10% chance
	db 28, KOFFING    ; 10% chance
	db 31, MAGMAR     ;  5% chance
	db 35, WEEZING    ;  5% chance
	db 35, WEEZING    ;  4% chance
	db 38, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 28, GRIMER     ; 20% chance
	db 23, SLUGMA     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 27, GROWLITHE  ; 10% chance
	db 27, VULPIX     ; 10% chance
	db 38, MUK        ; 10% chance
	db 28, GRIMER     ;  5% chance
	db 34, MAGMAR     ;  5% chance
	db 20, DITTO      ;  4% chance
	db 35, WEEZING    ;  1% chance
	; nite
	db 28, GRIMER     ; 20% chance
	db 23, SLUGMA     ; 20% chance
	db 28, KOFFING    ; 15% chance
	db 27, HOUNDOUR   ; 10% chance
	db 27, VULPIX     ; 10% chance
	db 38, MUK        ; 10% chance
	db 28, GRIMER     ;  5% chance
	db 34, MAGMAR     ;  5% chance
	db 20, DITTO      ;  4% chance
	db 35, WEEZING    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 38, ONIX       ; 20% chance
	db 33, MACHOP     ; 20% chance
	db 30, ZUBAT      ; 15% chance
	db 29, GEODUDE    ; 10% chance
	db 39, MACHOKE    ; 10% chance
	db 34, GRAVELER   ; 10% chance
	db 36, GOLBAT     ;  5% chance
	db 36, GOLBAT     ;  5% chance
	db 32, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	; nite
	db 38, ONIX       ; 20% chance
	db 33, MACHOP     ; 20% chance
	db 30, ZUBAT      ; 15% chance
	db 29, GEODUDE    ; 10% chance
	db 39, MACHOKE    ; 10% chance
	db 34, GRAVELER   ; 10% chance
	db 36, GOLBAT     ;  5% chance
	db 36, GOLBAT     ;  5% chance
	db 32, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 38, ONIX       ; 20% chance
	db 33, MACHOP     ; 20% chance
	db 30, ZUBAT      ; 15% chance
	db 29, GEODUDE    ; 10% chance
	db 39, MACHOKE    ; 10% chance
	db 34, GRAVELER   ; 10% chance
	db 36, GOLBAT     ;  5% chance
	db 36, GOLBAT     ;  5% chance
	db 32, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	; nite
	db 38, ONIX       ; 20% chance
	db 33, MACHOP     ; 20% chance
	db 30, ZUBAT      ; 15% chance
	db 29, GEODUDE    ; 10% chance
	db 39, MACHOKE    ; 10% chance
	db 34, GRAVELER   ; 10% chance
	db 36, GOLBAT     ;  5% chance
	db 36, GOLBAT     ;  5% chance
	db 32, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 38, ONIX       ; 20% chance
	db 33, MACHOP     ; 20% chance
	db 30, ZUBAT      ; 15% chance
	db 29, GEODUDE    ; 10% chance
	db 39, MACHOKE    ; 10% chance
	db 34, GRAVELER   ; 10% chance
	db 36, GOLBAT     ;  5% chance
	db 36, GOLBAT     ;  5% chance
	db 32, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	; nite
	db 38, ONIX       ; 20% chance
	db 33, MACHOP     ; 20% chance
	db 30, ZUBAT      ; 15% chance
	db 29, GEODUDE    ; 10% chance
	db 39, MACHOKE    ; 10% chance
	db 34, GRAVELER   ; 10% chance
	db 36, GOLBAT     ;  5% chance
	db 36, GOLBAT     ;  5% chance
	db 32, MAROWAK    ;  4% chance
	db 15, LARVITAR   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 48, GOLBAT     ; 20% chance
	db 48, MACHOKE    ; 20% chance
	db 48, GOLBAT     ; 15% chance
	db 46, DONPHAN    ; 10% chance
	db 48, URSARING   ; 10% chance
	db 50, PARASECT   ; 10% chance
	db 50, VENOMOTH   ;  5% chance
	db 50, VENOMOTH   ;  5% chance
	db 46, WOBBUFFET  ;  4% chance
	db 46, WOBBUFFET  ;  1% chance
	; nite
	db 48, GOLBAT     ; 20% chance
	db 48, MACHOKE    ; 20% chance
	db 48, MACHOKE    ; 15% chance
	db 46, DONPHAN    ; 10% chance
	db 48, URSARING   ; 10% chance
	db 50, PARASECT   ; 10% chance
	db 50, VENOMOTH   ;  5% chance
	db 50, VENOMOTH   ;  5% chance
	db 46, WOBBUFFET  ;  4% chance
	db 46, WOBBUFFET  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 48, GOLBAT     ; 20% chance
	db 46, KADABRA    ; 20% chance
	db 46, HYPNO      ; 15% chance
	db 48, GOLBAT     ; 10% chance
	db 48, ELECTRODE  ; 10% chance
	db 48, MAGNETON   ; 10% chance
	db 46, HYPNO      ;  5% chance
	db 52, CHANSEY    ;  5% chance
	db 40, DITTO      ;  4% chance
	db 46, WOBBUFFET  ;  1% chance
	; nite
	db 48, GOLBAT     ; 20% chance
	db 46, KADABRA    ; 20% chance
	db 46, HYPNO      ; 15% chance
	db 46, HYPNO      ; 10% chance
	db 48, ELECTRODE  ; 10% chance
	db 48, MAGNETON   ; 10% chance
	db 46, KADABRA    ;  5% chance
	db 52, CHANSEY    ;  5% chance
	db 40, DITTO      ;  4% chance
	db 46, WOBBUFFET  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 48, GOLBAT     ; 20% chance
	db 46, GRAVELER   ; 20% chance
	db 52, RHYHORN    ; 15% chance
	db 56, RHYDON     ; 10% chance
	db 50, DITTO      ; 10% chance
	db 48, GOLBAT     ; 10% chance
	db 52, RHYHORN    ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 49, LICKITUNG  ;  4% chance
	db 46, WOBBUFFET  ;  1% chance
	; nite
	db 48, GOLBAT     ; 20% chance
	db 46, GRAVELER   ; 20% chance
	db 52, RHYHORN    ; 15% chance
	db 56, RHYDON     ; 10% chance
	db 50, DITTO      ; 10% chance
	db 46, GRAVELER   ; 10% chance
	db 52, RHYHORN    ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 49, LICKITUNG  ;  4% chance
	db 46, WOBBUFFET  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; day
	db 21, ZUBAT      ; 20% chance
	db 24, RATICATE   ; 20% chance
	db 24, GOLBAT     ; 15% chance
	db 22, SLOWPOKE   ; 10% chance
	db 22, SLOWPOKE   ; 10% chance
	db 21, ZUBAT      ; 10% chance
	db 24, GOLBAT     ;  5% chance
	db 20, RATTATA    ;  5% chance
	db 20, RATTATA    ;  4% chance
	db 20, RATTATA    ;  1% chance
	; nite
	db 21, ZUBAT      ; 20% chance
	db 24, RATICATE   ; 20% chance
	db 24, GOLBAT     ; 15% chance
	db 22, SLOWPOKE   ; 10% chance
	db 22, SLOWPOKE   ; 10% chance
	db 20, MARILL     ; 10% chance
	db 20, MARILL     ;  5% chance
	db 20, RATTATA    ;  5% chance
	db 20, RATTATA    ;  4% chance
	db 20, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons BILLS_BACK_YARD ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
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
	db 16, HOOTHOOT   ; 20% chance
	db 12, ODDISH     ; 20% chance
	db 12, BELLSPROUT ; 15% chance
	db 14, VENONAT    ; 10% chance
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
	db 16, GIRAFARIG  ; 20%
	db 16, STANTLER   ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 12, AIPOM      ; 10%
	db 16, MILTANK    ; 10%
	db 16, MILTANK    ; 10%
	db 16, TAUROS     ;  5%
	db 16, TAUROS     ;  5%
	db 16, CHANSEY    ;  4%
	db 10, EEVEE      ;  1%
	; nite
	db 16, GIRAFARIG  ; 20%
	db 16, STANTLER   ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 12, AIPOM      ; 10%
	db 16, MILTANK    ; 10%
	db 16, MILTANK    ; 10%
	db 16, TAUROS     ;  5%
	db 16, TAUROS     ;  5%
	db 16, CHANSEY    ;  4%
	db 10, EEVEE      ;  1%
	end_grass_wildmons

; these are dummys for pokedex habitat marker for safari zone mons
	def_grass_wildmons SAFARI_ZONE_AREA_2
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; day
	db 12, LEDYBA     ; 20%
	db 12, YANMA      ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 12, PARAS      ; 10%
	db 12, PARASECT   ; 10%
	db 16, LEDIAN     ; 10%
	db 16, SCYTHER    ;  5%
	db 16, PINSIR     ;  5%
	db 16, HERACROSS  ;  4%
	db 16, CHANSEY    ;  1%
	; nite
	db 12, SPINARAK   ; 20%
	db 12, YANMA      ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 12, VENONAT    ; 10%
	db 12, VENOMOTH   ; 10%
	db 16, ARIADOS    ; 10%
	db 16, SCYTHER    ;  5%
	db 16, PINSIR     ;  5%
	db 16, HERACROSS  ;  4%
	db 16, CHANSEY    ;  1%
	end_grass_wildmons

; these are dummys for pokedex habitat marker for safari zone mons
	def_grass_wildmons SAFARI_ZONE_AREA_3
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; day
	db 12, PHANPY     ; 20%
	db 12, GLIGAR     ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 16, SKARMORY   ; 10%
	db 16, RHYHORN    ; 10%
	db 16, TAUROS     ; 10%
	db 16, KANGASKHAN ;  5%
	db 12, CUBONE     ;  5%
	db 12, LARVITAR   ;  4%
	db 16, CHANSEY    ;  1%
	; nite
	db 12, PHANPY     ; 20%
	db 12, GLIGAR     ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 16, SKARMORY   ; 10%
	db 16, RHYHORN    ; 10%
	db 16, TAUROS     ; 10%
	db 16, KANGASKHAN ;  5%
	db 12, CUBONE     ;  5%
	db 12, LARVITAR   ;  4%
	db 16, CHANSEY    ;  1%
	end_grass_wildmons

; these are dummys for pokedex habitat marker for safari zone mons
	def_grass_wildmons SAFARI_ZONE_AREA_4
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; day
	db 12, HOPPIP     ; 20%
	db 12, SUNKERN    ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 12, MARILL     ; 10%
	db 12, WOOPER     ; 10%
	db 16, TANGELA    ; 10%
	db 12, AIPOM      ;  5%
	db 16, MILTANK    ;  5%
	db 12, SMEARGLE   ;  4%
	db 16, CHANSEY    ;  1%
	; nite
	db 12, HOPPIP     ; 20%
	db 12, SUNKERN    ; 20%
	db 12, EXEGGCUTE  ; 15%
	db 12, MARILL     ; 10%
	db 12, WOOPER     ; 10%
	db 16, TANGELA    ; 10%
	db 12, AIPOM      ;  5%
	db 16, MILTANK    ;  5%
	db 12, SMEARGLE   ;  4%
	db 16, CHANSEY    ;  1%
	end_grass_wildmons

	db -1 ; end
