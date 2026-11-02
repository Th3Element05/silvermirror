	db PINSIR ; 127

	db  65, 125, 100,  85,  55,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 12 ;25 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pinsir/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	MEDITATE, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	SEISMIC_TOSS, \
	ENDURE, \
	EARTHQUAKE, \
	DIG, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	SUBMISSION, \
	REST, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	FALSE_SWIPE, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	X_SCISSOR, \
	SNORE, \
	SLEEP_TALK
