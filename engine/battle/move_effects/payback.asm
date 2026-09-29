BattleCommand_Payback:
; Returns a=0, z if user went first
; Returns a=1, nz if opponent went first
	call CheckOpponentWentFirst
	ret z

; Double damage if opponent went first
	jp DoubleDamage
