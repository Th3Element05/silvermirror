; Pokémon swarms in grass

SwarmGrassWildMonsChallenge:

; JIGGLYPUFF swarm
	map_id ROUTE_3 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  4, JIGGLYPUFF ; 20% chance 40
	db  5, JIGGLYPUFF ; 20% chance
	db  8, SPEAROW    ; 15% chance 20
	db  8, SENTRET    ; 10% chance 10
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  8, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  8, SPEAROW    ;  4% chance
	db  8, SPEAROW    ;  1% chance
	; day
	db  4, JIGGLYPUFF ; 20% chance 40
	db  5, JIGGLYPUFF ; 20% chance
	db  8, SPEAROW    ; 15% chance 20
	db  8, SENTRET    ; 10% chance 10
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  8, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  8, SPEAROW    ;  4% chance
	db  8, SPEAROW    ;  1% chance
	; nite
	db  4, JIGGLYPUFF ; 20% chance 40
	db  5, JIGGLYPUFF ; 20% chance
	db  8, HOOTHOOT   ; 15% chance 15
	db  8, RATTATA    ; 10% chance 10
	db  8, SANDSHREW  ; 10% chance 10
	db  8, EKANS      ; 10% chance 10
	db  8, MANKEY     ;  5% chance 10
	db  9, MANKEY     ;  5% chance
	db  6, ZUBAT      ;  4% chance 5
	db  7, ZUBAT      ;  1% chance

; DITTO swarm
	map_id ROUTE_5 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 10, DITTO      ; 20% chance 30
	db 14, PIDGEY     ; 20% chance 20
	db 14, SENTRET    ; 15% chance 20
	db 10, DITTO      ; 10% chance
	db  8, ABRA       ; 10% chance 10
	db  6, JIGGLYPUFF ; 10% chance 10
	db 18, PIDGEOTTO  ;  5% chance 5
	db 14, SENTRET    ;  5% chance
	db  8, SNUBBULL   ;  4% chance 5
	db  8, SNUBBULL   ;  1% chance
	; day
	db 10, DITTO      ; 20% chance 35
	db 14, PIDGEY     ; 20% chance 20
	db 14, SENTRET    ; 15% chance 20
	db 10, DITTO      ; 10% chance
	db  8, ABRA       ; 10% chance 10
	db  6, JIGGLYPUFF ; 10% chance 10
	db 18, PIDGEOTTO  ;  5% chance 5
	db 14, SENTRET    ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance
	; nite
	db 10, DITTO      ; 20% chance 35
	db 14, HOOTHOOT   ; 20% chance 20
	db 14, RATTATA    ; 15% chance 15
	db 10, DITTO      ; 10% chance
	db  8, ABRA       ; 10% chance 10
	db 12, MEOWTH     ; 10% chance 15
	db 20, NOCTOWL    ;  5% chance 5
	db 12, MEOWTH     ;  5% chance
	db 10, DITTO      ;  4% chance
	db 10, DITTO      ;  1% chance

; ABRA swarm
	map_id ROUTE_6 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  8, ABRA       ; 20% chance 40
	db  8, ABRA       ; 20% chance
	db 14, PIDGEY     ; 15% chance 20
	db 14, SENTRET    ; 10% chance 15
	db  6, JIGGLYPUFF ; 10% chance 10
	db 11, PSYDUCK    ; 10% chance 10
	db 14, PIDGEY     ;  5% chance
	db 14, SENTRET    ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance 5
	db 18, PIDGEOTTO  ;  1% chance
	; day
	db  8, ABRA       ; 20% chance 40
	db  8, ABRA       ; 20% chance
	db 14, PIDGEY     ; 15% chance 20
	db 14, SENTRET    ; 10% chance 15
	db  6, JIGGLYPUFF ; 10% chance 10
	db 11, PSYDUCK    ; 10% chance 10
	db 14, PIDGEY     ;  5% chance
	db 14, SENTRET    ;  5% chance
	db 18, PIDGEOTTO  ;  4% chance 5
	db 18, PIDGEOTTO  ;  1% chance
	; nite
	db  8, ABRA       ; 20% chance 40
	db  8, ABRA       ; 20% chance
	db 14, HOOTHOOT   ; 15% chance 20
	db 14, RATTATA    ; 10% chance 15
	db 12, MEOWTH     ; 10% chance 10
	db 11, WOOPER     ; 10% chance 10
	db 14, HOOTHOOT   ;  5% chance
	db 14, RATTATA    ;  5% chance
	db 20, NOCTOWL    ;  4% chance 5
	db 20, NOCTOWL    ;  1% chance

; VULPIX swarm
	map_id ROUTE_7 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, VULPIX     ; 20% chance 40
	db 18, VULPIX     ; 20% chance
	db 20, PIDGEY     ; 15% chance 20
	db 12, ABRA       ; 10% chance 10
	db 20, SENTRET    ; 10% chance 20
	db 20, SENTRET    ; 10% chance
	db 20, PIDGEY     ;  5% chance
	db 23, PIDGEOTTO  ;  5% chance 5
	db 22, KADABRA    ;  4% chance 5
	db 22, KADABRA    ;  1% chance
	; day
	db 18, VULPIX     ; 20% chance 40
	db 18, VULPIX     ; 20% chance
	db 20, PIDGEY     ; 15% chance 20
	db 12, ABRA       ; 10% chance 10
	db 20, SENTRET    ; 10% chance 20
	db 20, SENTRET    ; 10% chance
	db 20, PIDGEY     ;  5% chance
	db 23, PIDGEOTTO  ;  5% chance 5
	db 22, KADABRA    ;  4% chance 5
	db 22, KADABRA    ;  1% chance
	; nite
	db 18, VULPIX     ; 20% chance 40
	db 18, VULPIX     ; 20% chance
	db 20, RATTATA    ; 15% chance 15
	db 12, ABRA       ; 10% chance 10
	db 17, MEOWTH     ; 10% chance 10
	db 20, MURKROW    ; 10% chance 10
	db 18, HOUNDOUR   ;  5% chance 5
	db 23, PIDGEOTTO  ;  5% chance 5
	db 22, KADABRA    ;  4% chance 5
	db 22, KADABRA    ;  1% chance

; GROWLITHE swarm
	map_id ROUTE_8 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, GROWLITHE  ; 20% chance 40
	db 18, GROWLITHE  ; 20% chance
	db 20, PIDGEY     ; 15% chance 25
	db 20, SENTRET    ; 10% chance 15
	db 12, ABRA       ; 10% chance 10
	db 20, PIDGEY     ; 10% chance
	db 23, PIDGEOTTO  ;  5% chance 5
	db 20, SENTRET    ;  5% chance
	db 22, KADABRA    ;  4% chance 5
	db 22, KADABRA    ;  1% chance
	; day
	db 18, GROWLITHE  ; 20% chance 40
	db 18, GROWLITHE  ; 20% chance
	db 20, PIDGEY     ; 15% chance 25
	db 20, SENTRET    ; 10% chance 15
	db 12, ABRA       ; 10% chance 10
	db 20, PIDGEY     ; 10% chance
	db 23, PIDGEOTTO  ;  5% chance 5
	db 20, SENTRET    ;  5% chance
	db 22, KADABRA    ;  4% chance 5
	db 22, KADABRA    ;  1% chance
	; nite
	db 18, GROWLITHE  ; 20% chance 40
	db 18, GROWLITHE  ; 20% chance
	db 17, MEOWTH     ; 15% chance 15
	db 20, RATTATA    ; 10% chance 10
	db 12, ABRA       ; 10% chance 10
	db 16, GASTLY     ; 10% chance 10
	db 20, MURKROW    ;  5% chance 5
	db 18, HOUNDOUR   ;  5% chance
	db 22, KADABRA    ;  4% chance 5
	db 22, KADABRA    ;  1% chance

; VOLTORB swarm
	map_id ROUTE_10_NORTH ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 17, VOLTORB    ; 20% chance 40
	db 17, VOLTORB    ; 20% chance
	db 16, MAGNEMITE  ; 15% chance 20
	db 16, NIDORAN_M  ; 10% chance 10
	db 16, NIDORAN_F  ; 10% chance 10
	db 16, SPEAROW    ; 10% chance 15
	db 16, MAGNEMITE  ;  5% chance
	db 16, MAREEP     ;  5% chance 5
	db 16, SPEAROW    ;  4% chance 5
	db 16, SPEAROW    ;  1% chance
	; day
	db 17, VOLTORB    ; 20% chance 40
	db 17, VOLTORB    ; 20% chance
	db 16, MAGNEMITE  ; 15% chance 20
	db 16, NIDORAN_M  ; 10% chance 10
	db 16, NIDORAN_F  ; 10% chance 10
	db 16, SPEAROW    ; 10% chance 15
	db 16, MAGNEMITE  ;  5% chance
	db 16, MAREEP     ;  5% chance 5
	db 16, SPEAROW    ;  4% chance 5
	db 16, SPEAROW    ;  1% chance
	; nite
	db 17, VOLTORB    ; 20% chance 40
	db 17, VOLTORB    ; 20% chance
	db 16, MAGNEMITE  ; 15% chance 20
	db 16, RATTATA    ; 10% chance 10
	db 14, ZUBAT      ; 10% chance 10
	db 16, HOOTHOOT   ; 10% chance 15
	db 16, MAGNEMITE  ;  5% chance
	db 16, MAREEP     ;  5% chance 5
	db 16, HOOTHOOT   ;  4% chance 5
	db 16, HOOTHOOT   ;  1% chance

; DROWZEE swarm
	map_id ROUTE_11 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 15, DROWZEE    ; 20% chance 40
	db 15, DROWZEE    ; 20% chance
	db 15, SANDSHREW  ; 15% chance 20
	db 15, EKANS      ; 10% chance 20
	db 15, EKANS      ; 10% chance
	db 16, SPEAROW    ; 10% chance 10
	db 15, SANDSHREW  ;  5% chance
	db 15, HOPPIP     ;  5% chance 10
	db 15, HOPPIP     ;  4% chance
	db 15, HOPPIP     ;  1% chance
	; day
	db 15, DROWZEE    ; 20% chance 40
	db 15, DROWZEE    ; 20% chance
	db 15, SANDSHREW  ; 15% chance 20
	db 15, EKANS      ; 10% chance 20
	db 15, EKANS      ; 10% chance
	db 16, SPEAROW    ; 10% chance 10
	db 15, SANDSHREW  ;  5% chance
	db 15, HOPPIP     ;  5% chance 10
	db 15, HOPPIP     ;  4% chance
	db 15, HOPPIP     ;  1% chance
	; nite
	db 15, DROWZEE    ; 20% chance 40
	db 15, DROWZEE    ; 20% chance
	db 15, SANDSHREW  ; 15% chance 20
	db 15, EKANS      ; 10% chance 20
	db 15, EKANS      ; 10% chance
	db 16, HOOTHOOT   ; 10% chance 10
	db 15, SANDSHREW  ;  5% chance
	db 15, RATTATA    ;  5% chance 10
	db 15, RATTATA    ;  4% chance
	db 15, RATTATA    ;  1% chance

; FARFETCH_D swarm
	map_id ROUTE_13 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 26, FARFETCH_D ; 20% chance 35
	db 25, BELLSPROUT ; 20% chance 30
	db 26, FARFETCH_D ; 15% chance
	db 25, BELLSPROUT ; 10% chance
	db 24, PIDGEY     ; 10% chance 20
	db 24, PIDGEY     ; 10% chance
	db 27, PIDGEOTTO  ;  5% chance 5
	db 28, WEEPINBELL ;  5% chance 5
	db 22, HOPPIP     ;  4% chance 5
	db 22, HOPPIP     ;  1% chance
	; day
	db 26, FARFETCH_D ; 20% chance 35
	db 25, BELLSPROUT ; 20% chance 30
	db 26, FARFETCH_D ; 15% chance
	db 25, BELLSPROUT ; 10% chance
	db 24, PIDGEY     ; 10% chance 20
	db 24, PIDGEY     ; 10% chance
	db 27, PIDGEOTTO  ;  5% chance 5
	db 28, WEEPINBELL ;  5% chance 5
	db 22, HOPPIP     ;  4% chance 5
	db 22, HOPPIP     ;  1% chance
	; nite
	db 26, FARFETCH_D ; 20% chance 35
	db 25, ODDISH     ; 20% chance 30
	db 26, FARFETCH_D ; 15% chance
	db 25, ODDISH     ; 10% chance
	db 24, HOOTHOOT   ; 10% chance 20
	db 24, HOOTHOOT   ; 10% chance
	db 27, NOCTOWL    ;  5% chance 5
	db 28, GLOOM      ;  5% chance 5
	db 22, WOOPER     ;  4% chance 5
	db 22, WOOPER     ;  1% chance

; PONYTA swarm
	map_id ROUTE_17 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 21, PONYTA     ; 20% chance 40
	db 21, PONYTA     ; 20% chance
	db 24, DODUO      ; 15% chance 15
	db 22, SPEAROW    ; 10% chance 10
	db 20, NATU       ; 10% chance 10
	db 23, SENTRET    ; 10% chance 15
	db 23, SENTRET    ;  5% chance
	db 25, FURRET     ;  5% chance 5
	db 26, DODRIO     ;  4% chance 5
	db 26, DODRIO     ;  1% chance
	; day
	db 21, PONYTA     ; 20% chance 40
	db 21, PONYTA     ; 20% chance
	db 24, DODUO      ; 15% chance 15
	db 22, SPEAROW    ; 10% chance 10
	db 20, NATU       ; 10% chance 10
	db 23, SENTRET    ; 10% chance 15
	db 23, SENTRET    ;  5% chance
	db 25, FURRET     ;  5% chance 5
	db 26, DODRIO     ;  4% chance 5
	db 26, DODRIO     ;  1% chance
	; nite
	db 21, PONYTA     ; 20% chance 40
	db 21, PONYTA     ; 20% chance
	db 24, HOOTHOOT   ; 15% chance 15
	db 22, MURKROW    ; 10% chance 10
	db 20, NATU       ; 10% chance 10
	db 23, RATTATA    ; 10% chance 15
	db 23, RATTATA    ;  5% chance
	db 25, RATICATE   ;  5% chance 5
	db 26, NOCTOWL    ;  4% chance 5
	db 26, NOCTOWL    ;  1% chance

; MR__MIME swarm
	map_id ROUTE_21 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 26, MR__MIME   ; 20% chance 30
	db 16, PIDGEY     ; 20% chance 20
	db 14, SENTRET    ; 15% chance 15
	db 26, MR__MIME   ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance 10
	db 25, TANGELA    ; 10% chance 10
	db 20, FURRET     ;  5% chance 5
	db 15, MARILL     ;  5% chance 10
	db 15, MARILL     ;  4% chance
	db 15, MARILL     ;  1% chance
	; day
	db 26, MR__MIME   ; 20% chance 30
	db 16, PIDGEY     ; 20% chance 20
	db 14, SENTRET    ; 15% chance 15
	db 26, MR__MIME   ; 10% chance
	db 28, PIDGEOTTO  ; 10% chance 10
	db 25, TANGELA    ; 10% chance 10
	db 20, FURRET     ;  5% chance 5
	db 15, MARILL     ;  5% chance 10
	db 15, MARILL     ;  4% chance
	db 15, MARILL     ;  1% chance
	; nite
	db 26, MR__MIME   ; 20% chance 30
	db 16, HOOTHOOT   ; 20% chance 20
	db 14, RATTATA    ; 15% chance 15
	db 26, MR__MIME   ; 10% chance
	db 28, NOCTOWL    ; 10% chance 10
	db 25, TANGELA    ; 10% chance 10
	db 20, RATICATE   ;  5% chance 5
	db 15, MARILL     ;  5% chance 10
	db 15, MARILL     ;  4% chance
	db 15, MARILL     ;  1% chance

; PSYDUCK swarm
	map_id ROUTE_24 ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 10, PSYDUCK    ; 20% chance 40
	db 10, PSYDUCK    ; 20% chance
	db 13, PIDGEY     ; 15% chance 20
	db 10, BELLSPROUT ; 10% chance 20
	db 10, BELLSPROUT ; 10% chance
	db  8, ABRA       ; 10% chance 10
	db 13, PIDGEY     ;  5% chance
	db 12, SUNKERN    ;  5% chance 9
	db 12, SUNKERN    ;  4% chance
	db 18, PIDGEOTTO  ;  1% chance 1
	; day
	db 10, PSYDUCK    ; 20% chance 40
	db 10, PSYDUCK    ; 20% chance
	db 13, PIDGEY     ; 15% chance 20
	db 10, BELLSPROUT ; 10% chance 20
	db 10, BELLSPROUT ; 10% chance
	db  8, ABRA       ; 10% chance 10
	db 13, PIDGEY     ;  5% chance
	db 12, SUNKERN    ;  5% chance 9
	db 12, SUNKERN    ;  4% chance
	db 18, PIDGEOTTO  ;  1% chance 1
	; nite
	db 10, PSYDUCK    ; 20% chance 40
	db 10, PSYDUCK    ; 20% chance
	db 13, HOOTHOOT   ; 15% chance 20
	db 10, ODDISH     ; 10% chance 20
	db 10, ODDISH     ; 10% chance
	db  8, ABRA       ; 10% chance 10
	db 13, HOOTHOOT   ;  5% chance
	db 12, VENONAT    ;  5% chance 9
	db 12, VENONAT    ;  4% chance
	db 18, NOCTOWL    ;  1% chance 1

; PIKACHU swarm
	map_id VIRIDIAN_FOREST ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  3, PIKACHU    ; 20% chance 30
	db  3, CATERPIE   ; 20% chance 40
	db  3, LEDYBA     ; 15% chance 15
	db  3, CATERPIE   ; 10% chance
	db  4, METAPOD    ; 10% chance 10
	db  3, WEEDLE     ; 10% chance 10
	db  4, KAKUNA     ;  5% chance 5
	db  3, PIKACHU    ;  5% chance
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	; day
	db  3, PIKACHU    ; 20% chance 30
	db  3, CATERPIE   ; 20% chance 40
	db  3, LEDYBA     ; 15% chance 15
	db  3, CATERPIE   ; 10% chance
	db  4, METAPOD    ; 10% chance 10
	db  3, WEEDLE     ; 10% chance 10
	db  4, KAKUNA     ;  5% chance 5
	db  3, PIKACHU    ;  5% chance
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance
	; nite
	db  3, PIKACHU    ; 20% chance 30
	db  3, WEEDLE     ; 20% chance 40
	db  3, SPINARAK   ; 15% chance 15
	db  3, WEEDLE     ; 10% chance
	db  4, KAKUNA     ; 10% chance 10
	db  3, CATERPIE   ; 10% chance 10
	db  4, METAPOD    ;  5% chance 5
	db  3, PIKACHU    ;  5% chance
	db  3, PIKACHU    ;  4% chance 5
	db  3, PIKACHU    ;  1% chance

; CLEFAIRY swarm
	map_id MOUNT_MOON ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  8, CLEFAIRY   ; 20% chance 30
	db  6, ZUBAT      ; 20% chance 50
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  8, CLEFAIRY   ; 10% chance
	db  6, GEODUDE    ; 10% chance 15
	db  6, GEODUDE    ;  5% chance
	db  4, PARAS      ;  5% chance 5
	db  7, ZUBAT      ;  4% chance
	db  7, ZUBAT      ;  1% chance 1
	; day
	db  8, CLEFAIRY   ; 20% chance 30
	db  6, ZUBAT      ; 20% chance 50
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  8, CLEFAIRY   ; 10% chance
	db  6, GEODUDE    ; 10% chance 15
	db  6, GEODUDE    ;  5% chance
	db  4, PARAS      ;  5% chance 5
	db  7, ZUBAT      ;  4% chance
	db  7, ZUBAT      ;  1% chance 1
	; nite
	db  8, CLEFAIRY   ; 20% chance 30
	db  6, ZUBAT      ; 20% chance 50
	db  6, ZUBAT      ; 15% chance
	db  7, ZUBAT      ; 10% chance
	db  8, CLEFAIRY   ; 10% chance
	db  6, GEODUDE    ; 10% chance 15
	db  6, GEODUDE    ;  5% chance
	db  4, PARAS      ;  5% chance 5
	db  7, ZUBAT      ;  4% chance
	db  7, ZUBAT      ;  1% chance 1

	map_id MOUNT_MOON_B2F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db  8, CLEFAIRY   ; 20% chance 30
	db  7, ZUBAT      ; 20% chance 40
	db  6, GEODUDE    ; 15% chance 20
	db  8, CLEFAIRY   ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, PARAS      ; 10% chance 10
	db  7, ZUBAT      ;  5% chance
	db  6, GEODUDE    ;  5% chance
	db  7, ZUBAT      ;  4% chance 4
	db  8, DUNSPARCE  ;  1% chance 1
	; day
	db  8, CLEFAIRY   ; 20% chance 30
	db  7, ZUBAT      ; 20% chance 40
	db  6, GEODUDE    ; 15% chance 20
	db  8, CLEFAIRY   ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, PARAS      ; 10% chance 10
	db  7, ZUBAT      ;  5% chance
	db  6, GEODUDE    ;  5% chance
	db  7, ZUBAT      ;  4% chance 4
	db  8, DUNSPARCE  ;  1% chance 1
	; nite
	db  8, CLEFAIRY   ; 20% chance 30
	db  7, ZUBAT      ; 20% chance 40
	db  6, GEODUDE    ; 15% chance 20
	db  8, CLEFAIRY   ; 10% chance
	db  7, ZUBAT      ; 10% chance
	db  7, PARAS      ; 10% chance 10
	db  7, ZUBAT      ;  5% chance
	db  6, GEODUDE    ;  5% chance
	db  7, ZUBAT      ;  4% chance 4
	db  8, DUNSPARCE  ;  1% chance 1

; CUBONE swarm (1)
	map_id ROCK_TUNNEL_1F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 12, CUBONE     ; 20% chance 25
	db 15, ZUBAT      ; 20% chance 30
	db 17, MACHOP     ; 15% chance 15
	db 16, ZUBAT      ; 10% chance
	db 16, GEODUDE    ; 10% chance 20
	db 16, GEODUDE    ; 10% chance
	db 15, PHANPY     ;  5% chance 5
	db 14, ONIX       ;  5% chance 5
	db 12, CUBONE     ;  4% chance
	db 12, CUBONE     ;  1% chance
	; day
	db 12, CUBONE     ; 20% chance 25
	db 15, ZUBAT      ; 20% chance 30
	db 17, MACHOP     ; 15% chance 15
	db 16, ZUBAT      ; 10% chance
	db 16, GEODUDE    ; 10% chance 20
	db 16, GEODUDE    ; 10% chance
	db 15, PHANPY     ;  5% chance 5
	db 14, ONIX       ;  5% chance 5
	db 12, CUBONE     ;  4% chance
	db 12, CUBONE     ;  1% chance
	; nite
	db 12, CUBONE     ; 20% chance 25
	db 15, ZUBAT      ; 20% chance 30
	db 17, MACHOP     ; 15% chance 15
	db 16, ZUBAT      ; 10% chance
	db 16, GEODUDE    ; 10% chance 20
	db 16, GEODUDE    ; 10% chance
	db 15, PHANPY     ;  5% chance 5
	db 14, ONIX       ;  5% chance 5
	db 12, CUBONE     ;  4% chance
	db 12, CUBONE     ;  1% chance

; CUBONE swarm (2)
	map_id ROCK_TUNNEL_B1F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 12, CUBONE     ; 20% chance 30
	db 16, ZUBAT      ; 20% chance 30
	db 16, GEODUDE    ; 15% chance 20
	db 17, ZUBAT      ; 10% chance
	db 17, MACHOP     ; 10% chance 10
	db 12, CUBONE     ; 10% chance
	db 17, GEODUDE    ;  5% chance
	db 12, PHANPY     ;  5% chance 5
	db 15, ONIX       ;  4% chance 5
	db 16, ONIX       ;  1% chance
	; day
	db 12, CUBONE     ; 20% chance 30
	db 16, ZUBAT      ; 20% chance 30
	db 16, GEODUDE    ; 15% chance 20
	db 17, ZUBAT      ; 10% chance
	db 17, MACHOP     ; 10% chance 10
	db 12, CUBONE     ; 10% chance
	db 17, GEODUDE    ;  5% chance
	db 12, PHANPY     ;  5% chance 5
	db 15, ONIX       ;  4% chance 5
	db 16, ONIX       ;  1% chance
	; nite
	db 12, CUBONE     ; 20% chance 30
	db 16, ZUBAT      ; 20% chance 30
	db 16, GEODUDE    ; 15% chance 20
	db 17, ZUBAT      ; 10% chance
	db 17, MACHOP     ; 10% chance 10
	db 12, CUBONE     ; 10% chance
	db 17, GEODUDE    ;  5% chance
	db 12, PHANPY     ;  5% chance 5
	db 15, ONIX       ;  4% chance 5
	db 16, ONIX       ;  1% chance

; JYNX swarm (1)
	map_id SEAFOAM_ISLANDS_B1F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, JYNX       ; 20% chance 30
	db 21, SEEL       ; 20% chance 21
	db 21, KRABBY     ; 15% chance 15
	db 21, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 20, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 21, SEEL       ;  1% chance
	; day
	db 30, JYNX       ; 20% chance 30
	db 21, SEEL       ; 20% chance 21
	db 21, KRABBY     ; 15% chance 15
	db 21, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 20, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 21, SEEL       ;  1% chance
	; nite
	db 30, JYNX       ; 20% chance 30
	db 21, SEEL       ; 20% chance 21
	db 21, KRABBY     ; 15% chance 15
	db 21, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 20, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 21, SEEL       ;  1% chance

; JYNX swarm (2)
	map_id SEAFOAM_ISLANDS_B2F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, JYNX       ; 20% chance 30
	db 22, SEEL       ; 20% chance 21
	db 21, KRABBY     ; 15% chance 15
	db 22, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 21, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 22, SEEL       ;  1% chance
	; day
	db 30, JYNX       ; 20% chance 30
	db 22, SEEL       ; 20% chance 21
	db 21, KRABBY     ; 15% chance 15
	db 22, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 21, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 22, SEEL       ;  1% chance
	; nite
	db 30, JYNX       ; 20% chance 30
	db 22, SEEL       ; 20% chance 21
	db 21, KRABBY     ; 15% chance 15
	db 22, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 21, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 22, SEEL       ;  1% chance

; JYNX swarm (3)
	map_id SEAFOAM_ISLANDS_B3F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, JYNX       ; 20% chance 30
	db 23, SEEL       ; 20% chance 21
	db 22, KRABBY     ; 15% chance 15
	db 23, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 22, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 23, SEEL       ;  1% chance
	; day
	db 30, JYNX       ; 20% chance 30
	db 23, SEEL       ; 20% chance 21
	db 22, KRABBY     ; 15% chance 15
	db 23, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 22, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 23, SEEL       ;  1% chance
	; nite
	db 30, JYNX       ; 20% chance 30
	db 23, SEEL       ; 20% chance 21
	db 22, KRABBY     ; 15% chance 15
	db 23, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 22, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 4
	db 23, SEEL       ;  1% chance

; JYNX swarm (4)
	map_id SEAFOAM_ISLANDS_B4F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, JYNX       ; 20% chance 30
	db 24, SEEL       ; 20% chance 20
	db 22, KRABBY     ; 15% chance 15
	db 24, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 23, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 5
	db 25, SNEASEL    ;  1% chance
	; day
	db 30, JYNX       ; 20% chance 30
	db 24, SEEL       ; 20% chance 20
	db 22, KRABBY     ; 15% chance 15
	db 24, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 23, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 5
	db 25, SNEASEL    ;  1% chance
	; nite
	db 30, JYNX       ; 20% chance 30
	db 24, SEEL       ; 20% chance 20
	db 22, KRABBY     ; 15% chance 15
	db 24, SHELLDER   ; 10% chance 10
	db 30, JYNX       ; 10% chance
	db 23, SWINUB     ; 10% chance 10
	db 28, KINGLER    ;  5% chance 5
	db 34, DEWGONG    ;  5% chance 5
	db 25, SNEASEL    ;  4% chance 5
	db 25, SNEASEL    ;  1% chance

; ELECTABUZZ swarm
	map_id POWER_PLANT ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, ELECTABUZZ ; 20% chance 30
	db 23, MAGNEMITE  ; 20% chance 25
	db 20, PIKACHU    ; 15% chance 15
	db 23, VOLTORB    ; 10% chance 10
	db 24, GRIMER     ; 10% chance 10
	db 30, MAGNETON   ; 10% chance 10
	db 23, MAGNEMITE  ;  5% chance
	db 30, ELECTABUZZ ;  5% chance
	db 30, ELECTABUZZ ;  4% chance
	db 30, ELECTABUZZ ;  1% chance
	; day
	db 30, ELECTABUZZ ; 20% chance 30
	db 23, MAGNEMITE  ; 20% chance 25
	db 20, PIKACHU    ; 15% chance 15
	db 23, VOLTORB    ; 10% chance 10
	db 24, GRIMER     ; 10% chance 10
	db 30, MAGNETON   ; 10% chance 10
	db 23, MAGNEMITE  ;  5% chance
	db 30, ELECTABUZZ ;  5% chance
	db 30, ELECTABUZZ ;  4% chance
	db 30, ELECTABUZZ ;  1% chance
	; nite
	db 30, ELECTABUZZ ; 20% chance 30
	db 23, MAGNEMITE  ; 20% chance 25
	db 20, PIKACHU    ; 15% chance 15
	db 23, VOLTORB    ; 10% chance 10
	db 24, GRIMER     ; 10% chance 10
	db 30, MAGNETON   ; 10% chance 10
	db 23, MAGNEMITE  ;  5% chance
	db 30, ELECTABUZZ ;  5% chance
	db 30, ELECTABUZZ ;  4% chance
	db 30, ELECTABUZZ ;  1% chance

; MAGMAR swarm (1)
	map_id POKEMON_MANSION_1F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 33, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 20
	db 33, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; day
	db 33, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 20
	db 33, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; nite
	db 33, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 20
	db 33, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance

; MAGMAR swarm (2)
	map_id POKEMON_MANSION_2F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 33, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 20
	db 33, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; day
	db 33, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 20
	db 33, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance
	; nite
	db 33, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 20
	db 33, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 35, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, GRIMER     ;  4% chance
	db 28, GRIMER     ;  1% chance

; MAGMAR swarm (3)
	map_id POKEMON_MANSION_3F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 34, MAGMAR     ; 20% chance 30
	db 28, KOFFING    ; 20% chance 25
	db 28, GRIMER     ; 15% chance 15
	db 34, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, KOFFING    ;  4% chance
	db 28, KOFFING    ;  1% chance
	; day
	db 34, MAGMAR     ; 20% chance 30
	db 28, KOFFING    ; 20% chance 25
	db 28, GRIMER     ; 15% chance 15
	db 34, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, KOFFING    ;  4% chance
	db 28, KOFFING    ;  1% chance
	; nite
	db 34, MAGMAR     ; 20% chance 30
	db 28, KOFFING    ; 20% chance 25
	db 28, GRIMER     ; 15% chance 15
	db 34, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 28, KOFFING    ;  4% chance
	db 28, KOFFING    ;  1% chance

; MAGMAR swarm (4)
	map_id POKEMON_MANSION_B1F ;SWARM2
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 34, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 15
	db 34, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	; day
	db 34, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 15
	db 34, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance
	; nite
	db 34, MAGMAR     ; 20% chance 30
	db 28, GRIMER     ; 20% chance 20
	db 28, KOFFING    ; 15% chance 15
	db 34, MAGMAR     ; 10% chance
	db 25, HOUNDOUR   ; 10% chance 10
	db 25, SLUGMA     ; 10% chance 10
	db 36, WEEZING    ;  5% chance 5
	db 38, MUK        ;  5% chance 5
	db 20, DITTO      ;  4% chance 5
	db 20, DITTO      ;  1% chance

; JOHTO swarm
	map_id ROUTE_29
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 15% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ;  5% chance
	db 20, DITTO      ;  5% chance
	db 20, DITTO      ;  4% chance
	db 20, DITTO      ;  1% chance
	; day
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 15% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ;  5% chance
	db 20, DITTO      ;  5% chance
	db 20, DITTO      ;  4% chance
	db 20, DITTO      ;  1% chance
	; nite
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 20% chance
	db 20, DITTO      ; 15% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ; 10% chance
	db 20, DITTO      ;  5% chance
	db 20, DITTO      ;  5% chance
	db 20, DITTO      ;  4% chance
	db 20, DITTO      ;  1% chance

	db -1 ; end
