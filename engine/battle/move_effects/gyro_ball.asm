BattleCommand_GyroBall:
; Return carry if enemy is faster than player.
;	farcall AICompareSpeed
	push bc
	ld a, [wEnemyMonSpeed + 1]
	ld b, a
	ld a, [wBattleMonSpeed + 1]
	cp b
	ld a, [wEnemyMonSpeed]
	ld b, a
	ld a, [wBattleMonSpeed]
	sbc b
	pop bc
	push af

; Check player or enemy turn
	ldh a, [hBattleTurn]
	and a
	jr z, .player_turn

;enemy_turn
	pop af
	jp nc, DoubleDamage
	ret

.player_turn
	pop af
	jp c, DoubleDamage
	ret