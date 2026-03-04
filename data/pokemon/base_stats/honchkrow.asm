	db HONCHKROW ; 198

	db 100, 125,  52,  71, 105,  52 ; 505 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 187 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/honchkrow/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, AERIAL_ACE, ROOST, AIR_SLICE, DARK_PULSE, TOXIC, DOUBLE_EDGE, DOUBLE_TEAM, BIDE, SWIFT, DREAM_EATER, SKY_ATTACK, REST, SUBSTITUTE, CURSE, HIDDEN_POWER, SUNNY_DAY, SNORE, ICY_WIND, PROTECT, ENDURE, SHADOW_BALL, MUD_SLAP, SWAGGER, SLEEP_TALK, ATTRACT, THIEF, STEEL_WING, NIGHTMARE
