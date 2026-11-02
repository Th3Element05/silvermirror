	db MEWTWO ; 150

	db 106, 110,  90, 130, 154,  90
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items ; BERSERK_GENE
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 120 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mewtwo/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm \
	DYNAMICPUNCH, \
	CALM_MIND, \
	WILL_O_WISP, \
	TOXIC, \
	MEDITATE, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PAY_DAY, \
	PROTECT, \
	COUNTER, \
	SEISMIC_TOSS, \
	ENDURE, \
	SOLARBEAM, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	EARTHQUAKE, \
	PSYCHIC_M, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	METRONOME, \
	SELFDESTRUCT, \
	SUBMISSION, \
	FIRE_BLAST, \
	SWIFT, \
	AERIAL_ACE, \
	FLAMETHROWER, \
	REST, \
	THUNDER_WAVE, \
	ICY_WIND, \
	ROCK_SLIDE, \
	TRI_ATTACK, \
	SUBSTITUTE, \
	FOCUS_BLAST, \
	ENERGY_BALL, \
	BRICK_BREAK, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	STONE_EDGE, \
	POISON_JAB, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	DARK_PULSE, \
	ANCIENTPOWER, \
	FIRE_PUNCH, \
	THUNDERPUNCH, \
	ICE_PUNCH, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
