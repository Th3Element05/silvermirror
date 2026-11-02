	db NIDOKING ; 034

	db  81,  92,  77,  85,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidoking/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	SURF, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PAY_DAY, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	EARTHQUAKE, \
	FISSURE, \
	DIG, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	SUBMISSION, \
	FIRE_BLAST, \
	FLAMETHROWER, \
	REST, \
	HONE_CLAWS, \
	ICY_WIND, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	DRAGON_PULSE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	STONE_EDGE, \
	POISON_JAB, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	WHIRLPOOL, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK
