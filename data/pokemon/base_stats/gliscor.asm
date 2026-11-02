	db GLISCOR ; 207

	db  75,  95, 125,  95,  45,  75 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db GROUND, FLYING ; type
	db 30 ; catch rate
	db 192 ; base exp
	db NO_ITEM, RAZOR_FANG ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gliscor/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
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
	SWIFT, \
	AERIAL_ACE, \
	SKY_ATTACK, \
	REST, \
	HONE_CLAWS, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	ROOST, \
	FALSE_SWIPE, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	STEEL_WING, \
	GIGA_IMPACT, \
	STONE_EDGE, \
	POISON_JAB, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	DARK_PULSE, \
	X_SCISSOR, \
	SNORE, \
	SLEEP_TALK
