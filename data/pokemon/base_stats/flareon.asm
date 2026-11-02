	db FLAREON ; 136

	db  65, 130,  60,  65,  95, 110
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 16 ;35 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/flareon/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	CALM_MIND, \
	WILL_O_WISP, \
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
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	FIRE_BLAST, \
	SWIFT, \
	FLAMETHROWER, \
	REST, \
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
	SNORE, \
	SLEEP_TALK
