GenerateSwarmShiny:
	ld a, [wSwarmMapGroup]
	ld b, a
	ld a, [wSwarmMapNumber]
	ld c, a
	call GetWorldMapLocation
	cp LANDMARK_ROUTE_3
	jp z, .jigglypuff
	cp LANDMARK_ROUTE_5
	jp z, .ditto
	cp LANDMARK_ROUTE_6
	jp z, .abra
	cp LANDMARK_ROUTE_7
	jp z, .vulpix
	cp LANDMARK_ROUTE_8
	jp z, .growlithe
	cp LANDMARK_ROUTE_10
	jp z, .voltorb
	cp LANDMARK_ROUTE_11
	jp z, .drowzee
	cp LANDMARK_ROUTE_13
	jp z, .farfetch_d
	cp LANDMARK_ROUTE_15
	jp z, .venonat
	cp LANDMARK_ROUTE_17
	jp z, .ponyta
	cp LANDMARK_ROUTE_19
	jp z, .staryu
	cp LANDMARK_ROUTE_21
	jp z, .mr_mime
	cp LANDMARK_ROUTE_23
	jp z, .dratini
	cp LANDMARK_ROUTE_24
	jp z, .bellsprout
	cp LANDMARK_ROUTE_25
	jp z, .oddish
	cp LANDMARK_VIRIDIAN_FOREST
	jp z, .pikachu
	cp LANDMARK_MT_MOON
	jp z, .clefairy
	cp LANDMARK_VERMILION_CITY
	jp z, .shellder
	cp LANDMARK_ROCK_TUNNEL
	jp z, .cubone
	cp LANDMARK_SEAFOAM_ISLANDS
	jp z, .jynx
	cp LANDMARK_POWER_PLANT
	jp z, .electabuzz
	cp LANDMARK_POKEMON_MANSION
	jp z, .magmar
	cp LANDMARK_ROUTE_29
	jp z, .ditto
	jp .skipshine

.jigglypuff
	ld a, [wCurPartySpecies]
	cp JIGGLYPUFF
	jp .next
.ditto
	ld a, [wCurPartySpecies]
	cp DITTO
	jp .next
.abra
	ld a, [wCurPartySpecies]
	cp ABRA
	jp .next
.vulpix
	ld a, [wCurPartySpecies]
	cp VULPIX
	jp .next
.growlithe
	ld a, [wCurPartySpecies]
	cp GROWLITHE
	jp .next
.voltorb
	ld a, [wCurPartySpecies]
	cp VOLTORB
	jp .next
.drowzee
	ld a, [wCurPartySpecies]
	cp DROWZEE
	jp .next
.farfetch_d
	ld a, [wCurPartySpecies]
	cp FARFETCH_D
	jp .next
.venonat
	ld a, [wCurPartySpecies]
	cp VENONAT
	jp .next
.ponyta
	ld a, [wCurPartySpecies]
	cp PONYTA
	jp .next
.staryu
	ld a, [wCurPartySpecies]
	cp STARYU
	jp .next
.mr_mime
	ld a, [wCurPartySpecies]
	cp MR__MIME
	jp .next
.dratini
	ld a, [wCurPartySpecies]
	cp DRATINI
	jp .next
.bellsprout
	ld a, [wCurPartySpecies]
	cp BELLSPROUT
	jp .next
.oddish
	ld a, [wCurPartySpecies]
	cp ODDISH
	jp .next
.pikachu
	ld a, [wCurPartySpecies]
	cp PIKACHU
	jp .next
.clefairy
	ld a, [wCurPartySpecies]
	cp CLEFAIRY
	jp .next
.shellder
	ld a, [wCurPartySpecies]
	cp SHELLDER
	jp .next
.cubone
	ld a, [wCurPartySpecies]
	cp CUBONE
	jp .next
.jynx
	ld a, [wCurPartySpecies]
	cp JYNX
	jp .next
.electabuzz
	ld a, [wCurPartySpecies]
	cp ELECTABUZZ
	jp .next
.magmar
	ld a, [wCurPartySpecies]
	cp MAGMAR
.next
	jr nz, .skipshine
	;fallthrough
.rollshiny
	call Random
	cp 2 ; adjust to desired percentage
	jr nc, .trynext
	ld b, ATKDEFDV_SHINY
	ld c, SPDSPCDV_SHINY
	jr .UpdateDVs
.trynext:
	call Random
	cp 2 ; adjust to desired percentage
	jr nc, .skipshine
	ld b, ATKDEFDV_SHINYF
	ld c, SPDSPCDV_SHINY
	jr .UpdateDVs

.skipshine:
; Generate new random DVs
	call BattleRandom
	ld b, a
	call BattleRandom
	ld c, a

.UpdateDVs:
; Input DVs in register bc
	ld hl, wEnemyMonDVs
	ld a, b
	ld [hli], a
	ld [hl], c
	ret