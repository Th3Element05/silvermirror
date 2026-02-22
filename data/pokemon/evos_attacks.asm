SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAYEVE, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"


BulbasaurEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 19, RAZOR_LEAF
	db 21, SWEET_SCENT
	db 25, GROWTH
	db 27, DOUBLE_EDGE
	db 31, SEED_BOMB ;WORRY_SEED
	db 33, SYNTHESIS
	db 37, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 36, SEED_BOMB ;WORRY_SEED
	db 39, SYNTHESIS
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 32, PETAL_DANCE ; evolution move?
	db 39, SEED_BOMB ;WORRY_SEED
	db 45, SYNTHESIS
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, DRAGON_RAGE
	db 19, SCARY_FACE
;	db 25, FIRE_FANG
	db 28, SLASH
	db 34, FLAMETHROWER
	db 37, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 17, DRAGON_RAGE
	db 21, SCARY_FACE
;	db 28, FIRE_FANG
	db 32, SLASH
	db 39, FLAMETHROWER
	db 43, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, DRAGON_CLAW
;	db 1, SHADOW_CLAW
;	db 1, AIR_SLICE
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 17, DRAGON_RAGE
	db 21, SCARY_FACE
;	db 28, FIRE_FANG
	db 32, SLASH
	db 36, WING_ATTACK
	db 42, FLAMETHROWER
	db 49, FIRE_SPIN
;	db 59, ;HEAT_WAVE
;	db 66, ;FLARE_BLITZ
	db 0 ; no more level-up moves

SquirtleEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER ;TAIL_WHIP, removed
	db 7, WATER_GUN ;BUBBLE, removed
	db 10, DEFENSE_CURL ;WITHDRAW, removed
;	db 13, AQUA_JET ;WATER_GUN
	db 16, BITE
	db 19, RAPID_SPIN
	db 22, PROTECT
;	db 25, WATER_PULSE
;	db 28, AQUA_TAIL
;	db 31, SKULL_BASH, removed
	db 34, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, WATER_GUN ;BUBBLE, removed
	db 10, DEFENSE_CURL ;WITHDRAW, removed
;	db 13, AQUA_JET ;WATER_GUN
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
;	db 28, WATER_PULSE
;	db 32, AQUA_TAIL
;	db 36, SKULL_BASH, removed
	db 40, RAIN_DANCE
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, FLASH_CANNON
	db 1, TACKLE
	db 4, LEER
	db 7, WATER_GUN ;BUBBLE, removed
	db 10, DEFENSE_CURL ;WITHDRAW, removed
;	db 13, AQUA_JET ;WATER_GUN
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
;	db 28, WATER_PULSE
;	db 32, AQUA_TAIL
;	db 39, SKULL_BASH, removed
	db 46, RAIN_DANCE
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
;	db 15, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 12, POISONPOWDER
	db 12, STUN_SPORE
	db 12, SLEEP_POWDER
	db 16, GUST
	db 18, SUPERSONIC
;	db 22, ;WHIRLWIND, removed (hypnosis?)
	db 24, PSYBEAM
;	db 28, SILVER_WIND
;	db 30, ;TAILWIND
	db 34, SAFEGUARD
;	db 36, ;CAPTIVATE
;	db 40, BUG_BUZZ
	db 0 ; no more level-up moves

WeedleEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
;	db 15, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, FURY_STRIKES ;FURY_ATTACK, removed
	db 10, FURY_STRIKES ;FURY_ATTACK, removed
	db 13, FOCUS_ENERGY
;	db 16, POISON_TAIL ;TWINEEDLE, removed
	db 19, RAGE
	db 22, PURSUIT
;	db 25, ;TOXIC_SPIKES
	db 28, PIN_MISSILE
	db 31, AGILITY
	db 34, FEINT_ATTACK ;ASSURANCE
;	db 37, POISON_JAB
	db 40, FLAIL ;ENDEAVOR
	db 0 ; no more level-up moves

PidgeyEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ;SAND_ATTACK, removed
	db 9, GUST
	db 13, QUICK_ATTACK
;	db 17, ;WHIRLWIND, removed (rage?)
	db 21, TWISTER
;	db 25, ;FEATHERDANCE
	db 29, AGILITY
	db 33, WING_ATTACK
	db 37, ROOST
;	db 41, ;TAILWIND
	db 45, STEEL_WING ;MIRROR_MOVE, removed
;	db 49, AIR_SLASH
	db 0 ; no more level-up moves

PidgeottoEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ;SAND_ATTACK, removed
	db 9, GUST
	db 13, QUICK_ATTACK
;	db 17, ;WHIRLWIND, removed (rage?)
	db 22, TWISTER
;	db 27, ;FEATHERDANCE
	db 32, AGILITY
	db 37, WING_ATTACK
	db 42, ROOST
;	db 47, ;TAILWIND
	db 52, STEEL_WING ;MIRROR_MOVE, removed
;	db 57, AIR_SLASH
	db 0 ; no more level-up moves

PidgeotEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ;SAND_ATTACK, removed
	db 9, GUST
	db 13, QUICK_ATTACK
;	db 17, ;WHIRLWIND, removed (rage?)
	db 22, TWISTER
;	db 27, ;FEATHERDANCE
	db 32, AGILITY
	db 38, WING_ATTACK
	db 44, ROOST
;	db 50, ;TAILWIND
	db 56, STEEL_WING ;MIRROR_MOVE, removed
;	db 62, AIR_SLASH
	db 0 ; no more level-up moves

RattataEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
;	db 19, ;SUCKER_PUNCH
	db 22, CRUNCH
;	db 25, ;ASSURANCE
	db 28, SUPER_FANG
	db 31, DOUBLE_EDGE
	db 34, FLAIL ;ENDEAVOR
	db 0 ; no more level-up moves

RaticateEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
;	db 19, ;SUCKER_PUNCH
	db 20, SCARY_FACE
	db 24, CRUNCH
;	db 29, ;ASSURANCE
	db 34, SUPER_FANG
	db 39, DOUBLE_EDGE
	db 44, FLAIL ;ENDEAVOR
	db 0 ; no more level-up moves

SpearowEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, LEER
	db 9, FURY_STRIKES ;FURY_ATTACK, removed
	db 13, PURSUIT
;	db 17, AERIAL_ACE
	db 21, STEEL_WING ;MIRROR_MOVE, removed
	db 25, AGILITY
;	db 29, ;ASSURANCE
	db 33, ROOST
	db 37, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ;PLUCK
	db 1, GROWL
	db 1, PECK
	db 5, LEER
	db 9, FURY_STRIKES ;FURY_ATTACK, removed
	db 13, PURSUIT
;	db 17, AERIAL_ACE
	db 23, STEEL_WING ;MIRROR_MOVE, removed
	db 29, AGILITY
;	db 35, ;ASSURANCE
	db 41, ROOST
	db 47, DRILL_PECK
	db 0 ; no more level-up moves

EkansEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, LEER
	db 1, WRAP
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
;	db 25, ;STOCKPILE, SWALLOW, SPIT_UP
;	db 28, MUD_BOMB
;	db 33, ;GASTRO_ACID
	db 36, HAZE
;	db 41, POISON_JAB ;GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ICE_FANG
;	db 1, THUNDER_FANG
;	db 1, FIRE_FANG
	db 1, LEER
	db 1, WRAP
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 22, CRUNCH
;	db 28, ;STOCKPILE, SWALLOW, SPIT_UP
;	db 34, ;MUD_BOMB
;	db 42, ;GASTRO_ACID
	db 48, HAZE
;	db 56, POISON_JAB ;GUNK_SHOT
	db 0 ; no more level-up moves

PikachuEvosAttacks: ;GEN4
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 5, LEER ;TAIL_WHIP, removed
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 14, THUNDERSHOCK ;duplicate for wild?
	db 18, DOUBLE_TEAM
	db 21, BODY_SLAM ;SLAM, removed
	db 26, THUNDERBOLT
	db 34, AGILITY
;	db 37, ;DISCHARGE
	db 42, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, CHARM ;pichu1
;	db 1, NASTY_PLOT ;pichu18
	db 1, THUNDERSHOCK
	db 1, LEER ;TAIL_WHIP, removed
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 7, MUD_SLAP ;SAND_ATTACK, removed
	db 9, POISON_STING
	db 13, RAPID_SPIN
	db 15, SWIFT
	db 19, FURY_STRIKES ;FURY_SWIPES, removed
	db 21, ROLLOUT
	db 25, SLASH
;	db 27, ;SAND_TOMB
	db 31, FURY_CUTTER
;	db 33, ;GYRO_BALL
	db 37, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 7, MUD_SLAP ;SAND_ATTACK, removed
	db 9, POISON_STING
	db 13, RAPID_SPIN
	db 15, SWIFT
	db 19, FURY_STRIKES ;FURY_SWIPES, removed
	db 21, ROLLOUT
	db 22, CRUSH_CLAW
	db 28, SLASH
;	db 33, ;SAND_TOMB
	db 40, FURY_CUTTER
;	db 45, ;GYRO_BALL
	db 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ;TAIL_WHIP, removed
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_STRIKES ;FURY_SWIPES, removed
	db 21, BITE
;	db 25, ;HELPING_HAND
;	db 31, ;TOXIC_SPIKES
;	db 33, ;FLATTER
	db 37, CRUNCH
;	db 43, ;CAPTIVATE
;	db 45, POISON_FANG
	db 0 ; no more level-up moves

NidorinaEvosAttacks: ;GEN4
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ;TAIL_WHIP, removed
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_STRIKES ;FURY_SWIPES, removed
	db 23, BITE
;	db 28, ;HELPING_HAND
;	db 35, ;TOXIC_SPIKES
;	db 38, ;FLATTER
	db 43, CRUNCH
;	db 50, ;CAPTIVATE
;	db 48, POISON_FANG
	db 0 ; no more level-up moves

NidoqueenEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ;TAIL_WHIP, removed
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, BODY_SLAM
;	db 43, EARTH_POWER
;	db 58, CLOSE_COMBAT ;SUPERPOWER
	db 0 ; no more level-up moves

NidoranMEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_STRIKES ;FURY_ATTACK, removed
	db 21, HORN_ATTACK
;	db 25, ;HELPING_HAND
;	db 31, ;TOXIC_SPIKES
;	db 33, ;FLATTER
;	db 37, POISON_JAB
;	db 43, ;CAPTIVATE
	db 45, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks: ;GEN4
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_STRIKES ;FURY_ATTACK, removed
	db 23, HORN_ATTACK
;	db 28, ;HELPING_HAND
;	db 35, ;TOXIC_SPIKES
;	db 38, ;FLATTER
;	db 43, POISON_JAB
;	db 50, ;CAPTIVATE
	db 58, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
;	db 43, EARTH_POWER
	db 58, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks: ;GEN4
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 1, GROWL
	db 4, ENCORE
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
;	db 16, ;FOLLOW_ME    ;support   ;DIZZY_PUNCH
	db 19, MINIMIZE
;	db 22, WAKE_UP_SLAP
;	db 25, ;COSMIC_POWER ;def stats ;REFLECT, LIGHT_SCREEN
;	db 28, ;LUCKY_CHANT  ;no crit   ;CHARM
	db 31, METRONOME
;	db 34, ;GRAVITY      ;no fly    ;EXTRASENSORY
	db 37, MOONLIGHT
	db 40, LIGHT_SCREEN             ;TRI_ATTACK
;	db 43, ;METEOR_MASH  ;steel     ;FLASH_CANNON
;	db 56, ;HEALING_WISH ;faintheal ;AROMATHERAPY
	db 0 ; no more level-up moves

ClefableEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, MOONLIGHT
	db 1, SING
	db 1, DOUBLESLAP
	db 1, MINIMIZE
	db 1, METRONOME
	db 0 ; no more level-up moves

VulpixEvosAttacks: ;GEN4
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 4, LEER ;TAIL_WHIP, removed
	db 7, ROAR
	db 11, QUICK_ATTACK
;	db 14, WILL_O_WISP
	db 17, CONFUSE_RAY
;	db 21, ;IMPRISON
	db 24, FLAMETHROWER
	db 27, SAFEGUARD
;	db 31, ;PAYBACK
	db 34, FIRE_SPIN
;	db 37, ;CAPTIVATE
;	db 41, ;GRUDGE
;	db 44, ;EXTRASENSORY
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, NASTY_PLOT
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 0 ; no more level-up moves

JigglypuffEvosAttacks: ;GEN4
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, TACKLE ;POUND, removed
	db 13, DISABLE
	db 17, ROLLOUT
	db 21, DOUBLESLAP
	db 25, REST
	db 29, BODY_SLAM
	db 33, GYRO_BALL
;	db 37, WAKE_UP_SLAP
;	db 41, ;MIMIC, removed
	db 45, LOUD_VOICE ;HYPER_VOICE
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:; GEN4
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
;	db 9, ASTONISH
	db 13, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
;	db 25, AIR_CUTTER
	db 29, MEAN_LOOK
;	db 33, POISON_FANG
	db 37, HAZE
;	db 41, AIR_SLASH
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
;	db 9, ASTONISH
	db 13, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
;	db 27, AIR_CUTTER
	db 33, MEAN_LOOK
;	db 39, POISON_FANG
	db 45, HAZE
;	db 51, AIR_SLASH
	db 0 ; no more level-up moves

OddishEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, MEGA_DRAIN
;	db 25, ;LUCKY_CHANT
;	db 29, ;NATURAL_GIFT
	db 33, MOONLIGHT
	db 37, GIGA_DRAIN
	db 41, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks: ;GEN4
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 23, MEGA_DRAIN
;	db 29, ;LUCKY_CHANT
;	db 35, ;NATURAL_GIFT
	db 41, MOONLIGHT
	db 47, GIGA_DRAIN
	db 53, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT ;AROMATHERAPY
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 53, PETAL_DANCE
	db 65, SOLARBEAM
	db 0 ; no more level-up moves

ParasEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, LEECH_LIFE
	db 17, SPORE
	db 22, SLASH
	db 27, GROWTH
	db 33, GIGA_DRAIN
	db 38, SWEET_SCENT ;AROMATHERAPY
;	db 43, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, CROSS_POISON
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, LEECH_LIFE
	db 17, SPORE
	db 22, SLASH
	db 30, GROWTH
	db 39, GIGA_DRAIN
	db 47, SWEET_SCENT ;AROMATHERAPY
;	db 55, X_SCISSOR
	db 0 ; no more level-up moves

VenonatEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, LEECH_LIFE
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
;	db 35, ;SIGNAL_BEAM
;	db 37, ZEN_HEADBUTT
;	db 41, POISON_FANG
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, SILVER_WIND
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, LEECH_LIFE
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 31, GUST
;	db 37, ;SIGNAL_BEAM
;	db 41, ZEN_HEADBUTT
;	db 47, POISON_FANG
	db 55, PSYCHIC_M
;	db 59, BUG_BUZZ
	db 0 ; no more level-up moves

DiglettEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, MUD_SLAP ;SAND_ATTACK, removed
	db 4, GROWL
;	db 7, ASTONISH
	db 12, MAGNITUDE
	db 15, MUD_SLAP
	db 18, DIG
;	db 23, ;SUCKER_PUNCH
;	db 26, EARTH_POWER
;	db 29, ;MUD_BOMB
	db 34, SLASH
	db 37, EARTHQUAKE
	db 40, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, NIGHT_SLASH
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, MUD_SLAP ;SAND_ATTACK, removed
	db 4, GROWL
;	db 7, ASTONISH
	db 12, MAGNITUDE
	db 15, MUD_SLAP
	db 18, DIG
;	db 23, ;SUCKER_PUNCH
;	sb 26, ;SAND_TOMB
;	db 28, EARTH_POWER
;	db 33, ;MUD_BOMB
	db 40, SLASH
	db 45, EARTHQUAKE
	db 50, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, PAY_DAY ;FAKE_OUT
	db 14, FURY_STRIKES ;FURY_SWIPES, removed
	db 17, SCREECH
	db 22, FEINT_ATTACK
;	db 25, ;TAUNT
;	db 30, PAY_DAY
	db 33, SLASH
;	db 38, NASTY_PLOT
;	db 41, ;ASSURANCE
;	db 46, ;CAPTIVATE
;	db 49, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, THIEF ;SWITCHEROO
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, PAY_DAY ;FAKE_OUT
	db 14, FURY_STRIKES ;FURY_SWIPES, removed
	db 17, SCREECH
	db 22, FEINT_ATTACK
;	db 25, ;TAUNT
;	db 32, POWER_GEM
	db 37, SLASH
;	db 44, NASTY_PLOT
;	db 49, ;ASSURANCE
;	db 56, ;CAPTIVATE
;	db 61, NIGHT_SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, LEER ;TAIL_WHIP, removed
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
;	db 22, ;WATER_PULSE
	db 27, FURY_STRIKES ;FURY_SWIPES, removed
	db 31, SCREECH
	db 35, PSYBEAM ;PSYCH_UP, removed
;	db 40, ZEN_HEADBUTT
	db 44, AMNESIA
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, LEER ;TAIL_WHIP, removed
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
;	db 22, ;WATER_PULSE
	db 27, FURY_STRIKES ;FURY_SWIPES, removed
	db 31, SCREECH
	db 37, PSYBEAM ;PSYCH_UP, removed
;	db 44, ZEN_HEADBUTT
	db 50, AMNESIA
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, KARATE_CHOP
	db 13, FURY_STRIKES ;FURY_SWIPES, removed
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, LOW_SWEEP ;ASSURANCE
	db 33, SWAGGER
	db 37, CROSS_CHOP
	db 41, THRASH
;	db 45, ;PUNISHMENT
;	db 49, ;CLOSE_COMBAT
	db 0 ; no more level-up moves

PrimeapeEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, KARATE_CHOP
	db 13, FURY_STRIKES ;FURY_SWIPES, removed
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, LOW_SWEEP ;ASSURANCE
	db 28, RAGE
	db 35, SWAGGER
	db 41, CROSS_CHOP
	db 47, THRASH
;	db 53, ;PUNISHMENT
;	db 59, ;CLOSE_COMBAT
	db 0 ; no more level-up moves

GrowlitheEvosAttacks: ;GEN4
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, BITE
	db 6, EMBER
	db 9, LEER
;	db 14, ;ODOR_SLEUTH
;	db 17, ;HELPING_HAND
	db 20, FLAME_WHEEL
	db 25, FLAIL ;REVERSAL, removed
;	db 28, FIRE_FANG
	db 31, TAKE_DOWN
	db 34, FLAMETHROWER
	db 39, AGILITY
	db 42, CRUNCH
;	db 45, ;HEAT_WAVE
;	db 48, ;FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, BITE
;	db 1, THUNDER_FANG
;	db 1, FIRE_FANG
;	db 1, ;ODOR_SLEUTH
	db 39, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 8, HYPNOSIS
;	db 11, WATER_GUN ;L1
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
;	db 28, ;MUD_SHOT
	db 31, BELLY_DRUM
;	db 35, ;WAKE_UP_SLAP
	db 38, HYDRO_PUMP
;	db 41, ;MUD_BOMB
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks: ;GEN4
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 8, HYPNOSIS
;	db 11, WATER_GUN ;L1
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 27, BUBBLEBEAM
;	db 32, ;MUD_SHOT
	db 37, BELLY_DRUM
;	db 43, ;WAKE_UP_SLAP
	db 48, HYDRO_PUMP
;	db 53, ;MUD_BOMB
	db 0 ; no more level-up moves

PoliwrathEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 43, DYNAMICPUNCH
	db 53, LOCK_ON ;MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks: ;GEN4
	db EVOLVE_TRADE, -1, ALAKAZAM
	db EVOLVE_ITEM, LINKING_CORD, ALAKAZAM
AlakazamEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, FLASH ;KINESIS, removed
	db 16, CONFUSION
	db 18, DISABLE
	db 22, FORESIGHT ;MIRACLE_EYE
	db 24, PSYBEAM
	db 28, REFLECT
	db 30, RECOVER
;	db 34, ;PSYCHO_CUT
	db 36, CALM_MIND ;ROLE_PLAY
	db 40, PSYCHIC_M
	db 42, FUTURE_SIGHT
	db 46, THIEF ;TRICK
	db 0 ; no more level-up moves

;AlakazamEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, TELEPORT
;	db 1, FLASH ;KINESIS, removed
;	db 16, CONFUSION
;	db 18, DISABLE
;	db 22, FORESIGHT ;MIRACLE_EYE
;	db 24, PSYBEAM
;	db 28, REFLECT
;	db 30, RECOVER
;;	db 34, ;PSYCHO_CUT
;	db 36, CALM_MIND ;ROLE_PLAY
;	db 40, PSYCHIC_M
;	db 42, FUTURE_SIGHT
;	db 46, THIEF ;TRICK
;	db 0 ; no more level-up moves

MachopEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, KARATE_CHOP ;LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 10, LOW_SWEEP ;KARATE_CHOP
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
;	db 22, ;REVENGE
;	db 25, BRICK_BREAK ;VITAL_THROW, removed
	db 31, SUBMISSION
;	db 34, WAKE_UP_SLAP
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 46, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks: ;GEN4
	db EVOLVE_TRADE, -1, MACHAMP
	db EVOLVE_ITEM, LINKING_CORD, MACHAMP
MachampEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, KARATE_CHOP ;LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 10, LOW_SWEEP ;KARATE_CHOP
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
;	db 22, ;REVENGE
;	db 25, BRICK_BREAK ;VITAL_THROW, removed
	db 32, SUBMISSION
;	db 36, WAKE_UP_SLAP
	db 40, CROSS_CHOP
	db 44, SCARY_FACE
	db 51, DYNAMICPUNCH
	db 0 ; no more level-up moves

;MachampEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, KARATE_CHOP ;LOW_KICK
;	db 1, LEER
;	db 7, FOCUS_ENERGY
;	db 10, LOW_SWEEP ;KARATE_CHOP
;	db 13, FORESIGHT
;	db 19, SEISMIC_TOSS
;;	db 22, ;REVENGE
;;	db 25, BRICK_BREAK ;VITAL_THROW, removed
;	db 32, SUBMISSION
;;	db 36, WAKE_UP_SLAP
;	db 40, CROSS_CHOP
;	db 44, SCARY_FACE
;	db 51, DYNAMICPUNCH
;	db 0 ; no more level-up moves

BellsproutEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
;	db 27, ;KNOCK_OFF
	db 29, SWEET_SCENT
;	db 35, ;GASTRO_ACID
	db 39, RAZOR_LEAF
	db 41, BODY_SLAM ;SLAM, removed
;	db 47, ;WRING_OUT
	db 0 ; no more level-up moves

WeepinbellEvosAttacks: ;GEN4
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
;	db 27, ;KNOCK_OFF
	db 29, SWEET_SCENT
;	db 35, ;GASTRO_ACID
	db 39, RAZOR_LEAF
	db 41, BODY_SLAM ;SLAM, removed
;	db 47, ;WRING_OUT
	db 0 ; no more level-up moves

VictreebelEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
;	db 47, ;LEAF_STORM
;	db 47, LEAF_BLADE
	db 0 ; no more level-up moves

TentacoolEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WRAP ;CONSTRICT, removed
	db 12, ACID
;	db 15, ;TOXIC_SPIKES
	db 19, BUBBLEBEAM
	db 22, WRAP
	db 26, BARRIER
;	db 29, WATER_PULSE
;	db 33, POISON_JAB
	db 36, SCREECH
	db 40, HYDRO_PUMP
;	db 43, ;WRING_OUT
	db 0 ; no more level-up moves

TentacruelEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WRAP ;CONSTRICT, removed
	db 12, ACID
;	db 15, ;TOXIC_SPIKES
	db 19, BUBBLEBEAM
	db 22, WRAP
	db 26, BARRIER
;	db 29, WATER_PULSE
;	db 36, POISON_JAB
	db 42, SCREECH
	db 49, HYDRO_PUMP
;	db 55, ;WRING_OUT
	db 0 ; no more level-up moves

GeodudeEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ;MUD_SPORT
	db 8, AGILITY ;ROCK_POLISH
	db 11, ROCK_THROW
	db 15, MAGNITUDE
	db 18, SELFDESTRUCT
	db 22, ROLLOUT
;	db 25, ROCK_BLAST
	db 29, EARTHQUAKE
	db 32, SELFDESTRUCT ;EXPLOSION
	db 36, DOUBLE_EDGE
;	db 39, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks: ;GEN4
	db EVOLVE_TRADE, -1, GOLEM
	db EVOLVE_ITEM, LINKING_CORD, GOLEM
GolemEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ;MUD_SPORT
	db 8, AGILITY ;ROCK_POLISH
	db 11, ROCK_THROW
	db 15, MAGNITUDE
	db 18, SELFDESTRUCT
	db 22, ROLLOUT
;	db 27, ROCK_BLAST
	db 33, EARTHQUAKE
	db 38, SELFDESTRUCT ;EXPLOSION
	db 44, DOUBLE_EDGE
;	db 49, STONE_EDGE
	db 0 ; no more level-up moves

;GolemEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, TACKLE
;	db 1, DEFENSE_CURL
;	db 4, MUD_SLAP ;MUD_SPORT
;	db 8, AGILITY ;ROCK_POLISH
;	db 11, ROCK_THROW
;	db 15, MAGNITUDE
;	db 18, SELFDESTRUCT
;	db 22, ROLLOUT
;;	db 27, ROCK_BLAST
;	db 33, EARTHQUAKE
;	db 38, SELFDESTRUCT ;EXPLOSION
;	db 44, DOUBLE_EDGE
;;	db 49, STONE_EDGE
;	db 0 ; no more level-up moves

PonytaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 6, LEER ;TAIL_WHIP, removed
	db 10, EMBER
	db 15, FLAME_WHEEL
	db 19, STOMP
	db 24, FIRE_SPIN
	db 28, TAKE_DOWN
	db 33, AGILITY
	db 37, FIRE_BLAST
;	db 42, BOUNCE
;	db 46, ;FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, POISON_JAB
	db 1, MEGAHORN
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 6, LEER ;TAIL_WHIP, removed
	db 10, EMBER
	db 15, FLAME_WHEEL
	db 19, STOMP
	db 24, FIRE_SPIN
	db 28, TAKE_DOWN
	db 33, AGILITY
	db 37, FIRE_BLAST
;	db 47, BOUNCE
;	db 56, ;FLARE_BLITZ
	db 0 ; no more level-up moves

SlowpokeEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
;	db 1, ;YAWN
	db 1, TACKLE
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
;	db 29, WATER_PULSE
;	db 34, ZEN_HEADBUTT
	db 39, RECOVER ;SLACK_OFF
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 53, RAIN_DANCE
	db 57, BELLY_DRUM ;PSYCH_UP, removed
	db 0 ; no more level-up moves

SlowbroEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, CURSE
;	db 1, ;YAWN
	db 1, TACKLE
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
;	db 29, ;WATER_PULSE
;	db 34, ZEN_HEADBUTT
	db 37, DEFENSE_CURL
	db 41, RECOVER ;SLACK_OFF
	db 47, AMNESIA
	db 54, PSYCHIC_M
	db 61, RAIN_DANCE
	db 67, BELLY_DRUM ;PSYCH_UP, removed
	db 0 ; no more level-up moves

MagnemiteEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
;	db 1, METAL_SOUND
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, LOUD_VOICE ;SONICBOOM, removed
	db 17, THUNDER_WAVE
	db 22, SPARK
	db 27, LOCK_ON
;	db 30, MAGNET_BOMB
	db 33, SCREECH
;	db 38, ;DISCHARGE
;	db 43, ;MIRROR_SHOT
;	db 46, ;MAGNET_RISE
;	db 49, ;GYRO_BALL
	db 54, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks: ;GEN4
;	db EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
;	db EVOLVE_LOCATION, POWER_PLANT, MAGNEZONE
;MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
;	db 1, METAL_SOUND
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, LOUD_VOICE ;SONICBOOM, removed
	db 17, THUNDER_WAVE
	db 22, SPARK
	db 27, LOCK_ON
;	db 30, MAGNET_BOMB
	db 34, SCREECH
;	db 40, ;DISCHARGE
;	db 46, ;MIRROR_SHOT
;	db 50, ;MAGNET_RISE
;	db 54, ;GYRO_BALL
	db 60, ZAP_CANNON
	db 0 ; no more level-up moves

;MagnezoneEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, TRI_ATTACK
;;	db 1, METAL_SOUND
;	db 1, TACKLE
;	db 6, THUNDERSHOCK
;	db 11, SUPERSONIC
;	db 14, LOUD_VOICE ;SONICBOOM, removed
;	db 17, THUNDER_WAVE
;	db 22, SPARK
;	db 27, LOCK_ON
;;	db 30, MAGNET_BOMB
;	db 34, SCREECH
;;	db 40, ;DISCHARGE
;;	db 46, ;MIRROR_SHOT
;;	db 50, ;MAGNET_RISE
;;	db 54, ;GYRO_BALL
;	db 60, ZAP_CANNON
;	db 0 ; no more level-up moves

FarfetchDEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, POISON_JAB
	db 1, PECK
	db 1, MUD_SLAP ;SAND_ATTACK, removed
	db 1, LEER
	db 1, FURY_CUTTER
	db 7, FURY_STRIKES ;FURY_ATTACK, removed
	db 9, THIEF ;KNOCK_OFF
;	db 13, AERIAL_ACE
	db 19, SLASH
;	db 21, AIR_CUTTER
	db 25, SWORDS_DANCE
	db 31, AGILITY
;	db 33, NIGHT_SLASH
;	db 37, AIR_SLASH
	db 43, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_STRIKES ;FURY_ATTACK, removed
	db 19, PURSUIT
	db 23, LOUD_VOICE ;UPROAR
;	db 28, ;ACCUPRESSURE
	db 32, DOUBLESLAP ;DOUBLE_HIT
	db 37, AGILITY
	db 41, DRILL_PECK
	db 46, FLAIL ;ENDEAVOR
	db 0 ; no more level-up moves

DodrioEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_STRIKES ;FURY_ATTACK, removed
	db 19, PURSUIT
	db 23, LOUD_VOICE ;UPROAR
;	db 28, ;ACCUPRESSURE
	db 34, TRI_ATTACK
	db 41, AGILITY
	db 47, DRILL_PECK
	db 54, FLAIL ;ENDEAVOR
	db 0 ; no more level-up moves

SeelEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
;	db 7, ;WATER_SPORT
	db 11, ICY_WIND
	db 13, ENCORE
;	db 17, ICE_SHARD
	db 21, REST
;	db 23, ;AQUA_RING
	db 27, AURORA_BEAM
;	db 31, AQUA_JET
;	db 33, ;BRINE
	db 37, TAKE_DOWN
;	db 41, ;DIVE
;	db 43, AQUA_TAIL
	db 47, ICE_BEAM
	db 51, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
;	db 7, SIGNAL_BEAM
	db 11, ICY_WIND
	db 13, ENCORE
;	db 17, ICE_SHARD
	db 21, REST
;	db 23, ;AQUA_RING
	db 27, AURORA_BEAM
;	db 31, AQUA_JET
;	db 33, ;BRINE
	db 34, HORN_DRILL ;SHEER_COLD
	db 37, TAKE_DOWN
;	db 41, ;DIVE
;	db 43, AQUA_TAIL
	db 47, ICE_BEAM
	db 51, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, TACKLE ;POUND, removed
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 17, MINIMIZE
	db 20, SLUDGE
;	db 23, ;MUD_BOMB
;	db 28, ;FLING
	db 33, SCREECH
	db 39, BARRIER ;ACID_ARMOR, removed
	db 44, SLUDGE_BOMB ;GUNK_SHOT
;	db 49, ;MEMENTO
	db 0 ; no more level-up moves

MukEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, TACKLE ;POUND, removed
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 17, MINIMIZE
	db 20, SLUDGE
;	db 23, ;MUD_BOMB
;	db 28, ;FLING
	db 33, SCREECH
	db 44, BARRIER ;ACID_ARMOR, removed
	db 54, SLUDGE_BOMB ;GUNK_SHOT
;	db 65, ;MEMENTO
	db 0 ; no more level-up moves

ShellderEvosAttacks: ;GEN4
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL ;WITHDRAW, removed
	db 8, SUPERSONIC
;	db 13, ICICLE_SPEAR
	db 16, PROTECT
	db 20, LEER
	db 25, WHIRLPOOL ;CLAMP, removed
;	db 28, ICE_SHARD
	db 32, AURORA_BEAM
	db 37, WATERFALL ;WHIRLPOOL
;	db 40, ;IRON_DEFENSE
;	db 44, ;BRINE
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ;TOXIC_SPIKES
	db 1, DEFENSE_CURL ;WITHDRAW, removed
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 28, SPIKES
	db 40, ICICLE_SPEAR ;SPIKE_CANNON, removed
	db 0 ; no more level-up moves

GastlyEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ;SPITE, removed
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
;	db 22, ;SUCKER_PUNCH
;	db 26, ;PAYBACK
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
;	db 36, DARK_PULSE
	db 40, DESTINY_BOND
	db 43, NIGHTMARE
	db 0 ; no more level-up moves

HaunterEvosAttacks: ;silvermirror modified
	db EVOLVE_TRADE, -1, GENGAR
	db EVOLVE_ITEM, LINKING_CORD, GENGAR
GengarEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ;SPITE, removed
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
;	db 22, ;SUCKER_PUNCH
;	db 25, SHADOW_PUNCH
;	db 28, ;PAYBACK
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
;	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, NIGHTMARE
	db 0 ; no more level-up moves

;GengarEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, HYPNOSIS
;	db 1, LICK
;	db 5, DISABLE ;SPITE, removed
;	db 8, MEAN_LOOK
;	db 12, CURSE
;	db 15, NIGHT_SHADE
;	db 19, CONFUSE_RAY
;;	db 22, ;SUCKER_PUNCH
;;	db 25, SHADOW_PUNCH
;;	db 28, ;PAYBACK
;	db 33, SHADOW_BALL
;	db 39, DREAM_EATER
;;	db 44, DARK_PULSE
;	db 50, DESTINY_BOND
;	db 55, NIGHTMARE
;	db 0 ; no more level-up moves

OnixEvosAttacks: ;GEN4
	db EVOLVE_TRADE, METAL_COAT, STEELIX
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, WRAP ;BIND, removed
	db 6, SCREECH
	db 9, ROCK_THROW
	db 14, RAGE
;	db 17, ;ROCK_TOMB
	db 22, SANDSTORM
	db 25, BODY_SLAM ;SLAM, removed
;	db 30, ROCK_POLISH
	db 33, DRAGONBREATH
	db 38, IRON_TAIL
;	db 41, ;SAND_TOMB
	db 46, DOUBLE_EDGE
;	db 49, STONE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 1, HYPNOSIS
	db 7, DISABLE
	db 9, CONFUSION
	db 15, HEADBUTT
	db 18, SMOG ;POISON_GAS, removed
	db 21, BULK_UP ;MEDITATE, removed
	db 26, PSYBEAM
	db 29, BARRIER ;PSYCH_UP, removed
	db 32, HEADBUTT ;dupe
	db 37, SWAGGER
	db 40, PSYCHIC_M
;	db 43, NASTY_PLOT
;	db 50, ZEN_HEADBUTT
	db 53, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, NIGHTMARE
	db 1, THIEF ;SWITCHEROO
	db 1, TACKLE ;POUND, removed
	db 1, HYPNOSIS
	db 7, DISABLE
	db 9, CONFUSION
	db 15, HEADBUTT
	db 18, SMOG ;POISON_GAS, removed
	db 21, BULK_UP ;MEDITATE, removed
	db 28, PSYBEAM
	db 33, BARRIER ;PSYCH_UP, removed
	db 38, HEADBUTT ;dupe
	db 45, SWAGGER
	db 50, PSYCHIC_M
;	db 55, NASTY_PLOT
;	db 64, ZEN_HEADBUTT
	db 69, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 5, CRUSH_CLAW ;VICEGRIP, removed
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
;	db 19, ;MUD_SHOT
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, PROTECT
	db 31, GUILLOTINE
	db 35, BODY_SLAM ;SLAM, removed
;	db 39, ;BRINE
	db 41, CRABHAMMER
	db 45, FLAIL
	db 0 ; no more level-up moves

KinglerEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 5, CRUSH_CLAW ;VICEGRIP, removed
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
;	db 19, ;MUD_SHOT
	db 21, METAL_CLAW
	db 25, STOMP
	db 32, PROTECT
	db 37, GUILLOTINE
	db 44, BODY_SLAM ;SLAM, removed
;	db 51, ;BRINE
	db 56, CRABHAMMER
	db 63, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
;	db 1, ;CHARGE
	db 1, TACKLE
	db 8, LOUD_VOICE ;SONICBOOM, removed
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 22, LIGHT_SCREEN
;	db 26, ;CHARGE_BEAM
	db 29, SELFDESTRUCT
	db 33, SWIFT
;	db 36, ;MAGNET_RISE
;	db 40, ;GYRO_BALL
	db 43, SELFDESTRUCT ;EXPLOSION
	db 47, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ;CHARGE
	db 1, TACKLE
	db 8, LOUD_VOICE ;SONICBOOM, removed
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 22, LIGHT_SCREEN
;	db 26, ;CHARGE_BEAM
	db 29, SELFDESTRUCT
	db 35, SWIFT
;	db 40, ;MAGNET_RISE
;	db 46, ;GYRO_BALL
	db 51, SELFDESTRUCT ;EXPLOSION
	db 57, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks: ;GEN4
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
;	db 1, BULLET_SEED ;BARRAGE, removed
	db 1, LOUD_VOICE ;UPROAR
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
;	db 17, ;BULLET_SEED
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 27, CONFUSION
;	db 33, ;WORRY_SEED
;	db 37, ;NATURAL_GIFT
	db 43, SOLARBEAM
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, LEAF_BLADE ;SEED_BOMB
;	db 1, BULLET_SEED ;BARRAGE, removed
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 17, STOMP
	db 27, SEED_BOMB ;EGG_BOMB, removed
;	db 37, ;WOOD_HAMMER
;	db 47, ;LEAF_STORM
	db 0 ; no more level-up moves

CuboneEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, TACKLE ;TAIL_WHIP, removed
	db 7, BONE_CLUB
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 31, THRASH
;	db 33, ;FLING
	db 37, FURY_STRIKES ;BONE_RUSH, removed
	db 41, FLAIL ;ENDEAVOR
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, TACKLE ;TAIL_WHIP, removed
	db 7, BONE_CLUB
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 33, THRASH
;	db 37, ;FLING
	db 43, FURY_STRIKES ;BONE_RUSH, removed
	db 49, FLAIL ;ENDEAVOR
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BULK_UP ;REVENGE
	db 1, DOUBLE_KICK
	db 5, BULK_UP ;MEDITATE, removed
	db 9, LOW_SWEEP ;ROLLING_KICK
	db 13, JUMP_KICK
	db 17, ROCK_SMASH ;BRICK_BREAK
	db 21, FOCUS_ENERGY
;	db 25, ;FEINT
	db 29, JUMP_KICK ;HI_JUMP_KICK, removed
	db 33, LOCK_ON ;MIND_READER
	db 37, FORESIGHT
;	db 41, BLAZE_KICK
	db 45, ENDURE
;	db 49, ;MEGA_KICK, removed
;	db 53, CLOSE_COMBAT
	db 57, FLAIL ;REVERSAL, removed
	db 0 ; no more level-up moves

HitmonchanEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BULK_UP
	db 1, FURY_STRIKES ;COMET_PUNCH, removed
	db 6, AGILITY
	db 11, PURSUIT
	db 16, MACH_PUNCH
;	db 16, BULLET_PUNCH
	db 21, DIZZY_PUNCH ;FEINT
;	db 26, ;VACUUM_WAVE
	db 31, THUNDERPUNCH
	db 31, ICE_PUNCH
	db 31, FIRE_PUNCH
;	db 36, ;SKY_UPPERCUT
	db 41, DYNAMICPUNCH ;MEGA_PUNCH, removed
	db 46, PROTECT ;DETECT, removed
	db 51, COUNTER
;	db 56, CLOSE_COMBAT
	db 0 ; no more level-up moves

LickitungEvosAttacks: ;GEN4
;	db EVOLVE_MOVE, ROLLOUT, LICKILICKY
	db 0 ; no more evolutions
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
;	db 13, ;KNOCK_OFF
	db 17, WRAP
	db 21, STOMP
	db 25, DISABLE
	db 29, BODY_SLAM ;SLAM, removed
	db 33, ROLLOUT
;	db 37, ;ME_FIRST
;	db 41, ;REFRESH
	db 45, SCREECH
;	db 49, POWER_WHIP
;	db 53, ;WRING_OUT
	db 0 ; no more level-up moves

;LickilickyEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, LICK
;	db 5, SUPERSONIC
;	db 9, DEFENSE_CURL
;;	db 13, ;KNOCK_OFF
;	db 17, WRAP
;	db 21, STOMP
;	db 25, DISABLE
;	db 29, BODY_SLAM ;SLAM, removed
;	db 33, ROLLOUT
;;	db 37, ;ME_FIRST
;;	db 41, ;REFRESH
;	db 45, SCREECH
;;	db 49, POWER_WHIP
;;	db 53, ;WRING_OUT
;;	db 57, ;GYRO_BALL
;	db 0 ; no more level-up moves

KoffingEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, SMOG ;POISON_GAS, removed
	db 1, TACKLE
	db 6, SMOG ;dupe
	db 10, SMOKESCREEN
;	db 15, ;ASSURANCE
	db 19, SELFDESTRUCT
	db 24, SLUDGE
	db 28, HAZE
;	db 33, ;GYRO_BALL
	db 37, SELFDESTRUCT ;EXPLOSION
	db 42, SLUDGE_BOMB
	db 46, DESTINY_BOND
;	db 51, ;MEMENTO
	db 0 ; no more level-up moves

WeezingEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SMOG ;POISON_GAS, removed
	db 1, TACKLE
	db 6, SMOG ;dupe
	db 10, SMOKESCREEN
;	db 15, ;ASSURANCE
	db 19, SELFDESTRUCT
	db 24, SLUDGE
	db 28, HAZE
;	db 33, DOUBLE_HIT
	db 40, SELFDESTRUCT ;EXPLOSION
	db 48, SLUDGE_BOMB
	db 55, DESTINY_BOND
;	db 63, ;MEMENTO
	db 0 ; no more level-up moves

RhyhornEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER ;TAIL_WHIP, removed
	db 9, STOMP
	db 13, FURY_STRIKES ;FURY_ATTACK, removed
	db 21, SCARY_FACE
;	db 25, ROCK_BLAST
	db 33, TAKE_DOWN
	db 37, HORN_DRILL
;	db 45, STONE_EDGE
	db 49, EARTHQUAKE
	db 57, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER ;TAIL_WHIP, removed
	db 9, STOMP
	db 13, FURY_STRIKES ;FURY_ATTACK, removed
	db 21, SCARY_FACE
;	db 25, ROCK_BLAST
	db 33, TAKE_DOWN
	db 37, HORN_DRILL
;	db 42, ;HAMMER_ARM
;	db 45, STONE_EDGE
	db 49, EARTHQUAKE
	db 57, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks: ;GEN4
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
BlisseyEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 1, GROWL
	db 5, LEER ;TAIL_WHIP, removed
;	db 9, ;REFRESH
	db 12, SOFTBOILED
	db 16, DOUBLESLAP
	db 20, MINIMIZE
	db 23, SING
;	db 27, ;FLING
	db 31, DEFENSE_CURL
	db 34, LIGHT_SCREEN
	db 38, SEED_BOMB ;EGG_BOMB, removed
;	db 42, ;HEALING_WISH
	db 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks: ;GEN4
;	db EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
;TangrowthEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, LEECH_SEED ;INGRAIN
	db 1, WRAP ;CONSTRICT, removed
	db 5, SLEEP_POWDER
	db 8, ABSORB
	db 12, GROWTH
	db 15, POISONPOWDER
	db 19, VINE_WHIP
	db 22, WRAP ;BIND, removed
	db 26, MEGA_DRAIN
	db 29, STUN_SPORE
	db 33, ANCIENTPOWER
	db 36, THIEF ;KNOCK_OFF
	db 40, SYNTHESIS ;NATURAL_GIFT
	db 43, BODY_SLAM ;SLAM, removed
	db 47, SUNNY_DAY ;TICKLE
;	db 50, ;WRING_OUT
	db 54, SOLARBEAM ;POWER_WHIP
	db 0 ; no more level-up moves

;TangrowthEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, LEECH_SEED ;INGRAIN
;	db 1, WRAP ;CONSTRICT, removed
;	db 5, SLEEP_POWDER
;	db 8, ABSORB
;	db 12, GROWTH
;	db 15, POISONPOWDER
;	db 19, VINE_WHIP
;	db 22, WRAP ;BIND, removed
;	db 26, MEGA_DRAIN
;	db 29, STUN_SPORE
;	db 33, ANCIENTPOWER
;	db 36, THIEF ;KNOCK_OFF
;	db 40, SYNTHESIS ;NATURAL_GIFT
;	db 43, BODY_SLAM ;SLAM, removed
;	db 47, SUNNY_DAY ;TICKLE
;;	db 50, ;WRING_OUT
;	db 54, SOLARBEAM ;POWER_WHIP
;	db 57, MEAN_LOOK ;BLOCK
;	db 0 ; no more level-up moves

KangaskhanEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, FURY_STRIKES ;COMET_PUNCH, removed
	db 1, LEER
;	db 7, ASTONISH ;FAKE_OUT
	db 10, LEER ;TAIL_WHIP, removed
	db 13, BITE
	db 19, DIZZY_PUNCH ;MEGA_PUNCH, removed
	db 22, RAGE
	db 25, DYNAMICPUNCH ;DIZZY_PUNCH
	db 31, CRUNCH
	db 34, ENDURE
	db 37, OUTRAGE
	db 43, DOUBLESLAP ;DOUBLE_HIT
;	db 46, ;SUCKER_PUNCH
	db 49, FLAIL ;REVERSAL, removed
	db 0 ; no more level-up moves

HorseaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 4, SMOKESCREEN
	db 8, LEER
;	db 11, WATER_GUN ;dupe
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 23, AGILITY
	db 26, TWISTER
;	db 30, ;BRINE
	db 35, HYDRO_PUMP
;	db 38, DRAGON_DANCE
;	db 42, DRAGON_PULSE
	db 0 ; no more level-up moves

SeadraEvosAttacks: ;GEN4
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
KingdraEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 4, SMOKESCREEN
	db 8, LEER
;	db 11, WATER_GUN ;dupe
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 23, AGILITY
	db 26, TWISTER
;	db 30, ;BRINE
	db 40, HYDRO_PUMP
;	db 48, DRAGON_DANCE
;	db 57, DRAGON_PULSE
	db 0 ; no more level-up moves

GoldeenEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, LEER ;TAIL_WHIP, removed
	db 1, PECK
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
;	db 17, ;WATER_PULSE
	db 21, FLAIL
;	db 27, ;AQUA_RING
	db 31, FURY_STRIKES ;FURY_ATTACK, removed
	db 37, WATERFALL
	db 41, HORN_DRILL
	db 47, AGILITY
	db 51, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, POISON_JAB
	db 1, LEER ;TAIL_WHIP, removed
	db 1, PECK
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
;	db 17, ;WATER_PULSE
	db 21, FLAIL
;	db 27, ;AQUA_RING
	db 31, FURY_STRIKES ;FURY_ATTACK, removed
	db 40, WATERFALL
	db 47, HORN_DRILL
	db 56, AGILITY
	db 63, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks: ;GEN4
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, WATER_GUN
	db 10, RAPID_SPIN
	db 15, RECOVER
;	db 19, ;CAMOUFLAGE
	db 24, SWIFT
	db 28, BUBBLEBEAM
	db 33, MINIMIZE
;	db 37, ;GYRO_BALL
	db 42, LIGHT_SCREEN
;	db 46, POWER_GEM
;	db 51, ;COSMIC_POWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, SWIFT
	db 28, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, MAGICAL_LEAF
	db 1, BARRIER
	db 4, CONFUSION
	db 8, BULK_UP ;MEDITATE, removed
	db 11, ENCORE
	db 15, DOUBLESLAP
	db 18, PROTECT ;MIMIC, removed
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 35, PSYBEAM
	db 29, SUBSTITUTE
	db 32, CONFUSE_RAY ;RECYCLE
	db 36, THIEF ;TRICK
	db 43, FUTURE_SIGHT ;ROLE_PLAY
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks: ;GEN4
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, FURY_CUTTER
	db 29, SLASH
;	db 33, AIR_SLICE ;RAZOR_WIND
	db 37, DOUBLE_TEAM
;	db 41, X_SCISSOR
;	db 45, NIGHT_SLASH
;	db 49, DOUBLE_HIT
;	db 53, AIR_SLASH ;dupe
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 5, LICK
	db 8, HYPNOSIS ;LOVELY_KISS
	db 11, ICY_WIND ;POWDER_SNOW
	db 15, DOUBLESLAP
	db 18, ICE_PUNCH
	db 21, MEAN_LOOK
;	db 25, ;FAKE_TEARS
;	db 28, ;WAKE_UP_SLAP
;	db 33, ;AVALANCHE
	db 39, BODY_SLAM
;	db 44, ;WRING_OUT
	db 49, PERISH_SONG
	db 55, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, THUNDERSHOCK
	db 10, LOW_SWEEP ;LOW_KICK
	db 16, SWIFT
;	db 19, ;SHOCK_WAVE
	db 25, LIGHT_SCREEN
	db 28, THUNDERPUNCH
;	db 37, ;DISCHARGE
	db 43, THUNDERBOLT
	db 52, SCREECH
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, FEINT_ATTACK
	db 19, FIRE_SPIN
	db 25, CONFUSE_RAY
	db 28, FIRE_PUNCH
;	db 36, ;LAVA_PLUME
	db 41, FLAMETHROWER
	db 49, SUNNY_DAY
	db 54, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, CRUSH_CLAW ;VICEGRIP, removed
	db 1, FOCUS_ENERGY
	db 4, WRAP ;BIND, removed
	db 8, SEISMIC_TOSS
	db 13, HARDEN
	db 18, FLAIL ;REVENGE
	db 21, ROCK_SMASH ;BRICK_BREAK
;	db 25, BRICK_BREAK ;VITAL_THROW, removed
;	db 30, X_SCISSOR
	db 35, THRASH
	db 38, SWORDS_DANCE
	db 42, SUBMISSION
	db 47, GUILLOTINE
;	db 52, CLOSE_COMBAT ;SUPERPOWER
	db 0 ; no more level-up moves

TaurosEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER ;TAIL_WHIP, removed
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
;	db 24, ;PAYBACK
;	db 29, ;ZEN_HEADBUTT
	db 35, TAKE_DOWN
	db 41, SWAGGER
	db 48, THRASH
;	db 55, ;GIGA_IMPACT
	db 0 ; no more level-up moves

MagikarpEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 23, DRAGON_RAGE
	db 26, LEER
	db 29, TWISTER
;	db 32, ICE_FANG
;	db 35, ;AQUA_TAIL
	db 38, RAIN_DANCE
	db 41, HYDRO_PUMP
;	db 44, DRAGON_DANCE
	db 47, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SING
	db 1, GROWL
	db 1, WATER_GUN
	db 4, HAZE ;MIST, removed
	db 7, CONFUSE_RAY
;	db 10, ICE_SHARD
;	db 14, ;WATER_PULSE
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, PERISH_SONG
	db 32, ICE_BEAM
;	db 37, ;BRINE
	db 43, SAFEGUARD
	db 49, HYDRO_PUMP
	db 55, HORN_DRILL ;SHEER_COLD
	db 0 ; no more level-up moves

DittoEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks: ;GEN4
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAYEVE, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
;	db EVOLVE_LOCATION, VIRIDIAN_FOREST, LEAFEON
;	db EVOLVE_LOCATION, SEAFOAM_ISLANDS, GLACEON
;	db EVOLVE_LOCATION, ILEX_FOREST, LEAFEON
;	db EVOLVE_LOCATION, ICE_PATH, GLACEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 8, MUD_SLAP ;SAND_ATTACK, removed
	db 15, GROWL
	db 22, QUICK_ATTACK
	db 29, BITE
	db 36, BATON_PASS
	db 43, TAKE_DOWN
;	db 50, ;LAST_RESORT
;	db 57, ;TRUMP_CARD
	db 0 ; no more level-up moves

VaporeonEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 8, MUD_SLAP ;SAND_ATTACK, removed
	db 15, WATER_GUN
	db 22, QUICK_ATTACK
	db 29, BITE
	db 36, AURORA_BEAM
;	db 43, ;AQUA_RING
;	db 50, ;LAST_RESORT
	db 57, HAZE
	db 64, BARRIER ;ACID_ARMOR, removed
	db 71, HYDRO_PUMP
;	db 78, ;MUDDY_WATER
	db 0 ; no more level-up moves

JolteonEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 8, MUD_SLAP ;SAND_ATTACK, removed
	db 15, THUNDERSHOCK
	db 22, QUICK_ATTACK
	db 29, DOUBLE_KICK
	db 36, PIN_MISSILE
;	db 43, THUNDER_FANG
;	db 50, ;LAST_RESORT
	db 57, THUNDER_WAVE
	db 64, AGILITY
	db 71, THUNDER
;	db 78, ;DISCHARGE
	db 0 ; no more level-up moves

FlareonEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 8, MUD_SLAP ;SAND_ATTACK, removed
	db 15, EMBER
	db 22, QUICK_ATTACK
	db 29, BITE
	db 36, FIRE_SPIN
;	db 42, FIRE_FANG
;	db 50, ;LAST_RESORT
	db 57, SMOG
	db 64, SCARY_FACE
	db 71, FIRE_BLAST
;	db 78, ;LAVA_PLUME
	db 0 ; no more level-up moves

PorygonEvosAttacks: ;GEN4
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
;	db 1, CONVERSION2, removed
	db 1, TACKLE
	db 1, CONVERSION
	db 1, SWORDS_DANCE
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
;	db 23, ;MAGNET_RISE
;	db 29, ;SIGNAL_BEAM
;	db 34, ;RECYCLE
;	db 40, ;DISCHARGE
	db 45, LOCK_ON
	db 51, TRI_ATTACK
;	db 56, ;MAGIC_COAT
	db 62, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP ;CONSTRICT, removed
	db 1, DEFENSE_CURL
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
;	db 25, ;MUD_SHOT
;	db 28, ;BRINE
	db 34, PROTECT
	db 37, ANCIENTPOWER
;	db 43, ;TICKLE
;	db 46, ROCK_BLAST
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WRAP ;CONSTRICT, removed
	db 1, DEFENSE_CURL
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
;	db 25, ;MUD_SHOT
;	db 28, ;BRINE
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 40, ICICLE_SPEAR ;SPIKE_CANNON, removed
;	db 48, ;TICKLE
;	db 56, ROCK_BLAST
	db 67, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
;	db 16, ;MUD_SHOT
	db 21, MUD_SLAP ;SAND_ATTACK, removed
	db 26, ENDURE
;	db 31, AQUA_JET
	db 36, MEGA_DRAIN
;	db 41, ;METAL_SOUND
	db 46, ANCIENTPOWER
;	db 51, ;WRING_OUT
	db 0 ; no more level-up moves

KabutopsEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
;	db 16, ;MUD_SHOT
	db 21, MUD_SLAP ;SAND_ATTACK, removed
	db 26, ENDURE
;	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 40, SLASH
;	db 45, ;METAL_SOUND
	db 54, ANCIENTPOWER
;	db 63, ;WRING_OUT
;	db 72, NIGHT_SLASH
	db 0 ; no more level-up moves

AerodactylEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ICE_FANG
;	db 1, FIRE_FANG
;	db 1, THUNDER_FANG
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 1, BITE
	db 1, SCARY_FACE
	db 9, ROAR
	db 17, AGILITY
	db 25, ANCIENTPOWER
	db 33, CRUNCH
	db 41, TAKE_DOWN
;	db 49, ;IRON_HEAD
	db 57, HYPER_BEAM
	db 65, ROCK_SLIDE
;	db 73, ;GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, BELLY_DRUM
	db 20, HEADBUTT ;YAWN
	db 25, REST
	db 28, SNORE
	db 28, SLEEP_TALK
	db 33, BODY_SLAM
	db 36, MEAN_LOOK ;BLOCK
	db 40, REST ;dupe for respawn moveset
	db 41, ROLLOUT
	db 44, CRUNCH
	db 49, HYPER_BEAM ;GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, GUST
	db 1, ICY_WIND ;POWDER_SNOW
	db 8, HAZE ;MIST, removed
;	db 15, ICE_SHARD
	db 22, LOCK_ON ;MIND_READER
	db 29, ANCIENTPOWER
	db 36, AGILITY
	db 43, ICE_BEAM
	db 50, REFLECT
	db 57, ROOST
;	db 64, ;TAILWIND
	db 71, BLIZZARD
;	db 78, ;SHEER_COLD
;	db 85, ;HAIL
	db 0 ; no more level-up moves

ZapdosEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 15, PROTECT ;DETECT, removed
;	db 22, ;PLUCK
	db 29, ANCIENTPOWER
;	db 36, ;CHARGE
	db 43, AGILITY
;	db 50. ;DISCHARGE
	db 57, ROOST
	db 64, LIGHT_SCREEN
	db 71, DRILL_PECK
	db 78, THUNDER
	db 85, RAIN_DANCE
	db 0 ; no more level-up moves

MoltresEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 8, FIRE_SPIN
	db 15, AGILITY
	db 22, ENDURE
	db 29, ANCIENTPOWER
	db 36, FLAMETHROWER
	db 43, SAFEGUARD
;	db 50, AIR_SLASH
	db 57, ROOST
;	db 64, ;HEAT_WAVE
	db 71, SOLARBEAM
	db 78, SKY_ATTACK
	db 85, SUNNY_DAY
	db 0 ; no more level-up moves

DratiniEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ;SLAM, removed
	db 25, AGILITY
;	db 31, ;AQUA_TAIL
;	db 35, ;DRAGON_RUSH
	db 41, SAFEGUARD
;	db 45, DRAGON_DANCE
	db 51, OUTRAGE
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ;SLAM, removed
	db 25, AGILITY
;	db 33, ;AQUA_TAIL
;	db 39, ;DRAGON_RUSH
	db 47, SAFEGUARD
;	db 53, DRAGON_DANCE
	db 61, OUTRAGE
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, THUNDERPUNCH
	db 1, ROOST
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ;SLAM, removed
	db 25, AGILITY
;	db 33, ;AQUA_TAIL
;	db 39, ;DRAGON_RUSH
	db 47, SAFEGUARD
;	db 53, DRAGON_DANCE
	db 55, WING_ATTACK
	db 64, OUTRAGE
	db 73, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 8, BARRIER
	db 15, SWIFT
	db 22, FUTURE_SIGHT
	db 29, AGILITY ;PSYCH_UP, removed
;	db 36, ;MIRACLE_EYE
	db 43, HAZE ;MIST, removed
;	db 50, ;PSYCHO_CUT
	db 57, AMNESIA
;	db 64, ;POWER_SWAP
;	db 64, ;GUARD_SWAP
	db 71, PSYCHIC_M
;	db 79, ;ME_FIRST
	db 86, RECOVER
	db 93, SAFEGUARD
;	db 99, ;AURA_SPHERE
	db 0 ; no more level-up moves

MewEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 1, TRANSFORM
	db 10, DYNAMICPUNCH ;MEGA_PUNCH, removed
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, AMNESIA
;	db 70, ;ME_FIRST
	db 80, BATON_PASS
;	db 90, NASTY_PLOT
;	db 99, ;AURA_SPHERE
	db 0 ; no more level-up moves

ChikoritaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 17, REFLECT
;	db 20, MAGICAL_LEAF
;	db 23, ;NATURAL_GIFT
	db 28, SWEET_SCENT
	db 31, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 39, SAFEGUARD
	db 42, HEAL_BELL ;AROMATHERAPY
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
;	db 22, MAGICAL_LEAF
;	db 26, ;NATURAL_GIFT
	db 32, SWEET_SCENT
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM
	db 46, SAFEGUARD
	db 50, HEAL_BELL ;AROMATHERAPY
	db 54, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
;	db 22, MAGICAL_LEAF
;	db 26, ;NATURAL_GIFT
	db 32, PETAL_DANCE
	db 34, SWEET_SCENT
	db 40, LIGHT_SCREEN
	db 46, BODY_SLAM
	db 54, SAFEGUARD
	db 60, HEAL_BELL ;AROMATHERAPY
	db 66, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 22, DEFENSE_CURL
	db 28, SWIFT
;	db 31, ;LAVA_PLUME
	db 37, FLAMETHROWER
	db 40, ROLLOUT
	db 46, DOUBLE_EDGE
;	db 49, ;ERUPTION
	db 0 ; no more level-up moves

QuilavaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 36, TYPHLOSION
TyphlosionEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
;	db 35, ;LAVA_PLUME
	db 42, FLAMETHROWER
	db 46, ROLLOUT
	db 53, DOUBLE_EDGE
;	db 57, ;ERUPTION
	db 0 ; no more level-up moves

; quilava (overlap)
;TyphlosionEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, TACKLE
;	db 1, LEER
;	db 6, SMOKESCREEN
;	db 10, EMBER
;	db 13, QUICK_ATTACK
;	db 20, FLAME_WHEEL
;	db 24, DEFENSE_CURL
;	db 31, SWIFT
;;	db 35, ;LAVA_PLUME
;	db 42, FLAMETHROWER
;	db 46, ROLLOUT
;	db 53, DOUBLE_EDGE
;;	db 57, ;ERUPTION
;	db 0 ; no more level-up moves

TotodileEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 20, ICE_FANG
	db 22, FLAIL
	db 27, CRUNCH
	db 29, SLASH
	db 34, SCREECH
	db 36, THRASH
;	db 41, AQUA_TAIL
;	db 43, CLOSE_COMBAT ;SUPERPOWER
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_FANG
	db 24, FLAIL
	db 30, CRUNCH
	db 33, SLASH
	db 39, SCREECH
	db 42, THRASH
;	db 48, AQUA_TAIL
;	db 51, CLOSE_COMBAT ;SUPERPOWER
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_FANG
	db 24, FLAIL
	db 30, AGILITY
	db 32, CRUNCH
	db 37, SLASH
	db 45, SCREECH
	db 50, THRASH
;	db 58, AQUA_TAIL
;	db 63, CLOSE_COMBAT ;SUPERPOWER
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ;FURY_SWIPES, removed
;	db 16, ;HELPING_HAND
;	db 19, ;FOLLOW_ME
	db 25, BODY_SLAM ;SLAM, removed
	db 28, REST
;	db 31, ;SUCKER_PUNCH
	db 36, AMNESIA
	db 39, BATON_PASS
;	db 42, ;ME_FIRST
;	db 47, ;HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ;FURY_SWIPES, removed
;	db 17, ;HELPING_HAND
;	db 21, ;FOLLOW_ME
	db 28, BODY_SLAM ;SLAM, removed
	db 32, REST
;	db 36, ;SUCKER_PUNCH
	db 42, AMNESIA
	db 46, BATON_PASS
;	db 50, ;ME_FIRST
;	db 56, ;HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 5, HYPNOSIS
	db 9, PECK
	db 13, LOUD_VOICE ;UPROAR
	db 17, REFLECT
	db 21, CONFUSION
	db 25, TAKE_DOWN
;	db 29, ;AIR_SLASH
;	db 33, ZEN_HEADBUTT
;	db 37, EXTRASENSORY
;	db 41, ;PSYCHO_SHIFT
	db 45, ROOST
	db 49, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SKY_ATTACK
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 5, HYPNOSIS
	db 9, PECK
	db 13, LOUD_VOICE ;UPROAR
	db 17, REFLECT
	db 22, CONFUSION
	db 27, TAKE_DOWN
;	db 32, ;AIR_SLASH
;	db 37, ZEN_HEADBUTT
;	db 42, EXTRASENSORY
;	db 47, ;PSYCHO_SHIFT
	db 52, ROOST
	db 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, SUPERSONIC
;	db 9, FURY_STRIKES ;COMET_PUNCH, removed
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 17, MACH_PUNCH
	db 22, BATON_PASS
;	db 25, ;SILVER_WIND
	db 30, AGILITY
	db 33, SWIFT
	db 38, DOUBLE_EDGE
;	db 41, BUG_BUZZ
	db 0 ; no more level-up moves

LedianEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, SUPERSONIC
;	db 9, FURY_STRIKES ;COMET_PUNCH, removed
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 17, MACH_PUNCH
	db 24, BATON_PASS
;	db 29, ;SILVER_WIND
	db 36, AGILITY
	db 41, SWIFT
	db 48, DOUBLE_EDGE
;	db 53, BUG_BUZZ
	db 0 ; no more level-up moves

SpinarakEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, WRAP ;CONSTRICT, removed
	db 12, LEECH_LIFE
	db 15, NIGHT_SHADE
;	db 19, SHADOW_SNEAK
	db 22, FURY_STRIKES ;FURY_SWIPES, removed
;	db 26, ;SUCKER_PUNCH
	db 29, MEAN_LOOK ;SPIDER_WEB, removed
	db 33, AGILITY
	db 36, PIN_MISSILE
	db 40, PSYCHIC_M
;	db 43, POISON_JAB
	db 0 ; no more level-up moves

AriadosEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, BUG_BITE
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, WRAP ;CONSTRICT, removed
	db 12, LEECH_LIFE
	db 15, NIGHT_SHADE
;	db 19, SHADOW_SNEAK
	db 23, FURY_STRIKES ;FURY_SWIPES, removed
;	db 28, ;SUCKER_PUNCH
	db 32, MEAN_LOOK ;SPIDER_WEB, removed
	db 37, AGILITY
	db 41, PIN_MISSILE
	db 46, PSYCHIC_M
;	db 50, POISON_JAB
	db 0 ; no more level-up moves

CrobatEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, CROSS_POISON
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
;	db 9, ASTONISH
	db 13, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
;	db 27, AIR_CUTTER
	db 33, MEAN_LOOK
;	db 39, POISON_FANG
	db 45, HAZE
;	db 51, AIR_SLASH
	db 0 ; no more level-up moves

ChinchouEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ;FLAIL
	db 12, WATER_GUN ;dupe
	db 17, CONFUSE_RAY
	db 20, SPARK
	db 23, TAKE_DOWN
	db 28, BUBBLEBEAM
;	db 31, ;SIGNAL_BEAM
;	db 34, ;DISCHARGE
;	db 39, ;AQUA_RING
	db 42, HYDRO_PUMP
;	db 45, ;CHARGE
	db 0 ; no more level-up moves

LanturnEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WATER_GUN ;BUBBLE, removed
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ;FLAIL
	db 12, WATER_GUN ;dupe
	db 17, CONFUSE_RAY
	db 20, SPARK
	db 23, TAKE_DOWN
;	db 27, ;STOCKPILE, SWALLOW, SPIT_UP
	db 30, BUBBLEBEAM
;	db 35, ;SIGNAL_BEAM
;	db 40, ;DISCHARGE
;	db 47, ;AQUA_RING
	db 52, HYDRO_PUMP
;	db 57, ;CHARGE
	db 0 ; no more level-up moves

PichuEvosAttacks: ;GEN4
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, LEER ;TAIL_WHIP, removed
	db 10, THUNDER_WAVE
	db 13, CONFUSE_RAY ;SWEET_KISS, removed
;	db 18, NASTY_PLOT
	db 0 ; no more level-up moves

CleffaEvosAttacks: ;GEN4
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 10, CONFUSE_RAY ;SWEET_KISS, removed
;	db 13, ;COPYCAT
;	db 16, MAGICAL_LEAF
	db 0 ; no more level-up moves

IgglybuffEvosAttacks: ;GEN4
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 5, DEFENSE_CURL
	db 9, TACKLE ;POUND, removed
	db 13, CONFUSE_RAY ;SWEET_KISS, removed
;	db 17, COPYCAT
	db 0 ; no more level-up moves

TogepiEvosAttacks: ;GEN4
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 6, METRONOME
	db 10, CONFUSE_RAY ;SWEET_KISS, removed
;	db 15, ;YAWN
	db 19, ENCORE
;	db 24, ;FOLLOW_ME
;	db 28, ;WISH
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 42, BATON_PASS
	db 46, DOUBLE_EDGE
;	db 51, ;LAST_RESORT
	db 0 ; no more level-up moves

TogeticEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, MAGICAL_LEAF
	db 1, GROWL
	db 1, CHARM
	db 6, METRONOME
	db 10, CONFUSE_RAY ;SWEET_KISS, removed
;	db 15, ;YAWN
	db 19, ENCORE
;	db 24, ;FOLLOW_ME
;	db 28, ;WISH
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 42, BATON_PASS
	db 46, DOUBLE_EDGE
;	db 51, ;LAST_RESORT
	db 0 ; no more level-up moves

NatuEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
;	db 12, ;LUCKY_CHANT
;	db 17, ;MIRACLE_EYE
;	db 20, ;ME_FIRST
	db 23, CONFUSE_RAY
;	db 28, ;WISH
;	db 33, ;PSYCHO_SHIFT
	db 36, FUTURE_SIGHT
;	db 39, ;OMINOUS_WIND
;	db 44, ;POWER_SWAP, GUARD_SWAP
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
;	db 12, ;LUCKY_CHANT
;	db 17, ;MIRACLE_EYE
;	db 20, ;ME_FIRST
	db 23, CONFUSE_RAY
;	db 30, ;WISH
;	db 37, ;PSYCHO_SHIFT
	db 42, FUTURE_SIGHT
;	db 47, ;OMINOUS_WIND
;	db 54, ;POWER_SWAP, GUARD_SWAP
	db 59, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 10, THUNDERSHOCK
	db 14, THUNDER_WAVE
;	db 19, ;COTTON_SPORE, removed
;	db 23, ;CHARGE
;	db 28, DISCHARGE
;	db 32, SIGNAL_BEAM
	db 37, LIGHT_SCREEN
;	db 41, POWER_GEM
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 10, THUNDERSHOCK
	db 14, THUNDER_WAVE
;	db 20, ;COTTON_SPORE, removed
;	db 25, ;CHARGE
;	db 31, DISCHARGE
;	db 36, SIGNAL_BEAM
	db 42, LIGHT_SCREEN
;	db 47, POWER_GEM
	db 53, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, TACKLE
	db 5, GROWL
	db 10, THUNDERSHOCK
	db 14, THUNDER_WAVE
;	db 20, ;COTTON_SPORE, removed
;	db 25, ;CHARGE
	db 30, THUNDERPUNCH
;	db 34, DISCHARGE
;	db 42, SIGNAL_BEAM
	db 51, LIGHT_SCREEN
;	db 59, POWER_GEM
	db 68, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, LEAF_BLADE
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, SUNNY_DAY
;	db 23, MAGICAL_LEAF
;	db 53, ;LEAF_STORM
	db 0 ; no more level-up moves

MarillEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 7, LEER ;TAIL_WHIP, removed
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 18, BUBBLEBEAM
;	db 23, ;AQUA_RING
	db 27, DOUBLE_EDGE
	db 32, RAIN_DANCE
;	db 37, ;AQUA_TAIL
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 7, LEER ;TAIL_WHIP, removed
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 18, BUBBLEBEAM
;	db 27, ;AQUA_RING
	db 33, DOUBLE_EDGE
	db 40, RAIN_DANCE
;	db 47, ;AQUA_TAIL
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ;WOOD_HAMMER
;	db 1, ;COPYCAT
	db 1, ROCK_THROW
;	db 1, ;MIMIC, removed
	db 6, FLAIL
	db 9, LOW_SWEEP ;LOW_KICK
	db 14, ROCK_THROW
;	db 17, ;MIMIC, removed
	db 22, MEAN_LOOK ;BLOCK
	db 25, FEINT_ATTACK
;	db 30, ;ROCK_TOMB
	db 33, ROCK_SLIDE
	db 38, BODY_SLAM ;SLAM, removed
;	db 41, ;SUCKER_PUNCH
	db 46, DOUBLE_EDGE
;	db 49, ;HAMMER_ARM
	db 0 ; no more level-up moves

PolitoedEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 27, SWAGGER
;	db 37, ;BOUNCE
;	db 48, ;HYPER_VOICE
	db 0 ; no more level-up moves

HoppipEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, SYNTHESIS
	db 7, LEER ;TAIL_WHIP, removed
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
;	db 19, BULLET_SEED
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
;	db 28, ;COTTON_SPORE, removed
;	db 31, ;U_TURN
;	db 34, ;WORRY_SEED
	db 37, GIGA_DRAIN
;	db 40, BOUNCE
;	db 43, ;MEMENTO
	db 0 ; no more level-up moves

SkiploomEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 27, JUMPLUFF
JumpluffEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, SYNTHESIS
	db 7, LEER ;TAIL_WHIP, removed
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
;	db 20, ;BULLET_SEED
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
;	db 32, ;COTTON_SPORE, removed
;	db 36, ;U_TURN
;	db 40, ;WORRY_SEED
	db 34, GIGA_DRAIN
;	db 48, BOUNCE
;	db 52, ;MEMENTO
	db 0 ; no more level-up moves

; skiploom (overlap)
;JumpluffEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, SPLASH
;	db 4, SYNTHESIS
;	db 7, LEER ;TAIL_WHIP, removed
;	db 10, TACKLE
;	db 12, POISONPOWDER
;	db 14, STUN_SPORE
;	db 16, SLEEP_POWDER
;;	db 20, ;BULLET_SEED
;	db 24, LEECH_SEED
;	db 28, MEGA_DRAIN
;;	db 32, ;COTTON_SPORE, removed
;;	db 36, ;U_TURN
;;	db 40, ;WORRY_SEED
;	db 34, GIGA_DRAIN
;;	db 48, BOUNCE
;;	db 52, ;MEMENTO
;	db 0 ; no more level-up moves

AipomEvosAttacks: ;GEN4
;	db EVOLVE_MOVE, DOUBLESLAP, AMBIPOM
;AmbipomEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ;TAIL_WHIP, removed
	db 4, MUD_SLAP ;SAND_ATTACK, removed
;	db 8, ASTONISH
	db 11, BATON_PASS
;	db 15, ;TICKLE
	db 18, FURY_STRIKES ;FURY_SWIPES, removed
	db 22, SWIFT
	db 25, SCREECH
	db 29, AGILITY
	db 32, DOUBLESLAP ;DOUBLE_HIT
;	db 36, ;FLING
;	db 39, ;NASTY_PLOT
	db 43, DOUBLE_EDGE ;LAST_RESORT
	db 0 ; no more level-up moves

;AmbipomEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, SCRATCH
;	db 1, LEER ;TAIL_WHIP, removed
;	db 4, MUD_SLAP ;SAND_ATTACK, removed
;;	db 8, ASTONISH
;	db 11, BATON_PASS
;;	db 15, ;TICKLE
;	db 18, FURY_STRIKES ;FURY_SWIPES, removed
;	db 22, SWIFT
;	db 25, SCREECH
;	db 29, AGILITY
;	db 32, DOUBLESLAP ;DOUBLE_HIT
;;	db 36, ;FLING
;;	db 39, ;NASTY_PLOT
;	db 43, DOUBLE_EDGE ;LAST_RESORT
;	db 0 ; no more level-up moves

SunkernEvosAttacks: ;GEN4
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 5, MEGA_DRAIN
;	db 9, ;INGRAIN
	db 13, HYPNOSIS ;GRASSWHISTLE
	db 17, LEECH_SEED
;	db 21, ;ENDEAVOR
;	db 25, ;WORRY_SEED
	db 29, RAZOR_LEAF
	db 33, SYNTHESIS
	db 37, SUNNY_DAY
	db 41, GIGA_DRAIN
	db 45, SEED_BOMB
	db 0 ; no more level-up moves

SunfloraEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, TACKLE ;POUND, removed
	db 1, GROWTH
	db 5, MEGA_DRAIN
;	db 9, ;INGRAIN
	db 13, HYPNOSIS ;GRASSWHISTLE
	db 17, LEECH_SEED
;	db 21, ;BULLET_SEED
;	db 25, ;WORRY_SEED
	db 29, RAZOR_LEAF
	db 33, PETAL_DANCE
	db 37, SUNNY_DAY
	db 41, SOLARBEAM
;	db 45, ;LEAF_STORM
	db 0 ; no more level-up moves

YanmaEvosAttacks: ;GEN4
;	db EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, LOUD_VOICE ;SONICBOOM, removed
	db 17, PROTECT ;DETECT, removed
	db 22, SUPERSONIC
	db 27, LOUD_VOICE ;UPROAR
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
;	db 49, U_TURN
;	db 54, AIR_SLASH
;	db 57, BUG_BUZZ
	db 0 ; no more level-up moves

;YanmegaEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;;	db 1, NIGHT_SLASH
;;	db 1, BUG_BITE
;	db 1, TACKLE
;	db 1, FORESIGHT
;	db 6, QUICK_ATTACK
;	db 11, DOUBLE_TEAM
;	db 14, LOUD_VOICE ;SONICBOOM, removed
;	db 17, PROTECT ;DETECT, removed
;	db 22, SUPERSONIC
;	db 27, LOUD_VOICE ;UPROAR
;	db 30, PURSUIT
;	db 33, ANCIENTPOWER
;	db 38, SLASH
;	db 43, SCREECH
;;	db 46, U_TURN
;;	db 49, AIR_SLASH
;;	db 54, BUG_BUZZ
;	db 0 ; no more level-up moves

WooperEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ;TAIL_WHIP, removed
;	db 5, MUD_SPORT
;	db 9, MUD_SHOT
	db 15, BODY_SLAM ;SLAM, removed
;	db 19, ;MUD_BOMB
	db 23, AMNESIA
;	db 29, ;YAWN
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
;	db 43, ;MIST, removed
	db 43, HAZE
;	db 47, ;MUDDY_WATER
	db 0 ; no more level-up moves

QuagsireEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ;TAIL_WHIP, removed
;	db 5, MUD_SPORT
;	db 9, MUD_SHOT
	db 15, BODY_SLAM ;SLAM, removed
;	db 19, ;MUD_BOMB
	db 24, AMNESIA
;	db 31, ;YAWN
	db 36, EARTHQUAKE
	db 41, RAIN_DANCE
;	db 48, ;MIST, removed
	db 48, HAZE
;	db 53, ;MUDDY_WATER
	db 0 ; no more level-up moves

EspeonEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 8, MUD_SLAP ;SAND_ATTACK, removed
	db 15, CONFUSION
	db 22, QUICK_ATTACK
	db 29, SWIFT
	db 36, PSYBEAM
	db 43, FUTURE_SIGHT
;	db 50, ;LAST_RESORT
	db 57, REFLECT ;PSYCH_UP, removed
	db 64, PSYCHIC_M
	db 71, MORNING_SUN
;	db 78, ;POWER_SWAP
	db 0 ; no more level-up moves

UmbreonEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;TAIL_WHIP, removed
	db 8, MUD_SLAP ;SAND_ATTACK, removed
	db 15, PURSUIT
	db 22, QUICK_ATTACK
	db 29, CONFUSE_RAY
	db 36, FEINT_ATTACK
;	db 43, ;ASSURANCE
;	db 50, ;LAST_RESORT
	db 57, MEAN_LOOK
	db 64, SCREECH
	db 71, MOONLIGHT
;	db 78, ;GUARD_SWAP
	db 0 ; no more level-up moves

MurkrowEvosAttacks: ;GEN4
;	db EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
;	db 1, ASTONISH
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF ;ASSURANCE
;	db 31, ;TAUNT
	db 35, FEINT_ATTACK
	db 41, MEAN_LOOK
;	db 45, ;SUCKER_PUNCH
	db 0 ; no more level-up moves

;HonchkrowEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;;	db 1, ASTONISH
;	db 1, PURSUIT
;	db 1, HAZE
;	db 1, WING_ATTACK
;	db 25, SWAGGER
;;	db 35, NASTY_PLOT
;;	db 45, NIGHT_SLASH
;;	db 55, DARK_PULSE
;	db 0 ; no more level-up moves

SlowkingEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, POWER_GEM
	db 1, HIDDEN_POWER
	db 1, CURSE
;	db 1, ;YAWN
	db 1, TACKLE
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
;	db 29, ;WATER_PULSE
;	db 34, ZEN_HEADBUTT
;	db 39, NASTY_PLOT
	db 43, SWAGGER
	db 48, PSYCHIC_M
	db 53, RAIN_DANCE
	db 57, BELLY_DRUM ;PSYCH_UP, removed
	db 0 ; no more level-up moves

MisdreavusEvosAttacks: ;GEN4
;	db EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYBEAM ;PSYWAVE, removed
	db 5, DISABLE ;SPITE, removed
;	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, PSYBEAM
	db 28, PAIN_SPLIT
;	db 32, ;PAYBACK
	db 37, SHADOW_BALL
	db 41, PERISH_SONG
	db 46, DESTINY_BOND ;GRUDGE
;	db 50, POWER_GEM
	db 0 ; no more level-up moves

;MismagiusEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;;	db 1, ;LUCKY_CHANT
;;	db 1, MAGICAL_LEAF
;	db 1, GROWL
;	db 1, PSYBEAM ;PSYWAVE, removed
;	db 1, DISABLE ;SPITE, removed
;;	db 1, ASTONISH
;	db 0 ; no more level-up moves

UnownEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, ENCORE
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ASTONISH
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 5, FORESIGHT ;ODOR_SLEUTH
	db 10, STOMP
	db 14, AGILITY
	db 19, PSYBEAM
	db 23, BATON_PASS
;	db 28, ;ASSURANCE
;	db 32, DOUBLE_HIT
	db 37, PSYCHIC_M
;	db 41, ZEN_HEADBUTT
	db 46, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
;	db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
;	db 23, NATURAL_GIFT
	db 28, SPIKES
;	db 31, ;PAYBACK
	db 34, SELFDESTRUCT ;EXPLOSION
;	db 39, ;IRON_DEFENSE
;	db 42, ;GYRO_BALL
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ;TOXIC_SPIKES
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
;	db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
;	db 23, NATURAL_GIFT
	db 28, SPIKES
;	db 31, ;MIRROR_SHOT
;	db 33, ;PAYBACK
	db 38, SELFDESTRUCT ;EXPLOSION
;	db 45, ;IRON_DEFENSE
;	db 50, ;GYRO_BALL
	db 55, DOUBLE_EDGE
;	db 62, ;MAGNET_RISE
	db 67, ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, RAGE
	db 5, DEFENSE_CURL
;	db 9, ;YAWN
	db 13, GLARE
	db 17, ROLLOUT
	db 21, DISABLE ;SPITE, removed
	db 25, PURSUIT
	db 29, SCREECH
	db 33, ROOST
	db 37, TAKE_DOWN
	db 41, ANCIENTPOWER
	db 45, DIG
;	db 49, ENDEAVOR
;	db 53, FLAIL
	db 0 ; no more level-up moves

GligarEvosAttacks: ;GEN4
;	db EVOLVE_HOLD, RAZOR_FANG, TR_NITE, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, MUD_SLAP ;SAND_ATTACK, removed
	db 9, HARDEN
	db 12, THIEF ;KNOCK_OFF
	db 16, QUICK_ATTACK
	db 20, FURY_CUTTER
	db 23, FEINT_ATTACK
	db 27, SCREECH
	db 31, SLASH
	db 34, SWORDS_DANCE
;	db 38, U_TURN
;	db 42, X_SCISSOR
	db 45, GUILLOTINE
	db 0 ; no more level-up moves

;GliscorEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;;	db 1, THUNDER_FANG
;;	db 1, ICE_FANG
;;	db 1, FIRE_FANG
;;	db 1, POISON_JAB
;	db 5, MUD_SLAP ;SAND_ATTACK, removed
;	db 9, HARDEN
;	db 12, THIEF ;KNOCK_OFF
;	db 16, QUICK_ATTACK
;	db 20, FURY_CUTTER
;	db 23, FEINT_ATTACK
;	db 27, SCREECH
;;	db 31, NIGHT_SLASH
;	db 34, SWORDS_DANCE
;;	db 38, U_TURN
;;	db 42, X_SCISSOR
;	db 45, GUILLOTINE
;	db 0 ; no more level-up moves

SteelixEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, THUNDER_FANG
;	db 1, ICE_FANG
;	db 1, FIRE_FANG
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, WRAP ;BIND, removed
	db 6, SCREECH
	db 9, ROCK_THROW
	db 14, RAGE
;	db 17, ;ROCK_TOMB
	db 22, SANDSTORM
	db 25, BODY_SLAM ;SLAM, removed
;	db 30, ROCK_POLISH
	db 33, DRAGONBREATH
	db 38, IRON_TAIL
	db 41, CRUNCH
	db 46, DOUBLE_EDGE
;	db 49, STONE_EDGE
	db 0 ; no more level-up moves

SnubbullEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
;	db 1, ICE_FANG
;	db 1, FIRE_FANG
;	db 1, THUNDER_FANG
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ;TAIL_WHIP, removed
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, TAKE_DOWN
;	db 43, ;PAYBACK
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ICE_FANG
;	db 1, FIRE_FANG
;	db 1, THUNDER_FANG
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ;TAIL_WHIP, removed
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, TAKE_DOWN
;	db 51, ;PAYBACK
	db 59, CRUNCH
	db 0 ; no more level-up moves

QwilfishEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 9, HARDEN
	db 9, MINIMIZE
	db 13, WATER_GUN
	db 17, ROLLOUT
;	db 21, ;TOXIC_SPIKES
;	db 25, ;STOCKPILE, SPIT_UP
;	db 29, ;REVENGE
;	db 33, ;BRINE
	db 37, PIN_MISSILE
	db 41, TAKE_DOWN
;	db 45, ;AQUA_TAIL
;	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, METAL_CLAW
	db 25, FURY_CUTTER
	db 29, SLASH
;	db 33, AIR_SLASH ;RAZOR_WIND
	db 37, BARRIER ;IRON_DEFENSE
;	db 41, X_SCISSOR
;	db 45, NIGHT_SLASH
;	db 49, DOUBLE_HIT
;	db 53, ;IRON_HEAD
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

ShuckleEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL ;WITHDRAW, removed
	db 1, WRAP ;CONSTRICT, removed
	db 1, BIDE
	db 9, ENCORE
	db 14, SAFEGUARD
	db 22, WRAP
	db 27, REST
;	db 35, ;GASTRO_ACID
;	db 40, BUG_BITE
;	db 48, ;POWER_TRICK
	db 0 ; no more level-up moves

HeracrossEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, ENDURE
	db 7, FURY_STRIKES ;FURY_ATTACK, removed
;	db 13, AERIAL_ACE
	db 19, ROCK_SMASH ;BRICK_BREAK
	db 25, COUNTER
	db 31, TAKE_DOWN
;	db 37, CLOSE_COMBAT
	db 43, FLAIL ;REVERSAL, removed
;	db 49, ;FEINT
	db 55, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks: ;GEN4
;	db EVOLVE_HOLD, RAZOR_CLAW, TR_NITE, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER 
;	db 1, ;TAUNT
	db 8, QUICK_ATTACK
	db 10, SCREECH
	db 14, FEINT_ATTACK
	db 21, FURY_STRIKES ;FURY_SWIPES, removed
	db 24, AGILITY
	db 28, ICY_WIND
	db 35, SLASH
;	db 38, BEAT_UP, removed
	db 42, METAL_CLAW
;	db 49, ICE_SHARD
	db 0 ; no more level-up moves

;WeavileEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;;	db 1, ;EMBARGO
;;	db 1, ;REVENGE
;;	db 1, ;ASSURANCE
;	db 1, SCRATCH
;	db 1, LEER
;;	db 1, ;TAUNT
;	db 8, QUICK_ATTACK
;	db 10, SCREECH
;	db 14, FEINT_ATTACK
;	db 21, FURY_STRIKES ;FURY_SWIPES, removed
;	db 24, NASTY_PLOT
;	db 28, ICY_WIND
;	db 35, NIGHT_SLASH
;;	db 38, ;FLING
;	db 42, METAL_CLAW
;;	db 49, DARK_PULSE
;	db 0 ; no more level-up moves

TeddiursaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, THIEF ;COVET
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
;	db 1, ;FAKE_TEARS
	db 8, FURY_STRIKES ;FURY_SWIPES, removed
	db 15, FEINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, SNORE
	db 50, THRASH
;	db 57, ;FLING
	db 0 ; no more level-up moves

UrsaringEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, THIEF ;COVET
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
;	db 1, ;FAKE_TEARS
	db 8, FURY_STRIKES ;FURY_SWIPES, removed
	db 15, FEINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, SNORE
	db 58, THRASH
;	db 67, ;HAMMER_ARM
	db 0 ; no more level-up moves

SlugmaEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
;	db 1, ;YAWN
	db 1, SMOG
	db 8, EMBER
	db 11, ROCK_THROW
	db 16, HARDEN
	db 23, RECOVER
	db 26, ANCIENTPOWER
	db 31, AMNESIA
;	db 38, ;LAVA_PLUME
	db 41, ROCK_SLIDE
	db 46, BODY_SLAM
	db 53, FLAMETHROWER
;	db 56, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ;YAWN
	db 1, SMOG
	db 8, EMBER
	db 11, ROCK_THROW
	db 16, HARDEN
	db 23, RECOVER
	db 26, ANCIENTPOWER
	db 31, AMNESIA
;	db 40, ;LAVA_PLUME
	db 45, ROCK_SLIDE
	db 52, BODY_SLAM
	db 61, FLAMETHROWER
;	db 66, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT ;ODOR_SLEUTH
;	db 4, MUD_SPORT
	db 8, ICY_WIND ;POWDER_SNOW
	db 13, MUD_SLAP
	db 16, ENDURE
;	db 20, ;MUD_BOMB
	db 25, ICY_WIND ;dupe
;	db 28, ICE_SHARD
	db 32, TAKE_DOWN
	db 37, EARTHQUAKE
	db 40, HAZE ;MIST, removed
	db 44, BLIZZARD
	db 49, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks: ;GEN4
;	db EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, PECK
	db 1, FORESIGHT ;ODOR_SLEUTH
;	db 4, MUD_SPORT
	db 8, ICY_WIND ;POWDER_SNOW
	db 13, MUD_SLAP
	db 16, ENDURE
;	db 20, ;MUD_BOMB
	db 25, ICY_WIND ;dupe
;	db 28, ICE_FANG
	db 32, TAKE_DOWN
;	db 33, FURY_STRIKES
	db 40, EARTHQUAKE
	db 48, HAZE ;MIST, removed
	db 56, BLIZZARD
	db 65, AMNESIA
	db 0 ; no more level-up moves

;MamowineEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, ANCIENTPOWER
;	db 1, PECK
;	db 1, FORESIGHT ;ODOR_SLEUTH
;;	db 4, MUD_SPORT
;	db 8, ICY_WIND ;POWDER_SNOW
;	db 13, MUD_SLAP
;	db 16, ENDURE
;;	db 20, ;MUD_BOMB
;;	db 25, ;HAIL
;;	db 28, ICE_FANG
;	db 32, TAKE_DOWN
;;	db 33, DOUBLE_HIT
;	db 40, EARTHQUAKE
;	db 48, HAZE ;MIST, removed
;	db 56, BLIZZARD
;	db 65, SCARY_FACE
;	db 0 ; no more level-up moves

CorsolaEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 8, WATER_GUN ;BUBBLE, removed
	db 13, RECOVER
;	db 16, ;REFRESH
;	db 20, ROCK_BLAST
	db 25, BUBBLEBEAM
;	db 28, ;LUCKY_CHANT
	db 32, ANCIENTPOWER
;	db 37, ;AQUA_RING
	db 40, ICICLE_SPEAR ;SPIKE_CANNON, removed
;	db 44, POWER_GEM
	db 48, MIRROR_COAT
;	db 53, EARTH_POWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 19, BUBBLEBEAM
	db 23, FOCUS_ENERGY
;	db 27, ;BULLET_SEED
;	db 32, ;WATER_PULSE
;	db 36, ;SIGNAL_BEAM
	db 40, ICE_BEAM
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, ;GUNK_SHOT
;	db 1, ROCK_BLAST
	db 1, WATER_GUN
	db 6, WRAP ;CONSTRICT, removed
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 19, BUBBLEBEAM
	db 23, FOCUS_ENERGY
	db 25, OCTAZOOKA
;	db 29, ;BULLET_SEED
;	db 36, ;WRING_OUT
;	db 42, ;SIGNAL_BEAM
	db 48, ICE_BEAM
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, PECK
	db 5, GROWL
	db 9, PAY_DAY ; Mirror Move → new move
	db 13, SING
	db 17, ICY_WIND
	db 21, WING_ATTACK
;	db 25, ;HAIL
	db 29, DRILL_PECK
	db 33, AURORA_BEAM
	db 37, BODY_SLAM
	db 41, ROOST
;	db 45, ;FLY, removed
	db 49, BELLY_DRUM
	db 53, BLIZZARD
	db 0 ; no more level-up moves

MantineEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, PSYBEAM
;	db 1, BULLET_SEED
;	db 1, ;SIGNAL_BEAM
	db 1, TACKLE
	db 1, WATER_GUN ;BUBBLE, removed
	db 1, SUPERSONIC
	db 1, BUBBLEBEAM
;	db 4, SUPERSONIC
;	db 10, BUBBLEBEAM
	db 13, HEADBUTT
	db 19, AGILITY
	db 22, WING_ATTACK
;	db 28, ;WATER_PULSE
	db 31, TAKE_DOWN
	db 37, CONFUSE_RAY
;	db 40, ;BOUNCE
;	db 46, ;AQUA_RING
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, MUD_SLAP ;SAND_ATTACK, removed
	db 9, SWIFT
	db 12, AGILITY
	db 17, FURY_STRIKES ;FURY_ATTACK, removed
;	db 20, FEINT
;	db 23, AIR_CUTTER
	db 28, SPIKES
;	db 31, METAL_SOUND
	db 34, STEEL_WING
;	db 39, AIR_SLASH
	db 42, SLASH
;	db 45, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
;	db 4, ;HOWL (att up)
	db 9, SMOG
	db 14, ROAR
	db 17, BITE
	db 22, FORESIGHT ;ODOR_SLEUTH
;	db 27, BEAT_UP, removed
;	db 30, FIRE_FANG
	db 35, FEINT_ATTACK
;	db 40, ;EMBARGO
	db 43, FLAMETHROWER
	db 48, CRUNCH
;	db 53, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, THUNDER_FANG
	db 1, LEER
	db 1, EMBER
;	db 4, ;HOWL (att up)
	db 9, SMOG
	db 14, ROAR
	db 17, BITE
	db 22, FORESIGHT ;ODOR_SLEUTH
;	db 28, BEAT_UP, removed
;	db 32, FIRE_FANG
	db 38, FEINT_ATTACK
;	db 44, ;EMBARGO
	db 48, FLAMETHROWER
	db 54, CRUNCH
;	db 60, NASTY_PLOT
	db 0 ; no more level-up moves

;this is under seadra(overlap)
;KingdraEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, WATER_GUN ;BUBBLE, removed
;	db 4, SMOKESCREEN
;	db 8, LEER
;;	db 11, WATER_GUN ;dupe
;	db 14, FOCUS_ENERGY
;	db 18, BUBBLEBEAM
;	db 23, AGILITY
;	db 26, TWISTER
;;	db 30, ;BRINE
;	db 40, HYDRO_PUMP
;;	db 48, DRAGON_DANCE
;;	db 57, DRAGON_PULSE
;	db 0 ; no more level-up moves

PhanpyEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, FORESIGHT ;ODOR_SLEUTH
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, TAKE_DOWN
	db 15, ROLLOUT
	db 19, MAGNITUDE ;NATURAL_GIFT
	db 24, BODY_SLAM ;SLAM, removed
	db 28, ENDURE
	db 33, CHARM
;	db 37, ;LAST_RESORT
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, FIRE_FANG
;	db 1, THUNDER_FANG
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, FLAIL
	db 6, RAPID_SPIN
;	db 10, ;KNOCK_OFF
	db 15, ROLLOUT
	db 19, MAGNITUDE
	db 24, BODY_SLAM ;SLAM, removed
	db 25, FURY_STRIKES ;FURY_ATTACK, removed
;	db 31, ;ASSURANCE
	db 39, SCARY_FACE
	db 46, EARTHQUAKE
;	db 54, ;GIGA_IMPACT
	db 0 ; no more level-up moves

Porygon2EvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, CONVERSION2, removed
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
;	db 23, ;MAGNET_RISE
;	db 29, ;SIGNAL_BEAM
;	db 34, ;RECYCLE
;	db 40, ;DISCHARGE
	db 45, LOCK_ON
	db 51, TRI_ATTACK
;	db 56, ;MAGIC_COAT
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

StantlerEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
;	db 7, ASTONISH
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, MUD_SLAP ;SAND_ATTACK, removed
	db 21, TAKE_DOWN
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
;	db 33, ;ROLE_PLAY
;	db 38, ZEN_HEADBUTT
;	db 43, ;IMPRISON
;	db 49, ;CAPTIVATE
;	db 53, ;ME_FIRST
	db 0 ; no more level-up moves

SmeargleEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks: ;GEN4
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
;	db 1, ;HELPING_HAND
;	db 1, ;FAKE_OUT
	db 1, FORESIGHT
	db 0 ; no more level-up moves

HitmontopEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BULK_UP
	db 1, LOW_SWEEP ;ROLLING_KICK
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, DOUBLE_KICK ;TRIPLE_KICK, removed
	db 24, RAPID_SPIN
	db 28, COUNTER
;	db 33, ;FEINT
	db 37, AGILITY
;	db 42, ;GYRO_BALL
	db 46, PROTECT ;DETECT, removed
;	db 51, CLOSE_COMBAT
	db 55, FLAIL ;REVERSAL, removed
	db 0 ; no more level-up moves

SmoochumEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 5, LICK
	db 9, CONFUSE_RAY ;SWEET_KISS, removed
	db 11, ICY_WIND ;POWDER_SNOW
	db 15, CONFUSION
	db 18, SING
	db 21, MEAN_LOOK
;	db 25, ;FAKE_TEARS
;	db 28, ;LUCKY_CHANT
;	db 31, ;AVALANCHE
	db 35, PSYCHIC_M
;	db 38, ;COPYCAT
	db 41, PERISH_SONG
	db 45, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, THUNDERSHOCK
	db 10, LOW_SWEEP ;LOW_KICK
	db 16, SWIFT
;	db 19, ;SHOCK_WAVE
	db 25, LIGHT_SCREEN
	db 28, THUNDERPUNCH
;	db 34, ;DISCHARGE
	db 37, THUNDERBOLT
	db 43, SCREECH
	db 46, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, FEINT_ATTACK
	db 19, FIRE_SPIN
	db 25, CONFUSE_RAY
	db 28, FIRE_PUNCH
;	db 34, ;LAVA_PLUME
	db 37, FLAMETHROWER
	db 43, SUNNY_DAY
	db 46, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, RECOVER ;MILK_DRINK, removed
	db 15, BIDE
	db 19, ROLLOUT
	db 24, BODY_SLAM
;	db 29, ZEN_HEADBUTT
;	db 35, ;CAPTIVATE
;	db 41, ;GYRO_BALL
	db 48, HEAL_BELL
;	db 55, ;WAKE_UP_SLAP
	db 0 ; no more level-up moves

; chansey (overlap)
;BlisseyEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, TACKLE ;POUND, removed
;	db 1, GROWL
;	db 5, LEER ;TAIL_WHIP, removed
;;	db 9, ;REFRESH
;	db 12, SOFTBOILED
;	db 16, DOUBLESLAP
;	db 20, MINIMIZE
;	db 23, SING
;;	db 27, ;FLING
;	db 31, DEFENSE_CURL
;	db 34, LIGHT_SCREEN
;	db 38, SEED_BOMB ;EGG_BOMB, removed
;;	db 42, ;HEALING_WISH
;	db 46, DOUBLE_EDGE
;	db 0 ; no more level-up moves

RaikouEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, CRUNCH
;	db 50, THUNDER_FANG
;	db 57, ;DISCHARGE
;	db 64, ;EXTRASENSORY
	db 71, RAIN_DANCE
	db 78, CALM_MIND
	db 85, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FLAMETHROWER
	db 43, SWAGGER
;	db 50, FIRE_FANG
;	db 57, ;LAVA_PLUME
;	db 64, ;EXTRASENSORY
	db 71, FIRE_BLAST
	db 78, CALM_MIND
;	db 85, ;ERUPTION
	db 0 ; no more level-up moves

SuicuneEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, BUBBLEBEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, HAZE ;MIST, removed
	db 43, MIRROR_COAT
;	db 50, ICE_FANG
;	db 57, ;TAILWIND
;	db 64, ;EXTRASENSORY
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 85, BLIZZARD
	db 0 ; no more level-up moves

LarvitarEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, BITE
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, ROCK_SLIDE
	db 19, SCARY_FACE
	db 23, THRASH
;	db 28, DARK_PULSE
;	db 32, ;PAYBACK
	db 37, CRUNCH
	db 41, EARTHQUAKE
;	db 46, STONE_EDGE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, BITE
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, ROCK_SLIDE
	db 19, SCARY_FACE
	db 23, THRASH
;	db 28, DARK_PULSE
;	db 34, ;PAYBACK
	db 41, CRUNCH
	db 47, EARTHQUAKE
;	db 54, STONE_EDGE
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks: ;GEN4
	db 0 ; no more evolutions
;	db 1, THUNDER_FANG
;	db 1, ICE_FANG
;	db 1, FIRE_FANG
	db 1, LEER
	db 1, BITE
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, ROCK_SLIDE
	db 19, SCARY_FACE
	db 23, THRASH
;	db 28, DARK_PULSE
;	db 34, ;PAYBACK
	db 41, CRUNCH
	db 47, EARTHQUAKE
;	db 54, STONE_EDGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, ROAR ;WHIRLWIND, removed
;	db 1, ;WEATHER_BALL
	db 9, GUST
;	db 15, ;DRAGON_RUSH
;	db 23, ;EXTRASENSORY
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, AEROBLAST
;	db 50, ;PUNISHMENT
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, ;NATURAL_GIFT
	db 93, CALM_MIND
	db 99, SKY_ATTACK
	db 0 ; no more level-up moves

HoOhEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, ROAR ;WHIRLWIND, removed
;	db 1, ;WEATHER_BALL
	db 9, GUST
;	db 15, ;BRAVE_BIRD
;	db 23, ;EXTRASENSORY
	db 29, SUNNY_DAY
	db 37, FIRE_BLAST
	db 43, SACRED_FIRE
;	db 50, ;PUNISHMENT
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
;	db 85, ;NATURAL_GIFT
	db 93, CALM_MIND
	db 99, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
;	db 19, MAGICAL_LEAF
	db 28, ANCIENTPOWER
	db 37, BATON_PASS
;	db 46, ;NATURAL_GIFT
;	db 55, ;HEAL_BLOCK
	db 64, FUTURE_SIGHT
;	db 73, ;HEALING_WISH
;	db 82, ;LEAF_STORM
	db 91, PERISH_SONG
	db 0 ; no more level-up moves

MissingnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, WATER_GUN
	db 1, SKY_ATTACK
	db 0 ; no more level-up moves
	