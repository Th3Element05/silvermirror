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
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_OAK
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

DEF KRIS EQU __trainer_class__
	trainerclass FALKNER ; 01
	const FALKNER1

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

	trainerclass RIVAL1 ; 0a
; OAKS_LAB
	const RIVAL1_1_BULBASAUR
	const RIVAL1_1_CHARMANDER
	const RIVAL1_1_SQUIRTLE
; ROUTE_22 (1)
	const RIVAL1_2_BULBASAUR
	const RIVAL1_2_CHARMANDER
	const RIVAL1_2_SQUIRTLE

	trainerclass RIVAL2 ; 0b
; NUGGET_BRIDGE
	const RIVAL2_1_BULBASAUR
	const RIVAL2_1_CHARMANDER
	const RIVAL2_1_SQUIRTLE
; SS_ANNE
	const RIVAL2_2_BULBASAUR
	const RIVAL2_2_CHARMANDER
	const RIVAL2_2_SQUIRTLE
; POKEMON_TOWER
	const RIVAL2_3_BULBASAUR
	const RIVAL2_3_CHARMANDER
	const RIVAL2_3_SQUIRTLE
; SILPH_CO
	const RIVAL2_4_BULBASAUR
	const RIVAL2_4_CHARMANDER
	const RIVAL2_4_SQUIRTLE
; ROUTE_22 (2)
	const RIVAL2_5_BULBASAUR
	const RIVAL2_5_CHARMANDER
	const RIVAL2_5_SQUIRTLE

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

	trainerclass RED ; 1a
	const RED1

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
	const GRUNTM_29
	const GRUNTM_30

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

	trainerclass EXECUTIVEF ; 1e
; kanto
	const EXECUTIVEF_1
; johto
	const EXECUTIVEF_2

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
	const THOMAS
	const DUDLEY
	const GAEL

	trainerclass YOUNGSTER ; 20
; kanto
	const ASHER
	const GORDON
	const ALBERT
	const SAMUEL
	const MIKEY
	const JIMMY
	const OWEN
	const IAN1
	const JASON
; johto
	const DANNY
	const REGIS
	const JOEY1
; rematch
	const IAN2
	const IAN3
	const IAN4
	const IAN5
	const JOEY2
	const JOEY3
	const JOEY4
	const JOEY5

	trainerclass SCHOOLBOY ; 21
; kanto (YOUNGSTER)
	const BILLY1
	const RICKY
	const ALAN1
; johto
	const TORIN1
	const JACK1
	const CHAD1
	const KIPP
; rematch
	const BILLY2
	const BILLY3
	const ALAN2
	const ALAN3
	const ALAN4
	const ALAN5
	const TORIN2
	const TORIN3
	const JACK2
	const JACK3
	const JACK4
	const JACK5
	const CHAD2
	const CHAD3
	const CHAD4
	const CHAD5

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
; rematch
	const JAMIE2
	const JAMIE3
	const JOSE2
	const JOSE3
	const VANCE2
	const VANCE3

	trainerclass LASS ; 23
; kanto
	const BRIDGET
	const EVELYN
	const ALICE
	const LINDA
	const KRISE1
	const LAURA
	const SHANNON
	const MICHELLE
	const SADIE
	const ELLEN
	const DANA1
	const SARAH
	const CHLOE
	const NORA
	const CORA
	const ZOEY
; johto
	const CONNIE
	const HAILEY
	const KELLY
; rematch
	const KRISE2
	const KRISE3
	const KRISE4
	const KRISE5
	const DANA2
	const DANA3
	const DANA4
	const DANA5

	trainerclass TEACHER ; 24
; kanto (LASS)
	const COLETTE
	const HILLARY1
; johto
	const SHIRLEY
	const KATE
	const IRENE
; rematch
	const HILLARY2
	const HILLARY3

	trainerclass COOLTRAINERM ; 25
; kanto
	const PAUL
	const NICK
	const AARON
	const SEAN
	const MIKE
	const GAVEN1
	const RYAN
; johto
	const JAKE
	const BRIAN
	const KEVIN
; reamtch
	const GAVEN2
	const GAVEN3

	trainerclass COOLTRAINERF ; 26
; kanto
	const GWEN
	const LOIS
	const FRAN
	const BETH1
; johto
	const SALMA
	const LOLA
	const REENA1
; rematch
	const BETH2
	const BETH3
	const REENA2
	const REENA3

	trainerclass BEAUTY ; 27
; kanto
	const VICTORIA
	const STEPH
	const JULIA
	const VALERIE
	const OLIVIA
; johto
	const CAROL
	const EMMA
	const CYBIL

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
	const DONALD
; johto
	const ZACH
	const MILLER
	const ROLAND
; rematch
	const BRENT2
	const BRENT3
	const BRENT4

	trainerclass GENTLEMAN ; 29
; kanto
	const PRESTON
	const EDWARD
	const GREGORY
	const WESLEY
	const MILTON
; johto
	const ALLEN
	const BLAKE
	const ALFRED1
; reamtch
	const ALFRED2
	const ALFRED3
	const ALFRED4

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
; rematch
	const ROB2
	const ROB3
	const DOUG2
	const DOUG3
	const ARNIE2
	const ARNIE3
	const ARNIE4
	const ARNIE5
	const WADE2
	const WADE3
	const WADE4
	const WADE5

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
; johto
	const BARNEY
	const WILTON1
	const RALPH1
; rematch
	const TULLY2
	const TULLY3
	const TULLY4
	const KYLE2
	const KYLE3
	const WILTON2
	const WILTON3
	const RALPH2
	const RALPH3
	const RALPH4
	const RALPH5

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
; johto
	const STANLY
	const RICK
	const HUEY1
; rematch
	const HUEY2
	const HUEY3
	const HUEY4

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
; johto
	const WALDO
	const JAMES
	const MERLE

	trainerclass GUITARIST ; 31
; kanto (ROCKER)
	const CLYDE
	const VINCENT
; johto
	const EDGAR
	const ANDRE

	trainerclass HIKER ; 32
; kanto
	const DANIEL
	const RUSSELL
	const PHILLIP
	const LEONARD
	const BENJAMIN
	const ERIK
	const MICHAEL
	const JIM
	const TIMOTHY
	const BAILEY
	const TIM
	const NOLAND
	const SIDNEY
	const WALTER
	const KENNY1
; johto
	const QUENTIN
	const PARRY1
	const ANTHONY1
; rematch
	const KENNY2
	const KENNY3
	const PARRY2
	const PARRY3
	const ANTHONY2
	const ANTHONY3
	const ANTHONY4
	const ANTHONY5

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
	const RICHARD
	const VICTOR
	const PEDRO
; rematch
	const REESE2
	const REESE3
	const AIDEN2
	const AIDEN3
	const EOIN2
	const EOIN3

	trainerclass BURGLAR ; 34
; kanto
	const DUNCAN
	const EDDIE
	const COREY
; johto
	const BARRY
	const JERRY
	const SPENCER

	trainerclass FIREBREATHER ; 35
; kanto
	const DUSTIN ; burglar
	const FINNLEY ; burglar
	const DRAKE ; burglar
; johto
	const JEREMY
	const ALEX
	const WALT1
; rematch
	const WALT2
	const WALT3
	const WALT4
	const WALT5

	trainerclass JUGGLER ; 36
; kanto
	const FRITZ
	const OTIS ; cueball
	const BURT ; cueball
	const BILL ; cueball
	const RAY ; cueball
	const LYLE ; cueball
	const DARIUS ; cueball
	const JULIEN ; cueball
	const MAXIMO ; cueball
	const HORTON
	const ADAM
	const AUSTIN
	const EMMETT
	const DARIO
	const GILBERT
; johto
	const JARED
	const RODNEY
	const IRWIN1 ; no rematch

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
	const LEE
	const KIYO
	const KENJI1 ; no rematch

	trainerclass PSYCHIC_T ; 38
; kanto
	const NATHAN
	const FRANKLIN
	const HERMAN
	const GREG
; johto
	const NORMAN
	const MARK
	const PHIL

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
	const LIZ1
; rematch
	const GINA2
	const GINA3
	const GINA4
	const GINA5
	const ERIN2
	const ERIN3
	const TIFFANY2
	const TIFFANY3
	const TIFFANY4

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
; rematch
	const TANNER2
	const TANNER3
	const TODD2
	const TODD3
	const TODD4
	const TODD5

	trainerclass SAGE ; 3b
; kanto (TAMER)
	const KOJI
	const KHAI
; johto
	const CHOW
	const NICO
	const JIN
	const NOE
	const PING
	const LIAN
	const KYRO
	const LI
	const GAKU
	const MASA

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
; johto
	const MINA
	const LEONA
	const CHEL

	trainerclass BOARDER ; 3d
; johto
	const RONALD
	const BRAD
	const SHAUN

	trainerclass POKEFANM ; 3e
; kanto (GAMBLER)
	const TREVOR
	const WILLIAM
	const ROBERT
	const JOSHUA
; johto
	const COLIN
	const ALLAN
	const DEREK1 ; no rematch

	trainerclass POKEFANF ; 3f
; kanto (GAMBLER)
	const BEVERLY1 ; no rematch
	const GEORGIA
; johto
	const JAIME
	const ELEANOR
	const RUTH

	trainerclass KIMONO_GIRL ; 40
; johto
	const NAOKO
	const SAYO
	const ZUKI
	const KUNI
	const MIKI

	trainerclass TWINS ; 41
; kanto (BEAUTYs r13)
	const KAYANDTIA1
; johto
	const AMYANDMAY
	const ANNANDANNE
	const JOANDZOE
	const MEGANDPEG
; rematch
	const KAYANDTIA2
	const KAYANDTIA3

	trainerclass OFFICER ; 42
; kanto (ENGINEER)
	const KEITH
	const DIRK
; johto
	const REX
	const CARTER

	trainerclass MYSTICALMAN ; 43
	const EUSINE

	trainerclass COUPLE ; 44
; kanto (JR TRAINERs r6)
	const TIMANDSUE1
; johto
	const DUFFANDEDA
	const MOEANDLULU
	const VICANDTARA
; rematch
	const TIMANDSUE2
	const TIMANDSUE3

	trainerclass COOL_DUO ; 45
; johto
	const THOMANDKAE
	const ZACANDJEN
	const ELANANDIDA

	trainerclass KABUTOPS_FOSSIL ; 46

	trainerclass AERODACTYL_FOSSIL ; 47

	trainerclass POKEMON_GHOST ; 48

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1