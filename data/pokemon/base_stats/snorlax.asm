	db SNORLAX ; 143

	db 160, 110,  65,  30,  65, 110
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp
	db LEFTOVERS, LEFTOVERS ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 20 ;40 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/snorlax/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

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
	SOLARBEAM, \
	THUNDERBOLT, \
	THUNDER, \
	EARTHQUAKE, \
	FISSURE, \
	DIG, \
	PSYCHIC_M, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	METRONOME, \
	SELFDESTRUCT, \
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
	ROLLOUT, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
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
