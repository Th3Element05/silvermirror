	db SUNKERN ; 191

	db  30,  30,  30,  30,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 235 ; catch rate
	db 52 ; base exp
	db NO_ITEM, SUN_STONE ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sunkern/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BULLET_SEED, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	DOUBLE_TEAM, \
	REST, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	DOUBLE_EDGE, \
	SLUDGE_BOMB, \
	SWAGGER, \
	CURSE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
