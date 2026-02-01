GenerateAltSwarmShiny:
	ld a, [wSwarmMapGroup]
	ld b, a
	ld a, [wSwarmMapNumber]
	ld c, a
	call GetWorldMapLocation
; kanto
	cp LANDMARK_ROUTE_1
	jp z, .sentret
	cp LANDMARK_ROUTE_3
	jp z, .mankey
	cp LANDMARK_ROUTE_4
	jp z, .sandshrew
	cp LANDMARK_ROUTE_5
	jp z, .snubbull
	cp LANDMARK_ROUTE_7
	jp z, .murkrow
	cp LANDMARK_ROUTE_8
	jp z, .houndour
	cp LANDMARK_ROUTE_10
	jp z, .magnemite
	cp LANDMARK_ROUTE_11
	jp z, .ekans
	cp LANDMARK_ROUTE_12
	jp z, .qwilfish
	cp LANDMARK_ROUTE_13
	jp z, .hoothoot
	cp LANDMARK_ROUTE_15
	jp z, .venonat
	cp LANDMARK_ROUTE_16
	jp z, .natu
	cp LANDMARK_ROUTE_17
	jp z, .slugma
	cp LANDMARK_ROUTE_21
	jp z, .tangela
	cp LANDMARK_ROUTE_22
	jp z, .nidoran_f
	cp LANDMARK_ROUTE_26
	jp z, .poliwag
	cp LANDMARK_VIRIDIAN_FOREST
	jp z, .caterpie
	cp LANDMARK_MT_MOON
	jp z, .zubat
	cp LANDMARK_ROCK_TUNNEL
	jp z, .cubone
	cp LANDMARK_SEAFOAM_ISLANDS
	jp z, .krabby
	cp LANDMARK_POKEMON_MANSION
	jp z, .magmar
	cp LANDMARK_VICTORY_ROAD
	jp z, .larvitar
	cp LANDMARK_BEHIND_BILLS_HOUSE
	jp z, .eevee
; johto
	cp LANDMARK_ROUTE_29
	jp z, .hoppip
	cp LANDMARK_ROUTE_31
	jp z, .bellsprout
	cp LANDMARK_ROUTE_32
	jp z, .mareep
	cp LANDMARK_ROUTE_33
	jp z, .aipom
	cp LANDMARK_ROUTE_38
	jp z, .miltank
	cp LANDMARK_ROUTE_39
	jp z, .meowth
	cp LANDMARK_ROUTE_43
	jp z, .girafarig
	cp LANDMARK_ROUTE_44
	jp z, .lickitung
	cp LANDMARK_ROUTE_45
	jp z, .gligar
	cp LANDMARK_ROUTE_46
	jp z, .phanpy
	cp LANDMARK_DARK_CAVE
	jp z, .teddiursa
	cp LANDMARK_RUINS_OF_ALPH
	jp z, .smeargle
	cp LANDMARK_SLOWPOKE_WELL
	jp z, .slowpoke
	cp LANDMARK_ILEX_FOREST
	jp z, .paras
	cp LANDMARK_NATIONAL_PARK
	jp z, .spinarak
	cp LANDMARK_BURNED_TOWER
	jp z, .koffing
	cp LANDMARK_OLIVINE_CITY
	jp z, .corsola
	cp LANDMARK_ICE_PATH
	jp z, .swinub
	jp .skipshine

; kanto
.sentret
	ld a, [wCurPartySpecies]
	cp SENTRET
	jp .next
.mankey
	ld a, [wCurPartySpecies]
	cp MANKEY
	jp .next
.sandshrew
	ld a, [wCurPartySpecies]
	cp SANDSHREW
	jp .next
.snubbull
	ld a, [wCurPartySpecies]
	cp SNUBBULL
	jp .next
.murkrow
	ld a, [wCurPartySpecies]
	cp MURKROW
	jp .next
.houndour
	ld a, [wCurPartySpecies]
	cp HOUNDOUR
	jp .next
.magnemite
	ld a, [wCurPartySpecies]
	cp MAGNEMITE
	jp .next
.ekans
	ld a, [wCurPartySpecies]
	cp EKANS
	jp .next
.qwilfish
	ld a, [wCurPartySpecies]
	cp QWILFISH
	jp .next
.hoothoot
	ld a, [wCurPartySpecies]
	cp HOOTHOOT
	jp .next
.venonat
	ld a, [wCurPartySpecies]
	cp VENONAT
	jp .next
.natu
	ld a, [wCurPartySpecies]
	cp NATU
	jp .next
.slugma
	ld a, [wCurPartySpecies]
	cp SLUGMA
	jp .next
.tangela
	ld a, [wCurPartySpecies]
	cp TANGELA
	jp .next
.nidoran_f
	ld a, [wCurPartySpecies]
	cp NIDORAN_F
	jp .next
.poliwag
	ld a, [wCurPartySpecies]
	cp POLIWAG
	jp .next
.caterpie
	ld a, [wCurPartySpecies]
	cp CATERPIE
	jp .next
.zubat
	ld a, [wCurPartySpecies]
	cp ZUBAT
	jp .next
.cubone
	ld a, [wCurPartySpecies]
	cp CUBONE
	jp .next
.krabby
	ld a, [wCurPartySpecies]
	cp KRABBY
	jp .next
.magmar
	ld a, [wCurPartySpecies]
	cp MAGMAR
	jp .next
.larvitar
	ld a, [wCurPartySpecies]
	cp LARVITAR
	jp .next
.eevee
	ld a, [wCurPartySpecies]
	cp EEVEE
	jp .next

; johto
.hoppip
	ld a, [wCurPartySpecies]
	cp HOPPIP
	jp .next
.bellsprout
	ld a, [wCurPartySpecies]
	cp BELLSPROUT
	jp .next
.mareep
	ld a, [wCurPartySpecies]
	cp MAREEP
	jp .next
.aipom
	ld a, [wCurPartySpecies]
	cp AIPOM
	jp .next
.miltank
	ld a, [wCurPartySpecies]
	cp MILTANK
	jp .next
.meowth
	ld a, [wCurPartySpecies]
	cp MEOWTH
	jp .next
.girafarig
	ld a, [wCurPartySpecies]
	cp GIRAFARIG
	jp .next
.lickitung
	ld a, [wCurPartySpecies]
	cp LICKITUNG
	jp .next
.gligar
	ld a, [wCurPartySpecies]
	cp GLIGAR
	jp .next
.phanpy
	ld a, [wCurPartySpecies]
	cp PHANPY
	jp .next
.teddiursa
	ld a, [wCurPartySpecies]
	cp TEDDIURSA
	jp .next
.smeargle
	ld a, [wCurPartySpecies]
	cp SMEARGLE
	jp .next
.slowpoke
	ld a, [wCurPartySpecies]
	cp SLOWPOKE
	jp .next
.paras
	ld a, [wCurPartySpecies]
	cp PARAS
	jp .next
.spinarak
	ld a, [wCurPartySpecies]
	cp SPINARAK
	jp .next
.koffing
	ld a, [wCurPartySpecies]
	cp KOFFING
	jp .next
.corsola
	ld a, [wCurPartySpecies]
	cp CORSOLA
	jp .next
.swinub
	ld a, [wCurPartySpecies]
	cp SWINUB
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
