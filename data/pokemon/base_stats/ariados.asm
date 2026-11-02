	db ARIADOS ; 168

	db  70,  90,  70,  40,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 8 ;15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ariados/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	DIG, \
	PSYCHIC_M, \
	DOUBLE_TEAM, \
	REST, \
	HONE_CLAWS, \
	SUBSTITUTE, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	POISON_JAB, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	X_SCISSOR, \
	SNORE, \
	SLEEP_TALK
