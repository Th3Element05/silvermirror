DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 00
	const PHONECONTACT_MOM
	const PHONECONTACT_OAK
	const PHONECONTACT_BILL
;	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

	trainerclass FALKNER ; 01
	const FALKNER1

DEF KRIS EQU __trainer_class__
	trainerclass BUGSY ; 02
	const BUGSY1

	trainerclass WHITNEY ; 03
	const WHITNEY1

	trainerclass MORTY ; 04
	const MORTY1

	trainerclass CHUCK ; 05
	const CHUCK1

	trainerclass JASMINE ; 06
	const JASMINE1

	trainerclass PRYCE ; 07
	const PRYCE1

	trainerclass CLAIR ; 08
	const CLAIR1

	trainerclass POKEMON_PROF ; 09
	const OAK_T_VENUSAUR
	const OAK_T_CHARIZARD
	const OAK_T_BLASTOISE

	trainerclass RIVAL1 ; 0a
; OAKS_LAB
	const RIVAL1_1_BULBASAUR
	const RIVAL1_1_CHARMANDER
	const RIVAL1_1_SQUIRTLE
; ROUTE_22 (1)
	const RIVAL1_2_BULBASAUR
	const RIVAL1_2_CHARMANDER
	const RIVAL1_2_SQUIRTLE
; NUGGET_BRIDGE
	const RIVAL1_3_BULBASAUR
	const RIVAL1_3_CHARMANDER
	const RIVAL1_3_SQUIRTLE
;DEBUG
	const RIVAL_DEBUG

	trainerclass RIVAL2 ; 0b
; SS_ANNE
	const RIVAL2_1_BULBASAUR
	const RIVAL2_1_CHARMANDER
	const RIVAL2_1_SQUIRTLE
; POKEMON_TOWER
	const RIVAL2_2_BULBASAUR
	const RIVAL2_2_CHARMANDER
	const RIVAL2_2_SQUIRTLE
; SILPH_CO
	const RIVAL2_3_BULBASAUR
	const RIVAL2_3_CHARMANDER
	const RIVAL2_3_SQUIRTLE
; ROUTE_22 (2)
	const RIVAL2_4_BULBASAUR
	const RIVAL2_4_CHARMANDER
	const RIVAL2_4_SQUIRTLE
; NEW BARK TOWN
	const RIVAL2_NEW_BARK_TOWN

	trainerclass BROCK ; 0c
	const BROCK1

	trainerclass MISTY ; 0d
	const MISTY1

	trainerclass LT_SURGE ; 0e
	const LT_SURGE1

	trainerclass ERIKA ; 0f
	const ERIKA1

	trainerclass KOGA ; 10
	const KOGA1
	const KOGA2

	trainerclass SABRINA ; 11
	const SABRINA1

	trainerclass BLAINE ; 12
	const BLAINE1

;	trainerclass BLUE ; 13
;	const BLUE1
;
	trainerclass GIOVANNI ; 13
	const GIOVANNI1

	trainerclass ROCKET_BOSS ; --
	const GIOVANNI_HIDEOUT
	const GIOVANNI_SILPHCO

	trainerclass LORELEI ; 14
	const LORELEI1

	trainerclass BRUNO ; 15
	const BRUNO1

	trainerclass AGATHA ; 16
	const AGATHA1

	trainerclass LANCE ; 17
	const LANCE1

	trainerclass CHAMPION ; 18
	const CHAMPION1_BULBASAUR
	const CHAMPION1_CHARMANDER
	const CHAMPION1_SQUIRTLE

	trainerclass CAL ; 19
	const CAL1
	const CAL2
	const CAL3

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass GRUNTM ; 1b
; kanto
	const GRUNTM_1
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_12
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22
	const GRUNTM_23
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26
	const GRUNTM_27
	const GRUNTM_28
; johto
	const GRUNTM_29 ; fast ship engine room
	const GRUNTM_30 ; fast ship captains cabin

	trainerclass GRUNTF ; 1c
; kanto
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5
	const GRUNTF_6
	const GRUNTF_7
	const GRUNTF_8
	const GRUNTF_9

	trainerclass EXECUTIVEM ; 1d
; kanto
	const EXECUTIVEM_1
	const EXECUTIVEM_2
; johto
	const EXECUTIVEM_3 ; fast ship engine room
	const FANATIC      ; radio tower 4f

	trainerclass EXECUTIVEF ; 1e
; kanto
	const EXECUTIVEF_1
; johto
	const EXECUTIVEF_2 ; fast ship captains cabin

	trainerclass SCIENTIST ; 1f
; kanto
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICH
	const LOWELL
	const DANNIE
	const LINDEN
	const ISAIAH
	const WESTON
	const SILAS
	const DOMINIC
	const EZEKIEL
; johto
;	none

	trainerclass YOUNGSTER ; 20
; kanto
	const ASHER
	const GORDON
	const ALBERT
	const SAMUEL
	const MIKEY
	const RICKY
	const JIMMY
	const OWEN
	const IAN1
	const JASON
; johto
	const DANNY
	const REGIS
	const JOEY1
	const THOMAS
	const BRADY
; rematch
	const IAN_2
	const IAN_3
	const IAN_0
	const JOEY_0

	trainerclass SCHOOLBOY ; 21
; kanto
	const BILLY1
	const ALAN1
; johto
	const TORIN1
	const CHAD1
	const JACK1
	const BRAD
; rematch
	const BILLY_2
	const BILLY_0
	const ALAN_2
	const ALAN_0
	const TORIN_0
	const CHAD_0
	const JACK_0

	trainerclass BIRD_KEEPER ; 22
; kanto
	const ROD
	const ABE
	const ROY
	const JAMIE1
	const TOBY
	const DENNIS
	const PERRY
	const HANK
	const THEO
	const BORIS
	const BOB
	const JOSE1
	const BRYAN
	const PETER
	const VANCE1
; johto
	const JOE
	const NATE
	const JOHN
	const RICK
	const LUCAS
; rematch
	const JAMIE_2
	const JAMIE_0
	const JOSE_2
	const JOSE_0
	const VANCE_2
	const VANCE_0

	trainerclass LASS ; 23
; kanto
	const BRIDGET
	const COLETTE
	const EVELYN
	const ALICE
	const LINDA
	const KRISE1
	const LAURA
	const SHANNON
	const MICHELLE
	const HILLARY1
	const SADIE
	const ELLEN
	const DANA1
	const SARAH
	const CHLOE
	const NORA
	const CORA
	const ZOEY
	const ELENA
; johto
	const CONNIE
	const HAILEY
	const KELLY
	const RUBY
; rematch
;	const KRISE_2 ; no phone service
;	const KRISE_0 ; no phone service
	const HILLARY_2
	const HILLARY_3
	const HILLARY_0
	const DANA_2
	const DANA_0

	trainerclass TEACHER ; 24
; johto
	const KATE
	const SHIRLEY
	const IRENE

	trainerclass COOLTRAINERM ; 25
; kanto
	const PAUL
	const NICK
	const AARON
	const SEAN
	const MIKE
	const LEVI
	const RYAN
	const GAVIN1
	const FINN
	const FELIX
	const ANDRE
; johto
	const JAKE
	const BRIAN
	const KEVIN
	const COLT
	const ZANE
	const AXEL
	const MILES
	const ADAM
; reamtch
	const GAVIN_0

	trainerclass COOLTRAINERF ; 26
; kanto
	const GWEN
	const LOIS
	const ANNIE
	const FRAN
	const JOYCE
	const BETH1
	const MIRA
	const MIA
	const ELLA
; johto
	const SALMA
	const LOLA
	const REENA1
	const JENN
	const CARA
	const QUINN
	const LAYLA
	const IRIS
	const LILY
	const RIVER
; rematch
	const BETH_0
;	const REENA_0

	trainerclass BEAUTY ; 27
; kanto
	const VICTORIA
	const STEPH
	const JULIA
	const VALERIE
	const OLIVIA
	const ADELINE
; johto
	const CAROL
	const EMMA
	const CYBIL
	const SAMANTHA

	trainerclass POKEMANIAC ; 28
; kanto
	const BRENT1
	const LARRY
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const RON
	const ETHAN
	const TYSON
	const HORTON
; johto
	const ZACH
	const MILLER
	const ROLAND
	const MAX
	const JULIUS
	const MICAH
	const CARSON
	const JUDE
; rematch
	const BRENT_2
	const BRENT_0

	trainerclass GENTLEMAN ; 29
; kanto
	const PRESTON
	const EDWARD
	const GREGORY
	const WESLEY
	const MILTON
	const BLAKE
	const ALFRED1
; johto
	const RICHARD
	const VICTOR
; reamtch
;	const ALFRED_2
;	const ALFRED_0

	trainerclass SKIER ; 2a
; johto
	const ROXANNE
	const CLARISSA

	trainerclass BUG_CATCHER ; 2b
; kanto
	const BENNY
	const ED
	const ROB1
	const AL
	const JOSH
	const DION
	const DANE
	const KEN
	const WAYNE
	const ABNER
	const ELLIS
	const DOUG1
	const DON
; johto
	const DARIN
	const ARNIE1
	const WADE1
	const DYLAN
	const FINLEY
	const JON
	const ABEL
; rematch
	const ROB_2
	const ROB_3
	const ROB_0
	const DOUG_2
	const DOUG_0
	const ARNIE_0
	const WADE_0

	trainerclass FISHER ; 2c
; kanto
	const JUSTIN
	const ARNOLD
	const SCOTT
	const HENRY
	const MARVIN
	const TULLY1
	const RAYMOND
	const JONAH
	const KYLE1
	const MARTIN
	const STEPHEN
	const LUCA
	const NELSON
; johto
	const BARNEY
	const WILTON1
	const FRED
	const EMIL
	const MARCO
	const ARCHIE
	const ROYCE
	const RALPH1
; rematch
	const TULLY_2
	const TULLY_0
	const KYLE_0
	const WILTON_0
	const RALPH_0

	trainerclass SWIMMERM ; 2d
; kanto
	const HAROLD
	const SIMON
	const RANDALL
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATTHEW
	const JEROME
	const TUCKER
	const CAMERON
	const SETH
	const LEWIS
	const HAL
	const PATON
	const BRANDON
; johto
	const DARYL
	const TONY
	const CODY
	const WES
	const CARLOS
	const MACK

	trainerclass SWIMMERF ; 2e
; kanto
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const HEIDI
	const GINGER
; johto
	const NIKKI
	const DIANA
	const BRIANA
	const ELOISE
	const HANNAH
	const KYRIE

	trainerclass SAILOR ; 2f
; kanto
	const EUGENE
	const HARRY
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const JARED
; johto
	const STANLEY
	const HUEY1
	const PEDRO
	const ENZO
	const LOUIS
; rematch
	const HUEY_0

	trainerclass SUPER_NERD ; 30
; kanto
	const ERIC
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const HUGH
	const MARKUS
	const CARY
	const EMMETT
; johto
	const WALDO
	const JAMES
	const MERLE

	trainerclass GUITARIST ; 31
; kanto (ROCKER/ELECTRICIAN)
	const WYATT
	const LOGAN
	const CLYDE
	const VINCENT
; johto
	const EDGAR

	trainerclass HIKER ; 32
; kanto
	const DANIEL
	const RUSSELL
	const PHILLIP
	const LEONARD
	const BENJAMIN
	const ERIK
	const MICHAEL
	const KENNY1
	const TIMOTHY
	const BAILEY
	const TIM
	const HOLDEN
	const SIDNEY
	const WALTER
	const JIM
; johto
	const ANTHONY1
	const QUENTIN
	const PARRY1
	const PATRICK
	const ALEC
	const DIEGO
	const LEONEL
; rematch
	const KENNY_2
	const KENNY_0
	const ANTHONY_0
	const PARRY_0

	trainerclass BIKER ; 33
; kanto
	const DWAYNE
	const HARRIS
	const ZEKE
	const CHARLES
	const REESE1
	const JOEL
	const GLENN
	const JOSEPH
	const AIDEN1
	const TEDDY
	const MARKEY
	const RILEY
	const THERON
	const EOIN1
	const NOLAN
; johto
	; none
; rematch
	const REESE_2
	const REESE_0
	const AIDEN_2
	const AIDEN_0
	const EOIN_2
	const EOIN_0

	trainerclass BURGLAR ; 34
; kanto
	const DUNCAN
	const EDDIE
	const COREY
	const BARRY
; johto
	const JERRY

	trainerclass FIREBREATHER ; 35
; kanto
	const RAY ; burglar
	const BILL ; burglar
	const EVAN ; burglar
; johto
	const WALT1
	const LEO
	const ALEX
; rematch
	const WALT_0

	trainerclass JUGGLER ; 36
; kanto
	const FRITZ
	const OTIS ; cueball
	const BURT ; cueball
	const FINNLEY ; cueball
	const DUSTIN ; cueball
	const LYLE ; cueball
	const DARIUS ; cueball
	const JULIEN ; cueball
	const MAXIMO ; cueball
	const DARIO
	const GILBERT
; johto
	const IRWIN1 ; no rematch
	const RODNEY

	trainerclass BLACKBELT_T ; 37
; kanto
	const TAKESHI
	const BRUCE
	const JACKIE
	const JET
	const MASTER
	const WAI
	const TY
	const CHO
	const YOSHI
; johto
	const KENJI1 ; no rematch
	const LEE
	const LAO
	const KIYO

	trainerclass PSYCHIC_T ; 38
; kanto
	const NATHAN
	const FRANKLIN
	const HERMAN
	const GREG
	const CALEB
; johto
	const NORMAN
	const MARK
	const PHIL
	const IDRIS
	const KENAN

	trainerclass PICNICKER ; 39
; kanto (JR TRAINER F)
	const SOPHIA
	const EMILY
	const ELLIE
	const GINA1
	const AZRIEL
	const ERIN1
	const EDNA
	const BROOKE
	const KIM
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const TANYA
	const SELINA
	const PIPER
	const MARIA
	const TIFFANY1
	const CARRIE
	const LUCY
; johto
	const DAWN
	const NICOLE
	const MEGAN
	const ROBIN
	const LIZ1 ; unused
; rematch
	const GINA_2
	const GINA_3
	const GINA_0
	const ERIN_2
	const ERIN_0
	const TIFFANY_2
	const TIFFANY_0
;	const LIZ_2
;	const LIZ_0

	trainerclass CAMPER ; 3a
; kanto (JR TRAINER M)
	const ISAAC
	const IVAN
	const TANNER1
	const ELLIOT
	const LLOYD
	const DEAN
	const SID
	const TED
; johto
	const GRANT
	const CLARK
	const TODD1
	const SPENCER
	const DILAN
	const TERRY
; rematch
	const TANNER_2
	const TANNER_0
	const TODD_0

	trainerclass SAGE ; 3b
; kanto (FUCHSIA GYM (jugglers))
	const EZRA
	const KYLO
	const KODA
	const MUSA
; johto
	const BO
	const PING
	const CHOW
	const NICO
	const NOE
	const JIN
	const KYRO
	const LI ;MASTER LI
	const GAKU
	const MASA
	const KOJI

	trainerclass MEDIUM ; 3c
; kanto (CHANNELER)
	const MARTHA
	const GRACE
	const BETHANY
	const MARGRET
	const ETHEL
	const REBECCA
	const DORIS
	const JADE
	const LYDIA
	const DELILAH
	const MAYA
	const WILLOW
	const ABIGAIL
	const HAZEL
	const NAOMI
	const STELLA
	const CHEL
; johto
	const MINA
	const LEONA

	trainerclass BOARDER ; 3d
; johto
	const RONALD
	const SHAUN

	trainerclass POKEFANM ; 3e
; kanto (GAMBLER)
	const TREVOR
	const WILLIAM
	const ROBERT
	const JOSHUA
	const AUSTIN
; johto
	const DEREK1 ; no rematch
	const COLIN
	const BRENDAN

	trainerclass POKEFANF ; 3f
; kanto (GAMBLER)
	const BEVERLY1 ; no rematch
	const GEORGIA
	const AUDREY
; johto
	const ELEANOR
	const RUTH

	trainerclass KIMONO_GIRL ; 40
; johto
	const NAOKO ;flareon
	const SAYO  ;espeon
	const ZUKI  ;umbreon
	const KUNI  ;vaporeon
	const MIKI  ;jolteon
	const AOKI  ;leafeon
	const YUKI  ;glaceon

	trainerclass TWINS ; 41
; kanto (BEAUTYs r13)
	const KAYANDTIA1
; johto
	const ANNANDANNE
	const AMYANDMAY
	const MEGANDPEG
	const JOANDZOE
; rematch
;	const KAYANDTIA_2
;	const KAYANDTIA_0

	trainerclass OFFICER ; 42
; kanto
	const REX
	const CARTER
; johto
	const KEITH
	const DIRK

	trainerclass NINJA ; 43 ;MYSTICALMAN
; kanto (FUCHSIA GYM (tamers))
	const KOA
	const KHAI
; johto
	const NINJA_GUARD_R0    ;const EUSINE
	const NINJA_GUARD_R1
	const NINJA_GUARD_R2
	const JONIN
	const CHUNIN
	const GENIN
	const TEISATSU
	const KANCHO
	const KISHU
	const KONRAN
	const SEKKO
;	const IROH
;	const AANG
;	const ZUKO

	trainerclass COUPLE ; 44
; kanto (JR TRAINERs r6)
	const TIMANDSUE1
	const VICANDTARA
; johto
	const DUFFANDEDA_DUFF
	const DUFFANDEDA_EDA
	const MOEANDLULU
; rematch
;	const TIMANDSUE_2
;	const TIMANDSUE_3
;	const TIMANDSUE_0

	trainerclass COOL_DUO ; 45
; kanto
	const ZACANDJEN
; johto
	const THOMANDKAE
	const ELANANDIDA

	trainerclass RED ; 46
	const RED1

	trainerclass GREEN ; 47
	const GREEN1

	trainerclass KABUTOPS_FOSSIL ; 47

	trainerclass AERODACTYL_FOSSIL ; 48

	trainerclass POKEMON_GHOST ; 49

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1 ; should we subtract the fossils and ghost here?
