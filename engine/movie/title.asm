_TitleScreen:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap

; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a

; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTitleScreenSelectedOption
	ld [hli], a ; wTitleScreenTimer
	ld [hl], a  ; wTitleScreenTimer + 1

; Turn LCD off
	call DisableLCD

; VRAM bank 1
	ld a, 1
	ldh [rVBK], a

; Decompress running Suicune gfx
	farcall CheckPrimarySaveFile
	jr nz, .nostarter

	ld a, BANK(sPlayerData)
	call OpenSRAM

	ld hl, sPlayerData + wEventFlags - wPlayerData
	ld b, CHECK_FLAG
	ld de, EVENT_GOT_BULBASAUR_FROM_OAK
	call FlagAction
	ld hl, TitleBulbasaurGFX
	jr nz, .gotstarter

	ld hl, sPlayerData + wEventFlags - wPlayerData
	ld b, CHECK_FLAG
	ld de, EVENT_GOT_CHARMANDER_FROM_OAK
	call FlagAction
	ld hl, TitleCharmanderGFX
	jr nz, .gotstarter

	ld hl, sPlayerData + wEventFlags - wPlayerData
	ld b, CHECK_FLAG
	ld de, EVENT_GOT_SQUIRTLE_FROM_OAK
	call FlagAction
	ld hl, TitleSquirtleGFX
	jr nz, .gotstarter

.nostarter
	ld hl, TitleNoStarterGFX
.gotstarter
	ld de, vTiles1
	call Decompress
	call CloseSRAM

; Clear screen palettes
	hlbgcoord 0, 0
	ld bc, 20 * BG_MAP_WIDTH
	xor a
	call ByteFill

; Fill tile palettes:

; BG Map 1:

; line 0 (copyright)
	hlbgcoord 0, 0, vBGMap1
	ld bc, BG_MAP_WIDTH
	ld a, 7 ; palette
	call ByteFill

; BG Map 0:

; Apply logo gradient:

; full logo
	hlbgcoord 0, 3
	ld bc, 8 * BG_MAP_WIDTH
	ld a, 2
	call ByteFill
;; lines 3-4
;	hlbgcoord 0, 3
;	ld bc, 2 * BG_MAP_WIDTH
;	ld a, 2
;	call ByteFill
;; line 5
;	hlbgcoord 0, 5
;	ld bc, BG_MAP_WIDTH
;	ld a, 3
;	call ByteFill
;; line 6
;	hlbgcoord 0, 6
;	ld bc, BG_MAP_WIDTH
;	ld a, 4
;	call ByteFill
;; line 7
;	hlbgcoord 0, 7
;	ld bc, BG_MAP_WIDTH
;	ld a, 5
;	call ByteFill
;; lines 8-9
;	hlbgcoord 0, 8
;	ld bc, 2 * BG_MAP_WIDTH
;	ld a, 6
;	call ByteFill

; 'CRYSTAL VERSION'
	hlbgcoord 5, 9
	ld bc, 11 ; length of version text
	ld a, 1
	call ByteFill

; Trainer palette
	ld a, BANK(sCrystalData)
	call OpenSRAM

;female (green)
	hlbgcoord 10, 11 ;10, 11
	ld bc, 7 * BG_MAP_WIDTH
	ld a, 6
	call ByteFill

	ld a, [sCrystalData + wPlayerGender - wCrystalData]
	cp 1
	jr z, .femalepalette

;male (red)
	hlbgcoord 10, 11 ;10, 11
	ld bc, 7 * BG_MAP_WIDTH
	ld a, 0
	call ByteFill

.femalepalette
	call CloseSRAM

;; Suicune gfx
;	hlbgcoord 0, 11 ; 0, 12
;	ld bc, 7 * BG_MAP_WIDTH ; the rest of the screen
;	ld a, 0 | VRAM_BANK_1
;	call ByteFill

; Starter gfx
	farcall CheckPrimarySaveFile
	jr nz, .nopalette

	ld a, BANK(sPlayerData)
	call OpenSRAM

	ld hl, sPlayerData + wEventFlags - wPlayerData
	ld b, CHECK_FLAG
	ld de, EVENT_GOT_BULBASAUR_FROM_OAK
	call FlagAction
	ld a, 3 | VRAM_BANK_1
	jr nz, .gotpalette

	ld hl, sPlayerData + wEventFlags - wPlayerData
	ld b, CHECK_FLAG
	ld de, EVENT_GOT_SQUIRTLE_FROM_OAK
	call FlagAction
	ld a, 5 | VRAM_BANK_1
	jr nz, .gotpalette

;	ld hl, sPlayerData + wEventFlags - wPlayerData
;	ld b, CHECK_FLAG
;	ld de, EVENT_GOT_CHARMANDER_FROM_OAK
;	call FlagAction
;	ld a, 4 | VRAM_BANK_1
;	jr nz, .gotpalette

.nopalette
	ld a, 4 | VRAM_BANK_1
.gotpalette
	call CloseSRAM
;	hlbgcoord 6, 13 ; 0, 11
;	ld bc, 5 ; the rest of the screen ; 7 * BG_MAP_WIDTH
;	call ByteFill
;	hlbgcoord 6, 14
;	ld bc, 5
;	call ByteFill
;	hlbgcoord 6, 15
;	ld bc, 5
;	call ByteFill
;	hlbgcoord 6, 16
;	ld bc, 5
;	call ByteFill
;	hlbgcoord 6, 17
;	ld bc, 5
;	call ByteFill

	ld e, 5
	hlbgcoord 6, 13
.loopfill
	ld bc, 5
	call ByteFill
	ld bc, BG_MAP_WIDTH - 5
	add hl, bc
	dec e
	jr nz, .loopfill

; Back to VRAM bank 0
	ld a, 0
	ldh [rVBK], a

; Decompress logo
	ld hl, TitleLogoGFX
	ld de, vTiles1
	call Decompress

; Decompress background crystal
	ld hl, TitleCrystalGFX
	ld de, vTiles0
	call Decompress

; Clear screen tiles
	hlbgcoord 0, 0
	ld bc, 64 * BG_MAP_WIDTH
	ld a, " "
	call ByteFill

; Draw Pokemon logo
	hlcoord 0, 3
	lb bc, 7, 20
	ld d, $80
	ld e, 20
	call DrawTitleGraphic

; Draw trainer
	ld a, BANK(sCrystalData)
	call OpenSRAM

	ld a, [sCrystalData + wPlayerGender - wCrystalData]
	cp 1
	ld d, $36
	jr z, .femalegfx

;male
	ld d, $1a
.femalegfx
	hlcoord 10, 11 ;10, 11
	lb bc, 7, 4
;	ld d, $1a
	ld e, 4
	call DrawTitleGraphic
	call CloseSRAM

;; Draw starter (static)
;	hlcoord 6, 13 ;6, 13
;	lb bc, 5, 5
;	ld d, $80 ;$36 ;$00(vTiles2)
;	ld e, 5
;	call DrawTitleGraphic

; Draw copyright text
	hlbgcoord 3, 0, vBGMap1
	lb bc, 1, 13
	ld d, $c
	ld e, 16
	call DrawTitleGraphic

; Initialize running Suicune?
	ld d, $0
	call LoadSuicuneFrame

; Initialize background crystal
	call InitializeBackground

; Update palette colors
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a

	ld hl, TitleScreenPalettes
	ld de, wBGPals1
	ld bc, 16 palettes
	call CopyBytes

	ld hl, TitleScreenPalettes
	ld de, wBGPals2
	ld bc, 16 palettes
	call CopyBytes

	pop af
	ldh [rSVBK], a

; LY/SCX trickery starts here

	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

; Make alternating lines come in from opposite sides

; (This part is actually totally pointless, you can't
;  see anything until these values are overwritten!)

	ld b, 80 / 2 ; alternate for 80 lines
	ld hl, wLYOverrides
.loop
; $00 is the middle position
	ld [hl], +112 ; coming from the left
	inc hl
	ld [hl], -112 ; coming from the right
	inc hl
	dec b
	jr nz, .loop

; Make sure the rest of the buffer is empty
	ld hl, wLYOverrides + 80
	xor a
	ld bc, wLYOverridesEnd - (wLYOverrides + 80)
	call ByteFill

; Let LCD Stat know we're messing around with SCX
	ld a, JP_INSTRUCTION
	ld [hFunctionInstruction], a
	ld a, LOW(rSCX)
	ldh [hLCDCPointer], a

	pop af
	ldh [rSVBK], a

; Reset audio
	call ChannelsOff
	call EnableLCD

; Set sprite size to 8x16
	ldh a, [rLCDC]
	set rLCDC_SPRITE_SIZE, a
	ldh [rLCDC], a

	ld a, +112
	ldh [hSCX], a
	ld a, 8
	ldh [hSCY], a
	ld a, 7
	ldh [hWX], a
	ld a, -112
	ldh [hWY], a

	ld a, TRUE
	ldh [hCGBPalUpdate], a

; Update BG Map 0 (bank 0)
	ldh [hBGMapMode], a

;	xor a
;	ld [wSuicuneFrame], a

; Play starting sound effect
	call SFXChannelsOff
	ld de, SFX_TITLE_SCREEN_ENTRANCE
	call PlaySFX

	ret

SuicuneFrameIterator:
	ld hl, wSuicuneFrame
	ld a, [hl]
	ld c, a
	inc [hl]

; Only do this once every eight frames
	and %111
	ret nz

	ld a, c
	and %11000
	sla a
	swap a
	ld e, a
	ld d, 0
	ld hl, .Frames
	add hl, de
	ld d, [hl]
	xor a
	ldh [hBGMapMode], a
	call LoadSuicuneFrame
	ld a, $1
	ldh [hBGMapMode], a
	ld a, $3
	ldh [hBGMapThird], a
	ret

.Frames:
	db $80 ; vTiles3 tile $80
	db $85 ; vTiles3 tile $88
	db $b2 ; vTiles5 tile $00
	db $b7 ; vTiles5 tile $08

LoadSuicuneFrame:
	hlcoord 6, 13 ; 6, 12
	ld b, 5 ; 6 ; how many tiles of the suicune graphic to draw, from top to bottom.
.bgrows
	ld c, 5 ; 8 ; how many tiles wide the suicune graphic is?
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	ld a, SCREEN_WIDTH - 5 ;8
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, 5 ;8
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

DrawTitleGraphic:
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

InitializeBackground:
	ld hl, wShadowOAMSprite00
	ld d, -$22
	ld e, $0
	ld c, 5
.loop
	push bc
	call .InitColumn
	pop bc
	ld a, $10
	add d
	ld d, a
	dec c
	jr nz, .loop
	ret

.InitColumn:
	ld c, $6
	ld b, $40
.loop2
	ld a, d
	ld [hli], a ; y
	ld a, b
	ld [hli], a ; x
	add $8
	ld b, a
	ld a, e
	ld [hli], a ; tile id
	inc e
	inc e
	ld a, 0 | PRIORITY
	ld [hli], a ; attributes
	dec c
	jr nz, .loop2
	ret

AnimateTitleCrystal:
; Move the title screen crystal downward until it's fully visible

; Stop at y=6
; y is really from the bottom of the sprite, which is two tiles high
	ld hl, wShadowOAMSprite00YCoord
	ld a, [hl]
	cp 6 + 2 * TILE_WIDTH
	ret z

; Move all 30 parts of the crystal down by 2
	ld c, 30
.loop
	ld a, [hl]
	add 2
	ld [hli], a ; y
rept SPRITEOAMSTRUCT_LENGTH - 1
	inc hl
endr
	dec c
	jr nz, .loop

	ret

TitleNoStarterGFX:
INCBIN "gfx/title/title_nostarter.2bpp.lz"

TitleBulbasaurGFX:
INCBIN "gfx/title/title_bulbasaur.2bpp.lz"

TitleCharmanderGFX:
INCBIN "gfx/title/title_charmander.2bpp.lz"

TitleSquirtleGFX:
INCBIN "gfx/title/title_squirtle.2bpp.lz"

TitleLogoGFX:
INCBIN "gfx/title/logo.2bpp.lz"

TitleCrystalGFX:
INCBIN "gfx/title/crystal.2bpp.lz"

TitleScreenPalettes:
INCLUDE "gfx/title/title.pal"
