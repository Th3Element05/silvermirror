TrainerClassNames::
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	list_start TrainerClassNames
	li "LEADER"         ;FALKNER
	li "LEADER"         ;BUGSY
	li "LEADER"         ;WHITNEY
	li "LEADER"         ;MORTY
	li "LEADER"         ;CHUCK
	li "LEADER"         ;JASMINE
	li "LEADER"         ;PRYCE
	li "LEADER"         ;CLAIR
	li "<PKMN> PROF."   ;POKEMON_PROF
	li "RIVAL"          ;RIVAL1
	li "RIVAL"          ;RIVAL2
	li "LEADER"         ;BROCK
	li "LEADER"         ;MISTY
	li "LEADER"         ;LT_SURGE
	li "LEADER"         ;ERIKA
	li "LEADER"         ;KOGA
	li "LEADER"         ;SABRINA
	li "LEADER"         ;BLAINE
	li "LEADER"         ;GIOVANNI
	li "BOSS"           ;GIOVANNI
	li "ELITE FOUR"     ;LORELEI
	li "ELITE FOUR"     ;BRUNO
	li "ELITE FOUR"     ;AGATHA
	li "ELITE FOUR"     ;LANCE
	li "CHAMPION"       ;CHAMPION
	li "<PKMN> TRAINER" ;CAL
	li "NINJAMASTER"    ;JANINE ;-RED
	li "ROCKET"         ;GRUNTM
	li "ROCKET"         ;GRUNTF
	li "ROCKET"         ;EXECUTIVEM
	li "ROCKET"         ;EXECUTIVEF
	li "SCIENTIST"      ;SCIENTIST
	li "YOUNGSTER"      ;YOUNGSTER
	li "SCHOOLBOY"      ;SCHOOLBOY
	li "BIRD KEEPER"    ;BIRD_KEEPER
	li "LASS"           ;LASS
	li "TEACHER"        ;TEACHER
	li "ACE TRAINER"    ;COOLTRAINERM
	li "ACE TRAINER"    ;COOLTRAINERF
	li "BEAUTY"         ;BEAUTY
	li "#MANIAC"        ;POKEMANIAC
	li "GENTLEMAN"      ;GENTLEMAN
	li "SKIER"          ;SKIER
	li "BUG CATCHER"    ;BUG_CATCHER
	li "FISHER"         ;FISHER
	li "SWIMMER♂"       ;SWIMMERM
	li "SWIMMER♀"       ;SWIMMERF
	li "SAILOR"         ;SAILOR
	li "SUPER NERD"     ;SUPER_NERD
	li "GUITARIST"      ;GUITARIST
	li "HIKER"          ;HIKER
	li "BIKER"          ;BIKER
	li "BURGLAR"        ;BURGLAR
	li "FIREBREATHER"   ;FIREBREATHER
	li "JUGGLER"        ;JUGGLER
	li "BLACKBELT"      ;BLACKBELT_T
	li "PSYCHIC"        ;PSYCHIC_T
	li "PICNICKER"      ;PICNICKER
	li "CAMPER"         ;CAMPER
	li "SAGE"           ;SAGE
	li "MEDIUM"         ;MEDIUM
	li "BOARDER"        ;BOARDER
	li "#FAN"           ;POKEFANM
	li "#FAN"           ;POKEFANF
	li "KIMONO GIRL"    ;KIMONO_GIRL
	li "TWINS"          ;TWINS
	li "OFFICER"        ;OFFICER
	li "NINJA"          ;NINJA ;"MYSTICALMAN" ;MYSTICALMAN
	li "COUPLE"         ;COUPLE
	li "COOLDUO"        ;COOL_DUO
	li "<PKMN> TRAINER" ;RED
	li "<PKMN> TRAINER" ;GREEN
	assert_list_length NUM_TRAINER_CLASSES - 3 ; exclude AERODACTYLE_FOSSIL, KABUTOPS_FOSSIL, POKEMON_GHOST
