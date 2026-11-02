	db LAPRAS ; 131

	db 130,  85,  80,  60,  85,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp
	db NO_ITEM, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ;40 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lapras/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

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
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	SOLARBEAM, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	EARTHQUAKE, \
	FISSURE, \
	PSYCHIC_M, \
	WATER_PULSE, \
	DOUBLE_TEAM, \
	REFLECT, \
	REST, \
	ICY_WIND, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	DRAGON_PULSE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	RAIN_DANCE, \
	ANCIENTPOWER, \
	WHIRLPOOL, \
	WATERFALL, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
