	db RAIKOU ; 243

	db  90,  85,  75, 115, 115, 100
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 3 ; catch rate
	db 216 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 80 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raikou/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm \
	CALM_MIND, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	SPARK, \
	REST, \
	THUNDER_WAVE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	SNORE, \
	SLEEP_TALK
