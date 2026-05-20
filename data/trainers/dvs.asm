TrainerClassDVs:
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 2, TrainerClassDVs
	;  atk,def,spd,spc
	dn  9,  8,  8,  8 ; FALKNER
	dn  9,  8,  8,  8 ; BUGSY
	dn  7,  8,  9,  9 ;   WHITNEY
	dn  9,  8,  8,  8 ; MORTY
	dn  9,  8,  8,  8 ; CHUCK
	dn  7,  8,  9,  9 ;   JASMINE
	dn  9,  8,  8,  8 ; PRYCE
	dn  7, 10, 10, 11 ;   CLAIR
	dn 14, 14, 13, 14 ; POKEMON_PROF
	dn  8,  8,  8,  8 ; RIVAL1
	dn 10, 10, 10, 10 ; RIVAL2
	dn  8,  8,  8,  8 ; BROCK
	dn  7,  8,  9,  9 ;   MISTY
	dn  9,  8,  8,  8 ; LT_SURGE
	dn  7,  8,  9,  9 ;   ERIKA
	dn  9,  8, 11,  8 ; KOGA
	dn  5,  9, 10,  9 ;   SABRINA ; hidden power BUG
	dn  9,  8,  8,  8 ; BLAINE 1:3
	dn 12, 12, 12, 12 ; BLUE
	dn 12, 12, 12, 12 ; GIOVANNI
	dn 10, 10, 10, 10 ; ROCKET BOSS
	dn  9, 10, 10, 11 ;   LORELEI
	dn 10, 10, 10, 10 ; BRUNO
	dn  9, 10, 10, 11 ;   AGATHA
	dn 12, 12, 12, 12 ; LANCE
	dn 12, 12, 12, 12 ; CHAMPION
	dn 12, 12, 12, 12 ; CAL
	dn  7,  8, 11,  9 ;   JANINE
	dn  8,  7,  7,  8 ; GRUNTM
	dn  7,  8,  8,  7 ;   GRUNTF
	dn 10, 10, 10, 10 ; EXECUTIVEM
	dn  9, 10, 10, 11 ;   EXECUTIVEF
	dn  8,  8,  8,  8 ; SCIENTIST
	dn  8,  7,  7,  8 ; YOUNGSTER
	dn  8,  8,  8,  8 ; SCHOOLBOY
	dn  8,  8,  8,  8 ; BIRD_KEEPER
	dn  7,  8,  9,  7 ;   LASS
	dn  7,  8,  9,  7 ;   TEACHER
	dn 10,  9,  9, 10 ; COOLTRAINERM
	dn  9,  8,  9, 11 ;   COOLTRAINERF
	dn  7,  8,  9,  7 ;   BEAUTY
	dn  8,  8,  8,  8 ; POKEMANIAC
	dn  9,  9,  9,  8 ; GENTLEMAN
	dn  7,  8,  9,  9 ;   SKIER
	dn  8,  7,  7,  8 ; BUG_CATCHER
	dn  8,  8,  8,  8 ; FISHER
	dn  8,  8,  8,  8 ; SWIMMERM 1:3
	dn  7,  8,  9,  7 ;   SWIMMERF
	dn  8,  8,  8,  8 ; SAILOR
	dn  8,  8,  8,  8 ; SUPER_NERD 1:3
	dn  8,  8,  8,  8 ; GUITARIST
	dn  8,  8,  8,  8 ; HIKER
	dn  8,  8,  8,  8 ; BIKER
	dn  8,  8,  8,  8 ; BURGLAR 1:3
	dn  8,  8,  8,  8 ; FIREBREATHER 1:3
	dn  8,  8,  8,  8 ; JUGGLER
	dn  8,  8,  8,  8 ; BLACKBELT_T
	dn  8,  8,  8,  8 ; PSYCHIC_T
	dn  7,  8,  8,  7 ;   PICNICKER
	dn  8,  8,  8,  8 ; CAMPER
	dn  9,  8,  8,  8 ; SAGE
	dn  7,  8,  9,  7 ;   MEDIUM
	dn  9,  8,  8,  8 ; BOARDER
	dn  9,  8,  8,  8 ; POKEFANM 1:3
	dn  7,  8,  8,  7 ;   POKEFANF
	dn  9, 10, 10, 11 ;   KIMONO_GIRL
	dn  7,  8,  8,  7 ;   TWINS
	dn  8,  8,  8,  8 ; OFFICER
	dn  8,  8, 10,  8 ; NINJA
	dn  8,  8,  8,  8 ; COUPLE
	dn 10,  9,  9, 10 ; COOL_DUO
	dn 10, 10, 10, 10 ; RED   ;15, 13, 13, 14
	dn  9, 10, 10, 11 ;   GREEN ;15, 13, 13, 14
	assert_table_length NUM_TRAINER_CLASSES - 3 ; exclude AERODACTYLE_FOSSIL, KABUTOPS_FOSSIL, POKEMON_GHOST

;male,   ATK=*,   DEF=*,    SPD=*  SPC=EVEN
;female, ATK=ODD, DEF=EVEN, SPD=*, SPC=ODD
