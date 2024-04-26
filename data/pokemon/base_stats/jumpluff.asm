	db JUMPLUFF ; 189

	db  75,  55,  70, 110,  55,  85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jumpluff/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND, SWORDS_DANCE, WHIRLWIND, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, PAY_DAY, HYPER_BEAM, RAGE, GIGA_DRAIN, SOLARBEAM, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, REST, SUBSTITUTE, HEADBUTT, CURSE, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, ENDURE, SWAGGER, SLEEP_TALK, ATTRACT, FLASH
;tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, FLASH
	; end
