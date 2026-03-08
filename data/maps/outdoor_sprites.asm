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
;
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
;PalletTown	VAR(OAK), TEACHER, FISHER
;Route1		YOUNGSTER, berry, apricorn
ViridianGroupSprites:
;ViridianCity	GRAMPS, FISHER, TEACHER, YOUNGSTER, BUG_CATCHER
;Route2South	poke_ball
;Route22        BLUE
CinnabarGroupSprites:
;CinnabarIsland GRAMPS, TEACHER
;Route19        SWIMMER_M, SWIMMER_F, COOLTRAINER_M
;Route20        VAR(GEODUDE), SWIMMER_M, SWIMMER_F, COOLTRAINER_M, rock
;Route21        SWIMMER_M, FISHER
	db SPRITE_VARIABLE
;	db SPRITE_OAK
	db SPRITE_BLUE
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_GRAMPS
	db SPRITE_COOLTRAINER_M
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	db SPRITE_BOY
	; 9 of 9 walking
	db SPRITE_SLEEPING
	db SPRITE_FISHER
	db SPRITE_POKE_BALL
	db SPRITE_ROCK
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
IndigoGroupSprites:
;Route23        none
;Route26        COOLTRAINER_M, COOLTRAINER_F, YOUNGSTER, fisher, berry, apricorn
;Route27East    COOLTRAINER_M, COOLTRAINER_F, pokeball
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
	db 0 ; end
	;updated

CeruleanGroupSprites:
;CeruleanCity   BLUE, LASS, SUPER_NERD, officer, rocket, cooltrainer_m, cooltrainer_f, slowbro
;Route4         LASS, poke_ball
;Route24        YOUNGSTER, lass, bug_catcher, cooltrainer_m, poke_ball
;Route25        YOUNGSTER, POKEFAN_M, LASS, captain, poke_ball
;Route5         (in SaffronGroup for roof color, actually connected to CeruleanCity)
;Route9         YOUNGSTER, POKEFAN_M, LASS, BUG_CATCHER, poke_ball
;Route10North   LASS, SUPER_NERD, poke_ball, rock
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
	db SPRITE_COOLTRAINER_F
	db SPRITE_SLOWBRO
	db SPRITE_CAPTAIN
	db SPRITE_SLEEPING
	db SPRITE_GENTLEMAN
	db SPRITE_DAY_CARE_MON_1
	db SPRITE_DAY_CARE_MON_2
	db SPRITE_POKE_BALL
	db SPRITE_ROCK
	db SPRITE_BERRY
	; max 20 of 20 outdoor sprites
;	db SPRITE_PIDGEOT
;	db SPRITE_APRICORN
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
;FuchsiaCity	SCYTHER, PINSIR, DRATINI, CHANSEY, SURF, KANGASKHAN, COOLTRAINER_M, GRAMPS
;Route17		BIKER
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
	db SPRITE_OAK
	; 1 of 9 max walking sprites
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_POKE_BALL
	db 0 ; end

; Route29 and CherrygroveCity are connected
NewBarkGroupSprites:
;NewBarkTown	BLUE, FISHER, teacher, berry, poke_ball
;Route29		SUPER_NERD, TEACHER, CAL
;Route27West	?
CherrygroveGroupSprites:
;CherrygroveCity	TEACHER, YOUNGSTER, fisher
;Route30			YOUNGSTER, BUG_CATCHER, poke_ball, berry, apricorn
;Route31			BUG_CATHCER, COOLTRAINER_M, fisher, youngster, poke_ball
	db SPRITE_BLUE
	db SPRITE_FISHER
	db SPRITE_SUPER_NERD
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_CAL
	; max 8 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

; Route37 and EcruteakCity are connected
VioletGroupSprites:
; VioletCity   LASS, SUPER_NERD, GRAMPS, youngster, berry, apricorn
; Route32      YOUNGSTER, FISHER, ROCKER, lass, pokeball
; Route35      BUG_CATCHER, FISHER, ROCKER, YOUNGSTER, LASS, officer, berry, apricorn
; Route36      YOUNGSTER, BOY, TWIN, tangela_move, mr__mime_move, berry, apricorn
; Route37      BOY, youngster, twin, apricorn
EcruteakGroupSprites:
; EcruteakCity 
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_BUG_CATCHER
	db SPRITE_TWIN
	db SPRITE_BOY
	db SPRITE_SUPER_NERD
	db SPRITE_GRAMPS
	; 9 of 9 max walking sprites
	db SPRITE_OFFICER
	db SPRITE_SUDOWOODO
	db SPRITE_TANGELA_MOVE
	db SPRITE_MR__MIME_MOVE
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
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
; OlivineCity			SAILOR, youngster
; Route38				SAILOR, ROCKER, LASS, BEAUTY, youngster, berry, apricorn
; Route39				SAILOR, POKEFAN_F, POKEFAN_M, YOUNGSTER, miltank, berry, apricorn (can -youngster if necessary? (range=1))
CianwoodGroupSprites:
; CianwoodCity			POKEFAN_M, POKEFAN_F, LASS, youngster
; Route40				SWIMMER_M, SWIMMER_F, beauty, fisher, lass, youngster, rock
; Route41				SWIMMER_M, SWIMMER_F
; BattleTowerOutside	SAILOR, BEAUTY, lass, youngster
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_M
	db SPRITE_POKEFAN_F
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	db SPRITE_LASS
	db SPRITE_BEAUTY
	db SPRITE_ROCKER
	db SPRITE_YOUNGSTER
	; 9 of 9 max walking sprites
	db SPRITE_FISHER
	db SPRITE_MILTANK
	db SPRITE_ROCK
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

MahoganyGroupSprites:
; Route42		CHUCK, pokefanm, primeape, rock, apricorn
; Route44		?
; MahoganyTown	?
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_CHUCK
	; 9 of 9 max walking sprites
	db SPRITE_PRIMEAPE
	db SPRITE_POKE_BALL
	db SPRITE_ROCK
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db 0 ; end

LakeOfRageGroupSprites:
;LakeOfRage		CLAIR, ?
;Route43		?
	db SPRITE_CLAIR
	db SPRITE_MAGIKARP_SWIM
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	; 8 of 9 max walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_BERRY
	db SPRITE_APRICORN
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
;Route26
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_YOUNGSTER
	db SPRITE_FISHER
	; 4 of 9 max walking sprites
	db SPRITE_BERRY
	db SPRITE_APRICORN
	db SPRITE_POKEBALL

SafariZoneGateGroupSprites:
CableClubGroupSprites:
	db 0 ; end