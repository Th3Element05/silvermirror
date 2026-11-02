	db EKANS ; 023

	db  35,  60,  44,  55,  40,  54
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ekans/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	IRON_TAIL, \
	EARTHQUAKE, \
	FISSURE, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	REST, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	CURSE, \
	POISON_JAB, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DARK_PULSE, \
	SNORE, \
	SLEEP_TALK
