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
	const DRAGON_CLAW  ; 04 ;COMET_PUNCH, removed
	const SHADOW_CLAW  ; 05 ;MEGA_PUNCH, removed
	const PAY_DAY      ; 06
	const FIRE_PUNCH   ; 07
	const ICE_PUNCH    ; 08
	const THUNDERPUNCH ; 09
	const SCRATCH      ; 0a
	const CRUSH_CLAW   ; 0b ;VICEGRIP, removed
	const GUILLOTINE   ; 0c
	const AIR_SLICE    ; 0d ;RAZOR_WIND, removed
	const SWORDS_DANCE ; 0e
	const AERIAL_ACE   ; 0f ;CUT, removed
	const GUST         ; 10
	const WING_ATTACK  ; 11
	const ROOST        ; 12 ;WHIRLWIND, removed
	const BOUNCE       ; 13 ;FLY, removed
	const BUG_BITE     ; 14 ;BIND, removed
	const WAKE_UP_SLAP ; 15 ;SLAM, removed
	const VINE_WHIP    ; 16
	const STOMP        ; 17
	const DOUBLE_KICK  ; 18
	const CLOSE_COMBAT ; 19 ;MEGA_KICK, removed
	const JUMP_KICK    ; 1a
	const FOCUS_BLAST  ; 1b ;ROLLING_KICK, removed
	const MUD_BOMB     ; 1c ;SAND_ATTACK, removed
	const HEADBUTT     ; 1d
	const HORN_ATTACK  ; 1e
	const FURY_STRIKES ; 1f ;FURY_ATTACK, removed
	const HORN_DRILL   ; 20
	const FLARE_BLITZ  ; 21 ;POUND, removed
	const BODY_SLAM    ; 22
	const WRAP         ; 23
	const TAKE_DOWN    ; 24
	const THRASH       ; 25
	const DOUBLE_EDGE  ; 26
	const METAL_SOUND  ; 27 ;TAIL_WHIP, removed
	const POISON_STING ; 28
	const POISON_TAIL  ; 29 ;TWINEEDLE, removed
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
	const DRAGON_DANCE ; 36 ;MIST, removed
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
	const GIGA_IMPACT  ; 46 ;STRENGTH, removed
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
	const NASTY_PLOT   ; 66 ;MIMIC, removed
	const SCREECH      ; 67
	const DOUBLE_TEAM  ; 68
	const RECOVER      ; 69
	const HARDEN       ; 6a
	const MINIMIZE     ; 6b
	const SMOKESCREEN  ; 6c
	const CONFUSE_RAY  ; 6d
	const SILVER_WIND  ; 6e ;WITHDRAW, removed
	const DEFENSE_CURL ; 6f
	const BARRIER      ; 70
	const LIGHT_SCREEN ; 71
	const HAZE         ; 72
	const REFLECT      ; 73
	const FOCUS_ENERGY ; 74
	const BIDE         ; 75
	const METRONOME    ; 76
	const MIRROR_SHOT  ; 77 ;MIRROR_MOVE, removed
	const SELFDESTRUCT ; 78
	const SEED_BOMB    ; 79 ;EGG_BOMB, removed
	const LICK         ; 7a
	const SMOG         ; 7b
	const SLUDGE       ; 7c
	const FAKE_OUT     ; 7d ;BONE_CLUB ;removed
	const FIRE_BLAST   ; 7e
	const WATERFALL    ; 7f
	const X_SCISSOR    ; 80 ;CLAMP, removed
	const SWIFT        ; 81
	const ASTONISH     ; 82 ;SKULL_BASH, removed
	const ICICLE_SPEAR ; 83 ;SPIKE_CANNON, removed
	const AQUA_JET     ; 84 ;CONSTRICT, removed
	const AMNESIA      ; 85
	const SIGNAL_BEAM  ; 86 ;KINESIS, removed
	const SOFTBOILED   ; 87
	const HEAT_WAVE    ; 88 ;HI_JUMP_KICK, removed
	const GLARE        ; 89
	const DREAM_EATER  ; 8a
	const POISON_JAB   ; 8b ;POISON_GAS, removed
	const BULLET_SEED  ; 8c ;BARRAGE, removed
	const LEECH_LIFE   ; 8d
	const POISON_FANG  ; 8e ;LOVELY_KISS, removed
	const SKY_ATTACK   ; 8f
	const TRANSFORM    ; 90
	const WATER_PULSE  ; 91 ;BUBBLE, removed
	const DIZZY_PUNCH  ; 92
	const SPORE        ; 93
	const FLASH        ; 94
	const EXTRASENSORY ; 95 ;PSYWAVE, removed
	const SPLASH       ; 96
	const AQUA_TAIL    ; 97 ;ACID_ARMOR, removed
	const CRABHAMMER   ; 98
	const FLASH_CANNON ; 99 ;EXPLOSION, removed
	const ROCK_BLAST   ; 9a ;FURY_SWIPES, removed
	const BONEMERANG   ; 9b
	const REST         ; 9c
	const ROCK_SLIDE   ; 9d
	const HYPER_FANG   ; 9e
	const SHARPEN      ; 9f ;hone_claws functionality, animation
	const CONVERSION   ; a0
	const TRI_ATTACK   ; a1
	const SUPER_FANG   ; a2
	const SLASH        ; a3
	const SUBSTITUTE   ; a4
	const GYRO_BALL    ; a5 ;STRUGGLE, moved $ff
	const SKETCH       ; a6
	const BULLET_PUNCH ; a7 ;TRIPLE_KICK, removed
	const THIEF        ; a8
	const LEAF_BLADE   ; a9 ;SPIDER_WEB, removed
	const ENERGY_BALL  ; aa ;MIND_READER, removed
	const NIGHTMARE    ; ab
	const FLAME_WHEEL  ; ac
	const SNORE        ; ad
	const CURSE        ; ae
	const FLAIL        ; af
	const DRAGON_PULSE ; b0 ;CONVERSION2, removed
	const AEROBLAST    ; b1
	const MAGICAL_LEAF ; b2 ;COTTON_SPORE, removed
	const STONE_EDGE   ; b3 ;REVERSAL, removed
	const NIGHT_SLASH  ; b4 ;SPITE, removed
	const POWDER_SNOW  ; b5
	const PROTECT      ; b6
	const MACH_PUNCH   ; b7
	const SCARY_FACE   ; b8
	const FEINT_ATTACK ; b9
	const BUG_BUZZ     ; ba ;SWEET_KISS, removed
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
	const ICE_SHARD    ; c5 ;DETECT, removed
	const EARTH_POWER  ; c6 ;BONE_RUSH, removed
	const LOCK_ON      ; c7
	const OUTRAGE      ; c8
	const SANDSTORM    ; c9
	const GIGA_DRAIN   ; ca
	const ENDURE       ; cb
	const CHARM        ; cc
	const ROLLOUT      ; cd
	const FALSE_SWIPE  ; ce
	const SWAGGER      ; cf
	const MUD_SHOT     ; d0 ;MILK_DRINK, removed
	const SPARK        ; d1
	const FURY_CUTTER  ; d2
	const STEEL_WING   ; d3
	const MEAN_LOOK    ; d4
	const ATTRACT      ; d5
	const SLEEP_TALK   ; d6
	const HEAL_BELL    ; d7
	const POWER_GEM    ; d8 ;RETURN, removed
	const DISCHARGE    ; d9 ;PRESENT, removed
	const HEX          ; da ;FRUSTRATION, removed
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
	const ZEN_HEADBUTT ; e9 ;VITAL_THROW, removed
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
	const BRICK_BREAK  ; f9 ;ROCK_SMASH, removed
	const WHIRLPOOL    ; fa
	const DARK_PULSE   ; fb ;BEAT_UP, removed
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
