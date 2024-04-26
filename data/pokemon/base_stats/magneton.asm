	db MAGNETON ; 082

	db  50,  60,  95,  70, 120,  70
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magneton/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, THUNDERBOLT, THUNDER, TELEPORT, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, CURSE, ROLLOUT, SPARK, HIDDEN_POWER, SNORE, PROTECT, RAIN_DANCE, ENDURE, SWAGGER, SLEEP_TALK, FLASH, THUNDERBOLT
;tmhm CURSE, ROLLOUT, TOXIC, SPARK, HIDDEN_POWER, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, THUNDER, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, FLASH, THUNDERBOLT
	; end
