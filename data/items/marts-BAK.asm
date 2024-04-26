Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
;	dw MartSafariGate
;silvermirror+
	dw MartCinnabar
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartCherrygroveDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartViolet:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 9 ; # items
	db CHARCOAL
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartGoldenrod4F:
	db 6 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CALCIUM
	db CARBOS
	db PP_UP
	db -1 ; end

MartGoldenrod5F:
	db 3 ; # items
	db TM_THUNDERBOLT ; TM_THUNDERPUNCH
	db TM_FLAMETHROWER ; TM_FIRE_PUNCH
	db TM_ICE_BEAM ; TM_ICE_PUNCH
	db -1 ; end

MartOlivine:
	db 9 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db FLOWER_MAIL ; db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartMahogany1:
	db 4 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db -1 ; end

MartMahogany2:
	db 9 ; # items
	db RAGECANDYBAR
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db SUPER_REPEL
	db REVIVE
	db FLOWER_MAIL
	db -1 ; end

MartBlackthorn:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_ATTACK
	db -1 ; end

MartViridian: ;silvermirror
	db 4 ; # items
	db POKE_BALL
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db -1 ; end

MartPewter: ;silvermirror
	db 7 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db BURN_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCerulean: ;silvermirror
	db 7 ; # items
	db POKE_BALL
	db POTION
	db REPEL
	db ANTIDOTE
	db BURN_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartLavender: ;silvermirror
	db 9 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db ESCAPE_ROPE
	db SUPER_REPEL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db PARLYZ_HEAL
	db -1 ; end

MartVermilion: ;silvermirror
	db 6 ; # items
	db POKE_BALL
	db SUPER_POTION
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db REPEL
	db -1 ; end

MartCeladon2F1: ;silvermirror
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db SUPER_REPEL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon2F2: ;silvermirror
	db 9 ; # items
	db TM_DOUBLE_TEAM
	db TM_REFLECT
	db TM_RAZOR_WIND
	db TM_HORN_DRILL
	db TM_EGG_BOMB
	db TM_DYNAMICPUNCH
	db TM_MEGA_KICK
	db TM_TAKE_DOWN
	db TM_SUBMISSION
	db -1 ; end

MartCeladon3F: ;not in silvermirror?
	db 5 ; # items
	db TM_BODY_SLAM ; TM_PSYCH_UP
	db TM_REST ; TM_PROTECT
	db TM_SUNNY_DAY ; TM_THUNDERPUNCH
	db TM_RAIN_DANCE ; TM_FIRE_PUNCH
	db TM_SANDSTORM ; TM_ICE_PUNCH
	db -1 ; end

MartCeladon4F: ;silvermirror
	db 6 ; # items
	db POKE_DOLL
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db LINKING_CORD
	db -1 ; end

MartCeladon5F1: ;silvermirror
	db 6 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CALCIUM
	db CARBOS
	db PP_UP
	db -1 ; end

MartCeladon5F2: ;silvermirror
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartFuchsia: ;silvermirror
	db 6 ; # items
	db ULTRA_BALL
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db FULL_HEAL
	db SUPER_REPEL
	db -1 ; end

MartSaffron: ;silvermirror
	db 6 ; # items
	db GREAT_BALL
	db HYPER_POTION
	db MAX_REPEL
	db ESCAPE_ROPE
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartMtMoon:
	db 6 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db FLOWER_MAIL ; db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau: ;silvermirror
	db 7 ; # items
	db ULTRA_BALL
	db GREAT_BALL
	db FULL_RESTORE
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

;MartSafariGate:

;silvermirror+
MartVendingMachine: ;silvermirror
	db 3 ; # items
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db -1 ; end

MartCinnabar: ;silvermirror
	db 7 ; # items
	db ULTRA_BALL
	db GREAT_BALL
	db HYPER_POTION
	db MAX_REPEL
	db ESCAPE_ROPE
	db FULL_HEAL
	db REVIVE
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
