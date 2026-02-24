	db HERACROSS ; 214

	db  80, 125,  75,  85,  40,  95
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
;	db 100 ; unknown 1
	db 25 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/heracross/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm BULK_UP, AERIAL_ACE, FOCUS_BLAST, SHADOW_CLAW, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUBMISSION, SEISMIC_TOSS, EARTHQUAKE, DOUBLE_TEAM, BIDE, REST, SUBSTITUTE, FALSE_SWIPE, HEADBUTT, CURSE, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, SWAGGER, SLEEP_TALK, ATTRACT, THIEF
;tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, EARTHQUAKE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, CUT, STRENGTH
	; end
;MIMIC
;CUT
;STRENGTH
