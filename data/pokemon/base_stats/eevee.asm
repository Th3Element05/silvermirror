	db EEVEE ; 133

	db  55,  55,  50,  55,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 16 ;35 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/eevee/front.dimensions"
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
	PAY_DAY, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	REST, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SNORE, \
	SLEEP_TALK
