	db STARYU ; 120

	db  30,  45,  55,  85,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/staryu/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

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
	PSYCHIC_M, \
	WATER_PULSE, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	REST, \
	THUNDER_WAVE, \
	ICY_WIND, \
	TRI_ATTACK, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	FLASH_CANNON, \
	ROLLOUT, \
	SWAGGER, \
	CURSE, \
	ATTRACT, \
	GYRO_BALL, \
	RAIN_DANCE, \
	WHIRLPOOL, \
	WATERFALL, \
	SNORE, \
	SLEEP_TALK
