	db MILTANK ; 241

	db  95,  80, 105, 100,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp
	db MOOMOO_MILK, MOOMOO_MILK ; items
	db GENDER_F100 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/miltank/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	SURF, \
	TOXIC, \
	MEDITATE, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	SOLARBEAM, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	EARTHQUAKE, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	METRONOME, \
	REST, \
	THUNDER_WAVE, \
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
	GYRO_BALL, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	WHIRLPOOL, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
