	db AERODACTYL ; 142

	db  80, 105,  65, 130,  60,  75
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 16 ;35 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm \
	DRAGON_CLAW, \
	TOXIC, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	EARTHQUAKE, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	FIRE_BLAST, \
	SWIFT, \
	AERIAL_ACE, \
	FLAMETHROWER, \
	SKY_ATTACK, \
	REST, \
	HONE_CLAWS, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	ROOST, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	DRAGON_PULSE, \
	SWAGGER, \
	THIEF, \
	STEEL_WING, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK
