	db MANTINE ; 226

	db  65,  40,  70,  70,  80, 140
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 45 ;25 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 12 ;25 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mantine/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm \
	SURF, \
	TOXIC, \
	BODY_SLAM, \
	BULLET_SEED, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	EARTHQUAKE, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	ICY_WIND, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	ROOST, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	RAIN_DANCE, \
	WHIRLPOOL, \
	WATERFALL, \
	SNORE, \
	SLEEP_TALK
