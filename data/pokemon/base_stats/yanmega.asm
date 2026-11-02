	db YANMEGA ; 193

	db  86,  76,  86,  95, 116,  56 ; 515 BST
	;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING ; type
	db 30 ; catch rate
	db 198 ; base exp
	db NO_ITEM, WIDE_LENS ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/yanmega/front.dimensions"
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
	MUD_SLAP, \
	DOUBLE_TEAM, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	SUBSTITUTE, \
	ROOST, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	SILVER_WIND, \
	SWAGGER, \
	THIEF, \
	STEEL_WING, \
	GIGA_IMPACT, \
	SHADOW_BALL, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	ANCIENTPOWER, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
