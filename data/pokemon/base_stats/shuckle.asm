	db SHUCKLE ; 213

	db  20,  10, 230,  05,  10, 230
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 80 ; base exp
	db BERRY_JUICE, BERRY_JUICE ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/shuckle/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	EARTHQUAKE, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	REST, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	ROLLOUT, \
	SLUDGE_BOMB, \
	SWAGGER, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	GYRO_BALL, \
	SUNNY_DAY, \
	SANDSTORM, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
