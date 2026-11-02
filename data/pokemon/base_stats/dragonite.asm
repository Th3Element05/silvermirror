	db DRAGONITE ; 149

	db  91, 134,  95,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, DRAGON_FANG ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ;40 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	DRAGON_CLAW, \
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
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	EARTHQUAKE, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	METRONOME, \
	FIRE_BLAST, \
	SWIFT, \
	AERIAL_ACE, \
	FLAMETHROWER, \
	REST, \
	THUNDER_WAVE, \
	HONE_CLAWS, \
	ICY_WIND, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	ROOST, \
	FOCUS_BLAST, \
	BRICK_BREAK, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	DRAGON_PULSE, \
	SWAGGER, \
	STEEL_WING, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	WHIRLPOOL, \
	WATERFALL, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK
