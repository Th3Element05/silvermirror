	db RHYDON ; 112

	db 105, 130, 120,  40,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rhydon/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
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
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	SUBMISSION, \
	FIRE_BLAST, \
	FLAMETHROWER, \
	REST, \
	ICY_WIND, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	DRAGON_PULSE, \
	ROLLOUT, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	POISON_JAB, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	ANCIENTPOWER, \
	WHIRLPOOL, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK
