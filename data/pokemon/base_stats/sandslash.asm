	db SANDSLASH ; 028

	db  75, 100, 110,  65,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 90 ; catch rate
	db 163 ; base exp
	db NO_ITEM, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sandslash/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	IRON_TAIL, \
	EARTHQUAKE, \
	FISSURE, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	SUBMISSION, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	HONE_CLAWS, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	FALSE_SWIPE, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	ROLLOUT, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	POISON_JAB, \
	ATTRACT, \
	GYRO_BALL, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	SANDSTORM, \
	X_SCISSOR, \
	SNORE, \
	SLEEP_TALK
