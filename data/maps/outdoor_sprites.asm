; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2, OutdoorSprites
	dw PalletGroupSprites
	dw ViridianGroupSprites
	dw PewterGroupSprites
	dw CeruleanGroupSprites
	dw VermilionGroupSprites
	dw SSAnneGroupSprites
	dw LavenderGroupSprites
	dw CeladonGroupSprites
	dw FuchsiaGroupSprites
	dw SafariZoneGroupSprites
	dw SaffronGroupSprites
	dw CinnabarGroupSprites
	dw IndigoGroupSprites
	dw NewBarkGroupSprites
	dw CherrygroveGroupSprites
	dw VioletGroupSprites
	dw AzaleaGroupSprites
	dw GoldenrodGroupSprites
	dw EcruteakGroupSprites
	dw OlivineGroupSprites
	dw CianwoodGroupSprites
	dw MahoganyGroupSprites
	dw LakeOfRageGroupSprites
	dw BlackthornGroupSprites
	dw SilverGroupSprites
	dw DungeonsGroupSprites
	dw SafariZoneGateGroupSprites
	dw CableClubGroupSprites
	assert_table_length NUM_MAP_GROUPS

PalletGroupSprites:
;PalletTown	OAK, TEACHER, FISHER
;Route1		YOUNGSTER, berry, apricorn
ViridianGroupSprites:
;ViridianCity	GRAMPS, FISHER, TEACHER, YOUNGSTER
;Route2South	poke_ball
;Route22        BLUE
CinnabarGroupSprites:
;CinnabarIsland GRAMPS, TEACHER
;Route19        SWIMMER_M, SWIMMER_F, COOLTRAINER_M
;Route20        SWIMMER_M, SWIMMER_F, COOLTRAINER_M
;Route21        SWIMMER_M, SWIMMER_F, FISHER
	db SPRITE_OAK
	db SPRITE_BLUE
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_GRAMPS
	db SPRITE_COOLTRAINER_M
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	; 9 of 9 walking
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

SafariZoneGroupSprites:
;SafariZoneArea1 COOLTRAINER_M, COOLTRAINER_F, YOUNGSTER, LASS, poke_ball
;SafariZoneArea2 COOLTRAINER_M, COOLTRAINER_F, YOUNGSTER, LASS, SUPER_NERD, FISHER, poke_ball
;SafariZoneArea3 COOLTRAINER_M, COOLTRAINER_F, YOUNGSTER, SCIENTIST, poke_ball
;SafariZoneArea4 COOLTRAINER_M, COOLTRAINER_F, LASS, FISHER, poke_ball
PewterGroupSprites:
;PewterCity     YOUNGSTER, SUPER_NERD, COOLTRAINER_M, COOLTRAINER_F, berry, apricorn
;ViridianForest YOUNGSTER, berry, apricorn, poke_ball
;Route2North    berry, apricorn
;Route3         LASS, YOUNGSTER, SUPER_NERD
CeruleanGroupSprites:
;CeruleanCity   BLUE, COOLTRAINER_M, COOLTRAINER_F, SUPER_NERD, LASS, officer, rocket
;Route4         LASS, poke_ball
;Route24        YOUNGSTER, FISHER, COOLTRAINER_M, COOLTRAINER_F, poke_ball
;Route25        YOUNGSTER, FISHER, COOLTRAINER_M, COOLTRAINER_F
;Route5         (in SaffronGroup for roof color, actually connected to CeruleanCity)
;Route9         YOUNGSTER, FISHER, COOLTRAINER_M, COOLTRAINER_F, poke_ball
;Route10North   COOLTRAINER_F
	db SPRITE_BLUE
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_SCIENTIST ; SafariZoneArea3
	; 8 of 9 walking
	db SPRITE_OFFICER
	db SPRITE_ROCKET
	db SPRITE_SLOWBRO
	db SPRITE_DAY_CARE_MON_1
	db SPRITE_DAY_CARE_MON_2
	db SPRITE_POKE_BALL
	db SPRITE_ROCK
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

VermilionGroupSprites:
;VermilionCity   SAILOR, BEAUTY, sage, machop
;Route6          YOUNGSTER, COOLTRAINER_M, COOLTRAINER_F
;Route11         YOUNGSTER, POKEFAN_M, POKEFAN_F, OFFICER, snorlax
SSAnneGroupSprites:
;VermilionPort   none
;OlivinePort     none
;MountMoonSquare CLEFAIRY
;TinTowerRoof    ho_oh
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_POKEFAN_M
	db SPRITE_POKEFAN_F
	db SPRITE_OFFICER
	db SPRITE_SAILOR
	db SPRITE_BEAUTY
	db SPRITE_CLEFAIRY_MOVE
	; 9 of 9 walking
	db SPRITE_SAGE
	db SPRITE_MACHOP
	db SPRITE_BIG_SNORLAX
	db SPRITE_HO_OH
	db SPRITE_ROCK
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

LavenderGroupSprites:
;LavenderTown   SUPER_NERD, twin, cooltrainer_m
;Route10South   SUPER_NERD, FISHER, COOLTRAINER_F
;Route8         SUPER_NERD, LASS, POKEFAN_M
;Route12        FISHER, ROCKER, COOLTRAINER_M, poke_ball
;Route13        COOLTRAINER_M, COOLTRAINER_F, BIKER, twin
;Route14        COOLTRAINER_M,	BIKER
;Route15        COOLTRAINER_M, COOLTRAINER_F, BIKER, BEAUTY
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_BIKER
	db SPRITE_BEAUTY
	; 9 of 9 walking
	db SPRITE_TWIN
	db SPRITE_BIG_SNORLAX
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

CeladonGroupSprites:
;CeladonCity          ROCKET, TEACHER, TWIN, gramps, fisher, poliwrath
;CeladonDeptStoreRoof TWIN, super_nerd
;CeladonMansionRoof   none
;Route7               none
;Route16              BIKER
	db SPRITE_ROCKET
	db SPRITE_TEACHER
	db SPRITE_TWIN
	db SPRITE_BIKER
	; 4 of 9 walking
	db SPRITE_COOLTRAINER_M
	db SPRITE_SUPER_NERD
	db SPRITE_GRAMPS
	db SPRITE_FISHER
	db SPRITE_POLIWRATH
	db SPRITE_BIG_SNORLAX
	db 0 ; end

FuchsiaGroupSprites:
;FuchsiaCity    SCYTHER, PINSIR, DRATINI, CHANSEY, SURF, KANGASKHAN, COOLTRAINER_M, GRAMPS, pokefan_m
;Route17        BIKER
;Route18        COOLTRAINER_M
	db SPRITE_SCYTHER_MOVE
	db SPRITE_PINSIR_MOVE
	db SPRITE_DRATINI_MOVE
	db SPRITE_CHANSEY_MOVE
	db SPRITE_SURF
	db SPRITE_KANGASKHAN_MOVE
	db SPRITE_COOLTRAINER_M
	db SPRITE_GRAMPS
	db SPRITE_BIKER
	; 9 of 9 walking
	db SPRITE_POKEFAN_M
	db SPRITE_BIG_SNORLAX
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

SaffronGroupSprites:
;SaffronCity    ROCKET, RECPTIONIST, CLERK, SCIENTIST, ROCKER, gentleman, pidgeot
;Route5         (in SaffronGroup for roof color, actually connected to CeruleanCity)
	db SPRITE_ROCKET
	db SPRITE_RECEPTIONIST
	db SPRITE_CLERK
	db SPRITE_SCIENTIST
	db SPRITE_ROCKER
	; 5 of 9 walking
	db SPRITE_GENTLEMAN
	db SPRITE_PIDGEOT
	db 0 ; end

; Route29 and CherrygroveCity are connected
NewBarkGroupSprites:
; Route26, Route27, Route29, NewBarkTown
CherrygroveGroupSprites:
; Route30, Route31, CherrygroveCity
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_GRAMPS
	db SPRITE_BOY
	db SPRITE_COOLTRAINER_F
	; max 8 of 9 walking sprites
	db SPRITE_PIDGEY
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

; Route37 and EcruteakCity are connected
VioletGroupSprites:
; Route32, Route35, Route36, Route37, VioletCity
EcruteakGroupSprites:
; EcruteakCity
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_OFFICER
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_M
	db SPRITE_BOY
	db SPRITE_SUPER_NERD
	; 8 of 9 max walking sprites
	db SPRITE_TWIN
	db SPRITE_SUDOWOODO
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_SUICUNE
	db 0 ; end

AzaleaGroupSprites:
; Route33, AzaleaTown
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_TEACHER
	db SPRITE_ROCKET
	db SPRITE_LASS
	; 7 of 9 max walking sprites
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_SLOWPOKE
	db SPRITE_KURT
	db 0 ; end

GoldenrodGroupSprites:
; Route34, GoldenrodCity
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_ROCKET
	db SPRITE_LASS
	; 7 of 9 max walking sprites
	db SPRITE_DAY_CARE_MON_1
	db SPRITE_DAY_CARE_MON_2
	db SPRITE_POKE_BALL
	db 0 ; end

; OlivineCity and Route40 are connected
OlivineGroupSprites:
; Route38, Route39, OlivineCity
CianwoodGroupSprites:
; Route40, Route41, CianwoodCity, BattleTowerOutside
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_F
	db SPRITE_SUPER_NERD
	db SPRITE_SWIMMER_GUY
	db SPRITE_GENTLEMAN
	; 9 of 9 max walking sprites
	db SPRITE_BEAUTY
	db SPRITE_MILTANK
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_ROCK
	db SPRITE_YOUNGSTER ; non-walking version of SPRITE_YOUNGSTER
	db SPRITE_SUICUNE
	db 0 ; end

MahoganyGroupSprites:
; Route42, Route44, MahoganyTown
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	; 8 of 9 max walking sprites
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_POKE_BALL
	db SPRITE_SUICUNE
	db 0 ; end

LakeOfRageGroupSprites:
; Route43, LakeOfRage
	db SPRITE_LANCE
	db SPRITE_GRAMPS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	; 8 of 9 max walking sprites
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_POKE_BALL
	db 0 ; end

BlackthornGroupSprites:
; Route45, Route46, BlackthornCity
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_BLACK_BELT
	db SPRITE_COOLTRAINER_F
	; 8 of 9 max walking sprites
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_POKE_BALL
	db 0 ; end

DungeonsGroupSprites:
; NationalPark, NationalParkBugContest, RuinsOfAlphOutside
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHER
	db SPRITE_SCIENTIST
	db SPRITE_BOY
	; 8 of 9 max walking sprites
	db SPRITE_GAMEBOY_KID
	db SPRITE_POKE_BALL
	db 0 ; end

IndigoGroupSprites:
;Route23        none
SilverGroupSprites:
;Route28
;SilverCaveOutside
SafariZoneGateGroupSprites:
CableClubGroupSprites:
	db 0 ; end