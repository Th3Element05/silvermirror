	db GLOOM ; 044

	db  60,  65,  70,  40,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 132 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gloom/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, ENERGY_BALL, SWORDS_DANCE, TOXIC, DOUBLE_EDGE, GIGA_DRAIN, SOLARBEAM, DOUBLE_TEAM, REFLECT, BIDE, REST, SUBSTITUTE, CURSE, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, ENDURE, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, ATTRACT, FLASH
;tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, CUT, FLASH
	; end
;MIMIC
;CUT
