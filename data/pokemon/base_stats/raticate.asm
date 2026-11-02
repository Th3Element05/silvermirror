	db RATICATE ; 020

	db  55,  81,  60,  97,  50,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	db ORAN_BERRY, SITRUS_BERRY ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 8 ;15 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raticate/front.dimensions"
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
	ICE_BEAM, \
	BLIZZARD, \
	HYPER_BEAM, \
	PROTECT, \
	COUNTER, \
	ENDURE, \
	IRON_TAIL, \
	THUNDERBOLT, \
	THUNDER, \
	DIG, \
	MUD_SLAP, \
	DOUBLE_TEAM, \
	SWIFT, \
	REST, \
	THUNDER_WAVE, \
	ICY_WIND, \
	SUBSTITUTE, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	THIEF, \
	GIGA_IMPACT, \
	CURSE, \
	SHADOW_BALL, \
	ATTRACT, \
	SWORDS_DANCE, \
	SUNNY_DAY, \
	RAIN_DANCE, \
	SNORE, \
	SLEEP_TALK
