	db STARMIE ; 121

	db  60,  75,  85, 115, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/starmie/front.dimensions"
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
	HYPER_BEAM, \
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
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	GYRO_BALL, \
	RAIN_DANCE, \
	WHIRLPOOL, \
	WATERFALL, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
