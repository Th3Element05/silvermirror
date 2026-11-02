	db ZUBAT ; 041

	db  40,  45,  35,  55,  30,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 8 ;15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zubat/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	DOUBLE_TEAM, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	SUBSTITUTE, \
	ROOST, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	STEEL_WING, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SNORE, \
	SLEEP_TALK
