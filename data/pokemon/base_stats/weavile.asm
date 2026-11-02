	db WEAVILE ; 215

	db  70, 120,  65, 125,  45,  85 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp
	db NO_ITEM, RAZOR_CLAW ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/weavile/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	SURF, \
	CALM_MIND, \
	TOXIC, \
	HIDDEN_POWER, \
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	DIG, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	METRONOME, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	HONE_CLAWS, \
	ICY_WIND, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	FALSE_SWIPE, \
	BRICK_BREAK, \
	HEADBUTT, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	GIGA_IMPACT, \
	SHADOW_BALL, \
	POISON_JAB, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DARK_PULSE, \
	X_SCISSOR, \
	WHIRLPOOL, \
	ICE_PUNCH, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
