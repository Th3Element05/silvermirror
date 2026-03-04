	db WEAVILE ; 215

	db  70, 120,  65, 125,  45,  85 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp
	db NO_ITEM, RAZOR_CLAW ; items ;QUICK_CLAW
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/weavile/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, AERIAL_ACE, SHARPEN, SHADOW_CLAW, DARK_PULSE, X_SCISSOR, POISON_JAB, TOXIC, ICE_BEAM, BLIZZARD, COUNTER, DIG, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, DREAM_EATER, REST, SUBSTITUTE, DYNAMICPUNCH, FALSE_SWIPE, HEADBUTT, CURSE, BRICK_BREAK, HIDDEN_POWER, SNORE, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, IRON_TAIL, SHADOW_BALL, MUD_SLAP, ICE_PUNCH, SWAGGER, SLEEP_TALK, ATTRACT, THIEF, NIGHTMARE, SURF, ICE_BEAM
