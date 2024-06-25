GenerateAltSwarmShiny:
	ld a, [wSwarmMapGroup]
	ld b, a
	ld a, [wSwarmMapNumber]
	ld c, a
	call GetWorldMapLocation
	cp LANDMARK_ROUTE_3
	jp z, .jigglypuff
	cp LANDMARK_ROUTE_5
	jp z, .snubbull
	cp LANDMARK_ROUTE_6
	jp z, .abra
	cp LANDMARK_ROUTE_7
	jp z, .murkrow
	cp LANDMARK_ROUTE_8
	jp z, .houndour
	cp LANDMARK_ROUTE_10
	jp z, .mareep
	cp LANDMARK_ROUTE_11
	jp z, .hoppip
	cp LANDMARK_ROUTE_13
	jp z, .farfetch_d
	cp LANDMARK_ROUTE_15
	jp z, .venonat
	cp LANDMARK_ROUTE_17
	jp z, .natu
	cp LANDMARK_ROUTE_19
	jp z, .staryu
	cp LANDMARK_ROUTE_21
	jp z, .marill
	cp LANDMARK_ROUTE_24
	jp z, .oddish
	cp LANDMARK_ROUTE_25
	jp z, .bellsprout
	cp LANDMARK_VIRIDIAN_FOREST
	jp z, .pikachu
	cp LANDMARK_MT_MOON
	jp z, .clefairy
	cp LANDMARK_VERMILION_CITY
	jp z, .shellder
	cp LANDMARK_ROCK_TUNNEL
	jp z, .phanpy
	cp LANDMARK_SEAFOAM_ISLANDS
	jp z, .jynx
	cp LANDMARK_POWER_PLANT
	jp z, .electabuzz
	cp LANDMARK_POKEMON_MANSION
	jp z, .magmar
	cp LANDMARK_VICTORY_ROAD
	jp z, .ditto
	cp LANDMARK_ROUTE_30
	jp z, .ditto
	jp .skipshine

.jigglypuff
	ld a, [wCurPartySpecies]
	cp JIGGLYPUFF
	jp .next
.snubbull
	ld a, [wCurPartySpecies]
	cp SNUBBULL
	jp .next
.abra
	ld a, [wCurPartySpecies]
	cp ABRA
	jp .next
.murkrow
	ld a, [wCurPartySpecies]
	cp MURKROW
	jp .next
.houndour
	ld a, [wCurPartySpecies]
	cp HOUNDOUR
	jp .next
.mareep
	ld a, [wCurPartySpecies]
	cp MAREEP
	jp .next
.hoppip
	ld a, [wCurPartySpecies]
	cp HOPPIP
	jp .next
.farfetch_d
	ld a, [wCurPartySpecies]
	cp FARFETCH_D
	jp .next
.venonat
	ld a, [wCurPartySpecies]
	cp VENONAT
	jp .next
.natu
	ld a, [wCurPartySpecies]
	cp NATU
	jp .next
.staryu
	ld a, [wCurPartySpecies]
	cp STARYU
	jp .next
.marill
	ld a, [wCurPartySpecies]
	cp MARILL
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
.phanpy
	ld a, [wCurPartySpecies]
	cp PHANPY
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
	jp .next
.larvitar
	ld a, [wCurPartySpecies]
	cp LARVITAR
	jp .next
.ditto
	ld a, [wCurPartySpecies]
	cp DITTO
	jp .next
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