; Characteristics of each move.

MACRO move
	db \1 ; animation
	db \2 ; effect
	db \3 ; power
;	db \4 ; type
;	db \5 percent ; accuracy
;	db \6 ; pp
;	db \7 percent ; effect chance
;	assert \6 <= 40, "PP must be 40 or less"
	db \4 | \5 ; type
	db \6 percent ; accuracy
	db \7 ; pp
	db \8 percent ; effect chance
	assert \7 <= 40, "PP must be 40 or less"
ENDM

Moves:
; entries correspond to move ids (see constants/move_constants.asm)
	table_width MOVE_LENGTH, Moves
	move TACKLE,       EFFECT_NORMAL_HIT,         40, NORMAL,       PHYSICAL, 100, 35,   0 ; OLD POW:35 ACC:95
	move KARATE_CHOP,  EFFECT_NORMAL_HIT,         50, FIGHTING,     PHYSICAL, 100, 25,   0
	move DOUBLESLAP,   EFFECT_MULTI_HIT,          15, NORMAL,       PHYSICAL,  85, 10,   0
	move DRAGON_CLAW,  EFFECT_NORMAL_HIT,         80, DRAGON,       PHYSICAL, 100, 15,   0 ;COMET_PUNCH, removed
	move SHADOW_CLAW,  EFFECT_NORMAL_HIT,         70, GHOST,        PHYSICAL, 100, 15,   0 ;MEGA_PUNCH, removed
	move PAY_DAY,      EFFECT_PAY_DAY,            40, NORMAL,       PHYSICAL, 100, 20,   0
	move FIRE_PUNCH,   EFFECT_BURN_HIT,           75, FIRE,         PHYSICAL, 100, 15,  10
	move ICE_PUNCH,    EFFECT_FREEZE_HIT,         75, ICE,          PHYSICAL, 100, 15,  10
	move THUNDERPUNCH, EFFECT_PARALYZE_HIT,       75, ELECTRIC,     PHYSICAL, 100, 15,  10
	move SCRATCH,      EFFECT_NORMAL_HIT,         40, NORMAL,       PHYSICAL, 100, 35,   0
	move CRUSH_CLAW,   EFFECT_DEFENSE_DOWN_HIT,   75, NORMAL,       PHYSICAL,  95, 10,  50 ;VICEGRIP, removed
	move GUILLOTINE,   EFFECT_OHKO,                0, NORMAL,       PHYSICAL,  30,  5,   0
	move AIR_SLICE,    EFFECT_FLINCH_HIT,         75, FLYING,       SPECIAL,   95, 20,  30 ;RAZOR_WIND, removed
	move SWORDS_DANCE, EFFECT_ATTACK_UP_2,         0, NORMAL,       STATUS,   100, 30,   0
	move AERIAL_ACE,   EFFECT_ALWAYS_HIT,         60, FLYING,       PHYSICAL, 101, 20,   0 ;CUT, removed
	move GUST,         EFFECT_GUST,               40, FLYING,       SPECIAL,  100, 35,   0
	move WING_ATTACK,  EFFECT_NORMAL_HIT,         60, FLYING,       PHYSICAL, 100, 35,   0
	move ROOST,        EFFECT_HEAL,                0, FLYING,       STATUS,   100, 10,   0 ;WHIRLWIND, removed
	move BOUNCE,       EFFECT_FLY,                85, FLYING,       PHYSICAL,  85,  5,  30 ;FLY, removed
	move BUG_BITE,     EFFECT_NORMAL_HIT,         60, BUG,          PHYSICAL, 100, 20,   0 ;BIND, removed
	move WAKE_UP_SLAP, EFFECT_WAKE_UP_SLAP,       60, FIGHTING,     PHYSICAL, 100, 10,   0 ;SLAM, removed
	move VINE_WHIP,    EFFECT_NORMAL_HIT,         35, GRASS,        PHYSICAL, 100, 10,   0
	move STOMP,        EFFECT_STOMP,              65, NORMAL,       PHYSICAL, 100, 20,  30
	move DOUBLE_KICK,  EFFECT_DOUBLE_HIT,         30, FIGHTING,     PHYSICAL, 100, 30,   0
	move CLOSE_COMBAT, EFFECT_CLOSE_COMBAT,      120, FIGHTING,     PHYSICAL, 100,  5,   0 ;MEGA_KICK, removed
	move JUMP_KICK,    EFFECT_JUMP_KICK,         100, FIGHTING,     PHYSICAL,  95, 10,   0 ; OLD POW:70
	move FOCUS_BLAST,  EFFECT_SP_DEF_DOWN_HIT,   120, FIGHTING,     SPECIAL,   70,  5,  10 ;ROLLING_KICK, removed
	move MUD_BOMB,     EFFECT_ACCURACY_DOWN_HIT,  65, GROUND,       SPECIAL,   85, 10,  30 ;SAND_ATTACK, removed
	move HEADBUTT,     EFFECT_FLINCH_HIT,         70, NORMAL,       PHYSICAL, 100, 15,  30
	move HORN_ATTACK,  EFFECT_NORMAL_HIT,         65, NORMAL,       PHYSICAL, 100, 25,   0
	move FURY_STRIKES, EFFECT_MULTI_HIT,          20, NORMAL,       PHYSICAL,  85, 20,   0 ;FURY_ATTACK, removed
	move HORN_DRILL,   EFFECT_OHKO,                1, NORMAL,       PHYSICAL,  30,  5,   0
	move FLARE_BLITZ,  EFFECT_RECOIL_HIT,        120, FIRE,         PHYSICAL, 100, 15,  10 ;POUND, removed
	move BODY_SLAM,    EFFECT_BODY_SLAM,          85, NORMAL,       PHYSICAL, 100, 15,  30 ; OLD EFFECT_PARALYZE_HIT
	move WRAP,         EFFECT_TRAP_TARGET,        15, NORMAL,       PHYSICAL,  85, 20,   0
	move TAKE_DOWN,    EFFECT_RECOIL_HIT,         90, NORMAL,       PHYSICAL,  85, 20,   0
	move THRASH,       EFFECT_RAMPAGE,            90, NORMAL,       PHYSICAL, 100, 20,   0
	move DOUBLE_EDGE,  EFFECT_RECOIL_HIT,        120, NORMAL,       PHYSICAL, 100, 15,   0
	move METAL_SOUND,  EFFECT_SP_DEF_DOWN_2,       0, STEEL,        STATUS,    85, 40,   0 ;TAIL_WHIP, removed
	move POISON_STING, EFFECT_POISON_HIT,         15, POISON,       PHYSICAL, 100, 35,  30
	move POISON_TAIL,  EFFECT_POISON_HIT,         50, POISON,       PHYSICAL, 100, 25,  10 ;TWINEEDLE, removed
	move PIN_MISSILE,  EFFECT_MULTI_HIT,          20, BUG,          PHYSICAL,  85, 20,   0 ; OLD POW:14
	move LEER,         EFFECT_DEFENSE_DOWN,        0, NORMAL,       STATUS,   100, 30,   0
	move BITE,         EFFECT_FLINCH_HIT,         60, DARK,         PHYSICAL, 100, 25,  30
	move GROWL,        EFFECT_ATTACK_DOWN,         0, NORMAL,       STATUS,   100, 40,   0
	move ROAR,         EFFECT_FORCE_SWITCH,        0, NORMAL,       STATUS,   100, 20,   0
	move SING,         EFFECT_SLEEP,               0, NORMAL,       STATUS,    55, 15,   0
	move SUPERSONIC,   EFFECT_CONFUSE,             0, NORMAL,       STATUS,    55, 20,   0
	move LOUD_VOICE,   EFFECT_WAKE_UP_SLAP,       50, NORMAL,       SPECIAL,  100, 10,   0 ;SONICBOOM, removed
	move DISABLE,      EFFECT_DISABLE,             0, NORMAL,       STATUS,    55, 20,   0
	move ACID,         EFFECT_DEFENSE_DOWN_HIT,   40, POISON,       SPECIAL,  100, 30,  10
	move EMBER,        EFFECT_BURN_HIT,           40, FIRE,         SPECIAL,  100, 25,  10
	move FLAMETHROWER, EFFECT_BURN_HIT,           95, FIRE,         SPECIAL,  100, 15,  10
	move DRAGON_DANCE, EFFECT_DRAGON_DANCE,        0, DRAGON,       STATUS,   100, 20,   0 ;MIST, removed
	move WATER_GUN,    EFFECT_NORMAL_HIT,         40, WATER,        SPECIAL,  100, 25,   0
	move HYDRO_PUMP,   EFFECT_NORMAL_HIT,        120, WATER,        SPECIAL,   80,  5,   0
	move SURF,         EFFECT_NORMAL_HIT,         90, WATER,        SPECIAL,  100, 15,   0 ; OLD POW:95
	move ICE_BEAM,     EFFECT_FREEZE_HIT,         95, ICE,          SPECIAL,  100, 10,  10
	move BLIZZARD,     EFFECT_FREEZE_HIT,        120, ICE,          SPECIAL,   70,  5,  10
	move PSYBEAM,      EFFECT_CONFUSE_HIT,        65, PSYCHIC_TYPE, SPECIAL,  100, 20,  10
	move BUBBLEBEAM,   EFFECT_SPEED_DOWN_HIT,     65, WATER,        SPECIAL,  100, 20,  10
	move AURORA_BEAM,  EFFECT_ATTACK_DOWN_HIT,    65, ICE,          SPECIAL,  100, 20,  10
	move HYPER_BEAM,   EFFECT_HYPER_BEAM,        150, NORMAL,       SPECIAL,   90,  5,   0
	move PECK,         EFFECT_NORMAL_HIT,         35, FLYING,       PHYSICAL, 100, 35,   0
	move DRILL_PECK,   EFFECT_NORMAL_HIT,         80, FLYING,       PHYSICAL, 100, 20,   0
	move SUBMISSION,   EFFECT_RECOIL_HIT,         80, FIGHTING,     PHYSICAL,  80, 25,   0
	move LOW_SWEEP,    EFFECT_SPEED_DOWN_HIT,     60, FIGHTING,     PHYSICAL, 100, 20, 100 ;LOW_KICK, removed
	move COUNTER,      EFFECT_COUNTER,             1, FIGHTING,     PHYSICAL, 100, 20,   0
	move SEISMIC_TOSS, EFFECT_LEVEL_DAMAGE,        1, FIGHTING,     PHYSICAL, 100, 20,   0
	move GIGA_IMPACT,  EFFECT_HYPER_BEAM,        150, NORMAL,       PHYSICAL,  90,  5,   0 ;STRENGTH, removed
	move ABSORB,       EFFECT_LEECH_HIT,          20, GRASS,        SPECIAL,  100, 20,   0
	move MEGA_DRAIN,   EFFECT_LEECH_HIT,          40, GRASS,        SPECIAL,  100, 10,   0
	move LEECH_SEED,   EFFECT_LEECH_SEED,          0, GRASS,        STATUS,    90, 10,   0
	move GROWTH,       EFFECT_SP_ATK_UP,           0, NORMAL,       STATUS,   100, 40,   0
	move RAZOR_LEAF,   EFFECT_NORMAL_HIT,         55, GRASS,        PHYSICAL,  95, 25,   0
	move SOLARBEAM,    EFFECT_SOLARBEAM,         120, GRASS,        SPECIAL,  100, 10,   0
	move POISONPOWDER, EFFECT_POISON,              0, POISON,       STATUS,    75, 35,   0
	move STUN_SPORE,   EFFECT_PARALYZE,            0, GRASS,        STATUS,    75, 30,   0
	move SLEEP_POWDER, EFFECT_SLEEP,               0, GRASS,        STATUS,    75, 15,   0
	move PETAL_DANCE,  EFFECT_RAMPAGE,            70, GRASS,        SPECIAL,  100, 20,   0
	move STRING_SHOT,  EFFECT_SPEED_DOWN,          0, BUG,          STATUS,    95, 40,   0
	move DRAGON_RAGE,  EFFECT_STATIC_DAMAGE,      40, DRAGON,       SPECIAL,  100, 10,   0
	move FIRE_SPIN,    EFFECT_TRAP_TARGET,        15, FIRE,         SPECIAL,   70, 15,   0
	move THUNDERSHOCK, EFFECT_PARALYZE_HIT,       40, ELECTRIC,     SPECIAL,  100, 30,  10
	move THUNDERBOLT,  EFFECT_PARALYZE_HIT,       95, ELECTRIC,     SPECIAL,  100, 15,  10
	move THUNDER_WAVE, EFFECT_PARALYZE,            0, ELECTRIC,     STATUS,   100, 20,   0
	move THUNDER,      EFFECT_THUNDER,           120, ELECTRIC,     SPECIAL,   70, 10,  30
	move ROCK_THROW,   EFFECT_NORMAL_HIT,         50, ROCK,         PHYSICAL,  90, 15,   0
	move EARTHQUAKE,   EFFECT_EARTHQUAKE,        100, GROUND,       PHYSICAL, 100, 10,   0
	move FISSURE,      EFFECT_OHKO,                1, GROUND,       PHYSICAL,  30,  5,   0
	move DIG,          EFFECT_FLY,                60, GROUND,       PHYSICAL, 100, 10,   0
	move TOXIC,        EFFECT_TOXIC,               0, POISON,       STATUS,    90, 10, 100 ; OLD ACC:85
	move CONFUSION,    EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE, SPECIAL,  100, 25,  10
	move PSYCHIC_M,    EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC_TYPE, SPECIAL,  100, 10,  10
	move HYPNOSIS,     EFFECT_SLEEP,               0, PSYCHIC_TYPE, STATUS,    60, 20,   0
	move BULK_UP,      EFFECT_BULK_UP,             0, FIGHTING,     STATUS,   100, 20,   0 ;MEDITATE, removed
	move AGILITY,      EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE, STATUS,   100, 30,   0
	move QUICK_ATTACK, EFFECT_PRIORITY_HIT,       40, NORMAL,       PHYSICAL, 100, 30,   0
	move RAGE,         EFFECT_RAGE,               20, NORMAL,       PHYSICAL, 100, 20,   0
	move TELEPORT,     EFFECT_TELEPORT,            0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move NIGHT_SHADE,  EFFECT_LEVEL_DAMAGE,        1, GHOST,        SPECIAL,  100, 15,   0
	move NASTY_PLOT,   EFFECT_SP_ATK_UP_2,         0, DARK,         STATUS,   100, 20,   0 ;MIMIC, removed
	move SCREECH,      EFFECT_DEFENSE_DOWN_2,      0, NORMAL,       STATUS,    85, 40,   0
	move DOUBLE_TEAM,  EFFECT_EVASION_UP,          0, NORMAL,       STATUS,   100, 15,   0
	move RECOVER,      EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 20,   0
	move HARDEN,       EFFECT_DEFENSE_UP,          0, NORMAL,       STATUS,   100, 30,   0
	move MINIMIZE,     EFFECT_EVASION_UP,          0, NORMAL,       STATUS,   100, 20,   0
	move SMOKESCREEN,  EFFECT_ACCURACY_DOWN,       0, NORMAL,       STATUS,   100, 20,   0
	move CONFUSE_RAY,  EFFECT_CONFUSE,             0, GHOST,        STATUS,   100, 10,   0
	move SILVER_WIND,  EFFECT_ALL_UP_HIT,         60, BUG,          SPECIAL,  100,  5,  10 ;WITHDRAW, removed
	move DEFENSE_CURL, EFFECT_DEFENSE_CURL,        0, NORMAL,       STATUS,   100, 40,   0
	move BARRIER,      EFFECT_DEFENSE_UP_2,        0, PSYCHIC_TYPE, STATUS,   100, 30,   0
	move LIGHT_SCREEN, EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE, STATUS,   100, 30,   0
	move HAZE,         EFFECT_RESET_STATS,         0, ICE,          STATUS,   100, 30,   0
	move REFLECT,      EFFECT_REFLECT,             0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move FOCUS_ENERGY, EFFECT_FOCUS_ENERGY,        0, NORMAL,       STATUS,   100, 30,   0
	move BIDE,         EFFECT_BIDE,                0, NORMAL,       PHYSICAL, 100, 10,   0
	move METRONOME,    EFFECT_METRONOME,           0, NORMAL,       STATUS,   100, 10,   0
	move MIRROR_SHOT,  EFFECT_ACCURACY_DOWN_HIT,  65, STEEL,        SPECIAL,   85, 10,  30 ;MIRROR_MOVE, removed
	move SELFDESTRUCT, EFFECT_SELFDESTRUCT,      200, NORMAL,       PHYSICAL, 100,  5,   0
	move SEED_BOMB,    EFFECT_NORMAL_HIT,         80, GRASS,        PHYSICAL, 100, 15,   0 ;EGG_BOMB, removed
	move LICK,         EFFECT_PARALYZE_HIT,       20, GHOST,        PHYSICAL, 100, 30,  30
	move SMOG,         EFFECT_POISON_HIT,         20, POISON,       SPECIAL,   90, 20,  50 ; OLD ACC:70 %:40
	move SLUDGE,       EFFECT_POISON_HIT,         65, POISON,       SPECIAL,  100, 20,  30
;	move BONE_CLUB,    EFFECT_FLINCH_HIT,         65, GROUND,       PHYSICAL,  85, 20,  10
	move FAKE_OUT,     EFFECT_FAKE_OUT,           40, NORMAL,       PHYSICAL, 100, 10, 100 ;BONE_CLUB, to be removed
	move FIRE_BLAST,   EFFECT_BURN_HIT,          120, FIRE,         SPECIAL,   85,  5,  10
	move WATERFALL,    EFFECT_FLINCH_HIT,         80, WATER,        PHYSICAL, 100, 15,  30 ; OLD EFFECT_NORMAL_HIT
	move X_SCISSOR,    EFFECT_NORMAL_HIT,         80, BUG,          PHYSICAL, 100, 15,   0 ;CLAMP, removed
	move SWIFT,        EFFECT_ALWAYS_HIT,         60, NORMAL,       SPECIAL,  101, 20,   0
	move ASTONISH,     EFFECT_FLINCH_HIT,         30, GHOST,        PHYSICAL, 100, 15,  30 ;SKULL_BASH, removed
	move ICICLE_SPEAR, EFFECT_MULTI_HIT,          25, ICE,          PHYSICAL, 100, 30,   0 ;SPIKE_CANNON, removed
	move AQUA_JET,     EFFECT_PRIORITY_HIT,       40, WATER,        PHYSICAL, 100, 20,   0 ;CONSTRICT, removed
	move AMNESIA,      EFFECT_SP_DEF_UP_2,         0, PSYCHIC_TYPE, STATUS,   100, 20,   0
	move SIGNAL_BEAM,  EFFECT_CONFUSE_HIT,        75, BUG,          SPECIAL,  100, 15,  10 ;KINESIS, removed
	move SOFTBOILED,   EFFECT_HEAL,                0, NORMAL,       STATUS,   100, 10,   0
	move HEAT_WAVE,    EFFECT_BURN_HIT,          100, FIRE,         SPECIAL,   90, 10,  20 ;HI_JUMP_KICK, removed ; OLD %:10
	move GLARE,        EFFECT_PARALYZE,            0, NORMAL,       STATUS,    75, 30,   0
	move DREAM_EATER,  EFFECT_DREAM_EATER,       100, PSYCHIC_TYPE, SPECIAL,  100, 15,   0
	move POISON_JAB,   EFFECT_POISON_HIT,         80, POISON,       PHYSICAL, 100, 20,  30 ;POISON_GAS, removed
	move BULLET_SEED,  EFFECT_MULTI_HIT,          10, GRASS,        PHYSICAL, 100, 30,   0 ;BARRAGE, removed
	move LEECH_LIFE,   EFFECT_LEECH_HIT,          20, BUG,          PHYSICAL, 100, 15,   0
	move POISON_FANG,  EFFECT_POISON_HIT,         50, POISON,       PHYSICAL, 100, 15,  30 ;LOVELY_KISS, removed
	move SKY_ATTACK,   EFFECT_FLY,               140, FLYING,       PHYSICAL,  90,  5,   0 ; OLD: EFFECT_SKY_ATTACK
	move TRANSFORM,    EFFECT_TRANSFORM,           0, NORMAL,       STATUS,   100, 10,   0
	move WATER_PULSE,  EFFECT_CONFUSE_HIT,        60, WATER,        SPECIAL,  100, 20,  20 ;BUBBLE, removed
	move DIZZY_PUNCH,  EFFECT_CONFUSE_HIT,        70, NORMAL,       PHYSICAL, 100, 10,  20
	move SPORE,        EFFECT_SLEEP,               0, GRASS,        STATUS,   100, 15,   0
	move FLASH,        EFFECT_ACCURACY_DOWN,       0, NORMAL,       STATUS,   100, 20,   0 ; OLD ACC:70
	move EXTRASENSORY, EFFECT_FLINCH_HIT,         80, PSYCHIC_TYPE, SPECIAL,  100, 30,  10 ;PSYWAVE, removed
	move SPLASH,       EFFECT_SPLASH,              0, NORMAL,       PHYSICAL, 100, 40,   0
	move AQUA_TAIL,    EFFECT_NORMAL_HIT,         90, WATER,        PHYSICAL,  90, 10,   0 ;ACID_ARMOR, removed
	move CRABHAMMER,   EFFECT_NORMAL_HIT,         90, WATER,        PHYSICAL,  85, 10,   0
	move FLASH_CANNON, EFFECT_SP_DEF_DOWN_HIT,    80, STEEL,        SPECIAL,  100, 10,  10 ;EXPLOSION, removed
	move ROCK_BLAST,   EFFECT_MULTI_HIT,          25, ROCK,         PHYSICAL,  80, 10,   0 ;FURY_SWIPES, removed
	move BONEMERANG,   EFFECT_DOUBLE_HIT,         50, GROUND,       PHYSICAL,  90, 10,   0
	move REST,         EFFECT_HEAL,                0, PSYCHIC_TYPE, STATUS,   100, 10,   0
	move ROCK_SLIDE,   EFFECT_FLINCH_HIT,         75, ROCK,         PHYSICAL,  90, 10,  30
	move HYPER_FANG,   EFFECT_FLINCH_HIT,         80, NORMAL,       PHYSICAL,  90, 15,  10
	move SHARPEN,      EFFECT_HONE_CLAWS,          0, NORMAL,       STATUS,   100, 30,   0 ; OLD EFFECT_ATTACK_UP
	move CONVERSION,   EFFECT_CONVERSION,          0, NORMAL,       STATUS,   100, 30,   0
	move TRI_ATTACK,   EFFECT_TRI_ATTACK,         80, NORMAL,       SPECIAL,  100, 10,  20
	move SUPER_FANG,   EFFECT_SUPER_FANG,          1, NORMAL,       PHYSICAL,  90, 10,   0
	move SLASH,        EFFECT_NORMAL_HIT,         70, NORMAL,       PHYSICAL, 100, 20,   0
	move SUBSTITUTE,   EFFECT_SUBSTITUTE,          0, NORMAL,       STATUS,   100, 10,   0
	move GYRO_BALL,    EFFECT_GYRO_BALL,          50, STEEL,        PHYSICAL, 100,  5,   0 ;STRUGGLE, $ff
	move SKETCH,       EFFECT_SKETCH,              0, NORMAL,       STATUS,   100,  1,   0
	move BULLET_PUNCH, EFFECT_PRIORITY_HIT,       40, STEEL,        PHYSICAL, 100, 30,   0 ;TRIPLE_KICK, removed
	move THIEF,        EFFECT_THIEF,              40, DARK,         PHYSICAL, 100, 10, 100
	move LEAF_BLADE,   EFFECT_NORMAL_HIT,         80, GRASS,        PHYSICAL, 100, 15,   0 ;SPIDER_WEB, removed
	move ENERGY_BALL,  EFFECT_SP_DEF_DOWN_HIT,    90, GRASS,        SPECIAL,  100, 10,  10 ;MIND_READER, removed
	move NIGHTMARE,    EFFECT_NIGHTMARE,           0, GHOST,        STATUS,   100, 15,   0
	move FLAME_WHEEL,  EFFECT_FLAME_WHEEL,        60, FIRE,         PHYSICAL, 100, 25,  10
	move SNORE,        EFFECT_SNORE,              40, NORMAL,       SPECIAL,  100, 15,  30
	move CURSE,        EFFECT_CURSE,               0, CURSE_TYPE,   STATUS,   100, 10,   0
	move FLAIL,        EFFECT_REVERSAL,            1, NORMAL,       PHYSICAL, 100, 15,   0
	move DRAGON_PULSE, EFFECT_NORMAL_HIT,         85, DRAGON,       SPECIAL,  100, 10,   0 ;CONVERSION2, removed
	move AEROBLAST,    EFFECT_NORMAL_HIT,        100, FLYING,       SPECIAL,   95,  5,   0
	move MAGICAL_LEAF, EFFECT_ALWAYS_HIT,         60, GRASS,        SPECIAL,  101, 15,   0 ;COTTON_SPORE, removed
	move STONE_EDGE,   EFFECT_NORMAL_HIT,        100, ROCK,         PHYSICAL,  80,  5,   0 ;REVERSAL, removed
	move NIGHT_SLASH,  EFFECT_NORMAL_HIT,         70, DARK,         PHYSICAL, 100, 15,   0 ;SPITE, removed
	move POWDER_SNOW,  EFFECT_FREEZE_HIT,         40, ICE,          SPECIAL,  100, 25,  10
	move PROTECT,      EFFECT_PROTECT,             0, NORMAL,       STATUS,   100, 10,   0
	move MACH_PUNCH,   EFFECT_PRIORITY_HIT,       40, FIGHTING,     PHYSICAL, 100, 30,   0
	move SCARY_FACE,   EFFECT_SPEED_DOWN_2,        0, NORMAL,       STATUS,    90, 10,   0
	move FEINT_ATTACK, EFFECT_ALWAYS_HIT,         60, DARK,         PHYSICAL, 101, 20,   0
	move BUG_BUZZ,     EFFECT_SP_DEF_DOWN_HIT,    90, BUG,          SPECIAL,  100, 10,  10 ;SWEET_KISS, removed
	move BELLY_DRUM,   EFFECT_BELLY_DRUM,          0, NORMAL,       STATUS,   100, 10,   0
	move SLUDGE_BOMB,  EFFECT_POISON_HIT,         90, POISON,       SPECIAL,  100, 10,  30
	move MUD_SLAP,     EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,       SPECIAL,  100, 10, 100
	move OCTAZOOKA,    EFFECT_ACCURACY_DOWN_HIT,  65, WATER,        SPECIAL,   85, 10,  50
	move SPIKES,       EFFECT_SPIKES,              0, GROUND,       STATUS,   100, 20,   0
	move ZAP_CANNON,   EFFECT_PARALYZE_HIT,      100, ELECTRIC,     SPECIAL,   50,  5, 100
	move FORESIGHT,    EFFECT_FORESIGHT,           0, NORMAL,       STATUS,   100, 40,   0
	move DESTINY_BOND, EFFECT_DESTINY_BOND,        0, GHOST,        STATUS,   100,  5,   0
	move PERISH_SONG,  EFFECT_PERISH_SONG,         0, NORMAL,       STATUS,   100,  5,   0
	move ICY_WIND,     EFFECT_SPEED_DOWN_HIT,     55, ICE,          SPECIAL,   95, 15, 100
	move ICE_SHARD,    EFFECT_PRIORITY_HIT,       40, ICE,          PHYSICAL, 100, 30,   0 ;DETECT, removed
	move EARTH_POWER,  EFFECT_SP_DEF_DOWN_HIT,    90, GROUND,       SPECIAL,  100, 10,  10 ;BONE_RUSH, removed
	move LOCK_ON,      EFFECT_LOCK_ON,             0, NORMAL,       STATUS,   100,  5,   0
	move OUTRAGE,      EFFECT_RAMPAGE,            90, DRAGON,       PHYSICAL, 100, 15,   0
	move SANDSTORM,    EFFECT_SANDSTORM,           0, ROCK,         STATUS,   100, 10,   0
	move GIGA_DRAIN,   EFFECT_LEECH_HIT,          60, GRASS,        SPECIAL,  100,  5,   0
	move ENDURE,       EFFECT_ENDURE,              0, NORMAL,       STATUS,   100, 10,   0
	move CHARM,        EFFECT_ATTACK_DOWN_2,       0, NORMAL,       STATUS,   100, 20,   0
	move ROLLOUT,      EFFECT_ROLLOUT,            30, ROCK,         PHYSICAL,  90, 20,   0
	move FALSE_SWIPE,  EFFECT_FALSE_SWIPE,        40, NORMAL,       PHYSICAL, 100, 40,   0
	move SWAGGER,      EFFECT_SWAGGER,             0, NORMAL,       STATUS,    90, 15, 100
	move MUD_SHOT,     EFFECT_SPEED_DOWN_HIT,     55, GROUND,       SPECIAL,   95, 15, 100 ;MILK_DRINK, removed
	move SPARK,        EFFECT_PARALYZE_HIT,       65, ELECTRIC,     PHYSICAL, 100, 20,  30
	move FURY_CUTTER,  EFFECT_FURY_CUTTER,        40, BUG,          PHYSICAL,  95, 20,   0 ; OLD POW:10
	move STEEL_WING,   EFFECT_DEFENSE_UP_HIT,     70, STEEL,        PHYSICAL,  90, 25,  10
	move MEAN_LOOK,    EFFECT_MEAN_LOOK,           0, NORMAL,       STATUS,   100,  5,   0
	move ATTRACT,      EFFECT_ATTRACT,             0, NORMAL,       STATUS,   100, 15,   0
	move SLEEP_TALK,   EFFECT_SLEEP_TALK,          0, NORMAL,       STATUS,   100, 10,   0
	move HEAL_BELL,    EFFECT_HEAL_BELL,           0, NORMAL,       STATUS,   100,  5,   0
	move POWER_GEM,    EFFECT_NORMAL_HIT,         70, ROCK,         SPECIAL,  100, 20,   0 ;RETURN, removed
	move DISCHARGE,    EFFECT_PARALYZE_HIT,       80, ELECTRIC,     SPECIAL,  100, 15,  10 ;PRESENT, removed
	move HEX,          EFFECT_HEX,                50, GHOST,        SPECIAL,  100, 10,   0 ;FRUSTRATION, removed
	move SAFEGUARD,    EFFECT_SAFEGUARD,           0, NORMAL,       STATUS,   100, 25,   0
	move PAIN_SPLIT,   EFFECT_PAIN_SPLIT,          0, NORMAL,       STATUS,   100, 20,   0
	move SACRED_FIRE,  EFFECT_SACRED_FIRE,       100, FIRE,         PHYSICAL,  95,  5,  50
	move MAGNITUDE,    EFFECT_MAGNITUDE,           1, GROUND,       PHYSICAL, 100, 30,   0
	move DYNAMICPUNCH, EFFECT_CONFUSE_HIT,       100, FIGHTING,     PHYSICAL,  50,  5, 100
	move MEGAHORN,     EFFECT_NORMAL_HIT,        120, BUG,          PHYSICAL,  85, 10,   0
	move DRAGONBREATH, EFFECT_PARALYZE_HIT,       60, DRAGON,       SPECIAL,  100, 20,  30
	move BATON_PASS,   EFFECT_BATON_PASS,          0, NORMAL,       STATUS,   100, 40,   0
	move ENCORE,       EFFECT_ENCORE,              0, NORMAL,       STATUS,   100,  5,   0
	move PURSUIT,      EFFECT_PURSUIT,            40, DARK,         PHYSICAL, 100, 20,   0
	move RAPID_SPIN,   EFFECT_RAPID_SPIN,         20, NORMAL,       PHYSICAL, 100, 40,   0
	move SWEET_SCENT,  EFFECT_EVASION_DOWN_2,      0, NORMAL,       STATUS,   100, 20,   0 ; OLD EFFECT_EVASION_DOWN
	move IRON_TAIL,    EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,        PHYSICAL,  75, 15,  30
	move METAL_CLAW,   EFFECT_ATTACK_UP_HIT,      50, STEEL,        PHYSICAL,  95, 35,  10
	move ZEN_HEADBUTT, EFFECT_FLINCH_HIT,         80, PSYCHIC_TYPE, PHYSICAL,  90, 15,  20 ;VITAL_THROW, removed
	move MORNING_SUN,  EFFECT_MORNING_SUN,         0, NORMAL,       STATUS,   100,  5,   0
	move SYNTHESIS,    EFFECT_SYNTHESIS,           0, GRASS,        STATUS,   100,  5,   0
	move MOONLIGHT,    EFFECT_MOONLIGHT,           0, NORMAL,       STATUS,   100,  5,   0
	move HIDDEN_POWER, EFFECT_HIDDEN_POWER,        1, NORMAL,       SPECIAL,  100, 15,   0
	move CROSS_CHOP,   EFFECT_NORMAL_HIT,        100, FIGHTING,     PHYSICAL,  80,  5,   0
	move TWISTER,      EFFECT_TWISTER,            40, DRAGON,       SPECIAL,  100, 20,  20
	move RAIN_DANCE,   EFFECT_RAIN_DANCE,          0, WATER,        STATUS,   100,  5,   0 ; OLD ACC: 90
	move SUNNY_DAY,    EFFECT_SUNNY_DAY,           0, FIRE,         STATUS,   100,  5,   0 ; OLD ACC: 90
	move CRUNCH,       EFFECT_DEFENSE_DOWN_HIT,   80, DARK,         PHYSICAL, 100, 15,  20 ; OLD EFFECT_SP_DEF_DOWN_HIT
	move MIRROR_COAT,  EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE, SPECIAL,  100, 20,   0
	move CALM_MIND,    EFFECT_CALM_MIND,           0, PSYCHIC_TYPE, STATUS,   100, 20,   0 ;PSYCH_UP ;removed
	move EXTREMESPEED, EFFECT_PRIORITY_HIT,       80, NORMAL,       PHYSICAL, 100,  5,   0
	move ANCIENTPOWER, EFFECT_ALL_UP_HIT,         60, ROCK,         SPECIAL,  100,  5,  10
	move SHADOW_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,        SPECIAL,  100, 15,  20
	move FUTURE_SIGHT, EFFECT_FUTURE_SIGHT,       80, PSYCHIC_TYPE, SPECIAL,   90, 15,   0
	move BRICK_BREAK,  EFFECT_DEFENSE_DOWN_HIT,   70, FIGHTING,     PHYSICAL, 100, 15,  20 ;BRICK_BREAK, removed
	move WHIRLPOOL,    EFFECT_TRAP_TARGET,        20, WATER,        SPECIAL,   70, 15,   0 ; OLD POW:15
	move DARK_PULSE,   EFFECT_FLINCH_HIT,         80, DARK,         SPECIAL,  100, 15,  20 ;BEAT_UP, removed
	move FIRE_FANG,    EFFECT_FANG_HIT,           65, FIRE,         PHYSICAL, 100, 15,  10 ;NEW
	move ICE_FANG,     EFFECT_FANG_HIT,           65, ICE,          PHYSICAL, 100, 15,  10 ;NEW
	move THUNDER_FANG, EFFECT_FANG_HIT,           65, ELECTRIC,     PHYSICAL, 100, 15,  10 ;NEW
	move STRUGGLE,     EFFECT_RECOIL_HIT,         50, NORMAL,       PHYSICAL, 100,  1,   0 ; $ff
	assert_table_length NUM_ATTACKS
