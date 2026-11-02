	db CHINCHOU ; 170

	db  75,  38,  38,  67,  56,  56
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp
	db HEART_SCALE, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chinchou/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm \
	SURF, \
	TOXIC, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
	ICE_BEAM, \
	BLIZZARD, \
	PROTECT, \
	ENDURE, \
	THUNDERBOLT, \
	THUNDER, \
	WATER_PULSE, \
	DOUBLE_TEAM, \
	SPARK, \
	REST, \
	THUNDER_WAVE, \
	ICY_WIND, \
	SUBSTITUTE, \
	DOUBLE_EDGE, \
	SWAGGER, \
	CURSE, \
	ATTRACT, \
	RAIN_DANCE, \
	WHIRLPOOL, \
	WATERFALL, \
	SNORE, \
	SLEEP_TALK
