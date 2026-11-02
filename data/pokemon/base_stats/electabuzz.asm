	db ELECTABUZZ ; 125

	db  65,  83,  57, 105,  95,  85
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
;	db 100 ; unknown 1
	db 12 ;25 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/electabuzz/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	TOXIC, \
	MEDITATE, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	PSYCHIC_M, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	METRONOME, \
	SUBMISSION, \
	SWIFT, \
	SPARK, \
	REST, \
	THUNDER_WAVE, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	RAIN_DANCE, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK
