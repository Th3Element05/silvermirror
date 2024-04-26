; Kanto Pokémon in grass

KantoGrassWildMonsChallenge:

	def_grass_wildmons ROUTE_1 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  2, PIDGEY     ; 20% chance 70
	db  2, PIDGEY     ; 20% chance
	db  2, PIDGEY     ; 15% chance
	db  2, PIDGEY     ; 10% chance
	db  2, RATTATA    ; 10% chance 30
	db  2, RATTATA    ; 10% chance
	db  2, PIDGEY     ;  5% chance
	db  2, RATTATA    ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  2, RATTATA    ;  1% chance
	; day
	db  2, PIDGEY     ; 20% chance 55
	db  2, PIDGEY     ; 20% chance
	db  2, PIDGEY     ; 15% chance
	db  2, RATTATA    ; 10% chance 45
	db  2, RATTATA    ; 10% chance
	db  2, RATTATA    ; 10% chance
	db  2, RATTATA    ;  5% chance
	db  2, RATTATA    ;  5% chance
	db  2, RATTATA    ;  4% chance
	db  2, RATTATA    ;  1% chance
	; nite
	db  2, RATTATA    ; 20% chance 70
	db  2, RATTATA    ; 20% chance
	db  2, RATTATA    ; 15% chance
	db  2, RATTATA    ; 10% chance
	db  2, PIDGEY     ; 10% chance 30
	db  2, PIDGEY     ; 10% chance
	db  2, RATTATA    ;  5% chance
	db  2, PIDGEY     ;  5% chance
	db  2, PIDGEY     ;  4% chance
	db  2, PIDGEY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_2_NORTH ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  3, PIDGEY     ; 20% chance 40
	db  4, PIDGEY     ; 20% chance
	db  3, RATTATA    ; 15% chance 30
	db  4, RATTATA    ; 10% chance
	db  4, NIDORAN_F  ; 10% chance 10
	db  3, CATERPIE   ; 10% chance 10
	db  3, WEEDLE     ;  5% chance 5
	db  4, NIDORAN_M  ;  5% chance 5
	db  3, RATTATA    ;  4% chance
	db  4, RATTATA    ;  1% chance
	; day
	db  3, RATTATA    ; 20% chance 40
	db  4, RATTATA    ; 20% chance
	db  3, PIDGEY     ; 15% chance 30
	db  4, PIDGEY     ; 10% chance
	db  4, NIDORAN_F  ; 10% chance 10
	db  4, NIDORAN_M  ; 10% chance 10
	db  3, WEEDLE     ;  5% chance 5
	db  3, CATERPIE   ;  5% chance 5
	db  3, PIDGEY     ;  4% chance
	db  4, PIDGEY     ;  1% chance
	; nite
	db  3, RATTATA    ; 20% chance 40
	db  4, RATTATA    ; 20% chance
	db  3, PIDGEY     ; 15% chance 30
	db  4, PIDGEY     ; 10% chance
	db  3, WEEDLE     ; 10% chance 10
	db  4, NIDORAN_M  ; 10% chance 10
	db  4, NIDORAN_F  ;  5% chance 5
	db  3, CATERPIE   ;  5% chance 5
	db  3, PIDGEY     ;  4% chance
	db  4, PIDGEY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_2_SOUTH ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  2, PIDGEY     ; 20% chance 40
	db  3, PIDGEY     ; 20% chance
	db  2, RATTATA    ; 15% chance 30
	db  3, RATTATA    ; 10% chance
	db  3, NIDORAN_F  ; 10% chance 10
	db  2, CATERPIE   ; 10% chance 10
	db  2, WEEDLE     ;  5% chance 5
	db  3, NIDORAN_M  ;  5% chance 5
	db  2, RATTATA    ;  4% chance
	db  3, RATTATA    ;  1% chance
	; day
	db  2, RATTATA    ; 20% chance 40
	db  3, RATTATA    ; 20% chance
	db  2, PIDGEY     ; 15% chance 30
	db  3, PIDGEY     ; 10% chance
	db  3, NIDORAN_F  ; 10% chance 10
	db  3, NIDORAN_M  ; 10% chance 10
	db  2, WEEDLE     ;  5% chance 5
	db  2, CATERPIE   ;  5% chance 5
	db  2, PIDGEY     ;  4% chance
	db  3, PIDGEY     ;  1% chance
	; nite
	db  2, RATTATA    ; 20% chance 40
	db  3, RATTATA    ; 20% chance
	db  2, PIDGEY     ; 15% chance 30
	db  3, PIDGEY     ; 10% chance
	db  2, WEEDLE     ; 10% chance 10
	db  3, NIDORAN_M  ; 10% chance 10
	db  3, NIDORAN_F  ;  5% chance 5
	db  2, CATERPIE   ;  5% chance 5
	db  2, PIDGEY     ;  4% chance
	db  3, PIDGEY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_3 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  6, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  7, RATTATA    ; 15% chance 15
	db  4, JIGGLYPUFF ; 10% chance 10
	db  6, SANDSHREW  ; 10% chance 15
	db  6, MANKEY     ; 10% chance 15
	db  7, SANDSHREW  ;  5% chance
	db  7, MANKEY     ;  5% chance
	db  6, ZUBAT      ;  4% chance 5
	db  6, ZUBAT      ;  1% chance
	; day
	db  6, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  6, RATTATA    ; 15% chance 20
	db  4, JIGGLYPUFF ; 10% chance 10
	db  6, SANDSHREW  ; 10% chance 15
	db  6, MANKEY     ; 10% chance 15
	db  7, SANDSHREW  ;  5% chance
	db  7, MANKEY     ;  5% chance
	db  7, RATTATA    ;  4% chance
	db  7, RATTATA    ;  1% chance
	; nite
	db  6, SPEAROW    ; 20% chance 20
	db  6, ZUBAT      ; 20% chance 20
	db  6, RATTATA    ; 15% chance 20
	db  4, JIGGLYPUFF ; 10% chance 10
	db  6, SANDSHREW  ; 10% chance 15
	db  6, MANKEY     ; 10% chance 15
	db  7, SANDSHREW  ;  5% chance
	db  7, MANKEY     ;  5% chance
	db  7, RATTATA    ;  4% chance
	db  7, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_4 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  8, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  9, RATTATA    ; 15% chance 15
	db  7, MANKEY     ; 10% chance 10
	db  8, SANDSHREW  ; 10% chance 15
	db  8, EKANS      ; 10% chance 15
	db  8, SANDSHREW  ;  5% chance
	db  8, EKANS      ;  5% chance
	db  8, ZUBAT      ;  4% chance 5
	db  8, ZUBAT      ;  1% chance
	; day
	db  8, SPEAROW    ; 20% chance 40
	db  8, SPEAROW    ; 20% chance
	db  9, RATTATA    ; 15% chance 20
	db  7, MANKEY     ; 10% chance 10
	db  8, SANDSHREW  ; 10% chance 15
	db  8, EKANS      ; 10% chance 15
	db  8, SANDSHREW  ;  5% chance
	db  8, EKANS      ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  8, RATTATA    ;  1% chance
	; nite
	db  8, SPEAROW    ; 20% chance 20
	db  8, ZUBAT      ; 20% chance 20
	db  9, RATTATA    ; 15% chance 20
	db  7, MANKEY     ; 10% chance 10
	db  8, SANDSHREW  ; 10% chance 15
	db  8, EKANS      ; 10% chance 15
	db  8, SANDSHREW  ;  5% chance
	db  8, EKANS      ;  5% chance
	db  8, RATTATA    ;  4% chance
	db  8, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_5 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 15, PIDGEY     ; 20% chance 35
	db 14, RATTATA    ; 20% chance 21
	db 15, PIDGEY     ; 15% chance
	db 12, MANKEY     ; 10% chance 15
	db 12, MEOWTH     ; 10% chance 15
	db  6, JIGGLYPUFF ; 10% chance 10
	db 10, MANKEY     ;  5% chance
	db 10, MEOWTH     ;  5% chance
	db 11, DITTO      ;  4% chance 4
	db 12, RATTATA    ;  1% chance
	; day
	db 15, PIDGEY     ; 20% chance 35
	db 14, RATTATA    ; 20% chance 21
	db 15, PIDGEY     ; 15% chance
	db 12, MANKEY     ; 10% chance 15
	db 12, MEOWTH     ; 10% chance 15
	db  6, JIGGLYPUFF ; 10% chance 10
	db 10, MANKEY     ;  5% chance
	db 10, MEOWTH     ;  5% chance
	db 11, DITTO      ;  4% chance 4
	db 12, RATTATA    ;  1% chance
	; nite
	db 15, PIDGEY     ; 20% chance 20
	db 14, RATTATA    ; 20% chance 21
	db 12, MEOWTH     ; 15% chance 30
	db 12, MANKEY     ; 10% chance 15
	db 12, MEOWTH     ; 10% chance
	db  6, JIGGLYPUFF ; 10% chance 10
	db 10, MANKEY     ;  5% chance
	db 10, MEOWTH     ;  5% chance
	db 11, DITTO      ;  4% chance 4
	db 12, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_6 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 15, PIDGEY     ; 20% chance 40
	db 14, RATTATA    ; 20% chance 20
	db 15, PIDGEY     ; 15% chance
	db 12, MANKEY     ; 10% chance 15
	db 12, MEOWTH     ; 10% chance 15
	db 10, POLIWAG    ; 10% chance 10
	db 10, MANKEY     ;  5% chance
	db 10, MEOWTH     ;  5% chance
	db 12, PIDGEY     ;  4% chance
	db 12, PIDGEY     ;  1% chance
	; day
	db 15, PIDGEY     ; 20% chance 35
	db 14, RATTATA    ; 20% chance 25
	db 15, PIDGEY     ; 15% chance
	db 12, MANKEY     ; 10% chance 15
	db 12, MEOWTH     ; 10% chance 15
	db 10, POLIWAG    ; 10% chance 10
	db 10, MANKEY     ;  5% chance
	db 10, MEOWTH     ;  5% chance
	db 12, RATTATA    ;  4% chance
	db 12, RATTATA    ;  1% chance
	; nite
	db 15, RATTATA    ; 20% chance 25
	db 14, PIDGEY     ; 20% chance 20
	db 12, MEOWTH     ; 15% chance 30
	db 12, MANKEY     ; 10% chance 15
	db 11, MEOWTH     ; 10% chance
	db 10, POLIWAG    ; 10% chance 10
	db 10, MANKEY     ;  5% chance
	db 10, MEOWTH     ;  5% chance
	db 12, RATTATA    ;  4% chance
	db 12, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_7 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, MEOWTH     ; 20% chance 20
	db 18, VULPIX     ; 20% chance 20
	db 19, PIDGEY     ; 15% chance 35
	db 17, BELLSPROUT ; 10% chance 20
	db 18, BELLSPROUT ; 10% chance
	db 19, PIDGEY     ; 10% chance
	db 18, PIDGEY     ;  5% chance
	db 18, PIDGEY     ;  5% chance
	db 17, ODDISH     ;  4% chance 5
	db 18, ODDISH     ;  1% chance
	; day
	db 17, MEOWTH     ; 20% chance 20
	db 18, VULPIX     ; 20% chance 20
	db 19, PIDGEY     ; 15% chance 35
	db 17, BELLSPROUT ; 10% chance 20
	db 18, BELLSPROUT ; 10% chance
	db 19, PIDGEY     ; 10% chance
	db 18, PIDGEY     ;  5% chance
	db 18, PIDGEY     ;  5% chance
	db 17, ODDISH     ;  4% chance 5
	db 18, ODDISH     ;  1% chance
	; nite
	db 17, MEOWTH     ; 20% chance 30
	db 18, VULPIX     ; 20% chance 20
	db 19, PIDGEY     ; 15% chance 25
	db 17, ODDISH     ; 10% chance 25
	db 18, ODDISH     ; 10% chance
	db 19, PIDGEY     ; 10% chance
	db 18, ODDISH     ;  5% chance
	db 18, MEOWTH     ;  5% chance
	db 17, MEOWTH     ;  4% chance
	db 18, MEOWTH     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_8 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 18, MANKEY     ; 20% chance 25
	db 16, GROWLITHE  ; 20% chance 20
	db 18, PIDGEY     ; 15% chance 35
	db 18, MACHOP     ; 10% chance 20
	db 17, MACHOP     ; 10% chance
	db 18, PIDGEY     ; 10% chance
	db 17, PIDGEY     ;  5% chance
	db 17, PIDGEY     ;  5% chance
	db 17, MANKEY     ;  4% chance
	db 17, MANKEY     ;  1% chance
	; day
	db 18, MANKEY     ; 20% chance 25
	db 15, GROWLITHE  ; 20% chance 20
	db 18, PIDGEY     ; 15% chance 35
	db 18, MACHOP     ; 10% chance 20
	db 17, MACHOP     ; 10% chance
	db 18, PIDGEY     ; 10% chance
	db 17, PIDGEY     ;  5% chance
	db 17, PIDGEY     ;  5% chance
	db 17, MANKEY     ;  4% chance
	db 17, MANKEY     ;  1% chance
	; nite
	db 18, MANKEY     ; 20% chance 20
	db 15, GROWLITHE  ; 20% chance 20
	db 18, PIDGEY     ; 15% chance 35
	db 18, GASTLY     ; 10% chance 20
	db 17, GASTLY     ; 10% chance
	db 18, PIDGEY     ; 10% chance
	db 17, PIDGEY     ;  5% chance
	db 17, PIDGEY     ;  5% chance
	db 17, MACHOP     ;  4% chance 5
	db 17, MACHOP     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_9 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, NIDORAN_M  ; 20% chance 35
	db 14, NIDORAN_F  ; 20% chance 35
	db 13, NIDORAN_F  ; 15% chance
	db 12, SANDSHREW  ; 10% chance 10
	db 12, EKANS      ; 10% chance 10
	db 13, NIDORAN_M  ; 10% chance
	db 13, NIDORAN_M  ;  5% chance
	db 14, SPEAROW    ;  5% chance 10
	db 13, SPEAROW    ;  4% chance
	db 13, SPEAROW    ;  1% chance
	; day
	db 14, NIDORAN_M  ; 20% chance 35
	db 14, NIDORAN_F  ; 20% chance 35
	db 13, NIDORAN_F  ; 15% chance
	db 12, SANDSHREW  ; 10% chance 10
	db 12, EKANS      ; 10% chance 10
	db 13, NIDORAN_M  ; 10% chance
	db 13, NIDORAN_M  ;  5% chance
	db 14, SPEAROW    ;  5% chance 10
	db 13, SPEAROW    ;  4% chance
	db 13, SPEAROW    ;  1% chance
	; nite
	db 14, NIDORAN_M  ; 20% chance 35
	db 14, NIDORAN_F  ; 20% chance 35
	db 13, NIDORAN_F  ; 15% chance
	db 12, SANDSHREW  ; 10% chance 10
	db 12, EKANS      ; 10% chance 10
	db 13, NIDORAN_M  ; 10% chance
	db 13, NIDORAN_M  ;  5% chance
	db 14, SPEAROW    ;  5% chance 10
	db 13, SPEAROW    ;  4% chance
	db 13, SPEAROW    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, SPEAROW    ; 20% chance 20
	db 14, MAGNEMITE  ; 20% chance 30
	db 14, VOLTORB    ; 15% chance 25
	db 12, SANDSHREW  ; 10% chance 10
	db 12, EKANS      ; 10% chance 10
	db 15, MAGNEMITE  ; 10% chance
	db 14, ZUBAT      ;  5% chance 5
	db 15, VOLTORB    ;  5% chance
	db 15, VOLTORB    ;  4% chance
	db 15, VOLTORB    ;  1% chance
	; day
	db 14, SPEAROW    ; 20% chance 20
	db 14, MAGNEMITE  ; 20% chance 35
	db 15, MAGNEMITE  ; 15% chance
	db 12, SANDSHREW  ; 10% chance 10
	db 12, EKANS      ; 10% chance 10
	db 13, VOLTORB    ; 10% chance 25
	db 13, VOLTORB    ;  5% chance
	db 14, VOLTORB    ;  5% chance
	db 14, VOLTORB    ;  4% chance
	db 14, VOLTORB    ;  1% chance
	; nite
	db 14, SPEAROW    ; 20% chance 20
	db 14, ZUBAT      ; 20% chance 20
	db 14, MAGNEMITE  ; 15% chance 20
	db 12, SANDSHREW  ; 10% chance 10
	db 12, EKANS      ; 10% chance 10
	db 14, VOLTORB    ; 10% chance
	db 15, MAGNEMITE  ;  5% chance
	db 15, VOLTORB    ;  5% chance
	db 15, VOLTORB    ;  4% chance
	db 15, VOLTORB    ;  1% chance
	end_grass_wildmons

;	def_grass_wildmons ROUTE_10_SOUTH ;silvermirror (THIS WILL BECOME POWER PLANT)
;	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
;	; morn
;	db 25, VOLTORB    ; 20% chance 30
;	db 24, MAGNEMITE  ; 20% chance 35
;	db 23, MAGNEMITE  ; 15% chance
;	db 24, VOLTORB    ; 10% chance
;	db 20, PIKACHU    ; 10% chance 15
;	db 32, MAGNETON   ; 10% chance 10
;	db 21, PIKACHU    ;  5% chance
;	db 24, GRIMER     ;  5% chance 5
;	db 33, ELECTABUZZ ;  4% chance 5
;	db 33, ELECTABUZZ ;  1% chance
;	; day
;	db 25, VOLTORB    ; 20% chance 30
;	db 24, MAGNEMITE  ; 20% chance 35
;	db 23, MAGNEMITE  ; 15% chance
;	db 24, VOLTORB    ; 10% chance
;	db 20, PIKACHU    ; 10% chance 15
;	db 32, MAGNETON   ; 10% chance 10
;	db 21, PIKACHU    ;  5% chance
;	db 24, GRIMER     ;  5% chance 5
;	db 33, ELECTABUZZ ;  4% chance 5
;	db 33, ELECTABUZZ ;  1% chance
;	; nite
;	db 25, VOLTORB    ; 20% chance 30
;	db 24, MAGNEMITE  ; 20% chance 35
;	db 23, MAGNEMITE  ; 15% chance
;	db 24, VOLTORB    ; 10% chance
;	db 20, PIKACHU    ; 10% chance 15
;	db 32, MAGNETON   ; 10% chance 10
;	db 21, PIKACHU    ;  5% chance
;	db 24, GRIMER     ;  5% chance 5
;	db 33, ELECTABUZZ ;  4% chance 5
;	db 33, ELECTABUZZ ;  1% chance
;	end_grass_wildmons

	def_grass_wildmons ROUTE_11 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, PIDGEY     ; 20% chance 35
	db 15, RATTATA    ; 20% chance 20
	db 12, EKANS      ; 15% chance 25
	db 12, EKANS      ; 10% chance
	db 15, DROWZEE    ; 10% chance 10
	db 11, PSYDUCK    ; 10% chance 10
	db 15, PIDGEY     ;  5% chance
	db 15, PIDGEY     ;  5% chance
	db 15, PIDGEY     ;  4% chance
	db 15, PIDGEY     ;  1% chance
	; day
	db 16, PIDGEY     ; 20% chance 35
	db 15, RATTATA    ; 20% chance 20
	db 12, EKANS      ; 15% chance 25
	db 12, EKANS      ; 10% chance
	db 15, DROWZEE    ; 10% chance 10
	db 11, PSYDUCK    ; 10% chance 10
	db 15, PIDGEY     ;  5% chance
	db 15, PIDGEY     ;  5% chance
	db 15, PIDGEY     ;  4% chance
	db 15, PIDGEY     ;  1% chance
	; nite
	db 16, PIDGEY     ; 20% chance 20
	db 15, RATTATA    ; 20% chance 25
	db 12, EKANS      ; 15% chance 15
	db 15, DROWZEE    ; 10% chance 30
	db 15, DROWZEE    ; 10% chance
	db 11, PSYDUCK    ; 10% chance 10
	db 14, DROWZEE    ;  5% chance
	db 14, DROWZEE    ;  5% chance
	db 14, RATTATA    ;  4% chance
	db 14, RATTATA    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_12 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, ODDISH     ; 20% chance 30
	db 22, BELLSPROUT ; 20% chance 30
	db 22, PIDGEY     ; 15% chance 15
	db 22, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 24, PIDGEOTTO  ; 10% chance 10
	db 26, GLOOM      ;  5% chance 5
	db 26, WEEPINBELL ;  5% chance 5
	db 26, FARFETCH_D ;  4% chance 5
	db 27, FARFETCH_D ;  1% chance
	; day
	db 22, ODDISH     ; 20% chance 30
	db 22, BELLSPROUT ; 20% chance 30
	db 22, PIDGEY     ; 15% chance 15
	db 22, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 24, PIDGEOTTO  ; 10% chance 10
	db 26, GLOOM      ;  5% chance 5
	db 26, WEEPINBELL ;  5% chance 5
	db 26, FARFETCH_D ;  4% chance 5
	db 27, FARFETCH_D ;  1% chance
	; nite
	db 22, ODDISH     ; 20% chance 50
	db 22, ODDISH     ; 20% chance
	db 22, PIDGEY     ; 15% chance 15
	db 22, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance 10
	db 26, GLOOM      ; 10% chance 10
	db 24, PIDGEOTTO  ;  5% chance 5
	db 26, WEEPINBELL ;  5% chance 5
	db 26, FARFETCH_D ;  4% chance 5
	db 27, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_13 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, ODDISH     ; 20% chance 30
	db 22, BELLSPROUT ; 20% chance 30
	db 24, PIDGEOTTO  ; 15% chance 15
	db 22, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 22, PIDGEY     ; 10% chance 10
	db 26, GLOOM      ;  5% chance 5
	db 26, WEEPINBELL ;  5% chance 5
	db 26, FARFETCH_D ;  4% chance 5
	db 27, FARFETCH_D ;  1% chance
	; day
	db 22, ODDISH     ; 20% chance 30
	db 22, BELLSPROUT ; 20% chance 30
	db 24, PIDGEOTTO  ; 15% chance 15
	db 22, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 22, PIDGEY     ; 10% chance 10
	db 26, GLOOM      ;  5% chance 5
	db 26, WEEPINBELL ;  5% chance 5
	db 26, FARFETCH_D ;  4% chance 5
	db 27, FARFETCH_D ;  1% chance
	; nite
	db 22, ODDISH     ; 20% chance 50
	db 22, ODDISH     ; 20% chance
	db 24, PIDGEOTTO  ; 15% chance 15
	db 22, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance 10
	db 26, GLOOM      ; 10% chance 10
	db 22, PIDGEY     ;  5% chance 5
	db 26, WEEPINBELL ;  5% chance 5
	db 26, FARFETCH_D ;  4% chance 5
	db 27, FARFETCH_D ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_14 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, ODDISH     ; 20% chance 30
	db 22, BELLSPROUT ; 20% chance 30
	db 24, VENONAT    ; 15% chance 20
	db 23, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 22, DITTO      ; 10% chance 15
	db 23, VENONAT    ;  5% chance
	db 26, WEEPINBELL ;  5% chance 5
	db 22, DITTO      ;  4% chance
	db 22, DITTO      ;  1% chance
	; day
	db 22, ODDISH     ; 20% chance 30
	db 22, BELLSPROUT ; 20% chance 30
	db 24, VENONAT    ; 15% chance 20
	db 23, ODDISH     ; 10% chance
	db 22, BELLSPROUT ; 10% chance
	db 22, DITTO      ; 10% chance 15
	db 24, VENONAT    ;  5% chance
	db 26, WEEPINBELL ;  5% chance 5
	db 22, DITTO      ;  4% chance
	db 22, DITTO      ;  1% chance
	; nite
	db 22, ODDISH     ; 20% chance 35
	db 24, VENONAT    ; 20% chance 35
	db 25, VENONAT    ; 15% chance
	db 22, BELLSPROUT ; 10% chance 10
	db 24, ODDISH     ; 10% chance
	db 22, DITTO      ; 10% chance 10
	db 27, GLOOM      ;  5% chance 5
	db 22, ODDISH     ;  5% chance
	db 27, VENOMOTH   ;  4% chance 5
	db 28, VENOMOTH   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_15 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, ODDISH     ; 20% chance 30
	db 23, BELLSPROUT ; 20% chance 30
	db 24, VENONAT    ; 15% chance 20
	db 23, ODDISH     ; 10% chance
	db 23, BELLSPROUT ; 10% chance
	db 23, DITTO      ; 10% chance 15
	db 23, VENONAT    ;  5% chance
	db 26, WEEPINBELL ;  5% chance 5
	db 24, DITTO      ;  4% chance
	db 25, DITTO      ;  1% chance
	; day
	db 23, ODDISH     ; 20% chance 30
	db 23, BELLSPROUT ; 20% chance 30
	db 24, VENONAT    ; 15% chance 20
	db 23, ODDISH     ; 10% chance
	db 23, BELLSPROUT ; 10% chance
	db 23, DITTO      ; 10% chance 15
	db 23, VENONAT    ;  5% chance
	db 26, WEEPINBELL ;  5% chance 5
	db 24, DITTO      ;  4% chance
	db 25, DITTO      ;  1% chance
	; nite
	db 23, ODDISH     ; 20% chance 35
	db 25, VENONAT    ; 20% chance 35
	db 24, VENONAT    ; 15% chance
	db 23, BELLSPROUT ; 10% chance 10
	db 25, ODDISH     ; 10% chance
	db 23, DITTO      ; 10% chance 10
	db 28, GLOOM      ;  5% chance 5
	db 23, ODDISH     ;  5% chance
	db 28, VENOMOTH   ;  4% chance 5
	db 27, VENOMOTH   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_16 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, RATTATA    ; 20% chance 30
	db 22, SPEAROW    ; 20% chance 30
	db 22, DODUO      ; 15% chance 30
	db 23, RATTATA    ; 10% chance
	db 22, SPEAROW    ; 10% chance
	db 22, DODUO      ; 10% chance
	db 22, DODUO      ;  5% chance
	db 24, RATICATE   ;  5% chance 5
	db 24, FEAROW     ;  4% chance 5
	db 24, FEAROW     ;  1% chance
	; day
	db 22, RATTATA    ; 20% chance 30
	db 22, SPEAROW    ; 20% chance 30
	db 22, DODUO      ; 15% chance 30
	db 23, RATTATA    ; 10% chance
	db 22, SPEAROW    ; 10% chance
	db 22, DODUO      ; 10% chance
	db 22, DODUO      ;  5% chance
	db 24, RATICATE   ;  5% chance 5
	db 24, FEAROW     ;  4% chance 5
	db 24, FEAROW     ;  1% chance
	; nite
	db 22, RATTATA    ; 20% chance 40
	db 22, SPEAROW    ; 20% chance 20
	db 22, DODUO      ; 15% chance 20
	db 23, RATTATA    ; 10% chance
	db 22, RATTATA    ; 10% chance
	db 22, RATICATE   ; 10% chance
	db 22, DODUO      ;  5% chance
	db 24, RATICATE   ;  5% chance 15
	db 24, FEAROW     ;  4% chance 5
	db 24, FEAROW     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_17 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, SPEAROW    ; 20% chance 26
	db 24, DODUO      ; 20% chance 30
	db 25, FEAROW     ; 15% chance 15
	db 26, PONYTA     ; 10% chance 25
	db 28, PONYTA     ; 10% chance
	db 24, DODUO      ; 10% chance
	db 23, SPEAROW    ;  5% chance
	db 26, PONYTA     ;  5% chance
	db 28, DODRIO     ;  4% chance 4
	db 24, SPEAROW    ;  1% chance
	; day
	db 22, SPEAROW    ; 20% chance 26
	db 24, DODUO      ; 20% chance 30
	db 25, FEAROW     ; 15% chance 15
	db 26, PONYTA     ; 10% chance 25
	db 28, PONYTA     ; 10% chance
	db 24, DODUO      ; 10% chance
	db 23, SPEAROW    ;  5% chance
	db 26, PONYTA     ;  5% chance
	db 28, DODRIO     ;  4% chance 4
	db 24, SPEAROW    ;  1% chance
	; nite
	db 22, SPEAROW    ; 20% chance 26
	db 24, DODUO      ; 20% chance 30
	db 25, FEAROW     ; 15% chance 15
	db 26, PONYTA     ; 10% chance 25
	db 28, PONYTA     ; 10% chance
	db 24, DODUO      ; 10% chance
	db 23, SPEAROW    ;  5% chance
	db 26, PONYTA     ;  5% chance
	db 28, DODRIO     ;  4% chance 4
	db 24, SPEAROW    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_18 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, SPEAROW    ; 20% chance 25
	db 22, DODUO      ; 20% chance 35
	db 22, DODUO      ; 15% chance
	db 22, RATTATA    ; 10% chance 25
	db 22, RATTATA    ; 10% chance
	db 24, RATICATE   ; 10% chance 10
	db 23, RATTATA    ;  5% chance
	db 22, SPEAROW    ;  5% chance
	db 24, FEAROW     ;  4% chance 5
	db 24, FEAROW     ;  1% chance
	; day
	db 22, SPEAROW    ; 20% chance 25
	db 22, DODUO      ; 20% chance 35
	db 22, DODUO      ; 15% chance
	db 22, RATTATA    ; 10% chance 25
	db 22, RATTATA    ; 10% chance
	db 24, RATICATE   ; 10% chance 10
	db 23, RATTATA    ;  5% chance
	db 22, SPEAROW    ;  5% chance
	db 24, FEAROW     ;  4% chance 5
	db 24, FEAROW     ;  1% chance
	; nite
	db 22, SPEAROW    ; 20% chance 25
	db 22, RATTATA    ; 20% chance 40
	db 22, DODUO      ; 15% chance 15
	db 22, RATTATA    ; 10% chance
	db 23, RATTATA    ; 10% chance
	db 24, RATICATE   ; 10% chance 15
	db 24, RATICATE   ;  5% chance
	db 22, SPEAROW    ;  5% chance
	db 24, FEAROW     ;  4% chance 5
	db 24, FEAROW     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_21 ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 21, PIDGEY     ; 20% chance 45
	db 21, RATTATA    ; 20% chance 30
	db 21, PIDGEY     ; 15% chance
	db 21, PIDGEY     ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance 10
	db 28, TANGELA    ; 10% chance 10
	db 21, RATTATA    ;  5% chance
	db 28, RATICATE   ;  5% chance 5
	db 24, RATTATA    ;  4% chance
	db 24, MR__MIME   ;  1% chance 1
	; day
	db 21, PIDGEY     ; 20% chance 45
	db 21, RATTATA    ; 20% chance 25
	db 21, PIDGEY     ; 15% chance
	db 21, PIDGEY     ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance 10
	db 28, TANGELA    ; 10% chance 10
	db 21, RATTATA    ;  5% chance
	db 28, RATICATE   ;  5% chance 5
	db 24, RATTATA    ;  4% chance
	db 24, MR__MIME   ;  1% chance 1
	; nite
	db 21, PIDGEY     ; 20% chance 30
	db 21, RATTATA    ; 20% chance 40
	db 21, RATTATA    ; 15% chance
	db 21, PIDGEY     ; 10% chance
	db 28, RATICATE   ; 10% chance 15
	db 28, TANGELA    ; 10% chance 10
	db 21, RATTATA    ;  5% chance
	db 28, RATICATE   ;  5% chance 5
	db 24, PIDGEOTTO  ;  4% chance 4
	db 24, MR__MIME   ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons ROUTE_22 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  2, NIDORAN_M  ; 20% chance 20
	db  2, NIDORAN_F  ; 20% chance 40
	db  2, SPEAROW    ; 15% chance 20
	db  2, NIDORAN_F  ; 10% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, RATTATA    ; 10% chance 10
	db  2, SPEAROW    ;  5% chance
	db  2, MANKEY     ;  5% chance 10
	db  2, MANKEY     ;  4% chance
	db  2, MANKEY     ;  1% chance
	; day
	db  2, NIDORAN_M  ; 20% chance 30
	db  2, NIDORAN_F  ; 20% chance 30
	db  2, SPEAROW    ; 15% chance 20
	db  2, NIDORAN_M  ; 10% chance
	db  2, NIDORAN_F  ; 10% chance
	db  2, RATTATA    ; 10% chance 10
	db  2, SPEAROW    ;  5% chance
	db  2, MANKEY     ;  5% chance 10
	db  2, MANKEY     ;  4% chance
	db  2, MANKEY     ;  1% chance
	; nite
	db  2, NIDORAN_M  ; 20% chance 40
	db  2, NIDORAN_F  ; 20% chance 20
	db  2, RATTATA    ; 15% chance 20
	db  2, NIDORAN_M  ; 10% chance
	db  2, NIDORAN_M  ; 10% chance
	db  2, SPEAROW    ; 10% chance 10
	db  2, RATTATA    ;  5% chance
	db  2, MANKEY     ;  5% chance 10
	db  2, MANKEY     ;  4% chance
	db  2, MANKEY     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_23
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 33, DITTO      ; 20% chance
	db 26, EKANS      ; 20% chance
	db 26, SPEAROW    ; 15% chance
	db 38, DITTO      ; 10% chance
	db 26, SANDSHREW  ; 10% chance
	db 38, FEAROW     ; 10% chance
	db 39, FEAROW     ;  5% chance
	db 40, SANDSLASH  ;  5% chance
	db 40, ARBOK      ;  4% chance
	db 41, ARBOK      ;  1% chance
	; day
	db 33, DITTO      ; 20% chance
	db 26, EKANS      ; 20% chance
	db 26, SPEAROW    ; 15% chance
	db 38, DITTO      ; 10% chance
	db 26, SANDSHREW  ; 10% chance
	db 38, FEAROW     ; 10% chance
	db 39, FEAROW     ;  5% chance
	db 40, ARBOK      ;  5% chance
	db 40, SANDSLASH  ;  4% chance
	db 40, SANDSLASH  ;  1% chance
	; nite
	db 33, DITTO      ; 20% chance
	db 26, SANDSHREW  ; 20% chance
	db 26, SPEAROW    ; 15% chance
	db 38, DITTO      ; 10% chance
	db 26, EKANS      ; 10% chance
	db 38, FEAROW     ; 10% chance
	db 39, FEAROW     ;  5% chance
	db 40, ARBOK      ;  5% chance
	db 40, SANDSLASH  ;  4% chance
	db 41, SANDSLASH  ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_24 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, PIDGEY     ; 20% chance 40
	db 12, BELLSPROUT ; 20% chance 25
	db  8, ABRA       ; 15% chance 15
	db 12, ODDISH     ; 10% chance 10
	db 12, VENONAT    ; 10% chance 10
	db 13, PIDGEY     ; 10% chance
	db 12, PIDGEY     ;  5% chance
	db 12, PIDGEY     ;  5% chance
	db 12, BELLSPROUT ;  4% chance 
	db 12, BELLSPROUT ;  1% chance
	; day
	db 13, PIDGEY     ; 20% chance 40
	db 12, BELLSPROUT ; 20% chance 25
	db  8, ABRA       ; 15% chance 15
	db 12, ODDISH     ; 10% chance 10
	db 12, VENONAT    ; 10% chance 10
	db 13, PIDGEY     ; 10% chance
	db 12, PIDGEY     ;  5% chance
	db 12, PIDGEY     ;  5% chance
	db 12, BELLSPROUT ;  4% chance 
	db 12, BELLSPROUT ;  1% chance
	; nite
	db 12, ODDISH     ; 20% chance 35
	db 12, VENONAT    ; 20% chance 35
	db  8, ABRA       ; 15% chance 15
	db 12, ODDISH     ; 10% chance
	db 12, VENONAT    ; 10% chance
	db 13, PIDGEY     ; 10% chance 10
	db 13, ODDISH     ;  5% chance
	db 13, VENONAT    ;  5% chance
	db 12, BELLSPROUT ;  4% chance 5
	db 12, BELLSPROUT ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_25 ;silvermirror
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, PIDGEY     ; 20% chance 40
	db 12, BELLSPROUT ; 20% chance 25
	db  8, ABRA       ; 15% chance 15
	db 12, ODDISH     ; 10% chance 10
	db 12, VENONAT    ; 10% chance 10
	db 13, PIDGEY     ; 10% chance
	db 12, PIDGEY     ;  5% chance
	db 12, PIDGEY     ;  5% chance
	db 12, BELLSPROUT ;  4% chance 
	db 12, BELLSPROUT ;  1% chance
	; day
	db 13, PIDGEY     ; 20% chance 40
	db 12, BELLSPROUT ; 20% chance 25
	db  8, ABRA       ; 15% chance 15
	db 12, ODDISH     ; 10% chance 10
	db 12, VENONAT    ; 10% chance 10
	db 13, PIDGEY     ; 10% chance
	db 12, PIDGEY     ;  5% chance
	db 12, PIDGEY     ;  5% chance
	db 12, BELLSPROUT ;  4% chance 
	db 12, BELLSPROUT ;  1% chance
	; nite
	db 12, ODDISH     ; 20% chance 35
	db 12, VENONAT    ; 20% chance 35
	db  8, ABRA       ; 15% chance 15
	db 12, ODDISH     ; 10% chance
	db 12, VENONAT    ; 10% chance
	db 13, PIDGEY     ; 10% chance 10
	db 13, ODDISH     ;  5% chance
	db 13, VENONAT    ;  5% chance
	db 12, BELLSPROUT ;  4% chance 5
	db 12, BELLSPROUT ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; day
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	end_grass_wildmons

;	def_grass_wildmons ROUTE_27
	def_grass_wildmons ROUTE_27_WEST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; day
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	end_grass_wildmons
	
;	def_grass_wildmons ROUTE_27
	def_grass_wildmons ROUTE_27_EAST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; day
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; day
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VIRIDIAN_FOREST ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  3, CATERPIE   ; 20% chance 60
	db  3, CATERPIE   ; 20% chance
	db  4, METAPOD    ; 15% chance 20
	db  3, CATERPIE   ; 10% chance
	db  4, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance 10
	db  4, METAPOD    ;  5% chance
	db  4, KAKUNA     ;  5% chance 5
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	; day
	db  3, CATERPIE   ; 20% chance 30
	db  3, WEEDLE     ; 20% chance 30
	db  4, METAPOD    ; 15% chance 15
	db  3, CATERPIE   ; 10% chance
	db  3, WEEDLE     ; 10% chance
	db  4, KAKUNA     ; 10% chance 15
	db  4, KAKUNA     ;  5% chance
	db  4, PIDGEY     ;  5% chance 5
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	; nite
	db  3, WEEDLE     ; 20% chance 60
	db  3, WEEDLE     ; 20% chance
	db  4, KAKUNA     ; 15% chance 20
	db  3, WEEDLE     ; 10% chance
	db  4, WEEDLE     ; 10% chance
	db  3, CATERPIE   ; 10% chance 10
	db  4, KAKUNA     ;  5% chance
	db  4, METAPOD    ;  5% chance 5
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  6, ZUBAT      ; 20% chance 69
	db  6, ZUBAT      ; 20% chance
	db  7, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  8, GEODUDE    ; 10% chance 20
	db  7, GEODUDE    ; 10% chance
	db  8, PARAS      ;  5% chance 10
	db  8, PARAS      ;  5% chance
	db  7, ZUBAT      ;  4% chance
	db  8, CLEFAIRY   ;  1% chance 1
	; day
	db  6, ZUBAT      ; 20% chance 79
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  8, GEODUDE    ; 10% chance 15
	db  7, GEODUDE    ;  5% chance
	db  8, PARAS      ;  5% chance 5
	db  7, ZUBAT      ;  4% chance
	db  8, CLEFAIRY   ;  1% chance 1
	; nite
	db  6, ZUBAT      ; 20% chance 60
	db  6, ZUBAT      ; 20% chance
	db  6, ZUBAT      ; 15% chance
	db  8, PARAS      ; 10% chance 10
	db  8, GEODUDE    ; 10% chance 26
	db  8, GEODUDE    ; 10% chance 
	db  7, GEODUDE    ;  5% chance
	db  6, ZUBAT      ;  5% chance
	db  8, CLEFAIRY   ;  4% chance 4
	db  7, GEODUDE    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON_B2F ;silvermirror+
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  7, ZUBAT      ; 20% chance 61
	db  7, ZUBAT      ; 20% chance
	db  8, GEODUDE    ; 15% chance 25
	db  7, GEODUDE    ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  9, PARAS      ;  5% chance 10
	db  9, PARAS      ;  5% chance
	db  9, CLEFAIRY   ;  4% chance 4
	db  8, ZUBAT      ;  1% chance
	; day
	db  7, ZUBAT      ; 20% chance 61
	db  7, ZUBAT      ; 20% chance
	db  7, GEODUDE    ; 15% chance 25
	db  7, GEODUDE    ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  9, PARAS      ;  5% chance 10
	db  9, PARAS      ;  5% chance
	db  9, CLEFAIRY   ;  4% chance 4
	db  8, ZUBAT      ;  1% chance
	; nite
	db  7, ZUBAT      ; 20% chance 60
	db  7, ZUBAT      ; 20% chance
	db  7, GEODUDE    ; 15% chance 25
	db  7, GEODUDE    ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  9, PARAS      ;  5% chance 10
	db  9, PARAS      ;  5% chance
	db  9, CLEFAIRY   ;  4% chance 5
	db  8, CLEFAIRY   ;  1% chance
	end_grass_wildmons

	def_grass_wildmons DIGLETTS_CAVE ;silvermirror
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
	db 26, DUGTRIO    ;  4% chance 5
	db 27, DUGTRIO    ;  1% chance
	; day
	db 15, DIGLETT    ; 20% chance 95
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 15% chance
	db 16, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 18, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 26, DUGTRIO    ;  4% chance 5
	db 27, DUGTRIO    ;  1% chance
	; nite
	db 15, DIGLETT    ; 20% chance 95
	db 15, DIGLETT    ; 20% chance
	db 16, DIGLETT    ; 15% chance
	db 16, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 17, DIGLETT    ; 10% chance
	db 18, DIGLETT    ;  5% chance
	db 18, DIGLETT    ;  5% chance
	db 26, DUGTRIO    ;  4% chance 5
	db 27, DUGTRIO    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 15, ZUBAT      ; 20% chance 45
	db 15, GEODUDE    ; 20% chance 30
	db 15, MACHOP     ; 15% chance 20
	db 15, ZUBAT      ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 15, GEODUDE    ; 10% chance
	db 15, ZUBAT      ;  5% chance
	db 15, MACHOP     ;  5% chance
	db 12, ONIX       ;  4% chance 5
	db 13, ONIX       ;  1% chance
	; day
	db 15, ZUBAT      ; 20% chance 55
	db 15, GEODUDE    ; 20% chance 25
	db 15, MACHOP     ; 15% chance 15
	db 15, ZUBAT      ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 15, ZUBAT      ;  5% chance
	db 15, GEODUDE    ;  5% chance
	db 12, ONIX       ;  4% chance 5
	db 13, ONIX       ;  1% chance
	; nite
	db 15, ZUBAT      ; 20% chance 35
	db 15, GEODUDE    ; 20% chance 35
	db 15, MACHOP     ; 15% chance 25
	db 15, GEODUDE    ; 10% chance
	db 15, MACHOP     ; 10% chance
	db 16, ZUBAT      ; 10% chance
	db 15, ZUBAT      ;  5% chance
	db 15, GEODUDE    ;  5% chance
	db 12, ONIX       ;  4% chance 5
	db 13, ONIX       ;  1% chance
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 16, ZUBAT      ; 20% chance 50
	db 16, ZUBAT      ; 20% chance
	db 16, MACHOP     ; 15% chance 15
	db 16, GEODUDE    ; 10% chance 20
	db 15, GEODUDE    ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 12, ONIX       ;  5% chance 10
	db 13, ONIX       ;  5% chance
	db 12, CUBONE     ;  4% chance 5
	db 12, CUBONE     ;  1% chance
	; day
	db 16, ZUBAT      ; 20% chance 50
	db 16, ZUBAT      ; 20% chance
	db 16, MACHOP     ; 15% chance 15
	db 16, GEODUDE    ; 10% chance 20
	db 15, GEODUDE    ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 12, ONIX       ;  5% chance 10
	db 13, ONIX       ;  5% chance
	db 12, CUBONE     ;  4% chance 5
	db 12, CUBONE     ;  1% chance
	; nite
	db 16, ZUBAT      ; 20% chance 50
	db 16, ZUBAT      ; 20% chance
	db 16, MACHOP     ; 15% chance 15
	db 16, GEODUDE    ; 10% chance 20
	db 15, GEODUDE    ; 10% chance
	db 15, ZUBAT      ; 10% chance
	db 12, ONIX       ;  5% chance 10
	db 13, ONIX       ;  5% chance
	db 12, CUBONE     ;  4% chance 5
	db 12, CUBONE     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_3F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, GASTLY     ; 20% chance 90
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance 5
	db 21, HAUNTER    ;  1% chance
	; day
	db 18, GASTLY     ; 20% chance 85
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, CUBONE     ;  5% chance 10
	db 18, CUBONE     ;  5% chance
	db 21, HAUNTER    ;  4% chance 5
	db 21, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance 85
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, HAUNTER    ;  5% chance 10
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance
	db 21, HAUNTER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_4F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, GASTLY     ; 20% chance 90
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance 5
	db 21, HAUNTER    ;  1% chance
	; day
	db 18, GASTLY     ; 20% chance 85
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, CUBONE     ;  5% chance 10
	db 18, CUBONE     ;  5% chance
	db 21, HAUNTER    ;  4% chance 5
	db 21, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance 85
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, HAUNTER    ;  5% chance 10
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance
	db 21, HAUNTER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_5F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, GASTLY     ; 20% chance 90
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance 5
	db 22, HAUNTER    ;  1% chance
	; day
	db 18, GASTLY     ; 20% chance 85
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, CUBONE     ;  5% chance 10
	db 18, CUBONE     ;  5% chance
	db 21, HAUNTER    ;  4% chance 5
	db 22, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance 85
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, HAUNTER    ;  5% chance 10
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance
	db 22, HAUNTER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_TOWER_6F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 19, GASTLY     ; 20% chance 90
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, GASTLY     ;  5% chance
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance 5
	db 22, HAUNTER    ;  1% chance
	; day
	db 19, GASTLY     ; 20% chance 85
	db 19, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 19, CUBONE     ;  5% chance 10
	db 18, CUBONE     ;  5% chance
	db 21, HAUNTER    ;  4% chance 5
	db 22, HAUNTER    ;  1% chance
	; nite
	db 18, GASTLY     ; 20% chance 85
	db 18, GASTLY     ; 20% chance
	db 19, GASTLY     ; 15% chance
	db 19, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, GASTLY     ; 10% chance
	db 20, HAUNTER    ;  5% chance 10
	db 18, CUBONE     ;  5% chance 5
	db 21, HAUNTER    ;  4% chance
	db 22, HAUNTER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 19, ZUBAT      ; 20% chance 45
	db 22, ZUBAT      ; 20% chance
	db 24, SLOWPOKE   ; 15% chance 15
	db 24, KRABBY     ; 10% chance 20
	db 25, KRABBY     ; 10% chance
	db 24, STARYU     ; 10% chance 10
	db 25, ZUBAT      ;  5% chance
	db 25, GOLBAT     ;  5% chance 5
	db 26, KINGLER    ;  4% chance 5
	db 27, KINGLER    ;  1% chance
	; day
	db 19, ZUBAT      ; 20% chance 45
	db 22, ZUBAT      ; 20% chance
	db 24, SLOWPOKE   ; 15% chance 15
	db 24, KRABBY     ; 10% chance 20
	db 25, KRABBY     ; 10% chance
	db 24, STARYU     ; 10% chance 10
	db 25, ZUBAT      ;  5% chance
	db 25, GOLBAT     ;  5% chance 5
	db 26, KINGLER    ;  4% chance 5
	db 27, KINGLER    ;  1% chance
	; nite
	db 19, ZUBAT      ; 20% chance 20
	db 25, STARYU     ; 20% chance 30
	db 24, SLOWPOKE   ; 15% chance 20
	db 24, KRABBY     ; 10% chance 20
	db 25, KRABBY     ; 10% chance
	db 24, STARYU     ; 10% chance
	db 25, SLOWPOKE   ;  5% chance
	db 25, GOLBAT     ;  5% chance 5
	db 26, KINGLER    ;  4% chance 5
	db 27, KINGLER    ;  1% chance
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B1F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 20, ZUBAT      ; 20% chance 20
	db 26, KRABBY     ; 20% chance 20
	db 26, SLOWPOKE   ; 15% chance 15
	db 26, SEEL       ; 10% chance 15
	db 26, SHELLDER   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 24, SEEL       ;  5% chance
	db 28, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 32, JYNX       ;  1% chance 1
	; day
	db 20, ZUBAT      ; 20% chance 20
	db 26, KRABBY     ; 20% chance 20
	db 26, SLOWPOKE   ; 15% chance 15
	db 26, SEEL       ; 10% chance 15
	db 26, SHELLDER   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 24, SEEL       ;  5% chance
	db 28, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; nite
	db 20, ZUBAT      ; 20% chance 20
	db 26, KRABBY     ; 20% chance 20
	db 26, SLOWPOKE   ; 15% chance 15
	db 26, SEEL       ; 10% chance 15
	db 26, SHELLDER   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 24, SEEL       ;  5% chance
	db 28, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B2F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 20, ZUBAT      ; 20% chance 20
	db 26, KRABBY     ; 20% chance 20
	db 26, SLOWPOKE   ; 15% chance 15
	db 26, SEEL       ; 10% chance 15
	db 26, SHELLDER   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 24, SEEL       ;  5% chance
	db 28, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 32, JYNX       ;  1% chance 1
	; day
	db 20, ZUBAT      ; 20% chance 20
	db 26, KRABBY     ; 20% chance 20
	db 26, SLOWPOKE   ; 15% chance 15
	db 26, SEEL       ; 10% chance 15
	db 26, SHELLDER   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 24, SEEL       ;  5% chance
	db 28, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; nite
	db 20, ZUBAT      ; 20% chance 20
	db 26, KRABBY     ; 20% chance 20
	db 26, SLOWPOKE   ; 15% chance 15
	db 26, SEEL       ; 10% chance 15
	db 26, SHELLDER   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 24, SEEL       ;  5% chance
	db 28, GOLBAT     ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B3F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 20, ZUBAT      ; 20% chance 20
	db 26, SEEL       ; 20% chance 20
	db 26, SHELLDER   ; 15% chance 15
	db 26, KRABBY     ; 10% chance 10
	db 26, SLOWPOKE   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 28, GOLBAT     ;  5% chance 5
	db 28, DEWGONG    ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; day
	db 20, ZUBAT      ; 20% chance 20
	db 26, SEEL       ; 20% chance 20
	db 26, SHELLDER   ; 15% chance 15
	db 26, KRABBY     ; 10% chance 10
	db 26, SLOWPOKE   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 28, GOLBAT     ;  5% chance 5
	db 28, DEWGONG    ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; nite
	db 20, ZUBAT      ; 20% chance 20
	db 26, SEEL       ; 20% chance 20
	db 26, SHELLDER   ; 15% chance 15
	db 26, KRABBY     ; 10% chance 10
	db 26, SLOWPOKE   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 28, GOLBAT     ;  5% chance 5
	db 28, DEWGONG    ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons SEAFOAM_ISLANDS_B4F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 20, ZUBAT      ; 20% chance 20
	db 26, SEEL       ; 20% chance 20
	db 26, SHELLDER   ; 15% chance 15
	db 26, KRABBY     ; 10% chance 10
	db 26, SLOWPOKE   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 28, GOLBAT     ;  5% chance 5
	db 28, DEWGONG    ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; day
	db 20, ZUBAT      ; 20% chance 20
	db 26, SEEL       ; 20% chance 20
	db 26, SHELLDER   ; 15% chance 15
	db 26, KRABBY     ; 10% chance 10
	db 26, SLOWPOKE   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 28, GOLBAT     ;  5% chance 5
	db 28, DEWGONG    ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	; nite
	db 20, ZUBAT      ; 20% chance 20
	db 26, SEEL       ; 20% chance 20
	db 26, SHELLDER   ; 15% chance 15
	db 26, KRABBY     ; 10% chance 10
	db 26, SLOWPOKE   ; 10% chance 10
	db 26, STARYU     ; 10% chance 10
	db 28, GOLBAT     ;  5% chance 5
	db 28, DEWGONG    ;  5% chance 5
	db 28, KINGLER    ;  4% chance 4
	db 30, JYNX       ;  1% chance 1
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, PONYTA     ; 20% chance 20
	db 29, GRIMER     ; 20% chance 25
	db 29, KOFFING    ; 15% chance 25
	db 30, KOFFING    ; 10% chance
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 30, GRIMER     ;  5% chance
	db 36, WEEZING    ;  5% chance 5
	db 35, MUK        ;  4% chance 5
	db 36, MUK        ;  1% chance
	; day
	db 28, PONYTA     ; 20% chance 20
	db 29, GRIMER     ; 20% chance 25
	db 29, KOFFING    ; 15% chance 25
	db 30, KOFFING    ; 10% chance
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 30, GRIMER     ;  5% chance
	db 36, WEEZING    ;  5% chance 5
	db 35, MUK        ;  4% chance 5
	db 36, MUK        ;  1% chance
	; nite
	db 28, PONYTA     ; 20% chance 20
	db 29, GRIMER     ; 20% chance 25
	db 29, KOFFING    ; 15% chance 25
	db 30, KOFFING    ; 10% chance
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 30, GRIMER     ;  5% chance
	db 35, WEEZING    ;  5% chance 5
	db 35, MUK        ;  4% chance 5
	db 35, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_2F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, PONYTA     ; 20% chance 20
	db 29, KOFFING    ; 20% chance 25
	db 28, GRIMER     ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 36, WEEZING    ; 10% chance 15
	db 36, WEEZING    ;  5% chance
	db 29, KOFFING    ;  5% chance
	db 34, MUK        ;  4% chance 5
	db 34, MUK        ;  1% chance
	; day
	db 28, PONYTA     ; 20% chance 20
	db 29, KOFFING    ; 20% chance 25
	db 28, GRIMER     ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 36, WEEZING    ; 10% chance 15
	db 36, WEEZING    ;  5% chance
	db 29, KOFFING    ;  5% chance
	db 34, MUK        ;  4% chance 5
	db 34, MUK        ;  1% chance
	; nite
	db 28, PONYTA     ; 20% chance 20
	db 29, KOFFING    ; 20% chance 25
	db 28, GRIMER     ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 36, WEEZING    ; 10% chance 15
	db 36, WEEZING    ;  5% chance
	db 29, KOFFING    ;  5% chance
	db 34, MUK        ;  4% chance 5
	db 34, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_3F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, PONYTA     ; 20% chance 20
	db 30, KOFFING    ; 20% chance 25
	db 36, WEEZING    ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 33, MAGMAR     ; 10% chance 10
	db 30, KOFFING    ;  5% chance
	db 29, GRIMER     ;  5% chance 6
	db 34, MUK        ;  4% chance 4
	db 29, GRIMER     ;  1% chance
	; day
	db 28, PONYTA     ; 20% chance 20
	db 30, KOFFING    ; 20% chance 25
	db 36, WEEZING    ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 33, MAGMAR     ; 10% chance 10
	db 30, KOFFING    ;  5% chance
	db 29, GRIMER     ;  5% chance 6
	db 34, MUK        ;  4% chance 4
	db 29, GRIMER     ;  1% chance
	; nite
	db 28, PONYTA     ; 20% chance 20
	db 30, KOFFING    ; 20% chance 25
	db 36, WEEZING    ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 33, MAGMAR     ; 10% chance 10
	db 30, KOFFING    ;  5% chance
	db 29, GRIMER     ;  5% chance 6
	db 34, MUK        ;  4% chance 4
	db 29, GRIMER     ;  1% chance
	end_grass_wildmons

	def_grass_wildmons POKEMON_MANSION_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, PONYTA     ; 20% chance 20
	db 30, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 24, DITTO      ; 10% chance 10
	db 36, MAGMAR     ;  5% chance 5
	db 38, MUK        ;  5% chance 6
	db 36, WEEZING    ;  4% chance 4
	db 38, MUK        ;  1% chance
	; day
	db 28, PONYTA     ; 20% chance 20
	db 30, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 24, DITTO      ; 10% chance 10
	db 36, MAGMAR     ;  5% chance 5
	db 38, MUK        ;  5% chance 6
	db 36, WEEZING    ;  4% chance 4
	db 38, MUK        ;  1% chance
	; nite
	db 28, PONYTA     ; 20% chance 20
	db 30, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 15
	db 30, GROWLITHE  ; 10% chance 10
	db 30, VULPIX     ; 10% chance 10
	db 24, DITTO      ; 10% chance 10
	db 36, MAGMAR     ;  5% chance 5
	db 38, MUK        ;  5% chance 6
	db 36, WEEZING    ;  4% chance 4
	db 38, MUK        ;  1% chance
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 36, ONIX       ; 20% chance 20
	db 24, MACHOP     ; 20% chance 20
	db 22, ZUBAT      ; 15% chance 16
	db 26, GEODUDE    ; 10% chance 10
	db 41, MACHOKE    ; 10% chance 10
	db 40, GOLBAT     ; 10% chance 10
	db 41, GRAVELER   ;  5% chance 10
	db 41, GRAVELER   ;  5% chance
	db 42, HITMONCHAN ;  4% chance 4
	db 24, ZUBAT      ;  1% chance
	; day
	db 36, ONIX       ; 20% chance 20
	db 24, MACHOP     ; 20% chance 20
	db 22, ZUBAT      ; 15% chance 16
	db 26, GEODUDE    ; 10% chance 10
	db 41, MACHOKE    ; 10% chance 10
	db 40, GOLBAT     ; 10% chance 10
	db 41, GRAVELER   ;  5% chance 10
	db 41, GRAVELER   ;  5% chance
	db 42, MAROWAK    ;  4% chance 4
	db 24, ZUBAT      ;  1% chance
	; nite
	db 36, ONIX       ; 20% chance 20
	db 24, MACHOP     ; 20% chance 20
	db 22, ZUBAT      ; 15% chance 16
	db 26, GEODUDE    ; 10% chance 10
	db 41, MACHOKE    ; 10% chance 10
	db 40, GOLBAT     ; 10% chance 10
	db 41, GRAVELER   ;  5% chance 10
	db 41, GRAVELER   ;  5% chance
	db 42, HITMONLEE  ;  4% chance 4
	db 24, ZUBAT      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_1F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 46, GOLBAT     ; 20% chance
	db 48, GRAVELER   ; 20% chance
	db 50, SANDSLASH  ; 15% chance
	db 50, ARBOK      ; 10% chance
	db 52, GLOOM      ; 10% chance
	db 52, WEEPINBELL ; 10% chance
	db 54, VENOMOTH   ;  5% chance
	db 54, PARASECT   ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	; day
	db 46, GOLBAT     ; 20% chance
	db 48, GRAVELER   ; 20% chance
	db 50, SANDSLASH  ; 15% chance
	db 50, ARBOK      ; 10% chance
	db 52, GLOOM      ; 10% chance
	db 52, WEEPINBELL ; 10% chance
	db 54, VENOMOTH   ;  5% chance
	db 54, PARASECT   ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	; nite
	db 46, GOLBAT     ; 20% chance
	db 48, GRAVELER   ; 20% chance
	db 50, SANDSLASH  ; 15% chance
	db 50, ARBOK      ; 10% chance
	db 52, GLOOM      ; 10% chance
	db 52, WEEPINBELL ; 10% chance
	db 54, VENOMOTH   ;  5% chance
	db 54, PARASECT   ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_2F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 46, GOLBAT     ; 20% chance
	db 48, MACHOKE    ; 20% chance
	db 50, RHYDON     ; 15% chance
	db 50, MAROWAK    ; 10% chance
	db 52, MAGNETON   ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 54, WIGGLYTUFF ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	; day
	db 46, GOLBAT     ; 20% chance
	db 48, MACHOKE    ; 20% chance
	db 50, RHYDON     ; 15% chance
	db 50, MAROWAK    ; 10% chance
	db 52, MAGNETON   ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 54, WIGGLYTUFF ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	; nite
	db 46, GOLBAT     ; 20% chance
	db 48, MACHOKE    ; 20% chance
	db 50, RHYDON     ; 15% chance
	db 50, MAROWAK    ; 10% chance
	db 52, MAGNETON   ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 54, WIGGLYTUFF ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons CERULEAN_CAVE_B1F ;silvermirror
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 46, GOLBAT     ; 20% chance
	db 48, KADABRA    ; 20% chance
	db 50, RHYDON     ; 15% chance
	db 50, MAROWAK    ; 10% chance
	db 52, RAICHU     ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 54, LICKITUNG  ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	; day
	db 46, GOLBAT     ; 20% chance
	db 48, KADABRA    ; 20% chance
	db 50, RHYDON     ; 15% chance
	db 50, MAROWAK    ; 10% chance
	db 52, RAICHU     ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 54, LICKITUNG  ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	; nite
	db 46, GOLBAT     ; 20% chance
	db 48, KADABRA    ; 20% chance
	db 50, RHYDON     ; 15% chance
	db 50, MAROWAK    ; 10% chance
	db 52, RAICHU     ; 10% chance
	db 52, ELECTRODE  ; 10% chance
	db 54, LICKITUNG  ;  5% chance
	db 54, CHANSEY    ;  5% chance
	db 55, DITTO      ;  4% chance
	db 55, DITTO      ;  1% chance
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; day
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 20% chance
	db 10, DITTO      ; 15% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ; 10% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	end_grass_wildmons

	db -1 ; end
