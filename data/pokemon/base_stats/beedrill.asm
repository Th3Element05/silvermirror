	db BEEDRILL ; 015

	db  65,  80,  40,  75,  45,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp
	db NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/beedrill/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, ROOST, AIR_SLICE, GIGA_IMPACT, X_SCISSOR, POISON_JAB, SWORDS_DANCE, TOXIC, DOUBLE_EDGE, HYPER_BEAM, GIGA_DRAIN, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, SUBSTITUTE, FALSE_SWIPE, CURSE, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, ENDURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, ATTRACT
;tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SWIFT, REST, ATTRACT, CUT
	; end
;SKULL_BASH
;MIMIC
;CUT
