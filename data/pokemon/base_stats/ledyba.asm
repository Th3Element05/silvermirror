	db LEDYBA ; 165

	db  40,  20,  30,  55,  40,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 8 ;15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ledyba/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	TOXIC, \
	HIDDEN_POWER, \
	PROTECT, \
	COUNTER, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	DIG, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	SUBSTITUTE, \
	ROOST, \
	BRICK_BREAK, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	ROLLOUT, \
	SILVER_WIND, \
	SWAGGER, \
	THIEF, \
	CURSE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
