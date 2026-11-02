	db KOFFING ; 109

	db  40,  65,  95,  35,  60,  45
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp
	db NO_ITEM, SMOKE_BALL ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/koffing/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm \
	WILL_O_WISP, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	THUNDERBOLT, \
	THUNDER, \
	DOUBLE_TEAM, \
	SELFDESTRUCT, \
	FIRE_BLAST, \
	FLAMETHROWER, \
	REST, \
	SUBSTITUTE, \
	HEADBUTT, \
	ROLLOUT, \
	SLUDGE_BOMB, \
	SWAGGER, \
	THIEF, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	GYRO_BALL, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DARK_PULSE, \
	SNORE, \
	SLEEP_TALK
