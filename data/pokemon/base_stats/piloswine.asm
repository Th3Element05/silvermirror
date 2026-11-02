	db PILOSWINE ; 221

	db 100, 100,  80,  50,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 75 ; catch rate
	db 160 ; base exp
	db ASPEAR_BERRY, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/piloswine/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	EARTHQUAKE, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	REST, \
	ICY_WIND, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	RAIN_DANCE, \
	SANDSTORM, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK
