	db MEOWTH ; 052

	db  40,  45,  35,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp
	db NO_ITEM, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/meowth/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	BUBBLEBEAM, \
	WATER_GUN, \
	PAY_DAY, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	DIG, \
	WATER_PULSE, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	SWIFT, \
	AERIAL_ACE, \
	REST, \
	THUNDER_WAVE, \
	HONE_CLAWS, \
	ICY_WIND, \
	SUBSTITUTE, \
	FALSE_SWIPE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	SHADOW_CLAW, \
	THIEF, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	DARK_PULSE, \
	DREAM_EATER, \
	SNORE, \
	SLEEP_TALK
