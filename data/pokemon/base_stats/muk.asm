	db MUK ; 089

	db 105, 105,  75,  50,  65, 100
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp
	db NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/muk/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	THUNDERBOLT, \
	THUNDER, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	METRONOME, \
	SELFDESTRUCT, \
	FIRE_BLAST, \
	SWIFT, \
	FLAMETHROWER, \
	REST, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	BRICK_BREAK, \
	HEADBUTT, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	POISON_JAB, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	DARK_PULSE, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK
