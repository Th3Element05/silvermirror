	db SEEL ; 086

	db  65,  45,  55,  45,  45,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 100 ; base exp
	db ASPEAR_BERRY, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/seel/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	SURF, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
	ICE_BEAM, \
	BLIZZARD, \
	PAY_DAY, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	WATER_PULSE, \
	DOUBLE_TEAM, \
	REST, \
	ICY_WIND, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	THIEF, \
	CURSE, \
	ATTRACT, \
	RAIN_DANCE, \
	WHIRLPOOL, \
	WATERFALL, \
	SNORE, \
	SLEEP_TALK
