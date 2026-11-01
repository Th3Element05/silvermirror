	db FORRETRESS ; 205

	db  75,  90, 140,  40,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 118 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/forretress/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	ENDURE, \
	GIGA_DRAIN, \
	SOLARBEAM, \
	EARTHQUAKE, \
	DIG, \
	DOUBLE_TEAM, \
	REFLECT, \
	ROCK_TOMB, \
	SELFDESTRUCT, \
	SWIFT, \
	REST, \
	THUNDER_WAVE, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	FLASH_CANNON, \
	ROLLOUT, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	POISON_JAB, \
	ATTRACT, \
	GYRO_BALL, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	SNORE, \
	SLEEP_TALK, \
	SWEET_SCENT
