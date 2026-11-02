	db GENGAR ; 094

	db  60,  65,  60, 110, 130,  75
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gengar/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	WILL_O_WISP, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	GIGA_DRAIN, \
	THUNDERBOLT, \
	THUNDER, \
	PSYCHIC_M, \
	DOUBLE_TEAM, \
	METRONOME, \
	SELFDESTRUCT, \
	SUBMISSION, \
	REST, \
	THUNDER_WAVE, \
	ICY_WIND, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	ENERGY_BALL, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	POISON_JAB, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DARK_PULSE, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
