;(see \main.asm 258 to [INCLUDE "engine/events/pokeflute.asm"])
;(see \engine\items\item_effects.asm 2172 to enable this script when using POKE_FLUTE)
_PokeFlute:
; Are we in a battle?
;	ld a, [wBattleMode]
;	and a
;	jr nz, .in_battle
;
; Are we in the right map to use this?
	ld a, [wMapGroup]
	cp GROUP_ROUTE_12
	jr nz, .notRoute12

	ld a, [wMapNumber]
	cp MAP_ROUTE_12
	jr z, .yep

.notRoute12
	ld a, [wMapGroup]
	cp GROUP_ROUTE_16
	jr nz, .notRoute16

	ld a, [wMapNumber]
	cp MAP_ROUTE_16
	jr z, .yep

.notRoute16
	ld a, [wMapGroup]
	cp GROUP_ROUTE_11
	jp nz, .nope

	ld a, [wMapNumber]
	cp MAP_ROUTE_11
	jp nz, .nope

.yep
; Are we facing snorlax?
	call GetFacingTileCoord
	ld a, e
	cp 15
	jr z, .goty
	cp 16
	jr z, .goty
	cp 17
	jr z, .goty
	cp 64
	jr z, .goty
	cp 65
	jr nz, .nope
.goty
	ld a, d
	cp 14
	jr z, .route12
	cp 15
	jr z, .route12
	cp 28
	jr z, .route16
	cp 29
	jr z, .route16
	cp 52
	jr z, .route11
	cp 53
	jr nz, .nope

.route11
	ld b, CHECK_FLAG
	ld de, EVENT_ROUTE_11_SNORLAX_RESPAWN
	call EventFlagAction
	jp nz, .nope

	ld hl, .route11script
	jr .snorlax

.route12
	ld b, CHECK_FLAG
	ld de, EVENT_ROUTE_12_SNORLAX
	call EventFlagAction
	jp nz, .nope

	ld hl, .route12script
	jr .snorlax

.route16
	ld b, CHECK_FLAG
	ld de, EVENT_ROUTE_16_SNORLAX
	call EventFlagAction
	jp nz, .nope

	ld hl, .route16script

.snorlax
	call QueueScript
	ld a, PACKSTATE_QUITRUNSCRIPT
	ld [wJumptableIndex], a
	ret

.route11script
	farsjump Route11SnorlaxBattleScript

.route12script
	farsjump Route12SnorlaxBattleScript

.route16script
	farsjump Route16SnorlaxBattleScript

.nope:
;.in_battle
	xor a
	ld [wPokeFluteCuredSleep], a

	ld b, ~SLP_MASK

	ld hl, wPartyMon1Status
	call .CureSleep

; Check if we are in a battle again
	ld a, [wBattleMode]
	and a
	jr z, .not_in_battle

; Cure opposing pkemon sleep
	ld a, [wBattleMode]
	cp WILD_BATTLE
	jr z, .skip_otrainer
	ld hl, wOTPartyMon1Status
	call .CureSleep

.skip_otrainer
	ld hl, wBattleMonStatus
	ld a, [hl]
	and b
	ld [hl], a
	ld hl, wEnemyMonStatus
	ld a, [hl]
	and b
	ld [hl], a

.not_in_battle
	ld a, [wPokeFluteCuredSleep]
	and a
	ld hl, .PlayedFluteText
	jp z, PrintText
	ld hl, .PlayedTheFlute
	call PrintText

	ld a, [wLowHealthAlarm]
	and 1 << DANGER_ON_F
	jr nz, .dummy
	; more code was dummied out here
.dummy
	ld hl, .FluteWakeUpText
	jp PrintText

.CureSleep:
	ld de, PARTYMON_STRUCT_LENGTH
	ld c, PARTY_LENGTH
.loop
	ld a, [hl]
	push af
	and SLP_MASK
	jr z, .not_asleep
	ld a, TRUE
	ld [wPokeFluteCuredSleep], a
.not_asleep
	pop af
	and b
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret

.PlayedFluteText:
	text_far _PlayedFluteText
	text_end

.FluteWakeUpText:
	text_far _FluteWakeUpText
	text_end

.PlayedTheFlute:
	; played the # FLUTE.@ @
	text_far Text_PlayedPokeFlute
	text_asm
	ld a, [wBattleMode]
	and a
	jr nz, .battle

	push de
	ld de, MUSIC_NONE
	call PlayMusic
	ld de, SFX_POKEFLUTE
	call WaitPlaySFX
	call WaitSFX
	pop de

	call RestartMapMusic

.battle
	jp PokeFluteTerminator
;(see home\text.asm)
;PokeFluteTerminator::
;	ld hl, .stop
;	ret
;.stop
;	text_end
