	db MAGNEZONE ; 082

	db  70,  70, 115,  60, 130,  90 ; 535 BST
	;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, STEEL ; type
	db 30 ; catch rate
	db 211 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magnezone/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, GYRO_BALL, FLASH_CANNON, TOXIC, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, CURSE, ROLLOUT, SPARK, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, SWAGGER, SLEEP_TALK, FLASH, THUNDERBOLT
