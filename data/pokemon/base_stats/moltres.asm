	db MOLTRES ; 146

	db  90, 100,  90,  90, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 80 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/moltres/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm \
	WILL_O_WISP, \
	TOXIC, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	SOLARBEAM, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	FIRE_BLAST, \
	SWIFT, \
	AERIAL_ACE, \
	FLAMETHROWER, \
	SKY_ATTACK, \
	REST, \
	SUBSTITUTE, \
	ROOST, \
	HEADBUTT, \
	AIR_SLICE, \
	DOUBLE_EDGE, \
	SWAGGER, \
	STEEL_WING, \
	GIGA_IMPACT, \
	CURSE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK
