BattleCommand_WakeUpSlap:
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	and SLP_MASK
	ret z

	xor a
	ld [hl], a

	ldh a, [hBattleTurn]
	and a
	ld a, [wCurOTMon]
	ld hl, wOTPartyMon1Status
	jr z, .ok
	ld hl, wPartyMon1Status
	ld a, [wCurBattleMon]
.ok
	call GetPartyLocation
	xor a
	ld [hl], a
	call UpdateOpponentInParty

	ld hl, WokeUpOpponentText
	jp StdBattleTextbox
