	db OCTILLERY ; 224

	db  75, 105,  75,  45, 105,  75
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 164 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/octillery/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm \
	SURF, \
	TOXIC, \
	BULLET_SEED, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PROTECT, \
	SEISMIC_TOSS, \
	ENDURE, \
	PSYCHIC_M, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	FIRE_BLAST, \
	SWIFT, \
	FLAMETHROWER, \
	REST, \
	THUNDER_WAVE, \
	ICY_WIND, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	DOUBLE_EDGE, \
	FLASH_CANNON, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	WHIRLPOOL, \
	WATERFALL, \
	SNORE, \
	SLEEP_TALK
