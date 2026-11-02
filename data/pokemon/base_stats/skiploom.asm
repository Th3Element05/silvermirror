	db SKIPLOOM ; 188

	db  55,  45,  50,  80,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 120 ; catch rate
	db 136 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skiploom/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BULLET_SEED, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	DOUBLE_TEAM, \
	REFLECT, \
	AERIAL_ACE, \
	REST, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SILVER_WIND, \
	SWAGGER, \
	THIEF, \
	CURSE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
