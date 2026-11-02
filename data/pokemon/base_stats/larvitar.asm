	db LARVITAR ; 246

	db  50,  64,  50,  41,  45,  50
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ;40 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/larvitar/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	EARTHQUAKE, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	REST, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	DARK_PULSE, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK
