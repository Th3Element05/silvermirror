	db CHANSEY ; 113

	db 250,  05,  05,  50,  35, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
;	db 100 ; unknown 1
	db 20 ;40 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chansey/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	CALM_MIND, \
	TOXIC, \
	MEDITATE, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
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
	PSYCHIC_M, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	METRONOME, \
	SUBMISSION, \
	FIRE_BLAST, \
	SWIFT, \
	FLAMETHROWER, \
	REST, \
	THUNDER_WAVE, \
	ICY_WIND, \
	ROCK_SLIDE, \
	TRI_ATTACK, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	ROLLOUT, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SOFTBOILED, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
