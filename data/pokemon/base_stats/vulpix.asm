	db VULPIX ; 037

	db  38,  41,  40,  65,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp
	db RAWST_BERRY, CHARCOAL ; items
	db GENDER_F75 ; gender ratio
;	db 100 ; unknown 1
	db 10 ;20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vulpix/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm \
	WILL_O_WISP, \
	TOXIC, \
	BODY_SLAM, \
	HIDDEN_POWER, \
	PROTECT, \
	ENDURE, \
	IRON_TAIL, \
	DIG, \
	DOUBLE_TEAM, \
	REFLECT, \
	FIRE_BLAST, \
	SWIFT, \
	FLAMETHROWER, \
	REST, \
	SUBSTITUTE, \
	ENERGY_BALL, \
	HEADBUTT, \
	DOUBLE_EDGE, \
	SWAGGER, \
	CURSE, \
	ATTRACT, \
	SUNNY_DAY, \
	DARK_PULSE, \
	SNORE, \
	SLEEP_TALK
