	db ARCANINE ; 059

	db  90, 110,  80,  95, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp
	db RAWST_BERRY, RAWST_BERRY ; items
	db GENDER_F25 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arcanine/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	WILL_O_WISP, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	SOLARBEAM, \
	IRON_TAIL, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	FIRE_BLAST, \
	SWIFT, \
	AERIAL_ACE, \
	FLAMETHROWER, \
	REST, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	DRAGON_PULSE, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	SUNNY_DAY, \
	SNORE, \
	SLEEP_TALK
