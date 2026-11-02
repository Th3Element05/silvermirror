	db STEELIX ; 208

	db  75,  85, 200,  30,  55,  65
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GROUND ; type
	db 30 ;25 ; catch rate
	db 196 ; base exp
	db NO_ITEM, METAL_COAT ; items ; IRON_PLATE
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 12 ;25 ; Step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/steelix/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	EARTHQUAKE, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	ROCK_TOMB, \
	SELFDESTRUCT, \
	REST, \
	ROCK_SLIDE, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	DRAGON_PULSE, \
	FLASH_CANNON, \
	ROLLOUT, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	STONE_EDGE, \
	ATTRACT, \
	GYRO_BALL, \
	SUNNY_DAY, \
	SANDSTORM, \
	DARK_PULSE, \
	ANCIENTPOWER, \
	SNORE, \
	SLEEP_TALK
