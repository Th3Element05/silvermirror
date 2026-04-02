	db MAGNEMITE ; 081

	db  25,  35,  70,  45,  95,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 190 ; catch rate
	db 89 ; base exp
	db NO_ITEM, MAGNET ; items ; METAL_COAT ; STEEL_INGOT
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magnemite/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GYRO_BALL, FLASH_CANNON, TOXIC, DOUBLE_EDGE, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, CURSE, ROLLOUT, SPARK, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, SWAGGER, SLEEP_TALK, FLASH, THUNDERBOLT
;tmhm CURSE, ROLLOUT, TOXIC, SPARK, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, THUNDER, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, FLASH, THUNDERBOLT
	; end
;MIMIC
