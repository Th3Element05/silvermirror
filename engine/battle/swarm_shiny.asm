GenerateSwarmShiny:
	ld a, [wSwarmMapGroup]
	ld b, a
	ld a, [wSwarmMapNumber]
	ld c, a
	call GetWorldMapLocation
; kanto
	cp LANDMARK_ROUTE_3
	jp z, .jigglypuff
	cp LANDMARK_ROUTE_5
	jp z, .ditto
	cp LANDMARK_ROUTE_6
	jp z, .psyduck
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
	cp LANDMARK_ROUTE_16
	jp z, .grimer
	cp LANDMARK_ROUTE_17
	jp z, .ponyta
	cp LANDMARK_ROUTE_19
	jp z, .staryu
	cp LANDMARK_ROUTE_20
	jp z, .horsea
	cp LANDMARK_ROUTE_21
	jp z, .mr_mime
	cp LANDMARK_ROUTE_22
	jp z, .nidoran_m
	cp LANDMARK_ROUTE_24
	jp z, .abra
	cp LANDMARK_VIRIDIAN_FOREST
	jp z, .pikachu
	cp LANDMARK_MT_MOON
	jp z, .clefairy
	cp LANDMARK_VERMILION_CITY
	jp z, .shellder
	cp LANDMARK_ROCK_TUNNEL
	jp z, .onix
	cp LANDMARK_SEAFOAM_ISLANDS
	jp z, .jynx
	cp LANDMARK_POWER_PLANT
	jp z, .electabuzz
	cp LANDMARK_POKEMON_MANSION
	jp z, .magmar
	cp LANDMARK_VICTORY_ROAD
	jp z, .geodude
	cp LANDMARK_BEHIND_BILLS_HOUSE
	jp z, .eevee
; johto
	cp LANDMARK_ROUTE_29
	jp z, .pineco
	cp LANDMARK_ROUTE_30
	jp z, .ledyba
	cp LANDMARK_ROUTE_32
	jp z, .qwilfish
	cp LANDMARK_ROUTE_35
	jp z, .yanma
	cp LANDMARK_ROUTE_37
	jp z, .stantler
	cp LANDMARK_ROUTE_38
	jp z, .tauros
	cp LANDMARK_ROUTE_41
	jp z, .mantine
	cp LANDMARK_ROUTE_42
	jp z, .marill
	cp LANDMARK_ROUTE_44
	jp z, .remoraid
	cp LANDMARK_ROUTE_45
	jp z, .skarmory
	cp LANDMARK_DARK_CAVE
	jp z, .dunsparce
	cp LANDMARK_UNION_CAVE
	jp z, .wooper
	cp LANDMARK_ILEX_FOREST
	jp z, .oddish
	cp LANDMARK_NATIONAL_PARK
	jp z, .sunkern
	cp LANDMARK_OLIVINE_CITY
	jp z, .chinchou
	cp LANDMARK_LAKE_OF_RAGE
	jp z, .magikarp
	cp LANDMARK_ICE_PATH
	jp z, .sneasel
	cp LANDMARK_DRAGONS_DEN
	jp z, .dratini
	jp .skipshine

; kanto
.jigglypuff
	ld a, [wCurPartySpecies]
	cp JIGGLYPUFF
	jp .next
.ditto
	ld a, [wCurPartySpecies]
	cp DITTO
	jp .next
.psyduck
	ld a, [wCurPartySpecies]
	cp PSYDUCK
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
.grimer
	ld a, [wCurPartySpecies]
	cp GRIMER
	jp .next
.ponyta
	ld a, [wCurPartySpecies]
	cp PONYTA
	jp .next
.staryu
	ld a, [wCurPartySpecies]
	cp STARYU
	jp .next
.horsea
	ld a, [wCurPartySpecies]
	cp HORSEA
	jp .next
.mr_mime
	ld a, [wCurPartySpecies]
	cp MR__MIME
	jp .next
.nidoran_m
	ld a, [wCurPartySpecies]
	cp JIGGLYPUFF
	jp .next
.abra
	ld a, [wCurPartySpecies]
	cp ABRA
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
.onix
	ld a, [wCurPartySpecies]
	cp ONIX
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
.geodude
	ld a, [wCurPartySpecies]
	cp GEODUDE
	jp .next
.eevee
	ld a, [wCurPartySpecies]
	cp EEVEE
	jp .next

; johto
.pineco
	ld a, [wCurPartySpecies]
	cp PINECO
	jp .next
.ledyba
	ld a, [wCurPartySpecies]
	cp LEDYBA
	jp .next
.qwilfish
	ld a, [wCurPartySpecies]
	cp QWILFISH
	jp .next
.yanma
	ld a, [wCurPartySpecies]
	cp YANMA
	jp .next
.stantler
	ld a, [wCurPartySpecies]
	cp STANTLER
	jp .next
.tauros
	ld a, [wCurPartySpecies]
	cp TAUROS
	jp .next
.mantine
	ld a, [wCurPartySpecies]
	cp MANTINE
	jp .next
.marill
	ld a, [wCurPartySpecies]
	cp MARILL
	jp .next
.remoraid
	ld a, [wCurPartySpecies]
	cp REMORAID
	jp .next
.skarmory
	ld a, [wCurPartySpecies]
	cp SKARMORY
	jp .next
.dunsparce
	ld a, [wCurPartySpecies]
	cp DUNSPARCE
	jp .next
.wooper
	ld a, [wCurPartySpecies]
	cp WOOPER
	jp .next
.oddish
	ld a, [wCurPartySpecies]
	cp ODDISH
	jp .next
.sunkern
	ld a, [wCurPartySpecies]
	cp SUNKERN
	jp .next
.chinchou
	ld a, [wCurPartySpecies]
	cp CHINCHOU
	jp .next
.magikarp
	ld a, [wCurPartySpecies]
	cp MAGIKARP
	jp .next
.sneasel
	ld a, [wCurPartySpecies]
	cp SNEASEL
	jp .next
.dratini
	ld a, [wCurPartySpecies]
	cp DRATINI
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
