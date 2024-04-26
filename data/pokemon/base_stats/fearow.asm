	db FEAROW ; 022

	db  65,  90,  65, 100,  61,  61
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM, SHARP_BEAK ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/fearow/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND, WHIRLWIND, TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, MIMIC, DOUBLE_TEAM, BIDE, SWIFT, SKY_ATTACK, REST, TRI_ATTACK, SUBSTITUTE, CURSE, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, MUD_SLAP, SWAGGER, SLEEP_TALK, ATTRACT, THIEF, STEEL_WING, FLY
;tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
