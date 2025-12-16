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
	const BRIGHTPOWDER ; 03 ; include?
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
	const LUCKY_PUNCH  ; 1e ; include?
	const CALCIUM      ; 1f
	const RARE_CANDY   ; 20
	const X_ACCURACY   ; 21
	const LEAF_STONE   ; 22
	const METAL_POWDER ; 23 ; include?
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
	const EXP_SHARE    ; 37 ; INCLUDE
	const OLD_ROD      ; 38
	const GOOD_ROD     ; 39
	const SILVER_LEAF  ; 3a ; only a sell item? can repurpose?
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
	const QUICK_CLAW   ; 47 ; include?
	const PECHA_BERRY  ; 48
	const GOLD_LEAF    ; 49
	const SOFT_SAND    ; 4a ; include?
	const SHARP_BEAK   ; 4b ; include?
	const CHERI_BERRY  ; 4c
	const ASPEAR_BERRY ; 4d
	const RAWST_BERRY  ; 4e
	const POISON_BARB  ; 4f ; include?
	const KINGS_ROCK   ; 50 ; include? (evolve)
	const PERSIM_BERRY ; 51
	const CHESTO_BERRY ; 52
	const RED_APRICORN ; 53
	const TINYMUSHROOM ; 54
	const BIG_MUSHROOM ; 55
	const SILVERPOWDER ; 56 ; include?
	const BLU_APRICORN ; 57
	const HELIX_FOSSIL ; 58
	const AMULET_COIN  ; 59 ; include?
	const YLW_APRICORN ; 5a
	const GRN_APRICORN ; 5b
	const CLEANSE_TAG  ; 5c ; include?
	const MYSTIC_WATER ; 5d ; include?
	const TWISTEDSPOON ; 5e ; include?
	const WHT_APRICORN ; 5f
	const BLACKBELT_I  ; 60 ; include?
	const BLK_APRICORN ; 61
	const DOME_FOSSIL  ; 62
	const PNK_APRICORN ; 63
	const BLACKGLASSES ; 64 ; include?
	const GOLD_TEETH   ; 65 ; SLOWPOKETAIL ; 65
	const SILK_SCARF   ; 66 ; include?
	const STICK        ; 67 ; include?
	const SMOKE_BALL   ; 68 ; include?
	const NEVERMELTICE ; 69 ; include?
	const MAGNET       ; 6a ; include?
	const LUM_BERRY    ; 6b
	const PEARL        ; 6c
	const BIG_PEARL    ; 6d
	const EVERSTONE    ; 6e ; include?
	const SPELL_TAG    ; 6f ; include?
	const SILPH_SCOPE  ; 70 ; RAGECANDYBAR
	const GS_BALL      ; 71
	const BLUE_CARD    ; 72
	const MIRACLE_SEED ; 73 ; include?
	const THICK_CLUB   ; 74 ; include?
	const FOCUS_BAND   ; 75 ; include?
	const OLD_AMBER    ; 76
	const ENERGYPOWDER ; 77
	const ENERGY_ROOT  ; 78
	const HEAL_POWDER  ; 79
	const REVIVAL_HERB ; 7a
	const HARD_STONE   ; 7b ; include?
	const LUCKY_EGG    ; 7c ; include?
	const CARD_KEY     ; 7d ; use in silph co
	const BIKE_VOUCHER ; 7e ; MACHINE_PART
	const EGG_TICKET   ; 7f ; can be repurposed, unused
	const LOST_ITEM    ; 80 ; KEEP for copycat quest
	const STARDUST     ; 81
	const STAR_PIECE   ; 82
	const LIFT_KEY     ; 83 ; BASEMENT_KEY
	const PASS         ; 84
	const SAFARI_BALL  ; 85
	const CHARCOAL     ; 86 ; include?
	const BERRY_JUICE  ; 87 ; include?
	const SCOPE_LENS   ; 88 ; include?
	const METAL_COAT   ; 89 ; include? (evolve)
	const DRAGON_FANG  ; 8a ; include?
	const LEFTOVERS    ; 8b ; include?
	const LEPPA_BERRY  ; 8c
	const DRAGON_SCALE ; 8d ; include? (evolve)
	const BERSERK_GENE ; 8e ; include?
	const SACRED_ASH   ; 8f
	const HEAVY_BALL   ; 90
	const LEVEL_BALL   ; 91
	const LURE_BALL    ; 92
	const FAST_BALL    ; 93
	const LIGHT_BALL   ; 94 ; include?
	const FRIEND_BALL  ; 95
	const MOON_BALL    ; 96
	const LOVE_BALL    ; 97
	const NORMAL_BOX   ; 98 ; include?
	const GORGEOUS_BOX ; 99 ; include?
	const SUN_STONE    ; 9a
	const STEEL_INGOT  ; 9b ; POLKADOT_BOW
	const UP_GRADE     ; 9c (evolve)
	const ORAN_BERRY   ; 9d
	const SITRUS_BERRY ; 9e
	const SQUIRTBOTTLE ; 9f
	const PARK_BALL    ; a0
	const RAINBOW_WING ; a1
	const BRICK_PIECE  ; a2 ; held by traded machop? useless.
	const FLOWER_MAIL  ; a3
	const SUPER_ROD_2  ; a4 ; ITEM_BE
	const ITEM_2D      ; a5
	const ITEM_32      ; a6
	const ITEM_88      ; a7
	const ITEM_89      ; a8
	const ITEM_8D      ; a9
	const ITEM_8E      ; aa ; TMs start at aa ?
	const ITEM_C3      ; f6
	const ITEM_DC      ; f7
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
	add_tm DYNAMICPUNCH ; aa
	add_tm RAZOR_WIND   ; ab
	add_tm SWORDS_DANCE ; ac
	add_tm ROLLOUT      ; ad ;WHIRLWIND    ; ad
	add_tm MEGA_KICK    ; ae
	add_tm TOXIC        ; af
	add_tm HORN_DRILL   ; b0
	add_tm BODY_SLAM    ; b1
	add_tm TAKE_DOWN    ; b2
	add_tm DOUBLE_EDGE  ; b3
	add_tm BUBBLEBEAM   ; b4
	add_tm WATER_GUN    ; b5
	add_tm ICE_BEAM     ; b6
	add_tm BLIZZARD     ; b7
	add_tm HYPER_BEAM   ; b8
	add_tm PAY_DAY      ; b9
	add_tm SUBMISSION   ; ba
	add_tm COUNTER      ; bb
	add_tm SEISMIC_TOSS ; bc
	add_tm RAGE         ; bd
	add_tm GIGA_DRAIN   ; be
	add_tm SOLARBEAM    ; bf
	add_tm DRAGONBREATH ; c0
	add_tm THUNDERBOLT  ; c1
	add_tm THUNDER      ; c2
	add_tm EARTHQUAKE   ; c3
	add_tm FISSURE      ; c4
	add_tm DIG          ; c5
	add_tm PSYCHIC_M    ; c6
	add_tm TELEPORT     ; c7
	add_tm MIMIC        ; c8
	add_tm DOUBLE_TEAM  ; c9
	add_tm REFLECT      ; ca
	add_tm BIDE         ; cb
	add_tm METRONOME    ; cc
	add_tm SELFDESTRUCT ; cd
	add_tm EGG_BOMB     ; ce
	add_tm FIRE_BLAST   ; cf
	add_tm SWIFT        ; d0
	add_tm SKULL_BASH   ; d1
	add_tm SOFTBOILED   ; d2
	add_tm DREAM_EATER  ; d3
	add_tm SKY_ATTACK   ; d4
	add_tm REST         ; d5
	add_tm THUNDER_WAVE ; d6
	add_tm PSYWAVE      ; d7
	add_tm EXPLOSION    ; d8
	add_tm ROCK_SLIDE   ; d9
	add_tm TRI_ATTACK   ; da
	add_tm SUBSTITUTE   ; db
	add_tm FLAMETHROWER ; dc
	add_tm SPARK        ; dd
	add_tm ICY_WIND     ; de
	add_tm FALSE_SWIPE  ; df ;HEADBUTT     ; df
	add_tm HEADBUTT     ; e0 ;CURSE        ; e0
	add_tm CURSE        ; e1 ;ROLLOUT      ; e1 (tm04)
	add_tm ROCK_SMASH   ; e2
	add_tm HIDDEN_POWER ; e3
	add_tm SUNNY_DAY    ; e4
	add_tm SWEET_SCENT  ; e5
	add_tm SNORE        ; e6
	add_tm PROTECT      ; e7
	add_tm RAIN_DANCE   ; e8
	add_tm ENDURE       ; e9
	add_tm IRON_TAIL    ; ea
	add_tm SHADOW_BALL  ; eb
	add_tm MUD_SLAP     ; ec
	add_tm SWAGGER      ; ed
	add_tm SLEEP_TALK   ; ee
	add_tm SLUDGE_BOMB  ; ef
	add_tm SANDSTORM    ; f0
	add_tm ATTRACT      ; f1
	add_tm THIEF        ; f2
	add_tm STEEL_WING   ; f3
	add_tm FURY_CUTTER  ; f4
	add_tm NIGHTMARE    ; f5
	add_tm ANCIENTPOWER ; f6
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
	add_hm CUT          ; f8 ;f3
	add_hm FLY          ; f9 ;f4
	add_hm SURF         ; fa ;f5
	add_hm STRENGTH     ; fb ;f6
	add_hm FLASH        ; fc ;f7
	add_hm WHIRLPOOL    ; fd ;f8
	add_hm WATERFALL    ; fe ;f9
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
	add_mt FIRE_PUNCH ; FLAMETHROWER
	add_mt THUNDERPUNCH ; THUNDERBOLT
	add_mt ICE_PUNCH ; ICE_BEAM
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

	const ITEM_FF       ; ff ; unused?

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff

; leftovers from red
DEF SAFARI_BALL_RED EQU $08 ; MOON_STONE
DEF MOON_STONE_RED  EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED   EQU $34 ; X_SPEED
