	db NIDORAN_F ; 029

	db  55,  47,  52,  41,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidoran_f/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	ICE_BEAM, \
	BLIZZARD, \
	PROTECT, \
	COUNTER, \
	ENDURE, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	DIG, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	AERIAL_ACE, \
	REST, \
	HONE_CLAWS, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	CURSE, \
	POISON_JAB, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SNORE, \
	SLEEP_TALK
