CheckForHiddenItems:
; Checks to see if there are hidden items on the screen that have not yet been found.  If it finds one, returns carry.
	call GetMapScriptsBank
	ld [wCurMapScriptBank], a
; Get the coordinate of the bottom right corner of the screen, and load it in wBottomRightYCoord/wBottomRightXCoord.
	ld a, [wXCoord]
	add SCREEN_WIDTH / 4
	ld [wBottomRightXCoord], a
	ld a, [wYCoord]
	add SCREEN_HEIGHT / 4
	ld [wBottomRightYCoord], a
; Get the pointer for the first bg_event in the map...
	ld hl, wCurMapBGEventsPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; ... before even checking to see if there are any BG events on this map.
	ld a, [wCurMapBGEventCount]
	and a
	jr z, .nobgeventitems
; For i = 1:wCurMapBGEventCount...
.loop
; Store the counter in wRemainingBGEventCount, and store the bg_event pointer in the stack.
	ld [wRemainingBGEventCount], a
	push hl
; Get the Y coordinate of the BG event.
	call .GetFarByte
	ld e, a
; Is the Y coordinate of the BG event on the screen?  If not, go to the next BG event.
	ld a, [wBottomRightYCoord]
	sub e
	jr c, .next
	cp SCREEN_HEIGHT / 2
	jr nc, .next
; Is the X coordinate of the BG event on the screen?  If not, go to the next BG event.
	call .GetFarByte
	ld d, a
	ld a, [wBottomRightXCoord]
	sub d
	jr c, .next
	cp SCREEN_WIDTH / 2
	jr nc, .next
; Is this BG event a hidden item?  If not, go to the next BG event.
	call .GetFarByte
	cp BGEVENT_ITEM
	jr nz, .next
; Has this item already been found?  If not, set off the Itemfinder.
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld d, h
	ld e, l
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .itemnearby

.next
; Restore the bg_event pointer and increment it by the length of a bg_event.
	pop hl
	ld bc, BG_EVENT_SIZE
	add hl, bc
; Restore the BG event counter and decrement it.  If it hits zero, there are no hidden items in range.
	ld a, [wRemainingBGEventCount]
	dec a
	jr nz, .loop

.nobgeventitems
	xor a
	ret

.itemnearby
	pop hl
	scf
	ret

.GetFarByte:
	ld a, [wCurMapScriptBank]
	call GetFarByte
	inc hl
	ret

RockItemEncounter:
	ld hl, .RockItems
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.RockItems:
	db 2, HELIX_FOSSIL     ;0.78%
	db 2, DOME_FOSSIL      ;0.78%
	db 2, OLD_AMBER        ;0.78%
	db 3, NUGGET ;10000    ;1.17%
	db 4, STAR_PIECE ;9800 ;1.56%
	db 8, BIG_PEARL ;7500  ;3.12%
	db 16, STARDUST ;2000  ;6.25%
	db 24, PEARL ;1400     ;9.37%
	db 64, HEART_SCALE     ;25.0%
	db -1 ;NO_ITEM         ;51.2%

;.RockItems:
;	db 2, STAR_PIECE ;9800
;	db 6, NUGGET ;10000
;	db 13, BIG_PEARL ;7500
;	db 16, STARDUST ;2000
;	db 18, REVIVE
;	db 25, PEARL ;1400
;	db 51, GOLD_LEAF ;2000
;	db 51, SILVER_LEAF ;2000
;	db 64, BRICK_PIECE ;50
;	db -1


TreeItemEncounter:
	ld hl, .TreeItems
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret

.TreeItems:
	db 64, SILVER_LEAF ;25%
	db 64, GOLD_LEAF   ;25%
	db -1 ;NO_ITEM     ;50%

;.TreeItems:
;	db 1, BLK_APRICORN
;	db 2, PNK_APRICORN
;	db 4, YLW_APRICORN
;	db 6, WHT_APRICORN
;	db 12, RED_APRICORN
;	db 18, BLU_APRICORN
;	db 24, GRN_APRICORN
;	db 24, SILVER_LEAF
;	db 48, GOLD_LEAF
;	db 64, GOLD_LEAF
;	db -1
