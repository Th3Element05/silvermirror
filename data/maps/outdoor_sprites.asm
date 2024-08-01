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
;ViridianCity	GRAMPS, FISHER, TEACHER, YOUNGSTER, BUG_CATCHER
;Route2South	poke_ball
;Route22        BLUE
CinnabarGroupSprites:
;CinnabarIsland GRAMPS, TEACHER
;Route19        SWIMMER_M, SWIMMER_F, COOLTRAINER_M
;Route20        SWIMMER_M, SWIMMER_F, COOLTRAINER_M
;Route21        SWIMMER_M, FISHER
	db SPRITE_OAK
	db SPRITE_BLUE
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_GRAMPS
	db SPRITE_COOLTRAINER_M
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	db SPRITE_BOY
	; 9 of 9 walking
	db SPRITE_FISHER
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end
	;updated

SafariZoneGroupSprites:
;SafariZoneArea1 COOLTRAINER_M, COOLTRAINER_F, YOUNGSTER, LASS, poke_ball
;SafariZoneArea2 COOLTRAINER_M, COOLTRAINER_F, YOUNGSTER, LASS, SUPER_NERD, FISHER, poke_ball
;SafariZoneArea3 COOLTRAINER_M, COOLTRAINER_F, YOUNGSTER, SCIENTIST, poke_ball
;SafariZoneArea4 COOLTRAINER_M, COOLTRAINER_F, LASS, FISHER, poke_ball
PewterGroupSprites:
;PewterCity     YOUNGSTER, SUPER_NERD, COOLTRAINER_M, COOLTRAINER_F, berry, apricorn
;ViridianForest BUG_CATCHER, berry, apricorn, poke_ball
;Route2North    berry, apricorn
;Route3         LASS, YOUNGSTER, SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_BUG_CATCHER
	db SPRITE_SUPER_NERD
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_SCIENTIST ; safari zone
	db SPRITE_FISHER    ; safari zone
	; 8 of 9 walking
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	;updated

CeruleanGroupSprites:
;CeruleanCity   BLUE, LASS, SUPER_NERD, officer, rocket, cooltrainer_m, cooltrainer_f, slowbro
;Route4         LASS, poke_ball
;Route24        YOUNGSTER, lass, bug_catcher, cooltrainer_m, poke_ball
;Route25        YOUNGSTER, POKEFAN_M, LASS, captain, poke_ball
;Route5         (in SaffronGroup for roof color, actually connected to CeruleanCity)
;Route9         YOUNGSTER, POKEFAN_M, LASS, BUG_CATCHER, poke_ball
;Route10North   LASS, SUPER_NERD, poke_ball
SaffronGroupSprites:
;SaffronCity    ROCKET, LASS, SUPER_NERD, SCIENTIST, POKEFAN_M, gentleman, pidgeot
;Route5         GRAMPS, daycare_mon_1, daycare_mon_2
	db SPRITE_BLUE
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_SUPER_NERD
	db SPRITE_POKEFAN_M
	db SPRITE_BUG_CATCHER
	db SPRITE_GRAMPS
	db SPRITE_ROCKET
	db SPRITE_SCIENTIST
	; 9 of 9 walking
	db SPRITE_OFFICER
	db SPRITE_COOLTRAINER_M
	db SPRITE_CAPTAIN
	db SPRITE_GENTLEMAN
	db SPRITE_PIDGEOT
	db SPRITE_SLOWBRO
	db SPRITE_DAY_CARE_MON_1
	db SPRITE_DAY_CARE_MON_2
	db SPRITE_POKE_BALL
	db SPRITE_ROCK
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end
	;updated

VermilionGroupSprites:
;VermilionCity   SAILOR, BEAUTY, sage, machop
;Route6          YOUNGSTER, BUG_CATCHER, LASS
;Route11         YOUNGSTER, POKEFAN_M, POKEFAN_F, OFFICER, snorlax
SSAnneGroupSprites:
;VermilionPort   none
;OlivinePort     none
;MountMoonSquare CLEFAIRY
;TinTowerRoof    ho_oh
	db SPRITE_BUG_CATCHER
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
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
	;updated

LavenderGroupSprites:
;LavenderTown   SUPER_NERD, twin, cooltrainer_m
;Route10South   SUPER_NERD, POKEFAN_M, LASS
;Route8         SUPER_NERD, POKEFAN_M, LASS
;Route12        FISHER, ROCKER, YOUNGSTER, poke_ball
;Route13        COOLTRAINER_M, BIKER, LASS, twin
;Route14        COOLTRAINER_M, BIKER
;Route15        COOLTRAINER_M, BIKER, BEAUTY, LASS, poke_ball
	db SPRITE_LASS
	db SPRITE_POKEFAN_M
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_M
	db SPRITE_BIKER
	db SPRITE_BEAUTY
	; 9 of 9 walking
	db SPRITE_TWIN
	db SPRITE_BIG_SNORLAX
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end
	;updated

CeladonGroupSprites:
;CeladonCity          ROCKET, TEACHER, TWIN, gramps, fisher, poliwrath
;CeladonDeptStoreRoof TWIN, super_nerd
;CeladonMansionRoof   none
;Route7               none
;Route16              BIKER, big_snorlax, poke_ball
	db SPRITE_BIKER
	db SPRITE_ROCKET
	db SPRITE_TEACHER
	db SPRITE_TWIN
	; 4 of 9 walking
	db SPRITE_COOLTRAINER_M
	db SPRITE_GRAMPS
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_POLIWRATH
	db SPRITE_BIG_SNORLAX
	db SPRITE_POKE_BALL
	db 0 ; end
	;updated

FuchsiaGroupSprites:
;FuchsiaCity    SCYTHER, PINSIR, DRATINI, CHANSEY, SURF, KANGASKHAN, COOLTRAINER_M, GRAMPS
;Route17        BIKER
;Route18        COOLTRAINER_M
;(route 16)		BIKER, big_snorlax, poke_ball
	db SPRITE_BIKER
	db SPRITE_SCYTHER_MOVE
	db SPRITE_PINSIR_MOVE
	db SPRITE_DRATINI_MOVE
	db SPRITE_COOLTRAINER_M
	db SPRITE_GRAMPS
	db SPRITE_CHANSEY_MOVE
	db SPRITE_KANGASKHAN_MOVE
	db SPRITE_SURF
	; 9 of 9 walking
	db SPRITE_BIG_SNORLAX
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end
	;updated

SilverGroupSprites:
; Route26, Route27East, Route28, SilverCaveOutside
;	db SPRITE_BLUE
	; 0 of 9 max walking sprites
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_POKE_BALL

; Route29 and CherrygroveCity are connected
NewBarkGroupSprites:
; Route27West, Route29, NewBarkTown
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
SafariZoneGateGroupSprites:
CableClubGroupSprites:
	db 0 ; end