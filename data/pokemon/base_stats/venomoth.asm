	db VENOMOTH ; 049

	db  70,  65,  60,  90,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/venomoth/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	PSYCHIC_M, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	SUBSTITUTE, \
	ROOST, \
	ENERGY_BALL, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	SILVER_WIND, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	SUNNY_DAY, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
