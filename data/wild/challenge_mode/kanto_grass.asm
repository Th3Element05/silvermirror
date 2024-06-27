; Kanto Pokémon in grass

KantoGrassWildMonsChallenge:

	def_grass_wildmons ROUTE_1 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  2, PIDGEY     ; 20% chance 60
	db  3, PIDGEY     ; 20% chance
	db  3, RATTATA    ; 15% chance 20
	db  4, PIDGEY     ; 10% chance
	db  5, PIDGEY     ; 10% chance
	db  3, SENTRET    ; 10% chance 20
	db  2, SENTRET    ;  5% chance
	db  4, SENTRET    ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  4, RATTATA    ;  1% chance
	; day
	db  3, PIDGEY     ; 20% chance 40
	db  3, RATTATA    ; 20% chance 40
	db  2, RATTATA    ; 15% chance
	db  2, PIDGEY     ; 10% chance
	db  4, PIDGEY     ; 10% chance
	db  3, SENTRET    ; 10% chance 20
	db  2, SENTRET    ;  5% chance
	db  4, SENTRET    ;  5% chance
	db  4, RATTATA    ;  4% chance
	db  4, RATTATA    ;  1% chance
	; nite
	db  3, RATTATA    ; 20% chance 50
	db  3, HOOTHOOT   ; 20% chance 50
	db  2, RATTATA    ; 15% chance
	db  2, HOOTHOOT   ; 10% chance
	db  4, RATTATA    ; 10% chance
	db  4, HOOTHOOT   ; 10% chance
	db  5, RATTATA    ;  5% chance
	db  4, HOOTHOOT   ;  5% chance
	db  5, HOOTHOOT   ;  4% chance
	db  5, HOOTHOOT   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_2_SOUTH ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  2, PIDGEY     ; 20% chance 40
	db  3, PIDGEY     ; 20% chance
	db  2, SENTRET    ; 15% chance 20
	db  2, RATTATA    ; 10% chance 10
	db  2, NIDORAN_F  ; 10% chance 15
	db  2, NIDORAN_M  ; 10% chance 15
	db  2, NIDORAN_F  ;  5% chance
	db  2, NIDORAN_M  ;  5% chance
	db  2, SENTRET    ;  4% chance
	db  2, SENTRET    ;  1% chance
	; day
	db  2, RATTATA    ; 20% chance 25
	db  2, PIDGEY     ; 20% chance 35
	db  3, PIDGEY     ; 15% chance
	db  2, NIDORAN_F  ; 10% chance 10
	db  2, NIDORAN_M  ; 10% chance 10
	db  2, SENTRET    ; 10% chance 20
	db  2, RATTATA    ;  5% chance
	db  2, SENTRET    ;  5% chance
	db  2, SENTRET    ;  4% chance
	db  2, SENTRET    ;  1% chance
	; nite
	db  2, RATTATA    ; 20% chance 30
	db  2, HOOTHOOT   ; 20% chance 40
	db  3, HOOTHOOT   ; 15% chance
	db  3, RATTATA    ; 10% chance
	db  2, NIDORAN_F  ; 10% chance 15
	db  2, NIDORAN_M  ; 10% chance 15
	db  2, NIDORAN_F  ;  5% chance
	db  2, NIDORAN_M  ;  5% chance
	db  2, HOOTHOOT   ;  4% chance
	db  2, HOOTHOOT   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_2_NORTH ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  3, PIDGEY     ; 20% chance 40
	db  4, PIDGEY     ; 20% chance
	db  3, SENTRET    ; 15% chance 20
	db  3, RATTATA    ; 10% chance 10
	db  3, NIDORAN_F  ; 10% chance 15
	db  3, NIDORAN_M  ; 10% chance 15
	db  4, NIDORAN_F  ;  5% chance
	db  4, NIDORAN_M  ;  5% chance
	db  4, SENTRET    ;  4% chance
	db  4, SENTRET    ;  1% chance
	; day
	db  3, RATTATA    ; 20% chance 25
	db  3, PIDGEY     ; 20% chance 35
	db  4, PIDGEY     ; 15% chance
	db  3, NIDORAN_F  ; 10% chance 10
	db  3, NIDORAN_M  ; 10% chance 10
	db  3, SENTRET    ; 10% chance 20
	db  4, RATTATA    ;  5% chance
	db  3, SENTRET    ;  5% chance
	db  4, SENTRET    ;  4% chance
	db  4, SENTRET    ;  1% chance
	; nite
	db  3, RATTATA    ; 20% chance 30
	db  3, HOOTHOOT   ; 20% chance 40
	db  4, HOOTHOOT   ; 15% chance
	db  4, RATTATA    ; 10% chance
	db  3, NIDORAN_F  ; 10% chance 15
	db  3, NIDORAN_M  ; 10% chance 15
	db  4, NIDORAN_F  ;  5% chance
	db  4, NIDORAN_M  ;  5% chance
	db  3, HOOTHOOT   ;  4% chance
	db  3, HOOTHOOT   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_3 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  8, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  8, SENTRET    ; 15% chance 20
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  4, JIGGLYPUFF ; 10% chance 15
	db  4, JIGGLYPUFF ;  5% chance
	db  9, MANKEY     ;  5% chance 5
	db  8, SENTRET    ;  4% chance
	db  8, SENTRET    ;  1% chance
	; day
	db  8, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  8, SENTRET    ; 15% chance 20
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  4, JIGGLYPUFF ; 10% chance 10
	db  9, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  8, SENTRET    ;  4% chance
	db  8, SENTRET    ;  1% chance
	; nite
	db  8, HOOTHOOT   ; 20% chance 40
	db  8, HOOTHOOT   ; 20% chance
	db  8, RATTATA    ; 15% chance 20
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  6, ZUBAT      ; 10% chance 10
	db  9, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  8, SENTRET    ;  4% chance
	db  8, SENTRET    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_4 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  8, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  8, SENTRET    ; 15% chance 20
	db  8, SPEAROW    ; 10% chance
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  9, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  8, SENTRET    ;  4% chance
	db  8, SENTRET    ;  1% chance
	; day
	db  8, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  8, SENTRET    ; 15% chance 20
	db  8, SPEAROW    ; 10% chance
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  9, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  8, SENTRET    ;  4% chance
	db  8, SENTRET    ;  1% chance
	; nite
	db  8, HOOTHOOT   ; 20% chance 40
	db  8, HOOTHOOT   ; 20% chance
	db  8, RATTATA    ; 15% chance 20
	db  7, ZUBAT      ; 10% chance
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  9, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  8, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_5 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, PIDGEY     ; 20% chance 25
	db  8, SNUBBULL   ; 20% chance 20
	db  8, ABRA       ; 15% chance 15
	db 14, SENTRET    ; 10% chance 15
	db 10, DITTO      ; 10% chance 10
	db  6, JIGGLYPUFF ; 10% chance 10
	db 18, PIDGEOTTO  ;  5% chance 5
	db 14, SENTRET    ;  5% chance
	db 14, PIDGEY     ;  4% chance
	db 14, PIDGEY     ;  1% chance
	; day
	db 14, PIDGEY     ; 20% chance 25
	db 14, SENTRET    ; 20% chance 25
	db  8, ABRA       ; 15% chance 15
	db  8, SNUBBULL   ; 10% chance 10
	db 10, DITTO      ; 10% chance 10
	db  6, JIGGLYPUFF ; 10% chance 10
	db 18, PIDGEOTTO  ;  5% chance 5
	db 14, SENTRET    ;  5% chance
	db 14, PIDGEY     ;  4% chance
	db 14, PIDGEY     ;  1% chance
	; nite
	db 14, HOOTHOOT   ; 20% chance 25
	db 14, RATTATA    ; 20% chance 25
	db  8, ABRA       ; 15% chance 15
	db 12, MEOWTH     ; 10% chance 25
	db 10, DITTO      ; 10% chance 10
	db 12, MEOWTH     ; 10% chance
	db 12, MEOWTH     ;  5% chance 5
	db 14, RATTATA    ;  5% chance
	db 14, HOOTHOOT   ;  4% chance
	db 14, HOOTHOOT   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_6 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, PIDGEY     ; 20% chance 45
	db 14, PIDGEY     ; 20% chance
	db 14, SENTRET    ; 15% chance 20
	db  8, ABRA       ; 10% chance 10
	db  6, JIGGLYPUFF ; 10% chance 10
	db 11, PSYDUCK    ; 10% chance 10
	db 14, SENTRET    ;  5% chance
	db 18, PIDGEOTTO  ;  5% chance 5
	db 14, PIDGEY     ;  4% chance
	db 14, PIDGEY     ;  1% chance
	; day
	db 14, PIDGEY     ; 20% chance 45
	db 14, PIDGEY     ; 20% chance
	db 14, SENTRET    ; 15% chance 20
	db  8, ABRA       ; 10% chance 10
	db  6, JIGGLYPUFF ; 10% chance 10
	db 11, PSYDUCK    ; 10% chance 10
	db 14, SENTRET    ;  5% chance
	db 18, PIDGEOTTO  ;  5% chance 5
	db 14, PIDGEY     ;  4% chance
	db 14, PIDGEY     ;  1% chance
	; nite
	db 14, RATTATA    ; 20% chance 25
	db 12, MEOWTH     ; 20% chance 25
	db 14, HOOTHOOT   ; 15% chance 30
	db  8, ABRA       ; 10% chance 10
	db 11, WOOPER     ; 10% chance 10
	db 14, HOOTHOOT   ; 10% chance
	db 14, HOOTHOOT   ;  5% chance
	db 12, MEOWTH     ;  5% chance
	db 14, RATTATA    ;  4% chance
	db 14, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_7 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 20, PIDGEY     ; 20% chance 30
	db 20, SENTRET    ; 20% chance 25
	db 15, NATU       ; 15% chance 15
	db 20, PIDGEY     ; 10% chance
	db 23, PIDGEOTTO  ; 10% chance 10
	db 18, VULPIX     ; 10% chance 20
	db 18, VULPIX     ;  5% chance
	db 20, SENTRET    ;  5% chance
	db 18, VULPIX     ;  4% chance
	db 18, VULPIX     ;  1% chance
	; day
	db 20, PIDGEY     ; 20% chance 30
	db 20, SENTRET    ; 20% chance 25
	db 15, NATU       ; 15% chance 15
	db 20, PIDGEY     ; 10% chance
	db 23, PIDGEOTTO  ; 10% chance 10
	db 18, VULPIX     ; 10% chance 20
	db 18, VULPIX     ;  5% chance
	db 20, SENTRET    ;  5% chance
	db 18, VULPIX     ;  4% chance
	db 18, VULPIX     ;  1% chance
	; nite
	db 20, MURKROW    ; 20% chance 20
	db 20, RATTATA    ; 20% chance 25
	db 17, MEOWTH     ; 15% chance 25
	db 17, MEOWTH     ; 10% chance
	db 18, HOUNDOUR   ; 10% chance 20
	db 18, HOUNDOUR   ; 10% chance
	db 20, RATTATA    ;  5% chance
	db 15, NATU       ;  5% chance 10
	db 15, NATU       ;  4% chance
	db 15, NATU       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_8 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 20, PIDGEY     ; 20% chance 30
	db 20, SENTRET    ; 20% chance 25
	db 15, NATU       ; 15% chance 15
	db 20, PIDGEY     ; 10% chance
	db 23, PIDGEOTTO  ; 10% chance 10
	db 18, GROWLITHE  ; 10% chance 20
	db 18, GROWLITHE  ;  5% chance
	db 20, SENTRET    ;  5% chance
	db 18, GROWLITHE  ;  4% chance
	db 18, GROWLITHE  ;  1% chance
	; day
	db 20, PIDGEY     ; 20% chance 30
	db 20, SENTRET    ; 20% chance 25
	db 15, NATU       ; 15% chance 15
	db 20, PIDGEY     ; 10% chance
	db 23, PIDGEOTTO  ; 10% chance 10
	db 18, GROWLITHE  ; 10% chance 20
	db 18, GROWLITHE  ;  5% chance
	db 20, SENTRET    ;  5% chance
	db 18, GROWLITHE  ;  4% chance
	db 18, GROWLITHE  ;  1% chance
	; nite
	db 20, MURKROW    ; 20% chance 20
	db 20, RATTATA    ; 20% chance 20
	db 17, MEOWTH     ; 15% chance 20
	db 18, HOUNDOUR   ; 10% chance 20
	db 18, HOUNDOUR   ; 10% chance
	db 18, GASTLY     ; 10% chance 10
	db 17, MEOWTH     ;  5% chance
	db 15, NATU       ;  5% chance 10
	db 15, NATU       ;  4% chance
	db 15, NATU       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_9 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, NIDORAN_M  ; 20% chance 30
	db 16, NIDORAN_F  ; 20% chance 30
	db 17, SENTRET    ; 15% chance 20
	db 16, NIDORAN_M  ; 10% chance
	db 16, NIDORAN_F  ; 10% chance
	db 16, SPEAROW    ; 10% chance 10
	db 18, NIDORINO   ;  5% chance 5
	db 18, NIDORINA   ;  5% chance 5
	db 17, SENTRET    ;  4% chance
	db 17, SENTRET    ;  1% chance
	; day
	db 16, NIDORAN_M  ; 20% chance 30
	db 16, NIDORAN_F  ; 20% chance 30
	db 17, SENTRET    ; 15% chance 20
	db 16, NIDORAN_M  ; 10% chance
	db 16, NIDORAN_F  ; 10% chance
	db 16, SPEAROW    ; 10% chance 10
	db 18, NIDORINO   ;  5% chance 5
	db 18, NIDORINA   ;  5% chance 5
	db 17, SENTRET    ;  4% chance
	db 17, SENTRET    ;  1% chance
	; nite
	db 17, RATTATA    ; 20% chance 20
	db 16, HOOTHOOT   ; 20% chance 30
	db 16, NIDORAN_M  ; 15% chance 15
	db 16, NIDORAN_F  ; 10% chance 15
	db 16, HOOTHOOT   ; 10% chance
	db 20, RATICATE   ; 10% chance 10
	db 18, NIDORINO   ;  5% chance 5
	db 18, NIDORINA   ;  5% chance 5
	db 16, NIDORAN_F  ;  4% chance
	db 16, NIDORAN_F  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, MAGNEMITE  ; 20% chance 30
	db 16, MAREEP     ; 20% chance 20
	db 16, SPEAROW    ; 15% chance 25
	db 16, NIDORAN_M  ; 10% chance 10
	db 16, NIDORAN_F  ; 10% chance 10
	db 16, MAGNEMITE  ; 10% chance
	db 16, SPEAROW    ;  5% chance
	db 16, SPEAROW    ;  5% chance
	db 17, VOLTORB    ;  4% chance 5
	db 17, VOLTORB    ;  1% chance
	; day
	db 16, MAGNEMITE  ; 20% chance 30
	db 16, MAREEP     ; 20% chance 20
	db 16, SPEAROW    ; 15% chance 25
	db 16, NIDORAN_M  ; 10% chance 10
	db 16, NIDORAN_F  ; 10% chance 10
	db 16, MAGNEMITE  ; 10% chance
	db 16, SPEAROW    ;  5% chance
	db 16, SPEAROW    ;  5% chance
	db 17, VOLTORB    ;  4% chance 5
	db 17, VOLTORB    ;  1% chance
	; nite
	db 16, MAGNEMITE  ; 20% chance 30
	db 16, MAREEP     ; 20% chance 20
	db 16, SPEAROW    ; 15% chance 25
	db 16, RATTATA    ; 10% chance 10
	db 14, ZUBAT      ; 10% chance 10
	db 16, MAGNEMITE  ; 10% chance
	db 16, SPEAROW    ;  5% chance
	db 16, SPEAROW    ;  5% chance
	db 17, VOLTORB    ;  4% chance 5
	db 17, VOLTORB    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_11 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, PIDGEY     ; 20% chance 30
	db 14, HOPPIP     ; 20% chance 20
	db 15, SANDSHREW  ; 15% chance 20
	db 16, PIDGEY     ; 10% chance
	db 18, PIDGEOTTO  ; 10% chance 10
	db 15, EKANS      ; 10% chance 20
	db 15, SANDSHREW  ;  5% chance
	db 15, EKANS      ;  5% chance
	db 15, EKANS      ;  4% chance
	db 15, EKANS      ;  1% chance
	; day
	db 16, PIDGEY     ; 20% chance 30
	db 14, HOPPIP     ; 20% chance 20
	db 15, SANDSHREW  ; 15% chance 20
	db 16, PIDGEY     ; 10% chance
	db 18, PIDGEOTTO  ; 10% chance 10
	db 15, EKANS      ; 10% chance 20
	db 15, SANDSHREW  ;  5% chance
	db 15, EKANS      ;  5% chance
	db 15, EKANS      ;  4% chance
	db 15, EKANS      ;  1% chance
	; nite
	db 15, RATTATA    ; 20% chance 30
	db 15, DROWZEE    ; 20% chance 25
	db 16, HOOTHOOT   ; 15% chance 25
	db 15, RATTATA    ; 10% chance
	db 15, SANDSHREW  ; 10% chance 10
	db 15, EKANS      ; 10% chance 10
	db 16, HOOTHOOT   ;  5% chance
	db 16, HOOTHOOT   ;  5% chance
	db 15, DROWZEE    ;  4% chance
	db 15, DROWZEE    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_12 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 25, BELLSPROUT ; 20% chance 35
	db 23, PIDGEY     ; 20% chance 20
	db 25, BELLSPROUT ; 15% chance
	db 27, PIDGEOTTO  ; 10% chance 10
	db 28, WEEPINBELL ; 10% chance 10
	db 22, HOPPIP     ; 10% chance 15
	db 22, HOPPIP     ;  5% chance
	db 25, BELLSPROUT ;  5% chance
	db 26, FARFETCH_D ;  4% chance 5
	db 26, FARFETCH_D ;  1% chance
	; day
	db 25, BELLSPROUT ; 20% chance 35
	db 23, PIDGEY     ; 20% chance 20
	db 25, BELLSPROUT ; 15% chance
	db 27, PIDGEOTTO  ; 10% chance 10
	db 28, WEEPINBELL ; 10% chance 10
	db 22, HOPPIP     ; 10% chance 15
	db 22, HOPPIP     ;  5% chance
	db 25, BELLSPROUT ;  5% chance
	db 26, FARFETCH_D ;  4% chance 5
	db 26, FARFETCH_D ;  1% chance
	; nite
	db 25, ODDISH     ; 20% chance 35
	db 23, HOOTHOOT   ; 20% chance 20
	db 25, ODDISH     ; 15% chance
	db 27, NOCTOWL    ; 10% chance 10
	db 28, GLOOM      ; 10% chance 10
	db 22, WOOPER     ; 10% chance 15
	db 22, WOOPER     ;  5% chance
	db 25, ODDISH     ;  5% chance
	db 26, FARFETCH_D ;  4% chance 5
	db 26, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_13 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 25, BELLSPROUT ; 20% chance 35
	db 23, PIDGEY     ; 20% chance 20
	db 25, BELLSPROUT ; 15% chance
	db 27, PIDGEOTTO  ; 10% chance 10
	db 28, WEEPINBELL ; 10% chance 10
	db 22, HOPPIP     ; 10% chance 15
	db 22, HOPPIP     ;  5% chance
	db 25, BELLSPROUT ;  5% chance
	db 26, FARFETCH_D ;  4% chance 5
	db 26, FARFETCH_D ;  1% chance
	; day
	db 25, BELLSPROUT ; 20% chance 35
	db 23, PIDGEY     ; 20% chance 20
	db 25, BELLSPROUT ; 15% chance
	db 27, PIDGEOTTO  ; 10% chance 10
	db 28, WEEPINBELL ; 10% chance 10
	db 22, HOPPIP     ; 10% chance 15
	db 22, HOPPIP     ;  5% chance
	db 25, BELLSPROUT ;  5% chance
	db 26, FARFETCH_D ;  4% chance 5
	db 26, FARFETCH_D ;  1% chance
	; nite
	db 25, ODDISH     ; 20% chance 35
	db 23, HOOTHOOT   ; 20% chance 20
	db 25, ODDISH     ; 15% chance
	db 27, NOCTOWL    ; 10% chance 10
	db 28, GLOOM      ; 10% chance 10
	db 22, WOOPER     ; 10% chance 15
	db 22, WOOPER     ;  5% chance
	db 25, ODDISH     ;  5% chance
	db 26, FARFETCH_D ;  4% chance 5
	db 26, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_14; | ROUTE_15 ; GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, BELLSPROUT ; 20% chance 40
	db 26, BELLSPROUT ; 20% chance
	db 24, PIDGEY     ; 15% chance 20
	db 28, PIDGEOTTO  ; 10% chance
	db 29, WEEPINBELL ; 10% chance 10
	db 24, HOPPIP     ; 10% chance 10
	db 24, PIDGEY     ;  5% chance
	db 28, SKIPLOOM   ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	; day
	db 26, BELLSPROUT ; 20% chance 40
	db 26, BELLSPROUT ; 20% chance
	db 24, PIDGEY     ; 15% chance 20
	db 28, PIDGEOTTO  ; 10% chance
	db 29, WEEPINBELL ; 10% chance 10
	db 24, HOPPIP     ; 10% chance 10
	db 24, PIDGEY     ;  5% chance
	db 28, SKIPLOOM   ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	; nite
	db 26, ODDISH     ; 20% chance 40
	db 26, ODDISH     ; 20% chance
	db 24, HOOTHOOT   ; 15% chance 20
	db 28, NOCTOWL    ; 10% chance
	db 29, GLOOM      ; 10% chance 10
	db 24, VENONAT    ; 10% chance 10
	db 24, HOOTHOOT   ;  5% chance
	db 28, VENOMOTH   ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_15 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, BELLSPROUT ; 20% chance 40
	db 26, BELLSPROUT ; 20% chance
	db 24, PIDGEY     ; 15% chance 20
	db 28, PIDGEOTTO  ; 10% chance
	db 29, WEEPINBELL ; 10% chance 10
	db 24, HOPPIP     ; 10% chance 10
	db 24, PIDGEY     ;  5% chance
	db 28, SKIPLOOM   ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	; day
	db 26, BELLSPROUT ; 20% chance 40
	db 26, BELLSPROUT ; 20% chance
	db 24, PIDGEY     ; 15% chance 20
	db 28, PIDGEOTTO  ; 10% chance
	db 29, WEEPINBELL ; 10% chance 10
	db 24, HOPPIP     ; 10% chance 10
	db 24, PIDGEY     ;  5% chance
	db 28, SKIPLOOM   ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	; nite
	db 26, ODDISH     ; 20% chance 40
	db 26, ODDISH     ; 20% chance
	db 24, HOOTHOOT   ; 15% chance 20
	db 28, NOCTOWL    ; 10% chance
	db 29, GLOOM      ; 10% chance 10
	db 24, VENONAT    ; 10% chance 10
	db 24, HOOTHOOT   ;  5% chance
	db 28, VENOMOTH   ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_16 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, DODUO      ; 20% chance 30
	db 22, SPEAROW    ; 20% chance 20
	db 23, SENTRET    ; 15% chance 25
	db 22, DODUO      ; 10% chance
	db 23, SENTRET    ; 10% chance
	db 26, FURRET     ; 10% chance 10
	db 20, GRIMER     ;  5% chance 10
	db 20, GRIMER     ;  5% chance
	db 25, FEAROW     ;  4% chance 5
	db 25, FEAROW     ;  1% chance
	; day
	db 22, DODUO      ; 20% chance 30
	db 22, SPEAROW    ; 20% chance 20
	db 23, SENTRET    ; 15% chance 25
	db 22, DODUO      ; 10% chance
	db 23, SENTRET    ; 10% chance
	db 26, FURRET     ; 10% chance 10
	db 20, GRIMER     ;  5% chance 10
	db 20, GRIMER     ;  5% chance
	db 25, FEAROW     ;  4% chance 5
	db 25, FEAROW     ;  1% chance
	; nite
	db 22, HOOTHOOT   ; 20% chance 30
	db 22, MURKROW    ; 20% chance 20
	db 23, RATTATA    ; 15% chance 25
	db 22, HOOTHOOT   ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 26, RATICATE   ; 10% chance 10
	db 20, GRIMER     ;  5% chance 10
	db 20, GRIMER     ;  5% chance
	db 25, NOCTOWL    ;  4% chance 5
	db 25, NOCTOWL    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_17 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 24, DODUO      ; 20% chance 30
	db 23, SENTRET    ; 20% chance 20
	db 21, PONYTA     ; 15% chance 20
	db 24, DODUO      ; 10% chance
	db 22, SPEAROW    ; 10% chance 10
	db 20, NATU       ; 10% chance 10
	db 25, FURRET     ;  5% chance 5
	db 21, PONYTA     ;  5% chance
	db 26, DODRIO     ;  4% chance 5
	db 26, DODRIO     ;  1% chance
	; day
	db 24, DODUO      ; 20% chance 30
	db 23, SENTRET    ; 20% chance 20
	db 21, PONYTA     ; 15% chance 20
	db 24, DODUO      ; 10% chance
	db 22, SPEAROW    ; 10% chance 10
	db 20, NATU       ; 10% chance 10
	db 25, FURRET     ;  5% chance 5
	db 21, PONYTA     ;  5% chance
	db 26, DODRIO     ;  4% chance 5
	db 26, DODRIO     ;  1% chance
	; nite
	db 24, HOOTHOOT   ; 20% chance 30
	db 23, RATTATA    ; 20% chance 20
	db 21, PONYTA     ; 15% chance 20
	db 24, HOOTHOOT   ; 10% chance
	db 22, MURKROW    ; 10% chance 10
	db 20, NATU       ; 10% chance 10
	db 25, RATICATE   ;  5% chance 5
	db 21, PONYTA     ;  5% chance
	db 26, NOCTOWL    ;  4% chance 5
	db 26, NOCTOWL    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_18 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, DODUO      ; 20% chance 30
	db 22, SPEAROW    ; 20% chance 20
	db 23, SENTRET    ; 15% chance 25
	db 22, DODUO      ; 10% chance
	db 23, SENTRET    ; 10% chance
	db 26, FURRET     ; 10% chance 10
	db 20, GRIMER     ;  5% chance 10
	db 20, GRIMER     ;  5% chance
	db 25, FEAROW     ;  4% chance 5
	db 25, FEAROW     ;  1% chance
	; day
	db 22, DODUO      ; 20% chance 30
	db 22, SPEAROW    ; 20% chance 20
	db 23, SENTRET    ; 15% chance 25
	db 22, DODUO      ; 10% chance
	db 23, SENTRET    ; 10% chance
	db 26, FURRET     ; 10% chance 10
	db 20, GRIMER     ;  5% chance 10
	db 20, GRIMER     ;  5% chance
	db 25, FEAROW     ;  4% chance 5
	db 25, FEAROW     ;  1% chance
	; nite
	db 22, HOOTHOOT   ; 20% chance 30
	db 22, MURKROW    ; 20% chance 20
	db 23, RATTATA    ; 15% chance 25
	db 22, HOOTHOOT   ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 26, RATICATE   ; 10% chance 10
	db 20, GRIMER     ;  5% chance 10
	db 20, GRIMER     ;  5% chance
	db 25, NOCTOWL    ;  4% chance 5
	db 25, NOCTOWL    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_21 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, PIDGEY     ; 20% chance 41
	db 14, SENTRET    ; 20% chance 25
	db 16, PIDGEY     ; 15% chance
	db 28, PIDGEOTTO  ; 10% chance 10
	db 25, TANGELA    ; 10% chance 20
	db 25, TANGELA    ; 10% chance
	db 14, SENTRET    ;  5% chance
	db 16, PIDGEY     ;  5% chance
	db 26, MR__MIME   ;  4% chance 4
	db 16, PIDGEY     ;  1% chance
	; day
	db 16, PIDGEY     ; 20% chance 41
	db 14, SENTRET    ; 20% chance 25
	db 16, PIDGEY     ; 15% chance
	db 28, PIDGEOTTO  ; 10% chance 10
	db 25, TANGELA    ; 10% chance 20
	db 25, TANGELA    ; 10% chance
	db 14, SENTRET    ;  5% chance
	db 16, PIDGEY     ;  5% chance
	db 26, MR__MIME   ;  4% chance 4
	db 16, PIDGEY     ;  1% chance
	; nite
	db 16, HOOTHOOT   ; 20% chance 41
	db 14, RATTATA    ; 20% chance 25
	db 16, HOOTHOOT   ; 15% chance
	db 28, NOCTOWL    ; 10% chance 10
	db 25, TANGELA    ; 10% chance 10
	db 15, MARILL     ; 10% chance 10
	db 14, RATTATA    ;  5% chance
	db 16, HOOTHOOT   ;  5% chance
	db 26, MR__MIME   ;  4% chance 4
	db 16, HOOTHOOT   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_22 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  2, NIDORAN_M  ; 20% chance 30
	db  2, NIDORAN_F  ; 20% chance 30
	db  2, MANKEY     ; 15% chance 20
	db  2, NIDORAN_M  ; 10% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, SENTRET    ; 10% chance 10
	db  2, MANKEY     ;  5% chance
	db  2, SPEAROW    ;  5% chance 10
	db  2, SPEAROW    ;  4% chance
	db  2, SPEAROW    ;  1% chance
	; day
	db  2, NIDORAN_M  ; 20% chance 30
	db  2, NIDORAN_F  ; 20% chance 30
	db  2, MANKEY     ; 15% chance 20
	db  2, NIDORAN_M  ; 10% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, SENTRET    ; 10% chance 10
	db  2, MANKEY     ;  5% chance
	db  2, SPEAROW    ;  5% chance 10
	db  2, SPEAROW    ;  4% chance
	db  2, SPEAROW    ;  1% chance
	; nite
	db  2, NIDORAN_M  ; 20% chance 20
	db  2, NIDORAN_F  ; 20% chance 20
	db  2, MANKEY     ; 15% chance 15
	db  2, RATTATA    ; 10% chance 20
	db  2, RATTATA    ; 10% chance
	db  2, HOOTHOOT   ; 10% chance 25
	db  2, HOOTHOOT   ;  5% chance
	db  2, HOOTHOOT   ;  5% chance
	db  2, HOOTHOOT   ;  4% chance
	db  2, HOOTHOOT   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_23 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, NIDORINO   ; 20% chance 35
	db 36, NIDORINA   ; 20% chance 35
	db 36, NIDORINO   ; 15% chance
	db 36, NIDORINA   ; 10% chance
	db 32, SKARMORY   ; 10% chance 10
	db 36, PRIMEAPE   ; 10% chance 10
	db 36, NIDORINA   ;  5% chance
	db 34, SANDSLASH  ;  5% chance 5
	db 34, ARBOK      ;  4% chance 5
	db 34, ARBOK      ;  1% chance
	; day
	db 36, NIDORINO   ; 20% chance 35
	db 36, NIDORINA   ; 20% chance 35
	db 36, NIDORINO   ; 15% chance
	db 36, NIDORINA   ; 10% chance
	db 32, SKARMORY   ; 10% chance 10
	db 36, PRIMEAPE   ; 10% chance 10
	db 36, NIDORINA   ;  5% chance
	db 34, SANDSLASH  ;  5% chance 5
	db 34, ARBOK      ;  4% chance 5
	db 34, ARBOK      ;  1% chance
	; nite
	db 36, NIDORINO   ; 20% chance 35
	db 36, NIDORINA   ; 20% chance 35
	db 36, NIDORINO   ; 15% chance
	db 36, NIDORINA   ; 10% chance
	db 32, NOCTOWL    ; 10% chance 10
	db 36, PRIMEAPE   ; 10% chance 10
	db 36, NIDORINA   ;  5% chance
	db 34, SANDSLASH  ;  5% chance 5
	db 34, ARBOK      ;  4% chance 5
	db 34, ARBOK      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_24 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, PIDGEY     ; 20% chance 40
	db 13, PIDGEY     ; 20% chance
	db 10, BELLSPROUT ; 15% chance 30
	db 10, BELLSPROUT ; 10% chance
	db 12, SUNKERN    ; 10% chance 19
	db  8, ABRA       ; 10% chance 10
	db 10, BELLSPROUT ;  5% chance
	db 12, SUNKERN    ;  5% chance
	db 12, SUNKERN    ;  4% chance
	db 18, PIDGEOTTO  ;  1% chance 1
	; day
	db 13, PIDGEY     ; 20% chance 40
	db 13, PIDGEY     ; 20% chance
	db 10, BELLSPROUT ; 15% chance 30
	db 10, BELLSPROUT ; 10% chance
	db 12, SUNKERN    ; 10% chance 19
	db  8, ABRA       ; 10% chance 10
	db 10, BELLSPROUT ;  5% chance
	db 12, SUNKERN    ;  5% chance
	db 12, SUNKERN    ;  4% chance
	db 18, PIDGEOTTO  ;  1% chance 1
	; nite
	db 13, HOOTHOOT   ; 20% chance 40
	db 13, HOOTHOOT   ; 20% chance
	db 10, ODDISH     ; 15% chance 30
	db 10, ODDISH     ; 10% chance
	db 12, VENONAT    ; 10% chance 19
	db  8, ABRA       ; 10% chance 10
	db 10, ODDISH     ;  5% chance
	db 12, VENONAT    ;  5% chance
	db 12, VENONAT    ;  4% chance
	db 18, NOCTOWL    ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons ROUTE_25 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, PIDGEY     ; 20% chance 40
	db 13, PIDGEY     ; 20% chance
	db 10, BELLSPROUT ; 15% chance 30
	db 10, BELLSPROUT ; 10% chance
	db 12, SUNKERN    ; 10% chance 19
	db  8, ABRA       ; 10% chance 10
	db 10, BELLSPROUT ;  5% chance
	db 12, SUNKERN    ;  5% chance
	db 12, SUNKERN    ;  4% chance
	db 18, PIDGEOTTO  ;  1% chance 1
	; day
	db 13, PIDGEY     ; 20% chance 40
	db 13, PIDGEY     ; 20% chance
	db 10, BELLSPROUT ; 15% chance 30
	db 10, BELLSPROUT ; 10% chance
	db 12, SUNKERN    ; 10% chance 19
	db  8, ABRA       ; 10% chance 10
	db 10, BELLSPROUT ;  5% chance
	db 12, SUNKERN    ;  5% chance
	db 12, SUNKERN    ;  4% chance
	db 18, PIDGEOTTO  ;  1% chance 1
	; nite
	db 13, HOOTHOOT   ; 20% chance 40
	db 13, HOOTHOOT   ; 20% chance
	db 10, ODDISH     ; 15% chance 30
	db 10, ODDISH     ; 10% chance
	db 12, VENONAT    ; 10% chance 19
	db  8, ABRA       ; 10% chance 10
	db 10, ODDISH     ;  5% chance
	db 12, VENONAT    ;  5% chance
	db 12, VENONAT    ;  4% chance
	db 18, NOCTOWL    ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons ROUTE_26 ;GEN2 ;early type coverage
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  3, PIDGEY     ; 20% chance 40
	db  3, PIDGEY     ; 20% chance
	db  3, SENTRET    ; 15% chance 30
	db  2, BELLSPROUT ; 10% chance 10
	db  2, VULPIX     ; 10% chance 10
	db  2, POLIWAG    ; 10% chance 10
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  4% chance
	db  3, SENTRET    ;  1% chance
	; day
	db  3, PIDGEY     ; 20% chance 40
	db  3, PIDGEY     ; 20% chance
	db  3, SENTRET    ; 15% chance 30
	db  2, BELLSPROUT ; 10% chance 10
	db  2, VULPIX     ; 10% chance 10
	db  2, POLIWAG    ; 10% chance 10
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  4% chance
	db  3, SENTRET    ;  1% chance
	; nite
	db  3, HOOTHOOT   ; 20% chance 40
	db  3, HOOTHOOT   ; 20% chance
	db  3, RATTATA    ; 15% chance 30
	db  2, ODDISH     ; 10% chance 10
	db  2, VULPIX     ; 10% chance 10
	db  2, WOOPER     ; 10% chance 10
	db  3, RATTATA    ;  5% chance
	db  3, RATTATA    ;  5% chance
	db  3, RATTATA    ;  4% chance
	db  3, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_27_EAST ;GEN2 ;early type coverage
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  3, PIDGEY     ; 20% chance 40
	db  3, PIDGEY     ; 20% chance
	db  3, SENTRET    ; 15% chance 30
	db  2, BELLSPROUT ; 10% chance 10
	db  2, VULPIX     ; 10% chance 10
	db  2, POLIWAG    ; 10% chance 10
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  4% chance
	db  3, SENTRET    ;  1% chance
	; day
	db  3, PIDGEY     ; 20% chance 40
	db  3, PIDGEY     ; 20% chance
	db  3, SENTRET    ; 15% chance 30
	db  2, BELLSPROUT ; 10% chance 10
	db  2, VULPIX     ; 10% chance 10
	db  2, POLIWAG    ; 10% chance 10
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  5% chance
	db  3, SENTRET    ;  4% chance
	db  3, SENTRET    ;  1% chance
	; nite
	db  3, HOOTHOOT   ; 20% chance 40
	db  3, HOOTHOOT   ; 20% chance
	db  3, RATTATA    ; 15% chance 30
	db  2, ODDISH     ; 10% chance 10
	db  2, VULPIX     ; 10% chance 10
	db  2, WOOPER     ; 10% chance 10
	db  3, RATTATA    ;  5% chance
	db  3, RATTATA    ;  5% chance
	db  3, RATTATA    ;  4% chance
	db  3, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_28 ;GEN2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 39, TANGELA    ; 20% chance 25
	db 40, PONYTA     ; 20% chance 25
	db 40, DODUO      ; 15% chance 15
	db 40, URSARING   ; 10% chance 10
	db 40, DONPHAN    ; 10% chance 10
	db 42, RAPIDASH   ; 10% chance 10
	db 39, TANGELA    ;  5% chance
	db 40, PONYTA     ;  5% chance
	db 43, DODRIO     ;  4% chance 5
	db 43, DODRIO     ;  1% chance
	; day
	db 39, TANGELA    ; 20% chance 25
	db 40, PONYTA     ; 20% chance 25
	db 40, DODUO      ; 15% chance 15
	db 40, URSARING   ; 10% chance 10
	db 40, DONPHAN    ; 10% chance 10
	db 42, RAPIDASH   ; 10% chance 10
	db 39, TANGELA    ;  5% chance
	db 40, PONYTA     ;  5% chance
	db 43, DODRIO     ;  4% chance 5
	db 43, DODRIO     ;  1% chance
	; nite
	db 39, TANGELA    ; 20% chance 25
	db 36, ZUBAT      ; 20% chance 20
	db 40, POLIWHIRL  ; 15% chance 15
	db 40, URSARING   ; 10% chance 10
	db 40, DONPHAN    ; 10% chance 10
	db 40, PONYTA     ; 10% chance 10
	db 39, TANGELA    ;  5% chance
	db 40, GOLBAT     ;  5% chance 10
	db 40, GOLBAT     ;  4% chance
	db 40, GOLBAT     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VIRIDIAN_FOREST ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  3, CATERPIE   ; 20% chance 50
	db  3, CATERPIE   ; 20% chance
	db  4, METAPOD    ; 15% chance 15
	db  3, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance 10
	db  3, LEDYBA     ; 10% chance 20
	db  3, LEDYBA     ;  5% chance
	db  3, LEDYBA     ;  5% chance
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	; day
	db  3, CATERPIE   ; 20% chance 50
	db  3, CATERPIE   ; 20% chance
	db  4, METAPOD    ; 15% chance 15
	db  3, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance 10
	db  3, LEDYBA     ; 10% chance 20
	db  3, LEDYBA     ;  5% chance
	db  3, LEDYBA     ;  5% chance
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	; nite
	db  3, WEEDLE     ; 20% chance 50
	db  3, WEEDLE     ; 20% chance
	db  4, KAKUNA     ; 15% chance 15
	db  3, WEEDLE     ; 10% chance
	db  3, CATERPIE   ; 10% chance 10
	db  3, SPINARAK   ; 10% chance 20
	db  3, SPINARAK   ;  5% chance
	db  3, SPINARAK   ;  5% chance
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  6, ZUBAT      ; 20% chance 79
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance 15
	db  6, GEODUDE    ;  5% chance
	db  4, PARAS      ;  5% chance 5
	db  7, ZUBAT      ;  4% chance
	db  8, CLEFAIRY   ;  1% chance 1
	; day
	db  6, ZUBAT      ; 20% chance 79
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance 15
	db  6, GEODUDE    ;  5% chance
	db  4, PARAS      ;  5% chance 5
	db  7, ZUBAT      ;  4% chance
	db  8, CLEFAIRY   ;  1% chance 1
	; nite
	db  6, ZUBAT      ; 20% chance 79
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance 15
	db  6, GEODUDE    ;  5% chance
	db  4, PARAS      ;  5% chance 5
	db  8, CLEFAIRY   ;  4% chance 4
	db  7, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON_B2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  7, ZUBAT      ; 20% chance 66
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance 20
	db  7, PARAS      ; 10% chance 10
	db  6, GEODUDE    ;  5% chance
	db  6, GEODUDE    ;  5% chance
	db  8, CLEFAIRY   ;  4% chance 4
	db  7, DUNSPARCE  ;  1% chance 1
	; day
	db  7, ZUBAT      ; 20% chance 66
	db  7, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  6, GEODUDE    ; 10% chance 20
	db  7, PARAS      ; 10% chance 10
	db  6, GEODUDE    ;  5% chance
	db  6, GEODUDE    ;  5% chance
	db  8, CLEFAIRY   ;  4% chance 4
	db  7, DUNSPARCE  ;  1% chance 1
	; nite
	db  7, ZUBAT      ; 20% chance 64
	db  7, ZUBAT      ; 20% chance
	db  6, GEODUDE    ; 15% chance 20
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, PARAS      ; 10% chance 10
	db  8, CLEFAIRY   ;  5% chance 5
	db  6, GEODUDE    ;  5% chance
	db  7, ZUBAT      ;  4% chance
	db  8, DUNSPARCE  ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons DIGLETTS_CAVE ;GEN2
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	db 15, DIGLETT    ; 20% chance 95
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 15% chance
	db 16, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 18, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 25, DUGTRIO    ;  4% chance 5
	db 25, DUGTRIO    ;  1% chance
	; day
	db 15, DIGLETT    ; 20% chance 95
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 15% chance
	db 16, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 18, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 25, DUGTRIO    ;  4% chance 5
	db 25, DUGTRIO    ;  1% chance
	; nite
	db 15, DIGLETT    ; 20% chance 95
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 15% chance
	db 16, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 18, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 25, DUGTRIO    ;  4% chance 5
	db 25, DUGTRIO    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 15, ZUBAT      ; 20% chance 40
	db 16, GEODUDE    ; 20% chance 30
	db 16, ZUBAT      ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 17, MACHOP     ; 10% chance 20
	db 17, MACHOP     ; 10% chance
	db 14, ONIX       ;  5% chance 5
	db 15, ZUBAT      ;  5% chance
	db 15, PHANPY     ;  4% chance 5
	db 15, PHANPY     ;  1% chance
	; day
	db 15, ZUBAT      ; 20% chance 40
	db 16, GEODUDE    ; 20% chance 30
	db 16, ZUBAT      ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 17, MACHOP     ; 10% chance 20
	db 17, MACHOP     ; 10% chance
	db 14, ONIX       ;  5% chance 5
	db 15, ZUBAT      ;  5% chance
	db 15, PHANPY     ;  4% chance 5
	db 15, PHANPY     ;  1% chance
	; nite
	db 15, ZUBAT      ; 20% chance 40
	db 16, GEODUDE    ; 20% chance 30
	db 16, ZUBAT      ; 15% chance
	db 16, GEODUDE    ; 10% chance
	db 17, MACHOP     ; 10% chance 20
	db 17, MACHOP     ; 10% chance
	db 14, ONIX       ;  5% chance 5
	db 15, ZUBAT      ;  5% chance
	db 15, PHANPY     ;  4% chance 5
	db 15, PHANPY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 16, ZUBAT      ; 20% chance 35
	db 16, GEODUDE    ; 20% chance 25
	db 17, ZUBAT      ; 15% chance
	db 15, ONIX       ; 10% chance 10
	db 15, PHANPY     ; 10% chance 10
	db 17, MACHOP     ; 10% chance 15
	db 17, MACHOP     ;  5% chance
	db 17, GEODUDE    ;  5% chance
	db 12, CUBONE     ;  4% chance 5
	db 12, CUBONE     ;  1% chance
	; day
	db 16, ZUBAT      ; 20% chance 35
	db 16, GEODUDE    ; 20% chance 25
	db 17, ZUBAT      ; 15% chance
	db 15, ONIX       ; 10% chance 10
	db 15, PHANPY     ; 10% chance 10
	db 17, MACHOP     ; 10% chance 15
	db 17, MACHOP     ;  5% chance
	db 17, GEODUDE    ;  5% chance
	db 12, CUBONE     ;  4% chance 5
	db 12, CUBONE     ;  1% chance
	; nite
	db 16, ZUBAT      ; 20% chance 35
	db 16, GEODUDE    ; 20% chance 25
	db 17, ZUBAT      ; 15% chance
	db 15, ONIX       ; 10% chance 10
	db 15, PHANPY     ; 10% chance 10
	db 17, MACHOP     ; 10% chance 15
	db 17, MACHOP     ;  5% chance
	db 17, GEODUDE    ;  5% chance
	db 12, CUBONE     ;  4% chance 5
	db 12, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, GASTLY     ; 20% chance 50
	db 18, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 19, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 19, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; day
	db 18, GASTLY     ; 20% chance 50
	db 18, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 19, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 19, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance 50
	db 18, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 19, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 19, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_4F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 19, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 19, MISDREAVUS ; 10% chance
	db 19, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; day
	db 18, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 19, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 19, MISDREAVUS ; 10% chance
	db 19, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 19, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 19, MISDREAVUS ; 10% chance
	db 19, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_5F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 20, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 19, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; day
	db 18, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 20, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 19, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 18, MISDREAVUS ; 15% chance 30
	db 20, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 19, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_6F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 20, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 19, MISDREAVUS ; 15% chance 30
	db 18, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; day
	db 20, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 19, MISDREAVUS ; 15% chance 30
	db 18, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	; nite
	db 20, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 19, MISDREAVUS ; 15% chance 30
	db 18, GASTLY     ; 10% chance
	db 19, MURKROW    ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 20, CUBONE     ;  4% chance 5
	db 20, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_7F ;GEN2
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 20, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 19, MISDREAVUS ; 15% chance 30
	db 18, GASTLY     ; 10% chance
	db 20, CUBONE     ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 19, MURKROW    ;  4% chance 5
	db 19, MURKROW    ;  1% chance
	; day
	db 20, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 19, MISDREAVUS ; 15% chance 30
	db 18, GASTLY     ; 10% chance
	db 20, CUBONE     ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 19, MURKROW    ;  4% chance 5
	db 19, MURKROW    ;  1% chance
	; nite
	db 20, GASTLY     ; 20% chance 50
	db 19, GASTLY     ; 20% chance
	db 19, MISDREAVUS ; 15% chance 30
	db 18, GASTLY     ; 10% chance
	db 20, CUBONE     ; 10% chance 10
	db 18, MISDREAVUS ; 10% chance
	db 20, MISDREAVUS ;  5% chance
	db 25, HAUNTER    ;  5% chance 5
	db 19, MURKROW    ;  4% chance 5
	db 19, MURKROW    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 19, ZUBAT      ; 20% chance 35
	db 20, KRABBY     ; 20% chance 20
	db 20, ZUBAT      ; 15% chance
	db 20, PSYDUCK    ; 10% chance 10
	db 20, SHELLDER   ; 10% chance 10
	db 20, STARYU     ; 10% chance 10
	db 30, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  5% chance 5
	db 26, GOLDUCK    ;  4% chance 5
	db 26, GOLDUCK    ;  1% chance
	; day
	db 19, ZUBAT      ; 20% chance 35
	db 20, KRABBY     ; 20% chance 20
	db 20, ZUBAT      ; 15% chance
	db 20, PSYDUCK    ; 10% chance 10
	db 20, SHELLDER   ; 10% chance 10
	db 20, STARYU     ; 10% chance 10
	db 30, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  5% chance 5
	db 26, GOLDUCK    ;  4% chance 5
	db 26, GOLDUCK    ;  1% chance
	; nite
	db 19, ZUBAT      ; 20% chance 35
	db 20, KRABBY     ; 20% chance 20
	db 20, ZUBAT      ; 15% chance
	db 20, PSYDUCK    ; 10% chance 10
	db 20, SHELLDER   ; 10% chance 10
	db 20, STARYU     ; 10% chance 10
	db 30, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  5% chance 5
	db 26, GOLDUCK    ;  4% chance 5
	db 26, GOLDUCK    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 21, KRABBY     ; 20% chance 30
	db 21, SEEL       ; 20% chance 30
	db 21, SHELLDER   ; 15% chance 15
	db 21, KRABBY     ; 10% chance
	db 21, SEEL       ; 10% chance
	db 20, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; day
	db 21, KRABBY     ; 20% chance 30
	db 21, SEEL       ; 20% chance 30
	db 21, SHELLDER   ; 15% chance 15
	db 21, KRABBY     ; 10% chance
	db 21, SEEL       ; 10% chance
	db 20, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; nite
	db 21, KRABBY     ; 20% chance 30
	db 21, SEEL       ; 20% chance 30
	db 21, SHELLDER   ; 15% chance 15
	db 21, KRABBY     ; 10% chance
	db 21, SEEL       ; 10% chance
	db 20, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B2F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 21, KRABBY     ; 20% chance 30
	db 22, SEEL       ; 20% chance 30
	db 22, SHELLDER   ; 15% chance 15
	db 22, KRABBY     ; 10% chance
	db 21, SEEL       ; 10% chance
	db 21, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; day
	db 21, KRABBY     ; 20% chance 30
	db 22, SEEL       ; 20% chance 30
	db 22, SHELLDER   ; 15% chance 15
	db 22, KRABBY     ; 10% chance
	db 21, SEEL       ; 10% chance
	db 21, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; nite
	db 21, KRABBY     ; 20% chance 30
	db 22, SEEL       ; 20% chance 30
	db 22, SHELLDER   ; 15% chance 15
	db 22, KRABBY     ; 10% chance
	db 21, SEEL       ; 10% chance
	db 21, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B3F ;GEN1
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 22, KRABBY     ; 20% chance 30
	db 23, SEEL       ; 20% chance 30
	db 23, SHELLDER   ; 15% chance 15
	db 21, KRABBY     ; 10% chance
	db 22, SEEL       ; 10% chance
	db 22, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; day
	db 22, KRABBY     ; 20% chance 30
	db 23, SEEL       ; 20% chance 30
	db 23, SHELLDER   ; 15% chance 15
	db 21, KRABBY     ; 10% chance
	db 22, SEEL       ; 10% chance
	db 22, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; nite
	db 22, KRABBY     ; 20% chance 30
	db 23, SEEL       ; 20% chance 30
	db 23, SHELLDER   ; 15% chance 15
	db 21, KRABBY     ; 10% chance
	db 22, SEEL       ; 10% chance
	db 22, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B4F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 22, KRABBY     ; 20% chance 21
	db 24, SEEL       ; 20% chance 30
	db 24, SHELLDER   ; 15% chance 15
	db 25, SNEASEL    ; 10% chance 10
	db 23, SEEL       ; 10% chance
	db 23, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, JYNX       ;  4% chance 4
	db 22, KRABBY     ;  1% chance
	; day
	db 22, KRABBY     ; 20% chance 21
	db 24, SEEL       ; 20% chance 30
	db 24, SHELLDER   ; 15% chance 15
	db 25, SNEASEL    ; 10% chance 10
	db 23, SEEL       ; 10% chance
	db 23, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, JYNX       ;  4% chance 4
	db 22, KRABBY     ;  1% chance
	; nite
	db 22, KRABBY     ; 20% chance 21
	db 24, SEEL       ; 20% chance 30
	db 24, SHELLDER   ; 15% chance 15
	db 25, SNEASEL    ; 10% chance 10
	db 23, SEEL       ; 10% chance
	db 23, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, JYNX       ;  4% chance 4
	db 22, KRABBY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POWER_PLANT ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 23, MAGNEMITE  ; 20% chance 30
	db 23, VOLTORB    ; 20% chance 20
	db 20, PIKACHU    ; 15% chance 25
	db 23, MAGNEMITE  ; 10% chance
	db 24, GRIMER     ; 10% chance 10
	db 30, MAGNETON   ; 10% chance 10
	db 20, PIKACHU    ;  5% chance
	db 20, PIKACHU    ;  5% chance
	db 30, ELECTABUZZ ;  4% chance 5
	db 30, ELECTABUZZ ;  1% chance
	; day
	db 23, MAGNEMITE  ; 20% chance 30
	db 23, VOLTORB    ; 20% chance 20
	db 20, PIKACHU    ; 15% chance 25
	db 23, MAGNEMITE  ; 10% chance
	db 24, GRIMER     ; 10% chance 10
	db 30, MAGNETON   ; 10% chance 10
	db 20, PIKACHU    ;  5% chance
	db 20, PIKACHU    ;  5% chance
	db 30, ELECTABUZZ ;  4% chance 5
	db 30, ELECTABUZZ ;  1% chance
	; nite
	db 23, MAGNEMITE  ; 20% chance 30
	db 23, VOLTORB    ; 20% chance 20
	db 20, PIKACHU    ; 15% chance 25
	db 23, MAGNEMITE  ; 10% chance
	db 24, GRIMER     ; 10% chance 10
	db 30, MAGNETON   ; 10% chance 10
	db 20, PIKACHU    ;  5% chance
	db 20, PIKACHU    ;  5% chance
	db 30, ELECTABUZZ ;  4% chance 5
	db 30, ELECTABUZZ ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 35
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; day
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 35
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 35
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 35
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; day
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 35
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 35
	db 28, KOFFING    ; 15% chance
	db 28, GRIMER     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 25
	db 28, KOFFING    ; 15% chance
	db 33, MAGMAR     ; 10% chance 10
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; day
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 25
	db 28, KOFFING    ; 15% chance
	db 33, MAGMAR     ; 10% chance 10
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance 35
	db 28, GRIMER     ; 20% chance 25
	db 28, KOFFING    ; 15% chance
	db 33, MAGMAR     ; 10% chance 10
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, KOFFING    ; 20% chance 20
	db 28, GRIMER     ; 20% chance 36
	db 28, GRIMER     ; 15% chance
	db 20, DITTO      ; 10% chance 10
	db 27, HOUNDOUR   ; 10% chance 10
	db 26, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 34, MAGMAR     ;  4% chance 5
	db 28, GRIMER     ;  1% chance
	; day
	db 28, KOFFING    ; 20% chance 20
	db 28, GRIMER     ; 20% chance 36
	db 28, GRIMER     ; 15% chance
	db 20, DITTO      ; 10% chance 10
	db 27, HOUNDOUR   ; 10% chance 10
	db 26, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 34, MAGMAR     ;  4% chance 5
	db 28, GRIMER     ;  1% chance
	; nite
	db 28, KOFFING    ; 20% chance 20
	db 28, GRIMER     ; 20% chance 36
	db 28, GRIMER     ; 15% chance
	db 20, DITTO      ; 10% chance 10
	db 27, HOUNDOUR   ; 10% chance 10
	db 26, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 34, MAGMAR     ;  4% chance 5
	db 28, GRIMER     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	; day
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	; nite
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	; day
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	; nite
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD_3F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	; day
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	; nite
	db 42, ONIX       ; 20% chance 21
	db 34, MACHOP     ; 20% chance 20
	db 34, GEODUDE    ; 15% chance 15
	db 36, ZUBAT      ; 10% chance 10
	db 40, MACHOKE    ; 10% chance 10
	db 38, GRAVELER   ; 10% chance 10
	db 42, GOLBAT     ;  5% chance 10
	db 42, GOLBAT     ;  5% chance
	db 24, LARVITAR   ;  4% chance 4
	db 42, ONIX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 50, GOLBAT     ; 20% chance 35
	db 50, MACHOKE    ; 20% chance 20
	db 48, GOLBAT     ; 15% chance
	db 50, DONPHAN    ; 10% chance 10
	db 50, URSARING   ; 10% chance 10
	db 52, PARASECT   ; 10% chance 10
	db 52, VENOMOTH   ;  5% chance 10
	db 52, VENOMOTH   ;  5% chance 10
	db 48, WOBBUFFET  ;  4% chance
	db 48, WOBBUFFET  ;  1% chance
	; day
	db 50, GOLBAT     ; 20% chance 35
	db 50, MACHOKE    ; 20% chance 20
	db 48, GOLBAT     ; 15% chance
	db 50, DONPHAN    ; 10% chance 10
	db 50, URSARING   ; 10% chance 10
	db 52, PARASECT   ; 10% chance 10
	db 52, VENOMOTH   ;  5% chance 10
	db 52, VENOMOTH   ;  5% chance 10
	db 48, WOBBUFFET  ;  4% chance
	db 48, WOBBUFFET  ;  1% chance
	; nite
	db 50, GOLBAT     ; 20% chance 35
	db 50, MACHOKE    ; 20% chance 20
	db 48, GOLBAT     ; 15% chance
	db 50, DONPHAN    ; 10% chance 10
	db 50, URSARING   ; 10% chance 10
	db 52, PARASECT   ; 10% chance 10
	db 52, VENOMOTH   ;  5% chance 10
	db 52, VENOMOTH   ;  5% chance 10
	db 48, WOBBUFFET  ;  4% chance
	db 48, WOBBUFFET  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_2F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 52, GOLBAT     ; 20% chance 30
	db 48, KADABRA    ; 20% chance 20
	db 50, HYPNO      ; 15% chance 20
	db 52, GOLBAT     ; 10% chance
	db 52, ELECTRODE  ; 10% chance 10
	db 48, MAGNETON   ; 10% chance 10
	db 50, HYPNO      ;  5% chance
	db 54, CHANSEY    ;  5% chance 5
	db 42, DITTO      ;  4% chance 5
	db 42, DITTO      ;  1% chance
	; day
	db 52, GOLBAT     ; 20% chance 30
	db 48, KADABRA    ; 20% chance 20
	db 50, HYPNO      ; 15% chance 20
	db 52, GOLBAT     ; 10% chance
	db 52, ELECTRODE  ; 10% chance 10
	db 48, MAGNETON   ; 10% chance 10
	db 50, HYPNO      ;  5% chance
	db 54, CHANSEY    ;  5% chance 5
	db 42, DITTO      ;  4% chance 5
	db 42, DITTO      ;  1% chance
	; nite
	db 52, GOLBAT     ; 20% chance 30
	db 48, KADABRA    ; 20% chance 20
	db 50, HYPNO      ; 15% chance 20
	db 52, GOLBAT     ; 10% chance
	db 52, ELECTRODE  ; 10% chance 10
	db 48, MAGNETON   ; 10% chance 10
	db 50, HYPNO      ;  5% chance
	db 54, CHANSEY    ;  5% chance 5
	db 42, DITTO      ;  4% chance 5
	db 42, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_B1F ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 54, GOLBAT     ; 20% chance 30
	db 48, GRAVELER   ; 20% chance 20
	db 52, RHYHORN    ; 15% chance 20
	db 54, GOLBAT     ; 10% chance
	db 62, RHYDON     ; 10% chance 10
	db 52, DITTO      ; 10% chance 10
	db 52, RHYHORN    ;  5% chance
	db 56, CHANSEY    ;  5% chance
	db 50, LICKITUNG  ;  4% chance 5
	db 50, LICKITUNG  ;  1% chance
	; day
	db 54, GOLBAT     ; 20% chance 30
	db 48, GRAVELER   ; 20% chance 20
	db 52, RHYHORN    ; 15% chance 20
	db 54, GOLBAT     ; 10% chance
	db 62, RHYDON     ; 10% chance 10
	db 52, DITTO      ; 10% chance 10
	db 52, RHYHORN    ;  5% chance
	db 56, CHANSEY    ;  5% chance
	db 50, LICKITUNG  ;  4% chance 5
	db 50, LICKITUNG  ;  1% chance
	; nite
	db 54, GOLBAT     ; 20% chance 30
	db 48, GRAVELER   ; 20% chance 20
	db 52, RHYHORN    ; 15% chance 20
	db 54, GOLBAT     ; 10% chance
	db 62, RHYDON     ; 10% chance 10
	db 52, DITTO      ; 10% chance 10
	db 52, RHYHORN    ;  5% chance
	db 56, CHANSEY    ;  5% chance
	db 50, LICKITUNG  ;  4% chance 5
	db 50, LICKITUNG  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS ;GEN2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 22, ZUBAT      ; 20% chance 30
	db 24, GOLBAT     ; 20% chance 20
	db 20, RATTATA    ; 15% chance 15
	db 22, ZUBAT      ; 10% chance
	db 21, SLOWPOKE   ; 10% chance 15
	db 22, RATICATE   ; 10% chance 20
	db 22, RATICATE   ;  5% chance
	db 22, RATICATE   ;  5% chance
	db 21, SLOWPOKE   ;  4% chance
	db 21, SLOWPOKE   ;  1% chance
	; day
	db 22, ZUBAT      ; 20% chance 30
	db 24, GOLBAT     ; 20% chance 20
	db 20, RATTATA    ; 15% chance 15
	db 22, ZUBAT      ; 10% chance
	db 21, SLOWPOKE   ; 10% chance 15
	db 22, RATICATE   ; 10% chance 20
	db 22, RATICATE   ;  5% chance
	db 22, RATICATE   ;  5% chance
	db 21, SLOWPOKE   ;  4% chance
	db 21, SLOWPOKE   ;  1% chance
	; nite
	db 22, ZUBAT      ; 20% chance 30
	db 24, GOLBAT     ; 20% chance 20
	db 20, RATTATA    ; 15% chance 15
	db 22, ZUBAT      ; 10% chance
	db 21, SLOWPOKE   ; 10% chance 15
	db 22, RATICATE   ; 10% chance 20
	db 22, RATICATE   ;  5% chance
	db 22, RATICATE   ;  5% chance
	db 21, SLOWPOKE   ;  4% chance
	db 21, SLOWPOKE   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SAFARI_ZONE_ENTRANCE ;GEN2
	db 0 percent, 0 percent, 0 percent ; encounter rates: morn/day/nite
	; morn
	db 10, GIRAFARIG  ; 20% chance
	db 10, STANTLER   ; 20% chance
	db 10, EXEGGCUTE  ; 15% chance
	db 10, AIPOM      ; 10% chance
	db 10, MILTANK    ; 10% chance
	db 10, TAUROS     ; 10% chance
	db 10, SMEARGLE   ;  5% chance
	db 10, EEVEE      ;  5% chance
	db 10, LEDYBA     ;  4% chance
	db 10, YANMA      ;  1% chance
	; day
	db 10, PARAS      ; 20% chance
	db 10, LEDIAN     ; 20% chance
	db 10, SCYTHER    ; 15% chance
	db 10, PINSIR     ; 10% chance
	db 10, HERACROSS  ; 10% chance
	db 10, PHANPY     ; 10% chance
	db 10, HOPPIP     ;  5% chance
	db 10, SUNKERN    ;  5% chance
	db 10, RHYHORN    ;  4% chance
	db 10, LARVITAR   ;  1% chance
	; nite
	db 10, SPINARAK   ; 20% chance
	db 10, VENONAT    ; 20% chance
	db 10, ARIADOS    ; 15% chance
	db 10, WOOPER     ; 10% chance
	db 10, KANGASKHAN ; 10% chance
	db 10, GLIGAR     ; 10% chance
	db 10, SKARMORY   ;  5% chance
	db 10, TANGELA    ;  5% chance
	db 10, CUBONE     ;  4% chance
	db 10, CHANSEY    ;  1% chance
	end_grass_wildmons

	db -1 ; end
