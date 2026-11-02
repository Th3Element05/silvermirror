	db MAGNEZONE ; 082

	db  70,  70, 115,  60, 130,  90 ; 535 BST
	;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, STEEL ; type
	db 30 ; catch rate
	db 211 ; base exp
	db MAGNET, METAL_COAT ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magnezone/front.dimensions"
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
	THUNDERBOLT, \
	THUNDER, \
	DOUBLE_TEAM, \
	REFLECT, \
	SELFDESTRUCT, \
	SWIFT, \
	SPARK, \
	REST, \
	THUNDER_WAVE, \
	TRI_ATTACK, \
	SUBSTITUTE, \
	DOUBLE_EDGE, \
	FLASH_CANNON, \
	ROLLOUT, \
	SWAGGER, \
	GIGA_IMPACT, \
	GYRO_BALL, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SANDSTORM, \
	SNORE, \
	SLEEP_TALK
