	db GOLBAT ; 042

	db  75,  80,  70,  90,  65,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golbat/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND, WHIRLWIND, TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, GIGA_DRAIN, MIMIC, DOUBLE_TEAM, BIDE, SWIFT, REST, SUBSTITUTE, CURSE, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, SWAGGER, SLEEP_TALK, ATTRACT, THIEF, STEEL_WING
;tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, STEEL_WING
	; end
