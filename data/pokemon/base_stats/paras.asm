	db PARAS ; 046

	db  35,  70,  55,  25,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/paras/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	BULLET_SEED, \
	HIDDEN_POWER, \
	PROTECT, \
	COUNTER, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	DIG, \
	DOUBLE_TEAM, \
	REFLECT, \
	AERIAL_ACE, \
	REST, \
	HONE_CLAWS, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	FALSE_SWIPE, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	CURSE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	X_SCISSOR, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
