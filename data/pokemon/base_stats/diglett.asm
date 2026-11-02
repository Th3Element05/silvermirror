	db DIGLETT ; 050

	db  10,  55,  25,  95,  35,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 81 ; base exp
	db NO_ITEM, SOFT_SAND ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/diglett/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	EARTHQUAKE, \
	FISSURE, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	AERIAL_ACE, \
	REST, \
	HONE_CLAWS, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	SANDSTORM, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK
