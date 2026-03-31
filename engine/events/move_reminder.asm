MoveReminder:
	ld hl, MoveReminderWhichMonText
	call PrintText

	farcall SelectMonFromParty
	jr c, .cancel

	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .is_an_egg

	call IsAPokemon
	jr c, .not_a_pokemon

	call GetRemindableMoves
	jr z, .no_moves_to_learn

	ld hl, MoveReminderWhichMoveText
	call PrintText

	call ChooseMoveToLearn
	jr c, .exit_menu

	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1

	predef LearnMove

	ld a, b
	and a
	jr nz, .take_mushroom

.exit_menu
	call ReturnToMapWithSpeechTextbox

.cancel
	ld hl, MoveReminderCancelText
	jp PrintText

.is_an_egg
	ld hl, MoveReminderEggText
	jp PrintText

.not_a_pokemon
	ld hl, MoveReminderNoMonText
	jp PrintText

.no_moves_to_learn
	ld hl, MoveReminderNoMovesText
	jp PrintText

.take_mushroom
	ld a, [wMoveReminderItem]
;	cp BIG_MUSHROOM
;	jr z, .have_big_mushroom
;
;	ld [wCurItem], a
;	ld hl, wNumItems
;	ld a, 2
;	ld [wItemQuantityChange], a
;	call TossItem
;	jr .finish
;
;.have_big_mushroom
	ld [wCurItem], a
	ld hl, wNumItems
	ld a, 1
	ld [wItemQuantityChange], a
	call TossItem
;fallthrough
.finish
	call ReturnToMapWithSpeechTextbox
	ld hl, MoveReminderMoveLearnedText
	jp PrintText

GetRemindableMoves:
	ld hl, wd002
	xor a
	ld [hli], a
	ld [hl], $ff

	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartySpecies], a

	push af
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a

	ld b, 0
	ld de, wd002 + 1

	ld a, [wCurPartySpecies]
	dec a
	push bc
	ld c, a
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(EvosAttacksPointers)
	call GetFarWord

.skip_evos
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	inc hl
	and a
	jr nz, .skip_evos

.loop_moves
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	inc hl
	and a
	jr z, .done
	ld c, a
	ld a, [wCurPartyLevel]
	cp c
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	inc hl
	jr c, .loop_moves

	ld c, a
	call CheckAlreadyInList
	jr c, .loop_moves
	call CheckPokemonAlreadyKnowsMove
	jr c, .loop_moves
	ld a, c
	ld [de], a
	inc de
	ld a, $ff
	ld [de], a
	pop bc
	inc b
	push bc
	jr .loop_moves

.done
	pop bc
	pop af
	ld [wCurPartySpecies], a
	ld a, b
	ld [wd002], a
	and a
	ret

CheckAlreadyInList:
	push hl
	ld hl, wd002 + 1

.loop
	ld a, [hli]
	inc a
	jr z, .nope
	dec a
	cp c
	jr nz, .loop
	pop hl
	scf
	ret

.nope
	pop hl
	and a
	ret

CheckPokemonAlreadyKnowsMove:
	push hl
	push bc
	ld a, MON_MOVES
	call GetPartyParamLocation
	ld b, 4

.loop
	ld a, [hli]
	cp c
	jr z, .yes
	dec b
	jr nz, .loop
	pop bc
	pop hl
	and a
	ret

.yes
	pop bc
	pop hl
	scf
	ret

ChooseMoveToLearn:
	farcall FadeOutPalettes
	farcall BlankScreen
	ld hl, .MenuHeader
	call CopyMenuHeader
	xor a
	ld [wMenuCursorPosition], a
	ld [wMenuScrollPosition], a

	hlcoord 0,  1
	lb bc,  9, 18
	call TextboxBorder

	ld de, FontBattleExtra + 14 tiles
	ld hl, vTiles2 tile $6e
	lb bc, BANK(FontBattleExtra), 1
	call Get2bppViaHDMA

	farcall LoadStatsScreenPageTilesGFX
	xor a
	ld [wMonType], a
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	hlcoord  5, 1
	call PlaceString

	push bc
	farcall CopyMonToTempMon
	pop hl
	call PrintLevel

	call ScrollingMenu
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .carry
	ld a, [wMenuSelection]
	ld [wPutativeTMHMMove], a
	and a
	ret

.carry
	scf
	ret

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 1, 2, SCREEN_WIDTH - 2, 10
	dw .MenuData
	db 1

.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS | SCROLLINGMENU_ENABLE_FUNCTION3
	db 4, SCREEN_WIDTH + 2
	db SCROLLINGMENU_ITEMS_NORMAL
	dba  wd002
	dba .print_move_name
	dba .print_pp
	dba .print_move_details

.print_move_name
	push de
	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetMoveName
	pop hl
	jp PlaceString

.print_pp
	ld hl, wStringBuffer1
	ld bc, wStringBuffer2 - wStringBuffer1
	ld a, " "
	call ByteFill
	ld a, [wMenuSelection]
	inc a
	ret z
	dec a
	push de

	ld a, [wMenuSelection]
	ld bc, MOVE_LENGTH
	ld hl, (Moves + MOVE_PP) - MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	ld [wBuffer1], a
	ld hl, wStringBuffer1 + 9
	ld de, wBuffer1
	lb bc, 1, 2
	call PrintNum
	ld hl, wStringBuffer1 + 11
	ld [hl], "/"
	ld hl, wStringBuffer1 + 12
	call PrintNum
	
	ld hl, wStringBuffer1 + 14
	ld [hl], "@"

	pop hl
	ld de, wStringBuffer1
	call PlaceString

	ld bc, 6
	add hl, bc
	ld a, $3e
	ld [hli], a
	ld [hl], a
	ret

.cancel_border_fix
	hlcoord 0,  10
	ld [hl], "│"
	inc hl
	ret

.print_move_details
	hlcoord 0, 11
	lb bc, 5, 18
	call TextboxBorder

	ld a, [wMenuSelection]
	cp -1
	jr z, .cancel_border_fix

.print_move_stat_strings
	hlcoord 0, 10
	ld de, MoveTypeTop
	call PlaceString
	hlcoord 0, 11
	ld de, MoveType
	call PlaceString
	hlcoord 1, 11
	ld de, MoveAttack
	call PlaceString
	hlcoord 1, 12
	ld de, MoveAcc
	call PlaceString

;phys/spec split
	ld a, [wOptions2]
	bit PHYS_SPEC_SPLIT, a
	jr nz, .no_category

; Place Move Cateogry
;	ld a, [wCurSpecies]
;	dec a
	ld a, [wMenuSelection]
	ld bc, MOVE_LENGTH
	ld hl, (Moves + MOVE_TYPE) - MOVE_LENGTH
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
	hlcoord 13, 12
	ld a, $79 ;$59 ; category icon tile 1
	ld [hli], a
	ld [hl], $7a ;$5a ; category icon tile 2

.no_category
; Place Move Type
;	ld a, [wCurSpecies]
;	dec a
	ld a, [wMenuSelection]
;	ld b, a
	ld bc, MOVE_LENGTH
	ld hl, (Moves + MOVE_TYPE) - MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
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

	hlcoord 15, 12
;	ld a, [wOptions2]
;	bit PHYS_SPEC_SPLIT, a
;	jr nz, .no_cat_shift_type
;
;	hlcoord 13, 12
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
;	ld a, [wCurSpecies]
;	dec a
	ld a, [wMenuSelection]
	ld bc, MOVE_LENGTH
	ld hl, (Moves + MOVE_POWER) - MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	hlcoord 5, 11 ;type icons
	cp 2
	jr c, .no_power
	ld [wTextDecimalByte], a
	ld de, wTextDecimalByte
	lb bc, 1, 3
	set 6, b
	call PrintNum
	jr .print_move_acc
.no_power
	ld de, MoveNoAttack
	call PlaceString

.print_move_acc
; Print move accuracy
;	ld a, [wCurSpecies]
	ld a, [wMenuSelection]
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
	hlcoord 5, 12 ;type icons
	set 6, b
	call PrintNum
	jr .print_move_desc
.no_acc
	hlcoord 5, 12 ;type icons
	ld de, MoveNoAttack
	call PlaceString

.print_move_desc
	push de
	ld a, [wMenuSelection]
	inc a
	pop de
	ret z
	dec a
	ld [wCurSpecies], a
	hlcoord 1, 14
	predef PrintMoveDescription

	ld b, SCGB_MOVE_LIST
	call GetSGBLayout ; reload proper palettes for new Move Type and Category, and apply
	ld a, $1 ; done editing the screen
	ldh [hBGMapMode], a
	ret

MoveTypeTop:
;	db "┌─────┐@"
	db "┌───────┐@" ;type icons
MoveType:
;	db "│TYPE/└@"
	db "│       └@" ;type icons
MoveAttack:
	db "ATK/@"
MoveAcc:
	db "ACC/@"
MoveNoAttack:
	db "---@"

;ConvertPercentages2:
;	; Overwrite the "hl" register.
;	ld l, a
;	ld h, 0
;	push af
;
;	; Multiplies the value of the "hl" register by 3.
;	add hl, hl
;	add a, l
;	ld l, a
;	adc h
;	sub l
;	ld h, a
;
;	; Multiplies the value of the "hl" register
;	; by 8. The value of the "hl" register
;	; is now 24 times its original value.
;	add hl, hl
;	add hl, hl
;	add hl, hl
;
;	; Add the original value of the "hl" value to itself,
;	; making it 25 times its original value.
;	pop af
;	add a, l
;	ld l, a
;	adc h
;	sbc l
;	ld h, a
;
;	; Multiply the value of the "hl" register by
;	; 4, making it 100 times its original value.
;	add hl, hl
;	add hl, hl
;
;	; Set the "l" register to 0.5, otherwise the rounded
;	; value may be lower than expected. Round the
;	; high byte to nearest and drop the low byte.
;	ld l, 0.5
;	sla l
;	sbc a
;	and 1
;	add a, h
;	ret

MoveReminderWhichMonText:
	text "Which #MON"
	line "needs reminding?"
	prompt

MoveReminderWhichMoveText:
	text "Which move should"
	line "it remember?"
	prompt

MoveReminderCancelText:
	text "Come visit me"
	line "again."
	done

MoveReminderEggText:
	text "An EGG can't learn"
	line "any moves!"
	done

MoveReminderNoMonText:
	text "What is that!?"
	
	para "I'm sorry, but I"
	line "can only teach"
	cont "moves to #MON!"
	done

MoveReminderNoMovesText:
	text "There are no moves"
	line "for this #MON"
	cont "to learn."
	done

MoveReminderMoveLearnedText:
	text "Done! Your #MON"
	line "remembered the"
	cont "move!"

	para "<PLAYER> gave one"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done