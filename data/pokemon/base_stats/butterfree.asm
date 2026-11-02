	db BUTTERFREE ; 012

	db  60,  45,  50,  70,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 8 ;15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
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
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
