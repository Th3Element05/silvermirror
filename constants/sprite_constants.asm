; sprite ids
; OverworldSprites indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE                   ; 00
	const SPRITE_CHRIS                  ; 01
 	const SPRITE_CHRIS_RUN              ; 02
	const SPRITE_CHRIS_BIKE             ; 03
	const SPRITE_KRIS                   ; 04
 	const SPRITE_KRIS_RUN               ; 05
	const SPRITE_KRIS_BIKE              ; 06
	const SPRITE_SURF                   ; 07 Lapras
	const SPRITE_BLUE                   ; 08
	const SPRITE_BROCK                  ; 09
	const SPRITE_MISTY                  ; 0a
	const SPRITE_SURGE                  ; 0b
	const SPRITE_ERIKA                  ; 0c
	const SPRITE_KOGA                   ; 0d
	const SPRITE_SABRINA                ; 0e
	const SPRITE_BLAINE                 ; 0f
	const SPRITE_GIOVANNI               ; 10
	const SPRITE_LORELEI                ; 11
	const SPRITE_BRUNO                  ; 12
	const SPRITE_AGATHA                 ; 13
	const SPRITE_LANCE                  ; 14
	const SPRITE_FALKNER                ; 15
	const SPRITE_BUGSY                  ; 16
	const SPRITE_WHITNEY                ; 17
	const SPRITE_MORTY                  ; 18
	const SPRITE_CHUCK                  ; 19
	const SPRITE_JASMINE                ; 1a
	const SPRITE_PRYCE                  ; 1b
	const SPRITE_CLAIR                  ; 1c
	const SPRITE_ROCKET                 ; 1d
	const SPRITE_ROCKET_GIRL            ; 1e
	const SPRITE_COOLTRAINER_M          ; 1f
	const SPRITE_COOLTRAINER_F          ; 20
	const SPRITE_BOY                    ; 21
	const SPRITE_TWIN                   ; 22
	const SPRITE_YOUNGSTER              ; 23
	const SPRITE_LASS                   ; 24
	const SPRITE_TEACHER                ; 25
	const SPRITE_BEAUTY                 ; 26
	const SPRITE_SUPER_NERD             ; 27
	const SPRITE_ROCKER                 ; 28
	const SPRITE_POKEFAN_M              ; 29
	const SPRITE_POKEFAN_F              ; 2a
	const SPRITE_GRAMPS                 ; 2b
	const SPRITE_GRANNY                 ; 2c
	const SPRITE_SWIMMER_GUY            ; 2d
	const SPRITE_SWIMMER_GIRL           ; 2e
	const SPRITE_FISHER                 ; 2f
	const SPRITE_FISHING_GURU           ; 30
	const SPRITE_SCIENTIST              ; 31
	const SPRITE_KIMONO_GIRL            ; 32
	const SPRITE_SAGE                   ; 33
	const SPRITE_CHEF                   ; 34
	const SPRITE_GENTLEMAN              ; 35
	const SPRITE_BLACK_BELT             ; 36
	const SPRITE_OFFICER                ; 37
	const SPRITE_SAILOR                 ; 38
	const SPRITE_BIKER                  ; 39
	const SPRITE_MOM                    ; 3a
	const SPRITE_OAK                    ; 3b
	const SPRITE_BILL                   ; 3c
	const SPRITE_GYM_GUIDE              ; 3d
	const SPRITE_DAISY                  ; 3e
	const SPRITE_NURSE                  ; 3f
	const SPRITE_CLERK                  ; 40
	const SPRITE_RECEPTIONIST           ; 41
	const SPRITE_CAPTAIN                ; 42
	const SPRITE_GAMEBOY_KID            ; 43
	const SPRITE_ELDER                  ; 44
	const SPRITE_PHARMACIST             ; 45
	const SPRITE_BENCH_GUY              ; 46
	const SPRITE_ELM                    ; 47
	const SPRITE_KURT                   ; 48 (AzeleaTown, IlexForest, KurtsHouse, SplopokeWellB1F)
	const SPRITE_CAL                    ; 49
	const SPRITE_BUSINESSMAN            ; 4a
	const SPRITE_BUG_CATCHER            ; 4b
	const SPRITE_SLEEPING               ; 4c (DOWN=GRAMPS, UP=ROCKET, LEFT/RIGHT=SAILOR)
;; 4d
;; 4e
;; 4f
; objects
	const SPRITE_POKE_BALL              ; 50
	const SPRITE_POKEDEX                ; 51
	const SPRITE_PAPER                  ; 52
	const SPRITE_ROCK                   ; 53
	const SPRITE_BOULDER                ; 54
	const SPRITE_BERRY                  ; 55
	const SPRITE_APRICORN               ; 56
	const SPRITE_FOSSIL                 ; 57
	const SPRITE_DOME_FOSSIL            ; 58
	const SPRITE_OLD_AMBER              ; 59
;; 5a
;; 5b
;; 5c
;; 5d
;; 5e
;; 5f
; walking pokemon
;	LAPRAS is SPRITE_SURF
	const SPRITE_SUDOWOODO              ; 60
	const SPRITE_MONSTER                ; 61 (init_events, BillsHouse)
	const SPRITE_CLEFAIRY_MOVE          ; 62 (MountMoonSquare)
	const SPRITE_DRATINI_MOVE           ; 63
	const SPRITE_SCYTHER_MOVE           ; 64
	const SPRITE_PINSIR_MOVE            ; 65
	const SPRITE_CHANSEY_MOVE           ; 66
	const SPRITE_KANGASKHAN_MOVE        ; 67
	const SPRITE_MR__MIME_MOVE          ; 68
	const SPRITE_TANGELA_MOVE           ; 69
;; 6a
;; 6b
;; 6c
;; 6d
;; 6e
;; 6f
;; 70
;; 71
;; 72
;; 73
;; 74
;; 75
; decorations
	const SPRITE_BIG_SNORLAX            ; 76 DECORATION
	const SPRITE_BIG_LAPRAS             ; 77 DECORATION
	const SPRITE_BIG_ONIX               ; 78 DECORATION
	const SPRITE_SURFING_PIKACHU        ; 79 DECORATION
	const SPRITE_FAMICOM                ; 7a DECORATION
	const SPRITE_VIRTUAL_BOY            ; 7b DECORATION
	const SPRITE_SNES                   ; 7c DECORATION
	const SPRITE_N64                    ; 7d DECORATION
	const SPRITE_GOLD_TROPHY            ; 7e DECORATION
	const SPRITE_SILVER_TROPHY          ; 7f DECORATION
DEF NUM_OVERWORLD_SPRITES EQU const_value - 1

; SpriteMons indexes (see data/sprites/sprite_mons.asm)
	const_next $80
DEF SPRITE_POKEMON EQU const_value
	const SPRITE_BULBASAUR  ; 01 DECORATION
;	const SPRITE_IVYSAUR    ; 02
;	const SPRITE_VENUSAUR   ; 03
	const SPRITE_CHARMANDER ; 04 DECORATION
;	const SPRITE_CHARMELEON ; 05
;	const SPRITE_CHARIZARD  ; 06
	const SPRITE_SQUIRTLE   ; 07 DECORATION
;	const SPRITE_WARTORTLE  ; 08
;	const SPRITE_BLASTOISE  ; 09
;	const SPRITE_CATERPIE   ; 0a
;	const SPRITE_METAPOD    ; 0b
;	const SPRITE_BUTTERFREE ; 0c
	const SPRITE_WEEDLE     ; 0d DECORATION
;	const SPRITE_KAKUNA     ; 0e
;	const SPRITE_BEEDRILL   ; 0f
	const SPRITE_PIDGEY     ; 10
;	const SPRITE_PIDGEOTTO  ; 11
	const SPRITE_PIDGEOT    ; 12
;	const SPRITE_RATTATA    ; 13
;	const SPRITE_RATICATE   ; 14
	const SPRITE_SPEAROW    ; 15
	const SPRITE_FEAROW     ; 16
;	const SPRITE_EKANS      ; 17
;	const SPRITE_ARBOK      ; 18
	const SPRITE_PIKACHU    ; 19 DECORATION
;	const SPRITE_RAICHU     ; 1a
;	const SPRITE_SANDSHREW  ; 1b
;	const SPRITE_SANDSLASH  ; 1c
	const SPRITE_NIDORAN_F  ; 1d
;	const SPRITE_NIDORINA   ; 1e
;	const SPRITE_NIDOQUEEN  ; 1f
	const SPRITE_NIDORAN_M  ; 20
	const SPRITE_NIDORINO   ; 21
;	const SPRITE_NIDOKING   ; 22
	const SPRITE_CLEFAIRY   ; 23 DECORATION
;	const SPRITE_CLEFABLE   ; 24
;	const SPRITE_VULPIX     ; 25
;	const SPRITE_NINETALES  ; 26
	const SPRITE_JIGGLYPUFF ; 27 DECORATION
;	const SPRITE_WIGGLYTUFF ; 28
;	const SPRITE_ZUBAT      ; 29
;	const SPRITE_GOLBAT     ; 2a
	const SPRITE_ODDISH     ; 2b DECORATION
;	const SPRITE_GLOOM      ; 2c
;	const SPRITE_VILEPLUME  ; 2d
;	const SPRITE_PARAS      ; 2e
;	const SPRITE_PARASECT   ; 2f
;	const SPRITE_VENONAT    ; 30
;	const SPRITE_VENOMOTH   ; 31
	const SPRITE_DIGLETT    ; 32 DECORATION
;	const SPRITE_DUGTRIO    ; 33
	const SPRITE_MEOWTH     ; 34
;	const SPRITE_PERSIAN    ; 35
	const SPRITE_PSYDUCK    ; 36
;	const SPRITE_GOLDUCK    ; 37
;	const SPRITE_MANKEY     ; 38
	const SPRITE_PRIMEAPE   ; 39
;	const SPRITE_GROWLITHE  ; 3a
;	const SPRITE_ARCANINE   ; 3b
	const SPRITE_POLIWAG    ; 3c DECORATION
;	const SPRITE_POLIWHIRL  ; 3d
	const SPRITE_POLIWRATH  ; 3e
	const SPRITE_ABRA       ; 3f
;	const SPRITE_KADABRA    ; 40
;	const SPRITE_ALAKAZAM   ; 41
	const SPRITE_MACHOP     ; 42 DECORATION
	const SPRITE_MACHOKE    ; 43
;	const SPRITE_MACHAMP    ; 44
;	const SPRITE_BELLSPROUT ; 45
;	const SPRITE_WEEPINBELL ; 46
;	const SPRITE_VICTREEBEL ; 47
	const SPRITE_TENTACOOL  ; 48 DECORATION
;	const SPRITE_TENTACRUEL ; 49
	const SPRITE_GEODUDE    ; 4a DECORATION
;	const SPRITE_GRAVELER   ; 4b
;	const SPRITE_GOLEM      ; 4c
;	const SPRITE_PONYTA     ; 4d
;	const SPRITE_RAPIDASH   ; 4e
	const SPRITE_SLOWPOKE   ; 4f
	const SPRITE_SLOWBRO    ; 50
;	const SPRITE_MAGNEMITE  ; 51
;	const SPRITE_MAGNETON   ; 52
;	const SPRITE_FARFETCH_D ; 53
	const SPRITE_DODUO      ; 54
;	const SPRITE_DODRIO     ; 55
;	const SPRITE_SEEL       ; 56
;	const SPRITE_DEWGONG    ; 57
	const SPRITE_GRIMER     ; 58 DECORATION
;	const SPRITE_MUK        ; 59
	const SPRITE_SHELLDER   ; 5a DECORATION
;	const SPRITE_CLOYSTER   ; 5b
;	const SPRITE_GASTLY     ; 5c
;	const SPRITE_HAUNTER    ; 5d
	const SPRITE_GENGAR     ; 5e DECORATION
;	const SPRITE_ONIX       ; 5f
;	const SPRITE_DROWZEE    ; 60
;	const SPRITE_HYPNO      ; 61
;	const SPRITE_KRABBY     ; 62
;	const SPRITE_KINGLER    ; 63
	const SPRITE_VOLTORB    ; 64 DECORATION
	const SPRITE_ELECTRODE  ; 65
;	const SPRITE_EXEGGCUTE  ; 66
;	const SPRITE_EXEGGUTOR  ; 67
	const SPRITE_CUBONE     ; 68
;	const SPRITE_MAROWAK    ; 69
;	const SPRITE_HITMONLEE  ; 6a
;	const SPRITE_HITMONCHAN ; 6b
;	const SPRITE_LICKITUNG  ; 6c
;	const SPRITE_KOFFING    ; 6d
;	const SPRITE_WEEZING    ; 6e
	const SPRITE_RHYHORN    ; 6f
;	const SPRITE_RHYDON     ; 70
;	const SPRITE_CHANSEY    ; 71 walk
;	const SPRITE_TANGELA    ; 72
;	const SPRITE_KANGASKHAN ; 73 walk
;	const SPRITE_HORSEA     ; 74
;	const SPRITE_SEADRA     ; 75
;	const SPRITE_GOLDEEN    ; 76
;	const SPRITE_SEAKING    ; 77
;	const SPRITE_STARYU     ; 78
	const SPRITE_STARMIE    ; 79 DECORATION
;	const SPRITE_MR__MIME   ; 7a
;	const SPRITE_SCYTHER    ; 7b walk
;	const SPRITE_JYNX       ; 7c
;	const SPRITE_ELECTABUZZ ; 7d
;	const SPRITE_MAGMAR     ; 7e
;	const SPRITE_PINSIR     ; 7f walk
;	const SPRITE_TAUROS     ; 80
	const SPRITE_MAGIKARP   ; 81 DECORATION
;	const SPRITE_GYARADOS   ; 82
;	const SPRITE_LAPRAS     ; 83 walk
;	const SPRITE_DITTO      ; 84
	const SPRITE_EEVEE      ; 85
;	const SPRITE_VAPOREON   ; 86
;	const SPRITE_JOLTEON    ; 87
;	const SPRITE_FLAREON    ; 88
;	const SPRITE_PORYGON    ; 89
;	const SPRITE_OMANYTE    ; 8a
;	const SPRITE_OMASTAR    ; 8b
;	const SPRITE_KABUTO     ; 8c
;	const SPRITE_KABUTOPS   ; 8d
;	const SPRITE_AERODACTYL ; 8e
;	const SPRITE_SNORLAX    ; 8f
	const SPRITE_ARTICUNO   ; 90
	const SPRITE_ZAPDOS     ; 91
	const SPRITE_MOLTRES    ; 92
;	const SPRITE_DRATINI    ; 93 walk
;	const SPRITE_DRAGONAIR  ; 94
;	const SPRITE_DRAGONITE  ; 95
	const SPRITE_MEWTWO     ; 96
	const SPRITE_MEW        ; 97
;	; johto
;	const SPRITE_CHIKORITA  ; 98
;	const SPRITE_BAYLEEF    ; 99
;	const SPRITE_MEGANIUM   ; 9a
;	const SPRITE_CYNDAQUIL  ; 9b
;	const SPRITE_QUILAVA    ; 9c
;	const SPRITE_TYPHLOSION ; 9d
;	const SPRITE_TOTODILE   ; 9e
;	const SPRITE_CROCONAW   ; 9f
;	const SPRITE_FERALIGATR ; a0
;	const SPRITE_SENTRET    ; a1
;	const SPRITE_FURRET     ; a2
;	const SPRITE_HOOTHOOT   ; a3
;	const SPRITE_NOCTOWL    ; a4
;	const SPRITE_LEDYBA     ; a5
;	const SPRITE_LEDIAN     ; a6
;	const SPRITE_SPINARAK   ; a7
;	const SPRITE_ARIADOS    ; a8
;	const SPRITE_CROBAT     ; a9
;	const SPRITE_CHINCHOU   ; aa
;	const SPRITE_LANTURN    ; ab
;	const SPRITE_PICHU      ; ac
;	const SPRITE_CLEFFA     ; ad
;	const SPRITE_IGGLYBUFF  ; ae
;	const SPRITE_TOGEPI     ; af
;	const SPRITE_TOGETIC    ; b0
;	const SPRITE_NATU       ; b1
;	const SPRITE_XATU       ; b2
;	const SPRITE_MAREEP     ; b3
;	const SPRITE_FLAAFFY    ; b4
	const SPRITE_AMPHAROS   ; b5
;	const SPRITE_BELLOSSOM  ; b6
;	const SPRITE_MARILL     ; b7
;	const SPRITE_AZUMARILL  ; b8
;	const SPRITE_SUDOWOODO  ; b9
;	const SPRITE_POLITOED   ; ba
;	const SPRITE_HOPPIP     ; bb
;	const SPRITE_SKIPLOOM   ; bc
;	const SPRITE_JUMPLUFF   ; bd
;	const SPRITE_AIPOM      ; be
;	const SPRITE_SUNKERN    ; bf
;	const SPRITE_SUNFLORA   ; c0
;	const SPRITE_YANMA      ; c1
;	const SPRITE_WOOPER     ; c2
;	const SPRITE_QUAGSIRE   ; c3
;	const SPRITE_ESPEON     ; c4
;	const SPRITE_UMBREON    ; c5
;	const SPRITE_MURKROW    ; c6
;	const SPRITE_SLOWKING   ; c7
;	const SPRITE_MISDREAVUS ; c8
	const SPRITE_UNOWN      ; c9 DECORATION
;	const SPRITE_WOBBUFFET  ; ca
;	const SPRITE_GIRAFARIG  ; cb
;	const SPRITE_PINECO     ; cc
;	const SPRITE_FORRETRESS ; cd
;	const SPRITE_DUNSPARCE  ; ce
;	const SPRITE_GLIGAR     ; cf
;	const SPRITE_STEELIX    ; d0
;	const SPRITE_SNUBBULL   ; d1
;	const SPRITE_GRANBULL   ; d2
;	const SPRITE_QWILFISH   ; d3
;	const SPRITE_SCIZOR     ; d4
;	const SPRITE_SHUCKLE    ; d5
;	const SPRITE_HERACROSS  ; d6
;	const SPRITE_SNEASEL    ; d7
;	const SPRITE_TEDDIURSA  ; d8
;	const SPRITE_URSARING   ; d9
;	const SPRITE_SLUGMA     ; da
;	const SPRITE_MAGCARGO   ; db
;	const SPRITE_SWINUB     ; dc
;	const SPRITE_PILOSWINE  ; dd
;	const SPRITE_CORSOLA    ; de
;	const SPRITE_REMORAID   ; df
;	const SPRITE_OCTILLERY  ; e0
;	const SPRITE_DELIBIRD   ; e1
;	const SPRITE_MANTINE    ; e2
;	const SPRITE_SKARMORY   ; e3
;	const SPRITE_HOUNDOUR   ; e4
;	const SPRITE_HOUNDOOM   ; e5
;	const SPRITE_KINGDRA    ; e6
;	const SPRITE_PHANPY     ; e7
;	const SPRITE_DONPHAN    ; e8
;	const SPRITE_PORYGON2   ; e9
;	const SPRITE_STANTLER   ; ea
;	const SPRITE_SMEARGLE   ; eb
;	const SPRITE_TYROGUE    ; ec
;	const SPRITE_HITMONTOP  ; ed
;	const SPRITE_SMOOCHUM   ; ee
;	const SPRITE_ELEKID     ; ef
;	const SPRITE_MAGBY      ; f0
	const SPRITE_MILTANK    ; f1
;	const SPRITE_BLISSEY    ; f2
	const SPRITE_RAIKOU     ; f3
	const SPRITE_ENTEI      ; f4
	const SPRITE_SUICUNE    ; f5
;	const SPRITE_LARVITAR   ; f6
;	const SPRITE_PUPITAR    ; f7
;	const SPRITE_TYRANITAR  ; f8
	const SPRITE_LUGIA      ; f9
	const SPRITE_HO_OH      ; fa
	const SPRITE_CELEBI     ; fb
DEF NUM_POKEMON_SPRITES EQU const_value - SPRITE_POKEMON

; special GetMonSprite values (see engine/overworld/overworld.asm)
	const_next $e0
	const SPRITE_DAY_CARE_MON_1 ; e0
	const SPRITE_DAY_CARE_MON_2 ; e1

; wVariableSprites indexes (see wram.asm)
	const_next $f0
DEF SPRITE_VARS EQU const_value
	const SPRITE_CONSOLE             ; f0
	const SPRITE_DOLL_1              ; f1
	const SPRITE_DOLL_2              ; f2
	const SPRITE_BIG_DOLL            ; f3
	const SPRITE_COPYCAT             ; f4
	const SPRITE_BILL_TRANSFORM      ; f5
	const SPRITE_VOLTORB_TRAP        ; f6
