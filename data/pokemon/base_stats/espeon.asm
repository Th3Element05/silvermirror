	db ESPEON ; 196

	db  65,  65,  60, 110, 130,  95
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 16 ;35 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/espeon/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	CALM_MIND, \
	TOXIC, \
	MEDITATE, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PAY_DAY, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	DIG, \
	PSYCHIC_M, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	REST, \
	THUNDER_WAVE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
