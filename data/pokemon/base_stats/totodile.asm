	db TOTODILE ; 158

	db  50,  65,  64,  43,  44,  48
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/totodile/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	DRAGON_CLAW, \
	SURF, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	WATER_GUN, \
	ICE_BEAM, \
	BLIZZARD, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	IRON_TAIL, \
	DIG, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	AERIAL_ACE, \
	REST, \
	HONE_CLAWS, \
	ICY_WIND, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	CURSE, \
	ATTRACT, \
	SWORDS_DANCE, \
	RAIN_DANCE, \
	ANCIENTPOWER, \
	WHIRLPOOL, \
	WATERFALL, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK
