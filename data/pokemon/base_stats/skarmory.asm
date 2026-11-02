	db SKARMORY ; 227

	db  65,  80, 140,  70,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 30 ;25 ; catch rate
	db 168 ; base exp
	db NO_ITEM, METAL_COAT ; items ; IRON_PLATE
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 12 ;25 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	ENDURE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	SWIFT, \
	AERIAL_ACE, \
	SKY_ATTACK, \
	REST, \
	ICY_WIND, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	ROOST, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	FLASH_CANNON, \
	SWAGGER, \
	THIEF, \
	STEEL_WING, \
	GIGA_IMPACT, \
	CURSE, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	SANDSTORM, \
	DARK_PULSE, \
	X_SCISSOR, \
	SNORE, \
	SLEEP_TALK
