	db TOGETIC ; 176

	db  55,  40,  85,  40,  80, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 10 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/togetic/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	SOLARBEAM, \
	PSYCHIC_M, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	METRONOME, \
	FIRE_BLAST, \
	SWIFT, \
	AERIAL_ACE, \
	FLAMETHROWER, \
	SKY_ATTACK, \
	REST, \
	THUNDER_WAVE, \
	TRI_ATTACK, \
	SUBSTITUTE, \
	ROOST, \
	BRICK_BREAK, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	ROLLOUT, \
	SILVER_WIND, \
	SWAGGER, \
	STEEL_WING, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	ANCIENTPOWER, \
	SOFTBOILED, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
