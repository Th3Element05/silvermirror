TMHMPocket:
	ld a, $1
	ldh [hInMenu], a
	call TMHM_PocketLoop
	ld a, $0
	ldh [hInMenu], a
	ret nc
	call PlaceHollowCursor
	call WaitBGMap
	ld a, [wCurItem]
	dec a
	ld [wCurItemQuantity], a
	ld hl, wTMsHMs
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld [wItemQuantity], a
	call .ConvertItemToTMHMNumber
	scf
	ret

.ConvertItemToTMHMNumber:
	ld a, [wCurItem]
	ld c, a
	callfar GetNumberedTMHM
	ld a, c
	ld [wCurItem], a
	ret

ConvertCurItemIntoCurTMHM:
	ld a, [wCurItem]
	ld c, a
	callfar GetTMHMNumber
	ld a, c
	ld [wTempTMHM], a
	ret

GetTMHMItemMove:
	call ConvertCurItemIntoCurTMHM
	predef GetTMHMMove
	ret

AskTeachTMHM:
	ld hl, wOptions
	ld a, [hl]
	push af
	res NO_TEXT_SCROLL, [hl]
	ld a, [wCurItem]
	cp TM01
	jr c, .NotTMHM
	call GetTMHMItemMove
	ld a, [wTempTMHM]
	ld [wPutativeTMHMMove], a
	call GetMoveName
	call CopyName1
	ld hl, BootedTMText ; Booted up a TM
	ld a, [wCurItem]
	cp HM01
	jr c, .TM
	ld hl, BootedHMText ; Booted up an HM
.TM:
	call PrintText
	ld hl, ContainedMoveText
	call PrintText
	call YesNoBox
.NotTMHM:
	pop bc
	ld a, b
	ld [wOptions], a
	ret

ChooseMonToLearnTMHM:
	ld hl, wStringBuffer2
	ld de, wTMHMMoveNameBackup
	ld bc, MOVE_NAME_LENGTH - 1
	call CopyBytes
	call ClearBGPalettes
ChooseMonToLearnTMHM_NoRefresh:
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	farcall InitPartyMenuGFX
	ld a, PARTYMENUACTION_TEACH_TMHM
	ld [wPartyMenuActionText], a
.loopback
	farcall WritePartyMenuTilemap
	farcall PrintPartyMenuText
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	farcall PartyMenuSelect
	push af
	ld a, [wCurPartySpecies]
	cp EGG
	pop bc ; now contains the former contents of af
	jr z, .egg
	push bc
	ld hl, wTMHMMoveNameBackup
	ld de, wStringBuffer2
	ld bc, MOVE_NAME_LENGTH - 1
	call CopyBytes
	pop af ; now contains the original contents of af
	ret

.egg
	push hl
	push de
	push bc
	push af
	ld de, SFX_WRONG
	call PlaySFX
	call WaitSFX
	pop af
	pop bc
	pop de
	pop hl
	jr .loopback

TeachTMHM:
	predef CanLearnTMHMMove

	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNickname
	pop bc

	ld a, c
	and a
	jr nz, .compatible
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld hl, TMHMNotCompatibleText
	call PrintText
	jr .nope

.compatible
	callfar KnowsMove
	jr c, .nope

	predef LearnMove
	ld a, b
	and a
	jr z, .nope

	farcall StubbedTrainerRankings_TMsHMsTaught
	ld a, [wCurItem]
	call IsHM
	ret c

	ld c, HAPPINESS_LEARNMOVE
	farcall ChangeHappiness
	jr .learned_move

.nope
	and a
	ret

.didnt_use ; unreferenced
	ld a, 2
	ld [wItemEffectSucceeded], a
.learned_move
	scf
	ret

BootedTMText:
	text_far _BootedTMText
	text_end

BootedHMText:
	text_far _BootedHMText
	text_end

ContainedMoveText:
	text_far _ContainedMoveText
	text_end

TMHMNotCompatibleText:
	text_far _TMHMNotCompatibleText
	text_end

TMHM_PocketLoop:
	xor a
	ldh [hBGMapMode], a
	call TMHM_DisplayPocketItems
	ld a, 2
	ld [w2DMenuCursorInitY], a
	ld a, 7
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 5
	sub d
	inc a
	cp 6
	jr nz, .okay
	dec a
.okay
	ld [w2DMenuNumRows], a
	ld a, $c
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a
	ld a, $20
	ld [w2DMenuCursorOffsets], a
	ld a, A_BUTTON | B_BUTTON | D_UP | D_DOWN | D_LEFT | D_RIGHT
	ld [wMenuJoypadFilter], a
	ld a, [wTMHMPocketCursor]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	jr TMHM_ShowTMMoveDescription

TMHM_JoypadLoop:
	call TMHM_DisplayPocketItems
	call StaticMenuJoypad
	ld b, a
	ld a, [wMenuCursorY]
	dec a
	ld [wTMHMPocketCursor], a
	xor a
	ldh [hBGMapMode], a
	ld a, [w2DMenuFlags2]
	bit 7, a
	jp nz, TMHM_ScrollPocket
	ld a, b
	ld [wMenuJoypad], a
	bit A_BUTTON_F, a
	jp nz, TMHM_ChooseTMorHM
	bit B_BUTTON_F, a
	jp nz, TMHM_ExitPack
	bit D_RIGHT_F, a
	jp nz, TMHM_ExitPocket
	bit D_LEFT_F, a
	jp nz, TMHM_ExitPocket
TMHM_ShowTMMoveDescription:
	call TMHM_CheckHoveringOverCancel
	jp nc, TMHM_ExitPocket
	hlcoord 0, 12
	ld b, 4
	ld c, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wCurItem]
	cp NUM_TMS + NUM_HMS + 1
	jr nc, TMHM_JoypadLoop
	ld [wTempTMHM], a
	predef GetTMHMMove
	ld a, [wTempTMHM]
	ld [wCurSpecies], a

; Print UI element
	hlcoord 0, 11
	ld de, String_TMHMType_Top
	call PlaceString
	hlcoord 0, 12
	ld de, String_TMHMType_Bottom
	call PlaceString
	hlcoord 1, 12 ;type icons
	ld de, String_TMHMAtk
	call PlaceString
	hlcoord 1, 13 ;type icons
	ld de, String_TMHMAcc
	call PlaceString

;phys/spec split
	ld a, [wOptions2]
	bit PHYS_SPEC_SPLIT, a
	jr nz, .no_category

; Place Move Cateogry
	ld a, [wCurSpecies]
	dec a
	ld hl, Moves + MOVE_TYPE
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
;	push af ; raw Move Type+category Byte, unmasked
	and ~TYPE_MASK ; Specific to Phys/Spec split
	swap a ; Specific to Phys/Spec split
	srl a  ; Specific to Phys/Spec split
	srl a  ; Specific to Phys/Spec split
	dec a  ; Specific to Phys/Spec split
	ld hl, CategoryIconGFX ; ptr to Category GFX loaded from PNG(2bpp)
	ld bc, 2 tiles
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, vTiles2 tile $79 ;$59 ; category icon tile slot in VRAM, destination
	lb bc, BANK(CategoryIconGFX), 2
	call Request2bpp ; Load 2bpp at b:de to occupy c tiles of hl.
	hlcoord 13, 13 ;17, 13
	ld a, $79 ;$59 ; category icon tile 1
	ld [hli], a
	ld [hl], $7a ;$5a ; category icon tile 2

.no_category
; Place Move Type
	ld a, [wCurSpecies]
	dec a
	ld hl, Moves + MOVE_TYPE
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
;	pop af ; raw Move Type+category Byte, unmasked
	and TYPE_MASK ; Phys/Spec Split specific
	ld c, a
	farcall GetMonTypeIndex
	ld a, c
; Type Index adjust done
; Load Type GFX Tiles, color will be in Slot 4 of Palette
	ld hl, TypeIconGFX ; ptr for PNG w/ black Tiles, since this screen is using Slot 4 in the Palette for Type color
	ld bc, 4 * LEN_1BPP_TILE ; purely Black and White tiles are 1bpp. Type Tiles are 4 Tiles wide
	call AddNTimes ; increments pointer based on Type Index
	ld d, h
	ld e, l ; de is the source Pointer
	ld hl, vTiles2 tile $7b ;$5b ; $5b is destination Tile for first Type Tile
	lb bc, BANK(TypeIconGFX), 4 ; Bank in 'b', num of Tiles to load in 'c'
	call Request1bpp

	hlcoord 15, 13
;	ld a, [wOptions2]
;	bit PHYS_SPEC_SPLIT, a
;	jr nz, .no_cat_shift_type
;
;	hlcoord 13, 13
;.no_cat_shift_type
	ld a, $7b ;$5b ; first Type Tile
	ld [hli], a
	inc a ; Tile $5c
	ld [hli], a
	inc a ; Tile $5d
	ld [hli], a
	ld [hl], $7e ;$5e ; final Type Tile

;.power
; Print move power
	ld a, [wCurSpecies]
	dec a
	ld hl, Moves + MOVE_POWER
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	hlcoord 5, 12 ;type icons
	cp 2
	jr c, .no_power
	ld [wTextDecimalByte], a
	ld de, wTextDecimalByte
	lb bc, 1, 3
	set 6, b
	call PrintNum
	jr .accuracy
.no_power
	ld de, String_TMHMNoValue
	call PlaceString

.accuracy
; Print move accuracy
	ld a, [wCurSpecies]
	ld bc, MOVE_LENGTH
	ld hl, (Moves + MOVE_ACC) - MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	cp 101
	jr c, .no_acc
	call ConvertPercentages
	ld [wBuffer1], a
	ld de, wBuffer1
	lb bc, 1, 3
	hlcoord 5, 13 ;type icons
	set 6, b
	call PrintNum
	jr .description
.no_acc
	hlcoord 5, 13 ;type icons
	ld de, String_TMHMNoValue
	call PlaceString

.description
; Print Move Description
	hlcoord 1, 14
	predef PrintMoveDescription

; Apply Type/Category Icon colors
	ld b, SCGB_PACKPALS ;SCGB_MOVE_LIST
	call GetSGBLayout ; reload proper palettes for new Move Type and Category, and apply
	ld a, $1 ; done editing the screen
	ldh [hBGMapMode], a

;	hlcoord 1, 14
;	call PrintMoveDescription
	jp TMHM_JoypadLoop

; UI elements
String_TMHMType_Top:
	db "┌───────┐@" ;type icons
String_TMHMType_Bottom:
	db "│       └@" ;type icons
;	db "│                  │@" ;type icons
String_TMHMAtk:
	db "ATK/@"
String_TMHMAcc:
	db "ACC/@"
String_TMHMNoValue:
	db "---@"

TMHM_ChooseTMorHM:
	call TMHM_PlaySFX_ReadText2
	call CountTMsHMs ; This stores the count to wTempTMHM.
	ld a, [wMenuCursorY]
	dec a
	ld b, a
	ld a, [wTMHMPocketScrollPosition]
	add b
	ld b, a
	ld a, [wTempTMHM]
	cp b
	jr z, _TMHM_ExitPack ; our cursor was hovering over CANCEL
TMHM_CheckHoveringOverCancel:
	call TMHM_GetCurrentPocketPosition
	ld a, [wMenuCursorY]
	ld b, a
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .okay
	ld a, [hli]
	and a
	jr z, .loop
	dec b
	jr nz, .loop
	ld a, c
.okay
	ld [wCurItem], a
	cp -1
	ret

TMHM_ExitPack:
	call TMHM_PlaySFX_ReadText2
_TMHM_ExitPack:
	ld a, B_BUTTON
	ld [wMenuJoypad], a
	and a
	ret

TMHM_ExitPocket:
	and a
	ret

TMHM_ScrollPocket:
	ld a, b
	bit 7, a
	jr nz, .skip
	ld hl, wTMHMPocketScrollPosition
	ld a, [hl]
	and a
	jp z, TMHM_JoypadLoop
	dec [hl]
	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription

.skip
	call TMHM_GetCurrentPocketPosition
	ld b, 5
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jp nc, TMHM_JoypadLoop
	ld a, [hli]
	and a
	jr z, .loop
	dec b
	jr nz, .loop
	ld hl, wTMHMPocketScrollPosition
	inc [hl]
	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription

TMHM_DisplayPocketItems:
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jp z, Tutorial_TMHMPocket

	hlcoord 5, 2
	lb bc, 9, 15 ;10, 15
	ld a, " "
	call ClearBox
	call TMHM_GetCurrentPocketPosition
	ld d, $5
.loop2
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .NotTMHM
	ld a, [hli]
	and a
	jr z, .loop2
	ld b, a
	ld a, c
	ld [wTempTMHM], a
	push hl
	push de
	push bc
	call TMHMPocket_GetCurrentLineCoord
	push hl
	ld a, [wTempTMHM]
	cp NUM_TMS + 1
	jr nc, .HM
	ld de, wTempTMHM
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	jr .okay

.HM:
	push af
	sub NUM_TMS
	ld [wTempTMHM], a
	ld [hl], "H"
	inc hl
	ld de, wTempTMHM
	lb bc, PRINTNUM_LEFTALIGN | 1, 2
	call PrintNum
	pop af
	ld [wTempTMHM], a
.okay
	predef GetTMHMMove
	ld a, [wNamedObjectIndex]
	ld [wPutativeTMHMMove], a
	call GetMoveName
	pop hl
	ld bc, 3
	add hl, bc
	call PlaceString
	pop bc
	pop de
	pop hl
	dec d
	jr nz, .loop2
	jr .done

.NotTMHM:
	call TMHMPocket_GetCurrentLineCoord
	inc hl
	inc hl
	inc hl
	push de
	ld de, TMHM_CancelString
	call PlaceString
	pop de
.done
	ret

TMHMPocket_GetCurrentLineCoord:
	hlcoord 5, 0
	ld bc, 2 * SCREEN_WIDTH
	ld a, 6
	sub d
	ld e, a
	; AddNTimes
.loop
	add hl, bc
	dec e
	jr nz, .loop
	ret

PlaceMoveNameAfterTMHMName: ; unreferenced
; Similar to a part of TMHM_DisplayPocketItems.
	pop hl
	ld bc, 3
	add hl, bc
	predef GetTMHMMove
	ld a, [wTempTMHM]
	ld [wPutativeTMHMMove], a
	call GetMoveName
	push hl
	call PlaceString
	pop hl
	ret

TMHM_CancelString:
	db "CANCEL@"

TMHM_GetCurrentPocketPosition:
	ld hl, wTMsHMs
	ld a, [wTMHMPocketScrollPosition]
	ld b, a
	inc b
	ld c, 0
.loop
	inc c
	ld a, [hli]
	and a
	jr z, .loop
	dec b
	jr nz, .loop
	dec hl
	dec c
	ret

Tutorial_TMHMPocket:
	hlcoord 9, 3
	push de
	ld de, TMHM_CancelString
	call PlaceString
	pop de
	ret

TMHM_PlaySFX_ReadText2:
	push de
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	pop de
	ret

VerboseReceiveTMHM: ; unreferenced
	call ConvertCurItemIntoCurTMHM
	call .CheckHaveRoomForTMHM
	ld hl, .NoRoomTMHMText
	jr nc, .print
	ld hl, .ReceivedTMHMText
.print
	jp PrintText

.NoRoomTMHMText:
	text_far _NoRoomTMHMText
	text_end

.ReceivedTMHMText:
	text_far _ReceivedTMHMText
	text_end

.CheckHaveRoomForTMHM:
	ld a, [wTempTMHM]
	dec a
	ld hl, wTMsHMs
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	inc a
	cp MAX_ITEM_STACK + 1
	ret nc
	ld [hl], a
	ret

CountTMsHMs:
	ld b, 0
	ld c, NUM_TMS + NUM_HMS
	ld hl, wTMsHMs
.loop
	ld a, [hli]
	and a
	jr z, .skip
	inc b
.skip
	dec c
	jr nz, .loop
	ld a, b
	ld [wTempTMHM], a
	ret
