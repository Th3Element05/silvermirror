	db MAGNETON ; 082

	db  50,  60,  95,  70, 120,  70
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exp
	db MAGNET, METAL_COAT ; items ; IRON_PLATE
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magneton/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	HIDDEN_POWER, \
	HYPER_BEAM, \
	PROTECT, \
	ENDURE, \
	THUNDERBOLT, \
	THUNDER, \
	DOUBLE_TEAM, \
	REFLECT, \
	SWIFT, \
	SPARK, \
	REST, \
	THUNDER_WAVE, \
	TRI_ATTACK, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	FLASH_CANNON, \
	ROLLOUT, \
	SWAGGER, \
	GIGA_IMPACT, \
	CURSE, \
	GYRO_BALL, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	SNORE, \
	SLEEP_TALK
