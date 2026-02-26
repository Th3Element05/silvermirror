; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
	const MASTER_BALL  ; 01
	const ULTRA_BALL   ; 02
	const BRIGHTPOWDER ; 03
	const GREAT_BALL   ; 04
	const POKE_BALL    ; 05
	const TOWN_MAP     ; 06 ; unused? maybe?
	const BICYCLE      ; 07
	const MOON_STONE   ; 08
	const ANTIDOTE     ; 09
	const BURN_HEAL    ; 0a
	const ICE_HEAL     ; 0b
	const AWAKENING    ; 0c
	const PARLYZ_HEAL  ; 0d
	const FULL_RESTORE ; 0e
	const MAX_POTION   ; 0f
	const HYPER_POTION ; 10
	const SUPER_POTION ; 11
	const POTION       ; 12
	const ESCAPE_ROPE  ; 13
	const REPEL        ; 14
	const MAX_ELIXER   ; 15
	const FIRE_STONE   ; 16
	const THUNDERSTONE ; 17
	const WATER_STONE  ; 18
	const LINKING_CORD ; 19
	const HP_UP        ; 1a
	const PROTEIN      ; 1b
	const IRON         ; 1c
	const CARBOS       ; 1d
	const LUCKY_PUNCH  ; 1e
	const CALCIUM      ; 1f
	const RARE_CANDY   ; 20
	const X_ACCURACY   ; 21
	const LEAF_STONE   ; 22
	const METAL_POWDER ; 23
	const NUGGET       ; 24
	const POKE_DOLL    ; 25
	const FULL_HEAL    ; 26
	const REVIVE       ; 27
	const MAX_REVIVE   ; 28
	const GUARD_SPEC   ; 29
	const SUPER_REPEL  ; 2a
	const MAX_REPEL    ; 2b
	const DIRE_HIT     ; 2c
	const FRESH_WATER  ; 2d
	const SODA_POP     ; 2e
	const LEMONADE     ; 2f
	const X_ATTACK     ; 30
	const X_DEFEND     ; 31
	const X_SPEED      ; 32
	const X_SPECIAL    ; 33
	const COIN_CASE    ; 34
	const ITEMFINDER   ; 35
	const POKE_FLUTE   ; 36
	const EXP_SHARE    ; 37
	const OLD_ROD      ; 38
	const GOOD_ROD     ; 39
	const SILVER_LEAF  ; 3a ; move relearner
	const SUPER_ROD    ; 3b
	const PP_UP        ; 3c
	const ETHER        ; 3d
	const MAX_ETHER    ; 3e
	const ELIXER       ; 3f
	const GOLD_SCALE   ; 40 ; RED_SCALE
	const OAKS_PARCEL  ; 41 ; SECRETPOTION ; 41
	const S_S_TICKET   ; 42
	const MYSTERY_EGG  ; 43
	const CLEAR_BELL   ; 44
	const SILVER_WING  ; 45
	const MOOMOO_MILK  ; 46
	const QUICK_CLAW   ; 47
	const PECHA_BERRY  ; 48
	const GOLD_LEAF    ; 49 ; move relearner
	const SOFT_SAND    ; 4a
	const SHARP_BEAK   ; 4b
	const CHERI_BERRY  ; 4c
	const ASPEAR_BERRY ; 4d
	const RAWST_BERRY  ; 4e
	const POISON_BARB  ; 4f
	const KINGS_ROCK   ; 50
	const PERSIM_BERRY ; 51
	const CHESTO_BERRY ; 52
	const RED_APRICORN ; 53
	const TINYMUSHROOM ; 54
	const BIG_MUSHROOM ; 55
	const SILVERPOWDER ; 56
	const BLU_APRICORN ; 57
	const HELIX_FOSSIL ; 58
	const AMULET_COIN  ; 59
	const YLW_APRICORN ; 5a
	const GRN_APRICORN ; 5b
	const CLEANSE_TAG  ; 5c
	const MYSTIC_WATER ; 5d
	const TWISTEDSPOON ; 5e
	const WHT_APRICORN ; 5f
	const BLACKBELT_I  ; 60
	const BLK_APRICORN ; 61
	const DOME_FOSSIL  ; 62
	const PNK_APRICORN ; 63
	const BLACKGLASSES ; 64
	const GOLD_TEETH   ; 65 ; SLOWPOKETAIL ; 65
	const SILK_SCARF   ; 66
	const STICK        ; 67
	const SMOKE_BALL   ; 68
	const NEVERMELTICE ; 69
	const MAGNET       ; 6a
	const LUM_BERRY    ; 6b
	const PEARL        ; 6c
	const BIG_PEARL    ; 6d
	const EVERSTONE    ; 6e
	const SPELL_TAG    ; 6f
	const SILPH_SCOPE  ; 70 ; RAGECANDYBAR
	const GS_BALL      ; 71
	const BLUE_CARD    ; 72
	const MIRACLE_SEED ; 73
	const THICK_CLUB   ; 74
	const FOCUS_BAND   ; 75
	const OLD_AMBER    ; 76
	const ENERGYPOWDER ; 77
	const ENERGY_ROOT  ; 78
	const HEAL_POWDER  ; 79
	const REVIVAL_HERB ; 7a
	const HARD_STONE   ; 7b
	const LUCKY_EGG    ; 7c
	const CARD_KEY     ; 7d ; (silph co)
	const BIKE_VOUCHER ; 7e ; MACHINE_PART
	const EGG_TICKET   ; 7f ; unused
	const CARD_KEY_R   ; 80 ; (radio tower) ; LOST_ITEM
	const STARDUST     ; 81
	const STAR_PIECE   ; 82
	const LIFT_KEY     ; 83 ; BASEMENT_KEY
	const RAIL_PASS    ; 84 ; PASS
	const SAFARI_BALL  ; 85
	const CHARCOAL     ; 86
	const BERRY_JUICE  ; 87
	const SCOPE_LENS   ; 88
	const METAL_COAT   ; 89
	const DRAGON_FANG  ; 8a
	const LEFTOVERS    ; 8b
	const LEPPA_BERRY  ; 8c
	const DRAGON_SCALE ; 8d
	const BERSERK_GENE ; 8e
	const SACRED_ASH   ; 8f
	const HEAVY_BALL   ; 90
	const LEVEL_BALL   ; 91
	const LURE_BALL    ; 92
	const FAST_BALL    ; 93
	const LIGHT_BALL   ; 94
	const FRIEND_BALL  ; 95
	const MOON_BALL    ; 96
	const LOVE_BALL    ; 97
	const NORMAL_BOX   ; 98
	const GORGEOUS_BOX ; 99
	const SUN_STONE    ; 9a
	const STEEL_INGOT  ; 9b ; POLKADOT_BOW
	const UP_GRADE     ; 9c
	const ORAN_BERRY   ; 9d
	const SITRUS_BERRY ; 9e
	const SQUIRTBOTTLE ; 9f
	const PARK_BALL    ; a0
	const RAINBOW_WING ; a1
	const HEART_SCALE  ; a2 ; BRICK_PIECE
	const FLOWER_MAIL  ; a3
	const SUPER_ROD_2  ; a4 ; ITEM_BE
	const DUSK_STONE   ; a5
	const RAZOR_FANG   ; a6
	const RAZOR_CLAW   ; a7
	const ITEM_A8      ; a8
	const ITEM_A9      ; a9
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ;TM01 ; aa
	add_tm DRAGON_CLAW  ;TM02 ; ab ;new, done
	add_tm SURF         ;TM03 ; ac
	add_tm CALM_MIND    ;TM04 ; ad ;new, done
	add_tm FLASH        ;TM05 ; ae
	add_tm TOXIC        ;TM06 ; af
	add_tm BULK_UP      ;TM07 ; b0 ;new, done
	add_tm BODY_SLAM    ;TM08 ; b1
	add_tm BULLET_SEED  ;TM09 ; b2 ;new, done
	add_tm HIDDEN_POWER ;TM10 ; b3
	add_tm BUBBLEBEAM   ;TM11 ; b4
	add_tm WATER_GUN    ;TM12 ; b5
	add_tm ICE_BEAM     ;TM13 ; b6
	add_tm BLIZZARD     ;TM14 ; b7
	add_tm HYPER_BEAM   ;TM15 ; b8
	add_tm PAY_DAY      ;TM16 ; b9
	add_tm PROTECT      ;TM17 ; ba
	add_tm COUNTER      ;TM18 ; bb
	add_tm SEISMIC_TOSS ;TM19 ; bc
	add_tm ENDURE       ;TM20 ; bd
	add_tm GIGA_DRAIN   ;TM21 ; be
	add_tm SOLARBEAM    ;TM22 ; bf
	add_tm IRON_TAIL    ;TM23 ; c0
	add_tm THUNDERBOLT  ;TM24 ; c1
	add_tm THUNDER      ;TM25 ; c2
	add_tm EARTHQUAKE   ;TM26 ; c3
	add_tm FISSURE      ;TM27 ; c4
	add_tm DIG          ;TM28 ; c5
	add_tm PSYCHIC_M    ;TM29 ; c6
	add_tm WATER_PULSE  ;TM30 ; c7 ;new, done
	add_tm MUD_SLAP     ;TM31 ; c8
	add_tm DOUBLE_TEAM  ;TM32 ; c9
	add_tm REFLECT      ;TM33 ; ca
	add_tm BIDE         ;TM34 ; cb
	add_tm METRONOME    ;TM35 ; cc
	add_tm SELFDESTRUCT ;TM36 ; cd
	add_tm SUBMISSION   ;TM37 ; ce
	add_tm FIRE_BLAST   ;TM38 ; cf
	add_tm SWIFT        ;TM39 ; d0
	add_tm AERIAL_ACE   ;TM40 ; d1 ;new, done
	add_tm FLAMETHROWER ;TM41 ; d2
	add_tm SPARK        ;TM42 ; d3
	add_tm SKY_ATTACK   ;TM43 ; d4
	add_tm REST         ;TM44 ; d5
	add_tm THUNDER_WAVE ;TM45 ; d6
	add_tm SHARPEN      ;TM46 ; d7 ;new, done
	add_tm ICY_WIND     ;TM47 ; d8
	add_tm ROCK_SLIDE   ;TM48 ; d9
	add_tm TRI_ATTACK   ;TM49 ; da
	add_tm SUBSTITUTE   ;TM50 ; db
	add_tm ROOST        ;TM51 ; dc ;new, done
	add_tm FOCUS_BLAST  ;TM52 ; dd ;new, done
	add_tm ENERGY_BALL  ;TM53 ; de ;new, done
	add_tm FALSE_SWIPE  ;TM54 ; df
	add_tm ROCK_SMASH   ;TM55 ; e0
	add_tm HEADBUTT     ;TM56 ; e1
	add_tm AIR_SLICE    ;TM57 ; e2 ;new, done
	add_tm DOUBLE_EDGE  ;TM58 ; e3
	add_tm DRAGON_PULSE ;TM59 ; e4 ;new, done
	add_tm FLASH_CANNON ;TM60 ; e5 ;new, done
	add_tm ROLLOUT      ;TM61 ; e6
	add_tm CURSE        ;TM62 ; e7
	add_tm SLUDGE_BOMB  ;TM63 ; e8
	add_tm SWAGGER      ;TM64 ; e9
	add_tm SHADOW_CLAW  ;TM65 ; ea ;new, done
	add_tm THIEF        ;TM66 ; eb
	add_tm STEEL_WING   ;TM67 ; ec
	add_tm GIGA_IMPACT  ;TM68 ; ed ;new, done
	add_tm ROCK_POLISH  ;TM69 ; ee ;new, done
	add_tm SHADOW_BALL  ;TM70 ; ef
	add_tm STONE_EDGE   ;TM71 ; f0 ;new, done
	add_tm DRAGONBREATH ;TM72 ; f1
	add_tm ATTRACT      ;TM73 ; f2
	add_tm GYRO_BALL    ;TM74 ; f3 ;new, done
	add_tm SWORDS_DANCE ;TM75 ; f4
	add_tm SUNNY_DAY    ;TM76 ; f5
	add_tm RAIN_DANCE   ;TM77 ; f6
	add_tm SANDSTORM    ;TM78 ; f7
	add_tm DARK_PULSE   ;TM79 ; f8 ;new, done
	add_tm ANCIENTPOWER ;TM80 ; f9 ;new, done
	add_tm X_SCISSOR    ;TM81 ; fa ;new, done
	add_tm WHIRLPOOL    ;TM82 ; fb
	add_tm WATERFALL    ;TM83 ; fc
	add_tm POISON_JAB   ;TM84 ; fd ;new, done
;	add_tm TACKLE       ;TM85 ; fe
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
;	add_hm CUT          ; f8
;	add_hm FLY          ; f9
;	add_hm SURF         ; fa
;	add_hm STRENGTH     ; fb
;	add_hm FLASH        ; fc
;	add_hm WHIRLPOOL    ; fd
;	add_hm WATERFALL    ; fe
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt FIRE_PUNCH
	add_mt THUNDERPUNCH
	add_mt ICE_PUNCH
	add_mt SOFTBOILED
	add_mt DREAM_EATER
	add_mt NIGHTMARE
	add_mt SNORE
	add_mt SLEEP_TALK
	add_mt SWEET_SCENT
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

;	const ITEM_FF       ; ff ; unnecessary / out of place

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff

; leftovers from red
DEF SAFARI_BALL_RED EQU $08 ; MOON_STONE
DEF MOON_STONE_RED  EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED   EQU $32 ;$34 ; X_SPEED
