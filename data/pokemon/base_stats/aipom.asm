	db AIPOM ; 190

	db  55,  70,  55,  85,  40,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aipom/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	SOLARBEAM, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	DIG, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	METRONOME, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	THUNDER_WAVE, \
	HONE_CLAWS, \
	SUBSTITUTE, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
