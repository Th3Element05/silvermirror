	db GLACEON ; 133

	db  65,  60, 110,  65, 130,  95 ; 525 BST
	;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
;	db 100 ; unknown 1
	db 35 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/glaceon/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, SUBSTITUTE, HEADBUTT, CURSE, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, ENDURE, IRON_TAIL, SHADOW_BALL, MUD_SLAP, SWAGGER, SLEEP_TALK, ATTRACT
