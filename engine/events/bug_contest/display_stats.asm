DisplayCaughtContestMonStats:
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call LoadFontsBattleExtra

	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]

	hlcoord 0, 0
	ld b, 4
	ld c, 12 ;13
	call Textbox

	hlcoord 0, 6
	ld b, 4
	ld c, 12 ;13
	call Textbox

	hlcoord 2, 0
	ld de, .Stock
	call PlaceString

	hlcoord 2, 6
	ld de, .This
	call PlaceString

	hlcoord 6, 4 ;5, 4
	ld de, .Health
	call PlaceString

	hlcoord 6, 10 ;5, 10
	ld de, .Health
	call PlaceString

	ld a, [wContestMon]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 1, 2
	call PlaceString

;	ld h, b
;	ld l, c
	hlcoord 2, 4
	ld a, [wContestMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	ld de, wEnemyMonNickname
	hlcoord 1, 8
	call PlaceString

;	ld h, b
;	ld l, c
	hlcoord 2, 10
	ld a, [wEnemyMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	hlcoord 9, 4 ;11, 4
	ld de, wContestMonMaxHP
	lb bc, 2, 3
	call PrintNum

	hlcoord 9, 10 ;11, 10
	ld de, wEnemyMonMaxHP
	call PrintNum

	ld hl, ContestAskSwitchText
	call PrintText

	pop af
	ld [wOptions], a

	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes
	ret

.Health:
	db "HP:@" ;"HEALTH@"
.Stock:
	db " STOCK <PKMN> @"
.This:
	db " THIS <PKMN>  @"

ContestAskSwitchText:
	text_far _ContestAskSwitchText
	text_end

DisplayAlreadyCaughtText:
	call GetPokemonName
	ld hl, .ContestAlreadyCaughtText
	jp PrintText

.ContestAlreadyCaughtText:
	text_far _ContestAlreadyCaughtText
	text_end

DummyPredef2F:
DummyPredef38:
DummyPredef39:
	ret
