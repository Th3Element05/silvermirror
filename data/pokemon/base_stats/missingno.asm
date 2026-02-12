	db MISSINGNO ; 252 ;missingno

;	db  33, 136,   0,  29,   6,   6
	db  250, 10, 250,  29,  10, 250
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 29 ; catch rate
	db 255 ; base exp
	db RARE_CANDY, RARE_CANDY ; items
	db GENDER_UNKNOWN ; gender ratio
;	db 100 ; unknown 1
	db 120 ; step cycles to hatch
;	db 5 ; unknown 2
	INCBIN "gfx/pokemon/missingno/front.dimensions"
;	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, MEGA_KICK, TOXIC, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, WATER_GUN, ICE_BEAM, BLIZZARD, SUBMISSION, SEISMIC_TOSS, RAGE, THUNDER, EARTHQUAKE, FISSURE, PSYCHIC_M, TELEPORT, SKY_ATTACK, REST, THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE, CUT, FLY
	; end
;RAZOR_WIND
