	db CELEBI ; 251

	db 100, 100, 100, 100, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp
	db LUM_BERRY, LUM_BERRY ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 120 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/celebi/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm \
	CALM_MIND, \
	TOXIC, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	PSYCHIC_M, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	METRONOME, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	THUNDER_WAVE, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	DOUBLE_EDGE, \
	SILVER_WIND, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	ANCIENTPOWER, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
