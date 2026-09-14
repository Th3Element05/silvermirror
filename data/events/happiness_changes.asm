HappinessChanges:
; entries correspond to HAPPINESS_* constants
	table_width 3, HappinessChanges
	; change if happiness < 100, change if happiness < 200, change otherwise
	db  +8,  +6,  +4 ; Gained a level
	db +10, +10, +10 ; Vitamin
	db  +2,  +2,  +2 ; X Item
	db +10, +10, +10 ; Battled a Gym Leader
	db  +5,  +3,  +1 ; Learned a move
	db  -1,  -1,  -1 ; Lost to an enemy
	db  -5,  -5,  -5 ; Fainted due to poison
	db  -5,  -5,  -5 ; Lost to a much stronger enemy
	db  +5,  +5,  +5 ; Haircut (older brother) 1
	db  +8,  +8,  +8 ; Haircut (older brother) 2
	db +10, +10, +10 ; Haircut (older brother) 3
	db  +5,  +5,  +5 ; Haircut (younger brother) 1
	db  +8,  +8,  +8 ; Haircut (younger brother) 2
	db +10, +10, +10 ; Haircut (younger brother) 3
	db  -5,  -5,  -5 ; Used Heal Powder or Energypowder (bitter)
	db -10, -10, -10 ; Used Energy Root (bitter)
	db -15, -15, -15 ; Used Revival Herb (bitter)
	db +10, +10, +10 ; Grooming
	db +10,  +8,  +6 ; Gained a level in the place where it was caught
	assert_table_length NUM_HAPPINESS_CHANGES
