	db STANTLER ; 234

	db  73,  95,  62,  85,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/stantler/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	CALM_MIND, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	SOLARBEAM, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	EARTHQUAKE, \
	DIG, \
	PSYCHIC_M, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	REST, \
	THUNDER_WAVE, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
