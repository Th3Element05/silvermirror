LearnMove:
	call LoadTilemapToTempTilemap
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNickname
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	call CopyBytes

.loop
	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld d, h
	ld e, l
	ld b, NUM_MOVES
; Get the first empty move slot.  This routine also serves to
; determine whether the Pokemon learning the moves already has
; all four slots occupied, in which case one would need to be
; deleted.
.next
	ld a, [hl]
	and a
	jr z, .learn
	inc hl
	dec b
	jr nz, .next
; If we're here, we enter the routine for forgetting a move
; to make room for the new move we're trying to learn.
	push de
	call ForgetMove
	pop de
	jp c, .cancel

	push hl
	push de
	ld [wNamedObjectIndex], a

	ld b, a
	ld a, [wBattleMode]
	and a
	jr z, .not_disabled
	ld a, [wDisabledMove]
	cp b
	jr nz, .not_disabled
	xor a
	ld [wDisabledMove], a
	ld [wPlayerDisableCount], a
.not_disabled

; Reset palettes for text box border
	ld b, SCGB_BATTLE_COLORS
	call GetSGBLayout

	call GetMoveName
	ld hl, Text_1_2_and_Poof ; 1, 2 and…
	call PrintText
	pop de
	pop hl

.learn
	ld a, [wPutativeTMHMMove]
	ld [hl], a
	ld bc, MON_PP - MON_MOVES
	add hl, bc

	push hl
	push de
	dec a
	ld hl, Moves + MOVE_PP
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	pop de
	pop hl

	ld [hl], a

	ld a, [wBattleMode]
	and a
	jp z, .learned

	ld a, [wCurPartyMon]
	ld b, a
	ld a, [wCurBattleMon]
	cp b
	jp nz, .learned

	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_TRANSFORMED, a
	jp nz, .learned

	ld h, d
	ld l, e
	ld de, wBattleMonMoves
	ld bc, NUM_MOVES
	call CopyBytes
	ld bc, wPartyMon1PP - (wPartyMon1Moves + NUM_MOVES)
	add hl, bc
	ld de, wBattleMonPP
	ld bc, NUM_MOVES
	call CopyBytes
	jp .learned

.cancel
; Reset palettes for text box border
	ld b, SCGB_BATTLE_COLORS
	call GetSGBLayout
;	ld b, SCGB_PARTY_MENU
;	call GetSGBLayout

	ld hl, StopLearningMoveText
	call PrintText
	call YesNoBox
	jp c, .loop

	ld hl, DidNotLearnMoveText
	call PrintText
	ld b, 0
	ret

.learned
	ld hl, LearnedMoveText
	call PrintText
	ld b, 1
	ret

ForgetMove:
	push hl
	ld hl, AskForgetMoveText
	call PrintText
	call YesNoBox
	pop hl
	ret c
	ld bc, -NUM_MOVES
	add hl, bc
	push hl
	ld de, wListMoves_MoveIndicesBuffer
	ld bc, NUM_MOVES
	call CopyBytes

; Print UI element
	call ClearSprites
;	call HideSprites

	hlcoord 0, 11
	ld de, String_LearnTabTop
	call PlaceString
	hlcoord 0, 12
	ld de, String_LearnTabBottom
	call PlaceString

;phys/spec split
	ld a, [wOptions2]
	bit PHYS_SPEC_SPLIT, a
	jr nz, .no_category

; Place Move Cateogry
	ld a, [wPutativeTMHMMove] ;[wCurSpecies]
	dec a
	ld hl, Moves + MOVE_TYPE
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
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
	hlcoord 13, 12 ;13, 13
	ld a, $79 ;$59 ; category icon tile 1
	ld [hli], a
	ld [hl], $7a ;$5a ; category icon tile 2

.no_category
; Place Move Type
	ld a, [wPutativeTMHMMove] ;[wCurSpecies]
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

	hlcoord 15, 12 ;15, 13
	ld a, $7b ;$5b ; first Type Tile
	ld [hli], a
	inc a ; Tile $5c
	ld [hli], a
	inc a ; Tile $5d
	ld [hli], a
	ld [hl], $7e ;$5e ; final Type Tile

; Load and apply Move Type/Category palettes
	farcall LoadLearnCategoryAndTypePals
	call SetPalettes
	ld b, SCGB_LEARN_SCREEN
	call GetSGBLayout

;.power
; Print move power
;	hlcoord 1, 12
;	ld de, .power_string
;	call PlaceString

	ld a, [wPutativeTMHMMove] ;[wCurSpecies]
	dec a
	ld hl, Moves + MOVE_POWER
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	hlcoord 3, 12
	and a
	jr nz, .haspower
	ld de, .novalue_string ; "---"
	call PlaceString
	jr .accuracy
.haspower
	cp 2
	jr z, .inf_power
	cp 1
	jr z, .var_power
	ld [wTextDecimalByte], a
	ld de, wTextDecimalByte
	lb bc, 1, 3 ; number of bytes this number is in, in 'b', number of possible digits in 'c'
;	set 6, b ; left-aligned
	call PrintNum
	jr .accuracy

.inf_power
	ld de, .infinity_string
	call PlaceString
	jr .accuracy

.var_power
	ld de, .unknown_string
	call PlaceString

.accuracy
; Print move accuracy
	hlcoord 1, 13
	ld de, .accuracy_string
	call PlaceString

	ld a, [wPutativeTMHMMove] ;[wCurSpecies]
	ld bc, MOVE_LENGTH
	ld hl, (Moves + MOVE_ACC) - MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	hlcoord 3, 13
; convert from hex to decimal
; this is the same code used in function "Adjust_Percent" in engine\pokemon\mon_stats.asm
	ldh [hMultiplicand], a
	ld a, 100
	ldh [hMultiplier], a
	call Multiply
	; Divide hDividend length b (max 4 bytes) by hDivisor. Result in hQuotient.
	ld b, 2
	ld a, 255
	ldh [hDivisor], a
	call Divide
	ldh a, [hQuotient + 3]
	cp 100
	jr z, .print_num
	cp 80
	jr z, .print_num
	inc a
	cp 1
	jr z, .no_acc
.print_num
	ld [wTextDecimalByte], a
	ld de, wTextDecimalByte
	lb bc, 1, 3 ; number of bytes this number is in, in 'b', number of possible digits in 'c'
;	set 6, b ; left-aligned
	call PrintNum
	jr .description

.no_acc
	ld de, .infinity_string
	call PlaceString

.description
	hlcoord 1, 11
	ld de, wStringBuffer2
	call PlaceString
	hlcoord 1, 14
	lb bc, 3, 18
	call ClearBox
	hlcoord 1, 14
	predef PrintLearnMoveDescription


	pop hl
.loop
	push hl
;	ld hl, MoveAskForgetText
;	call PrintText
	hlcoord 0, 0 ;5, 0
	ld b, 1 + NUM_MOVES * 2
	ld c, MOVE_NAME_LENGTH + 1
	call Textbox
	hlcoord 1, 1 ;6, 1
	ld de, String_LearnReplace
	call PlaceString
	hlcoord 0 + 2, 0 + 3 ;5 + 2, 0 + 3
	ld a, SCREEN_WIDTH * 2
	ld [wListMovesLineSpacing], a
	predef ListMoves
	; w2DMenuData
	ld a, $3
	ld [w2DMenuCursorInitY], a
	ld a, $1 ;$6
	ld [w2DMenuCursorInitX], a
	ld a, [wNumMoves]
	inc a
	ld [w2DMenuNumRows], a
	ld a, $1
	ld [w2DMenuNumCols], a
	ld [wMenuCursorY], a
	ld [wMenuCursorX], a
	ld a, $3
	ld [wMenuJoypadFilter], a
	ld a, $20
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a
	ld a, $20
	ld [w2DMenuCursorOffsets], a
	call StaticMenuJoypad
	push af
	call SafeLoadTempTilemapToTilemap
	pop af
	pop hl
	bit 1, a
	jr nz, .cancel
	push hl
	ld a, [wMenuCursorY]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	pop hl
	add hl, bc
	and a
	ret

.cancel
	scf
	ret

; UI elements
.power_string:
	db "<ATK1><ATK2>@"
.accuracy_string:
	db "<ACC1><ACC2>   <%>@"
.novalue_string:
	db "---@"
.infinity_string:
	db " <INF1><INF2>@"
.unknown_string:
	db "<?><?><?>@"
String_LearnTabTop:
	db "┌──────────────────┐@"
String_LearnTabBottom:
	db "│<ATK1><ATK2>                │@"
String_LearnReplace:
	db "FORGET?@"


LearnedMoveText:
	text_far _LearnedMoveText
	text_end

MoveAskForgetText:
	text_far _MoveAskForgetText
	text_end

StopLearningMoveText:
	text_far _StopLearningMoveText
	text_end

DidNotLearnMoveText:
	text_far _DidNotLearnMoveText
	text_end

AskForgetMoveText:
	text_far _AskForgetMoveText
	text_end

Text_1_2_and_Poof:
	text_far Text_MoveForgetCount ; 1, 2 and…
	text_asm
	push de
	ld de, SFX_SWITCH_POKEMON
	call PlaySFX
	pop de
	ld hl, .MoveForgotText
	ret

.MoveForgotText:
	text_far _MoveForgotText
	text_end

MoveCantForgetHMText:
	text_far _MoveCantForgetHMText
	text_end
