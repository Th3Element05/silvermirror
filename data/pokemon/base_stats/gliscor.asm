	db GLISCOR ; 207

	db  75,  95, 125,  95,  45,  75 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db GROUND, FLYING ; type
	db 30 ; catch rate
	db 192 ; base exp
	db NO_ITEM, RAZOR_FANG ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gliscor/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, SHARPEN, ROOST, STONE_EDGE, DARK_PULSE, X_SCISSOR, POISON_JAB, SWORDS_DANCE, TOXIC, SUBMISSION, COUNTER, SEISMIC_TOSS, DIG, DOUBLE_TEAM, BIDE, SWIFT, SKY_ATTACK, REST, ROCK_SLIDE, SUBSTITUTE, FALSE_SWIPE, HEADBUTT, CURSE, BRICK_BREAK, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, IRON_TAIL, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, ATTRACT, THIEF
