; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ; 00
	const TACKLE       ; 01 ;POUND, swapped
	const KARATE_CHOP  ; 02
	const DOUBLESLAP   ; 03
	const FURY_STRIKES ; 04 ;COMET_PUNCH, removed
	const MEGA_PUNCH   ; 05 ;removed
	const PAY_DAY      ; 06
	const FIRE_PUNCH   ; 07
	const ICE_PUNCH    ; 08
	const THUNDERPUNCH ; 09
	const SCRATCH      ; 0a
	const CRUSH_CLAW   ; 0b ;VICEGRIP, removed
	const GUILLOTINE   ; 0c
	const RAZOR_WIND   ; 0d ;removed
	const SWORDS_DANCE ; 0e
	const CUT          ; 0f ;removed
	const GUST         ; 10
	const WING_ATTACK  ; 11
	const ROOST        ; 12 ;WHIRLWIND, removed
	const FLY          ; 13
	const BIND         ; 14 ;removed
	const SLAM         ; 15 ;removed
	const VINE_WHIP    ; 16
	const STOMP        ; 17
	const DOUBLE_KICK  ; 18
	const MEGA_KICK    ; 19 ;removed
	const JUMP_KICK    ; 1a
	const ROLLING_KICK ; 1b ;removed
	const SAND_ATTACK  ; 1c ;removed
	const HEADBUTT     ; 1d
	const HORN_ATTACK  ; 1e
	const FURY_ATTACK  ; 1f ;removed
	const HORN_DRILL   ; 20
	const POUND        ; 21 ;removed
	const BODY_SLAM    ; 22
	const WRAP         ; 23
	const TAKE_DOWN    ; 24
	const THRASH       ; 25
	const DOUBLE_EDGE  ; 26
	const TAIL_WHIP    ; 27 ;removed
	const POISON_STING ; 28
	const TWINEEDLE    ; 29 ;removed
	const PIN_MISSILE  ; 2a
	const LEER         ; 2b
	const BITE         ; 2c
	const GROWL        ; 2d
	const ROAR         ; 2e
	const SING         ; 2f
	const SUPERSONIC   ; 30
	const LOUD_VOICE   ; 31 ;SONICBOOM, removed
	const DISABLE      ; 32
	const ACID         ; 33
	const EMBER        ; 34
	const FLAMETHROWER ; 35
	const MIST         ; 36 ;removed
	const WATER_GUN    ; 37
	const HYDRO_PUMP   ; 38
	const SURF         ; 39
	const ICE_BEAM     ; 3a
	const BLIZZARD     ; 3b
	const PSYBEAM      ; 3c
	const BUBBLEBEAM   ; 3d
	const AURORA_BEAM  ; 3e
	const HYPER_BEAM   ; 3f
	const PECK         ; 40
	const DRILL_PECK   ; 41
	const SUBMISSION   ; 42
	const LOW_SWEEP    ; 43 ;LOW_KICK, removed
	const COUNTER      ; 44
	const SEISMIC_TOSS ; 45
	const STRENGTH     ; 46
	const ABSORB       ; 47
	const MEGA_DRAIN   ; 48
	const LEECH_SEED   ; 49
	const GROWTH       ; 4a
	const RAZOR_LEAF   ; 4b
	const SOLARBEAM    ; 4c
	const POISONPOWDER ; 4d
	const STUN_SPORE   ; 4e
	const SLEEP_POWDER ; 4f
	const PETAL_DANCE  ; 50
	const STRING_SHOT  ; 51
	const DRAGON_RAGE  ; 52
	const FIRE_SPIN    ; 53
	const THUNDERSHOCK ; 54
	const THUNDERBOLT  ; 55
	const THUNDER_WAVE ; 56
	const THUNDER      ; 57
	const ROCK_THROW   ; 58
	const EARTHQUAKE   ; 59
	const FISSURE      ; 5a
	const DIG          ; 5b
	const TOXIC        ; 5c
	const CONFUSION    ; 5d
	const PSYCHIC_M    ; 5e
	const HYPNOSIS     ; 5f
	const BULK_UP      ; 60 ;MEDITATE, removed
	const AGILITY      ; 61
	const QUICK_ATTACK ; 62
	const RAGE         ; 63
	const TELEPORT     ; 64
	const NIGHT_SHADE  ; 65
	const MIMIC        ; 66 ;removed
	const SCREECH      ; 67
	const DOUBLE_TEAM  ; 68
	const RECOVER      ; 69
	const HARDEN       ; 6a
	const MINIMIZE     ; 6b
	const SMOKESCREEN  ; 6c
	const CONFUSE_RAY  ; 6d
	const WITHDRAW     ; 6e ;removed
	const DEFENSE_CURL ; 6f
	const BARRIER      ; 70
	const LIGHT_SCREEN ; 71
	const HAZE         ; 72
	const REFLECT      ; 73
	const FOCUS_ENERGY ; 74
	const BIDE         ; 75
	const METRONOME    ; 76
	const MIRROR_MOVE  ; 77 ;removed
	const SELFDESTRUCT ; 78
	const SEED_BOMB    ; 79 ;EGG_BOMB, removed
	const LICK         ; 7a
	const SMOG         ; 7b
	const SLUDGE       ; 7c
	const BONE_CLUB    ; 7d
	const FIRE_BLAST   ; 7e
	const WATERFALL    ; 7f
	const CLAMP        ; 80 ;removed
	const SWIFT        ; 81
	const SKULL_BASH   ; 82 ;removed
	const ICICLE_SPEAR ; 83 ;SPIKE_CANNON, removed
	const CONSTRICT    ; 84 ;removed
	const AMNESIA      ; 85
	const KINESIS      ; 86 ;removed
	const SOFTBOILED   ; 87
	const HI_JUMP_KICK ; 88 ;removed
	const GLARE        ; 89
	const DREAM_EATER  ; 8a
	const POISON_GAS   ; 8b ;removed
	const BARRAGE      ; 8c ;removed
	const LEECH_LIFE   ; 8d
	const LOVELY_KISS  ; 8e ;removed
	const SKY_ATTACK   ; 8f
	const TRANSFORM    ; 90
	const BUBBLE       ; 91 ;removed
	const DIZZY_PUNCH  ; 92
	const SPORE        ; 93
	const FLASH        ; 94
	const PSYWAVE      ; 95 ;removed
	const SPLASH       ; 96
	const ACID_ARMOR   ; 97 ;removed
	const CRABHAMMER   ; 98
	const EXPLOSION    ; 99 ;removed
	const FURY_SWIPES  ; 9a ;removed
	const BONEMERANG   ; 9b
	const REST         ; 9c
	const ROCK_SLIDE   ; 9d
	const HYPER_FANG   ; 9e
	const SHARPEN      ; 9f ;hone_claws functionality?
	const CONVERSION   ; a0
	const TRI_ATTACK   ; a1
	const SUPER_FANG   ; a2
	const SLASH        ; a3
	const SUBSTITUTE   ; a4
	const GYRO_BALL    ; a5
	const SKETCH       ; a6
	const TRIPLE_KICK  ; a7 ;removed
	const THIEF        ; a8
	const SPIDER_WEB   ; a9 ;removed
	const MIND_READER  ; aa ;removed
	const NIGHTMARE    ; ab
	const FLAME_WHEEL  ; ac
	const SNORE        ; ad
	const CURSE        ; ae
	const FLAIL        ; af
	const CONVERSION2  ; b0 ;removed
	const AEROBLAST    ; b1
	const COTTON_SPORE ; b2 ;removed
	const REVERSAL     ; b3 ;removed
	const SPITE        ; b4 ;removed
	const POWDER_SNOW  ; b5
	const PROTECT      ; b6
	const MACH_PUNCH   ; b7
	const SCARY_FACE   ; b8
	const FEINT_ATTACK ; b9
	const SWEET_KISS   ; ba ;removed
	const BELLY_DRUM   ; bb
	const SLUDGE_BOMB  ; bc
	const MUD_SLAP     ; bd
	const OCTAZOOKA    ; be
	const SPIKES       ; bf
	const ZAP_CANNON   ; c0
	const FORESIGHT    ; c1
	const DESTINY_BOND ; c2
	const PERISH_SONG  ; c3
	const ICY_WIND     ; c4
	const DETECT       ; c5 ;removed
	const BONE_RUSH    ; c6 ;removed
	const LOCK_ON      ; c7
	const OUTRAGE      ; c8
	const SANDSTORM    ; c9
	const GIGA_DRAIN   ; ca
	const ENDURE       ; cb
	const CHARM        ; cc
	const ROLLOUT      ; cd
	const FALSE_SWIPE  ; ce
	const SWAGGER      ; cf
	const MILK_DRINK   ; d0 ;removed
	const SPARK        ; d1
	const FURY_CUTTER  ; d2
	const STEEL_WING   ; d3
	const MEAN_LOOK    ; d4
	const ATTRACT      ; d5
	const SLEEP_TALK   ; d6
	const HEAL_BELL    ; d7
	const RETURN       ; d8 ;removed
	const PRESENT      ; d9 ;removed
	const FRUSTRATION  ; da ;removed
	const SAFEGUARD    ; db
	const PAIN_SPLIT   ; dc
	const SACRED_FIRE  ; dd
	const MAGNITUDE    ; de
	const DYNAMICPUNCH ; df
	const MEGAHORN     ; e0
	const DRAGONBREATH ; e1
	const BATON_PASS   ; e2
	const ENCORE       ; e3
	const PURSUIT      ; e4
	const RAPID_SPIN   ; e5
	const SWEET_SCENT  ; e6
	const IRON_TAIL    ; e7
	const METAL_CLAW   ; e8
	const VITAL_THROW  ; e9 ;removed
	const MORNING_SUN  ; ea
	const SYNTHESIS    ; eb
	const MOONLIGHT    ; ec
	const HIDDEN_POWER ; ed
	const CROSS_CHOP   ; ee
	const TWISTER      ; ef
	const RAIN_DANCE   ; f0
	const SUNNY_DAY    ; f1
	const CRUNCH       ; f2
	const MIRROR_COAT  ; f3
	const CALM_MIND    ; f4 ;PSYCH_UP, removed
	const EXTREMESPEED ; f5
	const ANCIENTPOWER ; f6
	const SHADOW_BALL  ; f7
	const FUTURE_SIGHT ; f8
	const ROCK_SMASH   ; f9 ;brick_break?
	const WHIRLPOOL    ; fa
	const BEAT_UP      ; fb ;removed
	const FIRE_FANG    ; fc
	const ICE_FANG     ; fd
	const THUNDER_FANG ; fe
	const STRUGGLE     ; ff
DEF NUM_ATTACKS EQU const_value - 1

; Battle animations use the same constants as the moves up to this point
	const_next $100 ;STRUGGLE is $ff
	const ANIM_HELD_ITEM_TRIGGER ; ff
	const ANIM_THROW_POKE_BALL   ; 100
	const ANIM_SEND_OUT_MON      ; 101
	const ANIM_RETURN_MON        ; 102
	const ANIM_CONFUSED          ; 103
	const ANIM_SLP               ; 104
	const ANIM_BRN               ; 105
	const ANIM_PSN               ; 106
	const ANIM_SAP               ; 107
	const ANIM_FRZ               ; 108
	const ANIM_PAR               ; 109
	const ANIM_IN_LOVE           ; 10a
	const ANIM_IN_SANDSTORM      ; 10b
	const ANIM_IN_NIGHTMARE      ; 10c
	const ANIM_IN_WHIRLPOOL      ; 10d
; battle anims
	const ANIM_MISS              ; 10e
	const ANIM_ENEMY_DAMAGE      ; 10f
	const ANIM_ENEMY_STAT_DOWN   ; 110
	const ANIM_PLAYER_STAT_DOWN  ; 111
	const ANIM_PLAYER_DAMAGE     ; 112
	const ANIM_WOBBLE            ; 113
	const ANIM_SHAKE             ; 114
	const ANIM_HIT_CONFUSION     ; 115
	const ANIM_IN_RAIN           ; 116
	const ANIM_IN_SUN            ; 117
	const ANIM_SAFARI_THROW_ROCK ; 118
	const ANIM_SAFARI_THROW_BAIT ; 119
DEF NUM_BATTLE_ANIMS EQU const_value - 1

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION
