	db NOCTOWL ; 164

	db 100,  50,  50,  70,  76,  96
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 8 ;15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/noctowl/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm \
	CALM_MIND, \
	TOXIC, \
	MEDITATE, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	PSYCHIC_M, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	AERIAL_ACE, \
	SKY_ATTACK, \
	REST, \
	SUBSTITUTE, \
	ROOST, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	SILVER_WIND, \
	SWAGGER, \
	THIEF, \
	STEEL_WING, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
