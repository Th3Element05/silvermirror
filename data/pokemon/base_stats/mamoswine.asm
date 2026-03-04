	db MAMOSWINE ; 221

	db 110, 130,  80,  80,  70,  60 ; 530 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 207 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 20 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mamoswine/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, STONE_EDGE, ANCIENTPOWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, EARTHQUAKE, DOUBLE_TEAM, BIDE, REST, ROCK_SLIDE, SUBSTITUTE, HEADBUTT, CURSE, BRICK_BREAK, HIDDEN_POWER, SNORE, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, MUD_SLAP, SWAGGER, SLEEP_TALK, ATTRACT, ICE_BEAM
