	db MEGANIUM ; 154

	db  80,  82, 100,  80,  83, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/meganium/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	BULLET_SEED, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	IRON_TAIL, \
	EARTHQUAKE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	REST, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
