Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartBallsZero
	dw MartBallsOne
	dw MartBallsThree
	dw MartBallsFive
	dw MartMedZero
	dw MartMedTwo
	dw MartMedFour
	dw MartMedSix
;	dw MartVendingMachine
	dw MartTMs1
	dw MartEvolution1
	dw MartVitamins1
	dw MartBattle
;	dw MartCeladon2F1 = MartBalls
;	dw MartCeladon2F2 = MartMed
;	dw MartCeladon3F = MartTMs1
;	dw MartCeladon4F = MartEvolution1
;	dw MartCeladon5F1 = MartVitamins1
;	dw MartCeladon5F2 = MartBattle
	dw MartIndigoPlateau
	dw MartMtMoon
;	dw MartGoldenrod2F1 = MartMed
;	dw MartGoldenrod2F2 = MartBalls
;	dw MartGoldenrod3F = MartBattle
;	dw MartGoldenrod4F = MartVitamins2 ?
;	dw MartGoldenrod5F = MartTMs2
	dw MartTMs2
;	dw MartMahogany1
;	dw MartMahogany2
	dw MartUnderground
	assert_table_length NUM_MARTS

MartBallsZero:
	db 1 ; # items
	db POKE_BALL
	db -1 ; end

MartBallsOne:
	db 3 ; # items
	db POKE_BALL
	db ESCAPE_ROPE
	db REPEL
	db -1 ; end

MartBallsThree:
	db 5 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db -1 ; end

MartBallsFive:
	db 7 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartMedZero:
	db 2 ; # items
	db POTION
	db ANTIDOTE
	db -1 ; end

MartMedTwo:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartMedFour:
	db 8 ; # items
	db POTION
	db SUPER_POTION
	db REVIVE
	db ANTIDOTE
	db AWAKENING
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartMedSix:
	db 10 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db ANTIDOTE
	db AWAKENING
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

;MartVendingMachine:
;	db 3 ; # items
;	db FRESH_WATER
;	db SODA_POP
;	db LEMONADE
;	db -1 ; end

;MartCeladon3F:
MartTMs1:
	db 10 ; # items
	db TM_PROTECT
	db TM_SUBSTITUTE
	db TM_COUNTER
	db TM_DOUBLE_TEAM
	db TM_BULK_UP
	db TM_ICY_WIND
	db TM_ROCK_SLIDE
	db TM_TRI_ATTACK
	db TM_HYPER_BEAM
	db TM_GIGA_IMPACT
	db -1 ; end

;MartCeladon4F:
MartEvolution1:
	db 6 ; # items
	db POKE_DOLL
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db LINKING_CORD
	db -1 ; end

;MartCeladon5F1:
;Mart Goldenrod4F:
MartVitamins1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CALCIUM
	db CARBOS
;	db PP_UP
	db -1 ; end

;MartCeladon5F2:
MartBattle: 
	db 7 ; # items
	db X_ACCURACY
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db GUARD_SPEC
	db DIRE_HIT
	db -1 ; end

;MartCeladon2F1 = MartBalls
;MartCeladon2F2 = MartMed
;MartCeladon3F = MartTMs1
;MartCeladon4F = MartEvolution1
;MartCeladon5F1 = MartVitamins1
;MartCeladon5F2 = MartBattle

MartIndigoPlateau:
	db 9 ; # items
	db ULTRA_BALL
	db ESCAPE_ROPE
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
;	db ETHER
	db REVIVE
	db MAX_REVIVE
	db FULL_HEAL
	db FULL_RESTORE
	db -1 ; end

MartMtMoon:
	db 6 ; # items
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

;MartGoldenrod2F1 = MartMed
;MartGoldenrod2F2 = MartBalls
;MartGoldenrod3F: = MartBattle
;MartGoldenrod4F: = MartVitamins2 ?
;MartGoldenrod5F: = MartTMs2

MartTMs2:
	db 3 ; # items
	db TM_THUNDERBOLT ; TM_THUNDERPUNCH
	db TM_FLAMETHROWER ; TM_FIRE_PUNCH
	db TM_ICE_BEAM ; TM_ICE_PUNCH
	db -1 ; end

;MartMahogany1:
;	db 3 ; # items
;	db TINYMUSHROOM
;;	db SLOWPOKETAIL
;	db POKE_BALL
;	db POTION
;	db -1 ; end

;MartMahogany2:
;	db 8 ; # items
;;	db RAGECANDYBAR
;	db GREAT_BALL
;	db SUPER_POTION
;	db HYPER_POTION
;	db ANTIDOTE
;	db PARLYZ_HEAL
;	db SUPER_REPEL
;	db REVIVE
;	db FLOWER_MAIL
;	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
