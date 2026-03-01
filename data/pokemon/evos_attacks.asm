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


BulbasaurEvosAttacks:
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
	db 31, SEED_BOMB ;worry_seed, x
	db 33, SYNTHESIS
	db 37, SOLARBEAM ;seed_bomb, 31
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
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
	db 36, SEED_BOMB ;worry_seed, x
	db 39, SYNTHESIS
	db 44, SOLARBEAM ;seed_bomb, 36
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
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
	db 39, SEED_BOMB ;worry_seed, x
	db 45, SYNTHESIS
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, DRAGON_RAGE
	db 19, SCARY_FACE
	db 25, FIRE_FANG
	db 28, SLASH
	db 34, FLAMETHROWER
	db 37, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 17, DRAGON_RAGE
	db 21, SCARY_FACE
	db 28, FIRE_FANG
	db 32, SLASH
	db 39, FLAMETHROWER
	db 43, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_CLAW
	db 1, SHADOW_CLAW
	db 1, AIR_SLICE ;air_slash, ~
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 17, DRAGON_RAGE
	db 21, SCARY_FACE
	db 28, FIRE_FANG
	db 32, SLASH
	db 36, WING_ATTACK ;evolution move?
	db 42, FLAMETHROWER
	db 49, FIRE_SPIN
	db 59, HEAT_WAVE
	db 66, FLARE_BLITZ
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER ;tail_whip, removed
	db 7, WATER_GUN ;bubble, removed
	db 10, DEFENSE_CURL ;withdraw, removed
	db 13, AQUA_JET ;water_gun, 7
	db 16, BITE
	db 19, RAPID_SPIN
	db 22, PROTECT
	db 25, WATER_PULSE
	db 28, AQUA_TAIL
	db 31, CLOSE_COMBAT ;skull_bash, removed
	db 34, BARRIER ;iron_defense, x
	db 37, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER ;tail_whip, removed
	db 7, WATER_GUN ;bubble, removed
	db 10, DEFENSE_CURL ;withdraw, removed
	db 13, AQUA_JET ;water_gun, 7
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, AQUA_TAIL
	db 36, CLOSE_COMBAT ;skull_bash, removed
	db 40, BARRIER ;iron_defense, x
	db 44, RAIN_DANCE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON
	db 1, TACKLE
	db 4, LEER ;tail_whip, removed
	db 7, WATER_GUN ;bubble, removed
	db 10, DEFENSE_CURL ;withdraw, removed
	db 13, AQUA_JET ;water_gun, 7
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, AQUA_TAIL
	db 39, CLOSE_COMBAT ;skull_bash, removed
	db 46, BARRIER ;iron_defense, x
	db 53, RAIN_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 15, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN ;evolution move?
	db 8, HARDEN
	db 9, HARDEN
	db 10, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
;	db 1, CONFUSION
	db 10, GUST ;evolution move?
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 16, GUST ;10
	db 18, SUPERSONIC
	db 22, HYPNOSIS ;whirlwind, removed
	db 24, PSYBEAM
	db 28, SILVER_WIND
	db 30, AGILITY ;tailwind, x
	db 34, SAFEGUARD
	db 36, ATTRACT ;captivate, x
	db 40, BUG_BUZZ
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 15, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN ;evolution move?
	db 8, HARDEN
	db 9, HARDEN
	db 10, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
;	db 1, FURY_STRIKES ;fury_attack, removed
	db 10, PIN_MISSILE ;evolution move?
	db 11, FURY_STRIKES ;fury_attack, removed
	db 13, FOCUS_ENERGY
	db 16, POISON_TAIL ;twineedle, removed
	db 19, RAGE
	db 22, PURSUIT
	db 25, SPIKES ;toxic_spikes, x
	db 28, BUG_BITE ;PIN_MISSILE, 10
	db 31, AGILITY
	db 34, FEINT_ATTACK ;assurance, x
	db 37, POISON_JAB
	db 40, FLAIL ;endeavor, x
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ;sand_attack, removed
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, DOUBLE_TEAM ;whirlwind, removed
	db 21, TWISTER
	db 25, CHARM ;featherdance, x
	db 29, AGILITY
	db 33, WING_ATTACK
	db 37, ROOST
	db 41, STEEL_WING ;tailwind, x
	db 45, DRILL_PECK ;mirror_move, removed
	db 49, AIR_SLICE ;air_slash, ~
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ;sand_attack, removed
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, DOUBLE_TEAM ;whirlwind, removed
	db 22, TWISTER
	db 27, CHARM ;featherdance, x
	db 32, AGILITY
	db 37, WING_ATTACK
	db 42, ROOST
	db 47, STEEL_WING ;tailwind, x
	db 52, DRILL_PECK ;mirror_move, removed
	db 57, AIR_SLICE ;air_slash, ~
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ;sand_attack, removed
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, DOUBLE_TEAM ;whirlwind, removed
	db 22, TWISTER
	db 27, CHARM ;featherdance, x
	db 32, AGILITY
	db 38, WING_ATTACK
	db 44, ROOST
	db 50, STEEL_WING ;tailwind, x
	db 56, DRILL_PECK ;mirror_move, removed
	db 62, AIR_SLICE ;air_slash, ~
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ;tail_whip, removed
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 19, FEINT_ATTACK ;sucker_punch, x
	db 22, CRUNCH
	db 25, THIEF ;assurance, x
	db 28, SUPER_FANG
	db 31, DOUBLE_EDGE
	db 34, FLAIL ;endeavor, x
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, TACKLE
	db 1, LEER ;tail_whip, removed
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 19, FEINT_ATTACK ;sucker_punch, x
	db 20, SCARY_FACE ;evolution move?
	db 24, CRUNCH
	db 29, THIEF ;assurance, x
	db 34, SUPER_FANG
	db 39, DOUBLE_EDGE
	db 44, FLAIL ;endeavor, x
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, LEER
	db 9, FURY_STRIKES ;fury_attack, removed
	db 13, PURSUIT
	db 17, AERIAL_ACE
	db 21, STEEL_WING ;mirror_move, removed
	db 25, AGILITY
	db 29, FEINT_ATTACK ;assurance, x
	db 33, ROOST
	db 37, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
;	db 1, ;pluck, x
	db 1, GROWL
	db 1, PECK
	db 5, LEER
	db 9, FURY_STRIKES ;fury_attack, removed
	db 13, PURSUIT
	db 17, AERIAL_ACE
	db 23, STEEL_WING ;mirror_move, removed
	db 29, AGILITY
	db 35, FEINT_ATTACK ;assurance, x
	db 41, ROOST
	db 47, DRILL_PECK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, LEER
	db 1, WRAP
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 25, DISABLE ;stockpile, swallow, spit_up, x
	db 28, MUD_BOMB
	db 33, POISON_TAIL ;gastro_acid, x
	db 36, HAZE
	db 41, POISON_JAB ;gunk_shot, x
	db 0 ; no more level-up moves

ArbokEvosAttacks:
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
	db 22, CRUNCH ;evolution move?
	db 28, DISABLE ;stockpile, swallow, spit_up, x
	db 34, MUD_BOMB
	db 42, POISON_TAIL ;gastro_acid, x
	db 48, HAZE
	db 56, POISON_JAB ;gunk_shot, x
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 5, LEER ;tail_whip, removed
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 14, THUNDERSHOCK ;duplicate for wild
	db 18, DOUBLE_TEAM
	db 21, BODY_SLAM ;slam, removed
	db 26, THUNDERBOLT
	db 29, FEINT_ATTACK ;feint, x
	db 34, AGILITY
	db 37, DISCHARGE
	db 42, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM ;pichu1
	db 1, NASTY_PLOT ;pichu18
	db 1, THUNDERSHOCK
	db 1, LEER ;tail_whip, removed
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 7, MUD_SLAP ;sand_attack, removed
	db 9, POISON_STING
	db 13, RAPID_SPIN
	db 15, SWIFT
	db 19, FURY_STRIKES ;fury_swipes, removed
	db 21, ROLLOUT
	db 25, FURY_CUTTER
	db 27, MUD_SHOT ;sand_tomb, x
	db 31, SLASH
	db 33, GYRO_BALL
	db 37, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 7, MUD_SLAP ;sand_attack, removed
	db 9, POISON_STING
	db 13, RAPID_SPIN
	db 15, SWIFT
	db 19, FURY_STRIKES ;fury_swipes, removed
	db 21, ROLLOUT
	db 22, CRUSH_CLAW ;evolution move?
	db 28, FURY_CUTTER
	db 33, MUD_SHOT ;sand_tomb, x
	db 40, SLASH
	db 45, GYRO_BALL
	db 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ;tail_whip, removed
	db 9, POISON_STING
	db 13, FOCUS_ENERGY ;helping_hand, x
	db 19, FURY_STRIKES ;fury_swipes, removed
	db 21, DOUBLE_KICK
	db 25, BITE
	db 31, SPIKES ;toxic_spikes, x
	db 33, SWAGGER ;flatter, x
	db 37, CRUNCH
	db 43, ATTRACT ;captivate, x
	db 45, POISON_FANG
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ;tail_whip, removed
	db 9, POISON_STING
	db 13, FOCUS_ENERGY ;helping_hand, x
	db 20, FURY_STRIKES ;fury_swipes, removed
	db 23, DOUBLE_KICK
	db 28, BITE
	db 35, SPIKES ;toxic_spikes, x
	db 38, SWAGGER ;flatter, x
	db 43, CRUNCH
	db 50, ATTRACT ;captivate, x
	db 58, POISON_FANG
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FOCUS_ENERGY ;tail_whip, removed
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, BODY_SLAM
	db 43, EARTH_POWER
	db 58, CLOSE_COMBAT ;superpower, x
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ;tail_whip, removed
	db 9, POISON_STING
	db 13, FOCUS_ENERGY ;helping_hand, x
	db 19, FURY_STRIKES ;fury_swipes, removed
	db 21, DOUBLE_KICK
	db 25, HORN_ATTACK
	db 31, SPIKES ;toxic_spikes, x
	db 33, SWAGGER ;flatter, x
	db 37, POISON_JAB
	db 43, ATTRACT ;captivate, x
	db 45, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ;tail_whip, removed
	db 9, POISON_STING
	db 13, FOCUS_ENERGY ;helping_hand, x
	db 19, FURY_STRIKES ;fury_swipes, removed
	db 23, DOUBLE_KICK
	db 28, HORN_ATTACK
	db 35, SPIKES ;toxic_spikes, x
	db 38, SWAGGER ;flatter, x
	db 43, POISON_JAB
	db 50, ATTRACT ;captivate, x
	db 58, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
	db 43, EARTH_POWER
	db 58, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE ;POUND, removed
	db 1, GROWL
	db 4, ENCORE
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 16, DIZZY_PUNCH ;follow_me, x
	db 19, MINIMIZE
	db 22, WAKE_UP_SLAP
	db 25, REFLECT      ;cosmic_power, x
	db 25, LIGHT_SCREEN ;cosmic_power, x
	db 28, CHARM ;lucky_chant, x
	db 31, METRONOME
	db 34, EXTRASENSORY ;gravity, x
	db 37, MOONLIGHT
	db 40, TRI_ATTACK ;LIGHT_SCREEN, 25
	db 43, FLASH_CANNON ;meteor_mash, x
	db 56, HEAL_BELL ;healing_wish
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, MAGICAL_LEAF ;cleffa16
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
	db 4, LEER ;tail_whip, removed
	db 7, ROAR
	db 11, QUICK_ATTACK
	db 14, FIRE_SPIN ;will_o_wisp, x
	db 17, CONFUSE_RAY
	db 21, DISABLE ;imprison, x
	db 24, FLAMETHROWER
	db 27, SAFEGUARD
	db 31, FEINT_ATTACK ;payback, x
	db 34, HEX ;FIRE_SPIN, 14
	db 37, ATTRACT ;captivate, x
	db 41, DESTINY_BOND ;grudge, x
	db 44, EXTRASENSORY
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, TACKLE ;pound, removed
	db 13, DISABLE
	db 17, ROLLOUT
	db 21, DOUBLESLAP
	db 25, REST
	db 29, BODY_SLAM
	db 33, GYRO_BALL
	db 37, WAKE_UP_SLAP
	db 41, PERISH_SONG ;mimic, removed
	db 45, LOUD_VOICE ;hyper_voice, x
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
	db 9, ASTONISH
	db 13, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
	db 25, AERIAL_ACE ;air_cutter, x
	db 29, MEAN_LOOK
	db 33, POISON_FANG
	db 37, HAZE
	db 41, AIR_SLICE ;air_slash, ~
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
	db 9, ASTONISH
	db 13, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
	db 22, SCREECH ;evolution move?
	db 27, AERIAL_ACE ;air_cutter, x
	db 33, MEAN_LOOK
	db 39, POISON_FANG
	db 45, HAZE
	db 51, AIR_SLICE ;air_slash, ~
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, MEGA_DRAIN
	db 25, CHARM ;lucky_chant, x
	db 29, HIDDEN_POWER ;BULLET_SEED ;natural_gift, x
	db 33, MOONLIGHT
	db 37, GIGA_DRAIN
	db 41, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
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
	db 29, CHARM ;lucky_chant, x
	db 35, HIDDEN_POWER ;BULLET_SEED ;natural_gift, x
	db 41, MOONLIGHT
	db 47, GIGA_DRAIN
	db 53, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HEAL_BELL ;aromatherapy, ~
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 53, PETAL_DANCE
	db 60, SOLARBEAM
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
	db 38, HEAL_BELL   ;aromatherapy, ~
	db 38, SWEET_SCENT ;aromatherapy, ~
	db 43, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
;	db 1, POISON_JAB ;cross_poison, x
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, LEECH_LIFE
	db 17, SPORE
	db 22, SLASH
	db 30, GROWTH
	db 39, GIGA_DRAIN
	db 47, HEAL_BELL   ;aromatherapy, ~
	db 47, SWEET_SCENT ;aromatherapy, ~
	db 55, X_SCISSOR
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
	db 35, SIGNAL_BEAM
	db 37, ZEN_HEADBUTT
	db 41, POISON_FANG
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, SILVER_WIND
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
	db 31, GUST ;evolution move?
	db 37, SIGNAL_BEAM
	db 41, ZEN_HEADBUTT
	db 47, POISON_FANG
	db 55, PSYCHIC_M
	db 59, BUG_BUZZ
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, MUD_SLAP ;sand_attack, removed
	db 4, GROWL
	db 7, ASTONISH
	db 12, MAGNITUDE
	db 15, MUD_SHOT ;MUD_SLAP, 1
	db 18, DIG
	db 23, FEINT_ATTACK ;sucker_punch, x
	db 26, EARTH_POWER
	db 29, MUD_BOMB
	db 34, SLASH
	db 37, EARTHQUAKE
	db 40, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, MUD_SLAP ;sand_attack, removed
	db 4, GROWL
	db 7, ASTONISH
	db 12, MAGNITUDE
	db 15, MUD_SHOT ;MUD_SLAP, 1
	db 18, DIG
	db 23, FEINT_ATTACK ;sucker_punch, x
;	sb 26, SPIKES ;sand_tomb, x
	db 28, EARTH_POWER
	db 33, MUD_BOMB
	db 40, SLASH
	db 45, EARTHQUAKE
	db 50, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, PAY_DAY ;fake_out, x
	db 14, FURY_STRIKES ;fury_swipes, removed
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, SWAGGER ;taunt, x
	db 30, FLAIL ;PAY_DAY, 9
	db 33, SLASH
	db 38, NASTY_PLOT
	db 41, CRUSH_CLAW ;assurance, x
	db 46, ATTRACT ;captivate, x
	db 49, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, THIEF ;switcheroo, x
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, PAY_DAY ;fake_out, x
	db 14, FURY_STRIKES ;fury_swipes, removed
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, SWAGGER ;taunt, x
	db 28, SWIFT ;evolution move?
	db 32, POWER_GEM
	db 37, SLASH
	db 44, NASTY_PLOT
	db 49, CRUSH_CLAW ;assurance, x
	db 56, ATTRACT ;captivate, x
	db 61, NIGHT_SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, LEER ;tail_whip, removed
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
	db 22, WATER_PULSE
	db 27, FURY_STRIKES ;fury_swipes, removed
	db 31, SCREECH
	db 35, PSYBEAM ;psych_up, removed
	db 37, ZEN_HEADBUTT
	db 44, AMNESIA
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, LEER ;tail_whip, removed
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
	db 22, WATER_PULSE
	db 27, FURY_STRIKES ;fury_swipes, removed
	db 31, SCREECH
	db 35, PSYBEAM ;psych_up, removed ;evolution move?
	db 37, ZEN_HEADBUTT
	db 46, AMNESIA
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, FURY_STRIKES ;fury_swipes, removed
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, LOW_SWEEP ;assurance, x
	db 33, SWAGGER
	db 37, CROSS_CHOP
	db 41, FEINT_ATTACK ;THRASH, 45
	db 45, THRASH ;punishment, x
	db 49, CLOSE_COMBAT
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, FURY_STRIKES ;fury_swipes, removed
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, LOW_SWEEP ;assurance, x
	db 28, RAGE ;evolution move?
	db 35, SWAGGER
	db 41, CROSS_CHOP
	db 47, FEINT_ATTACK ;THRASH, 45
	db 53, THRASH ;punishment, x
	db 59, CLOSE_COMBAT
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, BITE
	db 6, EMBER
	db 9, LEER
	db 14, FORESIGHT ;odor_sleuth, x
;	db 17, ;HELPING_HAND
	db 20, FLAME_WHEEL
	db 25, FLAIL ;reversal, removed
	db 28, FIRE_FANG
	db 31, TAKE_DOWN
	db 34, FLAMETHROWER
	db 39, AGILITY
	db 42, CRUNCH
	db 45, HEAT_WAVE
	db 48, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, FORESIGHT ;odor_sleuth, x
	db 1, ROAR
	db 1, BITE
	db 1, THUNDER_FANG
	db 1, FIRE_FANG
	db 39, EXTREMESPEED ;evolution move?
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, SPLASH ;water_sport, x
	db 5, WATER_GUN ;bubble, removed
	db 8, HYPNOSIS
	db 11, AQUA_JET ;WATER_GUN ;5
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
	db 28, MUD_SHOT
	db 31, BELLY_DRUM
	db 35, WAKE_UP_SLAP
	db 38, HYDRO_PUMP
	db 41, MUD_BOMB
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, SPLASH ;water_sport, x
	db 5, WATER_GUN ;bubble, removed
	db 8, HYPNOSIS
	db 11, AQUA_JET ;WATER_GUN ;5
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 27, BUBBLEBEAM
	db 32, MUD_SHOT
	db 37, BELLY_DRUM
	db 43, WAKE_UP_SLAP
	db 48, HYDRO_PUMP
	db 53, MUD_BOMB
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_PUNCH
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 43, DYNAMICPUNCH
	db 53, LOCK_ON ;mind_reader, removed
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_TRADE, -1, ALAKAZAM
	db EVOLVE_ITEM, LINKING_CORD, ALAKAZAM
AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, FLASH ;kinesis, removed
	db 16, CONFUSION ;evolution move?
	db 18, DISABLE
	db 22, FORESIGHT ;miracle_eye, x
	db 24, PSYBEAM
	db 28, REFLECT
	db 30, RECOVER
	db 34, ZEN_HEADBUTT ;psycho_cut, x
	db 36, CALM_MIND ;role_play, x
	db 40, PSYCHIC_M
	db 42, FUTURE_SIGHT
	db 46, PAIN_SPLIT ;trick, x
	db 0 ; no more level-up moves

;AlakazamEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, TELEPORT
;	db 1, FLASH ;kinesis, removed
;	db 16, CONFUSION ;evolution move?
;	db 18, DISABLE
;	db 22, FORESIGHT ;miracle_eye, x
;	db 24, PSYBEAM
;	db 28, REFLECT
;	db 30, RECOVER
;	db 34, ZEN_HEADBUTT ;psycho_cut, x
;	db 36, CALM_MIND ;role_play, x
;	db 40, PSYCHIC_M
;	db 42, FUTURE_SIGHT
;	db 46, PAIN_SPLIT ;trick, x
;	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, KARATE_CHOP ;low_kick, removed
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 10, LOW_SWEEP ;KARATE_CHOP, 1
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
	db 22, FLAIL ;revenge, x
	db 25, BRICK_BREAK ;vital_throw, removed
	db 31, SUBMISSION
	db 34, WAKE_UP_SLAP
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 46, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_TRADE, -1, MACHAMP
	db EVOLVE_ITEM, LINKING_CORD, MACHAMP
MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLOSE_COMBAT
	db 1, KARATE_CHOP ;low_kick, removed
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 10, LOW_SWEEP ;KARATE_CHOP, 1
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
	db 22, FLAIL ;revenge, x
	db 25, BRICK_BREAK ;vital_throw, removed
	db 32, SUBMISSION
	db 36, WAKE_UP_SLAP
	db 40, CROSS_CHOP
	db 44, SCARY_FACE
	db 51, DYNAMICPUNCH
	db 0 ; no more level-up moves

;MachampEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, CLOSE_COMBAT
;	db 1, KARATE_CHOP ;low_kick, removed
;	db 1, LEER
;	db 7, FOCUS_ENERGY
;	db 10, LOW_SWEEP ;KARATE_CHOP, 1
;	db 13, FORESIGHT
;	db 19, SEISMIC_TOSS
;	db 22, FLAIL ;revenge, x
;	db 25, BRICK_BREAK ;vital_throw, removed
;	db 32, SUBMISSION
;	db 36, WAKE_UP_SLAP
;	db 40, CROSS_CHOP
;	db 44, SCARY_FACE
;	db 51, DYNAMICPUNCH
;	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, BULLET_SEED ;knock_off, x
	db 29, SWEET_SCENT
	db 35, SLUDGE ;gastro_acid, x
	db 39, RAZOR_LEAF
	db 41, BODY_SLAM ;slam, removed
	db 47, FLAIL ;wring_out, x
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, BULLET_SEED ;knock_off, x
	db 29, SWEET_SCENT
	db 35, SLUDGE ;gastro_acid, x
	db 39, RAZOR_LEAF
	db 41, BODY_SLAM ;slam, removed
	db 47, FLAIL ;wring_out, x
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, SYNTHESIS
	db 1, SEED_BOMB
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 47, LEAF_BLADE
	db 53, SOLARBEAM ;leaf_storm, x
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WRAP ;constrict, removed
	db 12, ACID
;	db 15, ;toxic_spikes, x
	db 15, BUBBLEBEAM
	db 19, WRAP
	db 22, BARRIER
	db 26, WATER_PULSE
	db 29, POISON_JAB
	db 33, HEX
	db 36, SCREECH
	db 40, HYDRO_PUMP
	db 43, FLAIL ;wring_out, x
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WRAP ;constrict, removed
	db 12, ACID
;	db 15, ;toxic_spikes, x
	db 15, BUBBLEBEAM
	db 19, WRAP
	db 22, BARRIER
	db 26, WATER_PULSE
	db 29, POISON_JAB
	db 36, HEX
	db 42, SCREECH
	db 49, HYDRO_PUMP
	db 55, FLAIL ;wring_out, x
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ;mud_sport, x
	db 8, AGILITY ;rock_polish, x
	db 11, ROCK_THROW
	db 15, MAGNITUDE
	db 18, TAKE_DOWN ; or SUBMISSION
	db 22, ROLLOUT
	db 25, ROCK_BLAST
	db 29, EARTHQUAKE
	db 32, SELFDESTRUCT ;explosion, removed
	db 36, DOUBLE_EDGE
	db 39, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_TRADE, -1, GOLEM
	db EVOLVE_ITEM, LINKING_CORD, GOLEM
GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLOSE_COMBAT
	db 1, EARTH_POWER
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ;mud_sport, x
	db 8, AGILITY ;rock_polish, x
	db 11, ROCK_THROW
	db 15, MAGNITUDE
	db 18, TAKE_DOWN ; or SUBMISSION
	db 22, ROLLOUT
	db 27, ROCK_BLAST
	db 33, EARTHQUAKE
	db 38, SELFDESTRUCT ;explosion, removed
	db 44, DOUBLE_EDGE
	db 39, STONE_EDGE
	db 0 ; no more level-up moves

;GolemEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, CLOSE_COMBAT
;	db 1, EARTH_POWER
;	db 1, TACKLE
;	db 1, DEFENSE_CURL
;	db 4, MUD_SLAP ;mud_sport, x
;	db 8, AGILITY ;rock_polish, x
;	db 11, ROCK_THROW
;	db 15, MAGNITUDE
;	db 18, TAKE_DOWN ; or SUBMISSION
;	db 22, ROLLOUT
;	db 27, ROCK_BLAST
;	db 33, EARTHQUAKE
;	db 38, SELFDESTRUCT ;explosion, removed
;	db 44, DOUBLE_EDGE
;	db 39, STONE_EDGE
;	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 6, LEER ;tail_whip, removed
	db 10, EMBER
	db 15, FLAME_WHEEL
	db 19, STOMP
	db 24, FIRE_SPIN
	db 28, TAKE_DOWN
	db 33, AGILITY
	db 37, FIRE_BLAST
	db 42, BOUNCE
	db 46, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 1, MEGAHORN
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 6, LEER ;tail_whip, removed
	db 10, EMBER
	db 15, FLAME_WHEEL
	db 19, STOMP
	db 24, FIRE_SPIN
	db 28, TAKE_DOWN
	db 33, AGILITY
	db 37, FIRE_BLAST
	db 40, FURY_STRIKES ;fury_attack, x ;evolution move?
	db 49, BOUNCE
	db 58, FLARE_BLITZ
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
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
	db 29, WATER_PULSE
	db 34, ZEN_HEADBUTT
	db 39, RECOVER ;slack_off, x
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 53, RAIN_DANCE
	db 57, BELLY_DRUM ;psych_up, removed
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
;	db 1, ;YAWN
	db 1, TACKLE
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
	db 29, WATER_PULSE
	db 34, ZEN_HEADBUTT
	db 37, DEFENSE_CURL ;withdraw, removed
	db 41, RECOVER ;slack_off, x
	db 47, AMNESIA
	db 54, PSYCHIC_M
	db 61, RAIN_DANCE
	db 67, BELLY_DRUM ;psych_up, removed
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, METAL_SOUND
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, LOUD_VOICE ;sonicboom, removed
	db 17, THUNDER_WAVE
	db 22, SPARK
	db 27, LOCK_ON
	db 30, DISCHARGE ;magnet_bomb, x
	db 33, SCREECH
	db 38, MIRROR_SHOT ;DISCHARGE, 30
	db 43, THUNDERBOLT ;MIRROR_SHOT, 38
	db 46, BARRIER ;magnet_rise, x
	db 49, GYRO_BALL
	db 54, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
;	db EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
;	db EVOLVE_LOCATION, POWER_PLANT, MAGNEZONE
;MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ;evolution move?
	db 1, METAL_SOUND
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, LOUD_VOICE ;sonicboom, removed
	db 17, THUNDER_WAVE
	db 22, SPARK
	db 27, LOCK_ON
	db 30, DISCHARGE ;magnet_bomb, x
	db 34, SCREECH
	db 40, MIRROR_SHOT ;DISCHARGE, 30
	db 46, THUNDERBOLT ;MIRROR_SHOT, 40
	db 50, BARRIER ;magnet_rise, x
	db 54, GYRO_BALL
	db 60, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 1, PECK
	db 1, MUD_SLAP ;sand_attack, removed
	db 1, LEER
	db 1, FURY_CUTTER
	db 7, FURY_STRIKES ;fury_attack, removed
	db 9, ASTONISH ;knock_off, x
	db 13, AERIAL_ACE
	db 19, SLASH
	db 21, FALSE_SWIPE ;air_cutter, ~
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 33, NIGHT_SLASH
	db 37, AIR_SLICE ;air_slash, ~
	db 43, FEINT_ATTACK ;FALSE_SWIPE, 21
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_STRIKES ;fury_attack, removed
	db 19, PURSUIT
	db 23, LOUD_VOICE ;uproar, ~
	db 28, DOUBLE_TEAM ;accupressure, x
	db 32, DOUBLESLAP ;double_hit, x
	db 37, AGILITY
	db 41, DRILL_PECK
	db 46, FLAIL ;endeavor, x
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_STRIKES ;fury_attack, removed
	db 19, PURSUIT
	db 23, LOUD_VOICE ;uproar, ~
	db 28, DOUBLE_TEAM ;accupressure, x
	db 34, TRI_ATTACK ;evolution move?
	db 41, AGILITY
	db 47, DRILL_PECK
	db 54, FLAIL ;endeavor, x
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 7, WATER_GUN ;water_sport, x
	db 11, ICY_WIND
	db 13, ENCORE
	db 17, ICE_SHARD
	db 21, REST
	db 23, SNORE ;aqua_ring, x
	db 27, AURORA_BEAM
	db 31, AQUA_JET
	db 33, WATER_PULSE ;brine, x
	db 37, TAKE_DOWN
	db 41, WATERFALL ;dive, x
	db 43, AQUA_TAIL
	db 47, ICE_BEAM
	db 51, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 7, SIGNAL_BEAM
	db 11, ICY_WIND
	db 13, ENCORE
	db 17, ICE_SHARD
	db 21, REST
	db 23, SNORE ;aqua_ring, x
	db 27, AURORA_BEAM
	db 31, AQUA_JET
	db 33, WATER_PULSE ;brine, x
	db 34, HORN_DRILL ;sheer_cold, ~
	db 37, TAKE_DOWN
	db 41, WATERFALL ;dive, x
	db 43, AQUA_TAIL
	db 47, ICE_BEAM
	db 51, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, SMOG ;poison_gas, removed
	db 1, TACKLE ;pound, removed
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 17, MINIMIZE
	db 20, SLUDGE
	db 23, MUD_BOMB
	db 28, FEINT_ATTACK ;fling, x
	db 33, SCREECH
	db 36, POISON_JAB ;SLUDGE_BOMB, 44
	db 39, BARRIER ;acid_armor, removed
	db 44, SLUDGE_BOMB ;gunk_shot, x
	db 49, PAIN_SPLIT ;memento, x
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, ICE_PUNCH
	db 1, THUNDERPUNCH
	db 1, SMOG ;poison_gas, removed
	db 1, TACKLE ;pound, removed
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 17, MINIMIZE
	db 20, SLUDGE
	db 23, MUD_BOMB
	db 28, FEINT_ATTACK ;fling, x
	db 33, SCREECH
	db 36, POISON_JAB ;SLUDGE_BOMB, 54
	db 44, BARRIER ;acid_armor, removed
	db 54, SLUDGE_BOMB ;gunk_shot, x
	db 65, PAIN_SPLIT ;memento, x
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL ;withdraw, removed
	db 8, SUPERSONIC
	db 13, ICICLE_SPEAR
	db 16, PROTECT
	db 20, LEER
	db 25, WHIRLPOOL ;clamp, removed
	db 28, ICE_SHARD
	db 32, AURORA_BEAM
	db 37, WATERFALL ;WHIRLPOOL, 25
	db 40, BARRIER ;iron_defense, x
	db 44, OCTAZOOKA ;brine, x
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, OCTAZOOKA ;toxic_spikes, x
	db 1, ROCK_BLAST ;new
	db 1, DEFENSE_CURL ;withdraw, removed
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 28, SPIKES
	db 40, ICICLE_SPEAR ;spike_cannon, removed ;evolution move?
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ;spite, removed
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, FEINT_ATTACK ;sucker_punch, x
	db 26, HEX ;payback, x
	db 29, DREAM_EATER ;SHADOW_BALL, 33
	db 33, SHADOW_BALL ;DREAM_EATER, 29
	db 36, DARK_PULSE
	db 40, DESTINY_BOND
	db 43, NIGHTMARE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR
	db EVOLVE_ITEM, LINKING_CORD, GENGAR
GengarEvosAttacks: ;GEN4  ;HEX
	db 0 ; no more evolutions
	db 1, SHADOW_CLAW ;evolution move? gengar
	db 1, HYPNOSIS ;evolution move? haunter
	db 1, LICK
	db 5, DISABLE ;spite, removed
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, FEINT_ATTACK ;sucker_punch, x
	db 28, HEX ;payback, x
	db 33, DREAM_EATER ;SHADOW_BALL, 33
	db 39, SHADOW_BALL ;DREAM_EATER, 29
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, NIGHTMARE
	db 0 ; no more level-up moves

;GengarEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, SHADOW_CLAW ;evolution move?
;	db 1, HYPNOSIS
;	db 1, LICK
;	db 5, DISABLE ;spite, removed
;	db 8, MEAN_LOOK
;	db 12, CURSE
;	db 15, NIGHT_SHADE
;	db 19, CONFUSE_RAY
;	db 22, FEINT_ATTACK ;sucker_punch, x
;	db 28, HEX ;payback, x
;	db 33, DREAM_EATER ;SHADOW_BALL, 33
;	db 39, SHADOW_BALL ;DREAM_EATER, 29
;	db 44, DARK_PULSE
;	db 50, DESTINY_BOND
;	db 55, NIGHTMARE
;	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, WRAP ;bind, removed
	db 6, SCREECH
	db 9, ROCK_THROW
	db 14, RAGE
	db 17, MUD_SHOT ;rock_tomb, x
	db 22, SANDSTORM
	db 25, BODY_SLAM ;slam, removed
	db 30, AGILITY ;rock_polish, x
	db 33, DRAGONBREATH
	db 38, IRON_TAIL
	db 41, EARTH_POWER ;sand_tomb, x
	db 46, DOUBLE_EDGE
	db 49, STONE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, TACKLE ;pound, removed
	db 1, HYPNOSIS
	db 7, DISABLE
	db 9, CONFUSION
	db 15, HEADBUTT
	db 18, SMOG ;poison_gas, removed
	db 21, BULK_UP ;meditate, removed
	db 26, PSYBEAM
	db 29, BARRIER ;psych_up, removed
	db 32, ZEN_HEADBUTT ;HEADBUTT, dupe
	db 37, SWAGGER
	db 40, PSYCHIC_M
	db 43, NASTY_PLOT
	db 50, FUTURE_SIGHT ;ZEN_HEADBUTT, 32
;	db 53, ;FUTURE_SIGHT, 50
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHTMARE
	db 1, TACKLE ;pound, removed
	db 1, HYPNOSIS
	db 7, DISABLE
	db 9, CONFUSION
	db 15, HEADBUTT
	db 18, SMOG ;poison_gas, removed
	db 21, BULK_UP ;meditate, removed
	db 28, PSYBEAM
	db 33, BARRIER ;psych_up, removed
	db 38, ZEN_HEADBUTT ;HEADBUTT, dupe
	db 45, SWAGGER
	db 50, PSYCHIC_M
	db 55, NASTY_PLOT
	db 64, FUTURE_SIGHT ;ZEN_HEADBUTT, 32
;	db 69, ;FUTURE_SIGHT, 50
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
;	db 1, mud_sport, x
	db 1, WATER_GUN ;bubble, removed
	db 5, LEER ;vicegrip, removed
	db 9, METAL_CLAW ;LEER, 5
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SHOT
	db 21, CRUSH_CLAW ;METAL_CLAW, 9
	db 25, STOMP
	db 29, PROTECT
	db 31, GUILLOTINE
	db 35, BODY_SLAM ;SLAM, removed
	db 39, WATER_PULSE ;brine, x
	db 41, CRABHAMMER
	db 45, FLAIL
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
;	db 1, mud_sport, x
	db 1, WATER_GUN ;bubble, removed
	db 5, LEER ;vicegrip, removed
	db 9, METAL_CLAW ;LEER, 5
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SHOT
	db 21, CRUSH_CLAW ;METAL_CLAW, 9
	db 25, STOMP
	db 32, PROTECT
	db 37, GUILLOTINE
	db 44, BODY_SLAM ;SLAM, removed
	db 51, WATER_PULSE ;brine, x
	db 56, CRABHAMMER
	db 63, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
;	db 1, ;charge, x
	db 1, TACKLE
	db 8, LOUD_VOICE ;sonicboom, removed
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 22, LIGHT_SCREEN
	db 26, THUNDERSHOCK ;charge_beam, x
	db 29, SELFDESTRUCT
	db 33, SWIFT
	db 36, BARRIER ;magnet_rise, x
	db 40, GYRO_BALL
	db 43, DOUBLE_EDGE ;explosion, removed
	db 47, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
;	db 1, ;charge, x
	db 1, TACKLE
	db 8, LOUD_VOICE ;sonicboom, removed
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 22, LIGHT_SCREEN
	db 26, THUNDERSHOCK ;charge_beam, x
	db 29, SELFDESTRUCT
	db 35, SWIFT
	db 40, BARRIER ;magnet_rise, x
	db 46, GYRO_BALL
	db 51, DOUBLE_EDGE ;explosion, removed
	db 57, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
;	db 1, BULLET_SEED ;barrage, removed
	db 1, LOUD_VOICE ;uproar, x
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 17, BULLET_SEED
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 27, CONFUSION
	db 33, SUNNY_DAY ;worry_seed
	db 37, HIDDEN_POWER ;natural_gift, x
	db 43, SOLARBEAM
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, SEED_BOMB
	db 1, BULLET_SEED ;barrage, removed
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 17, STOMP
	db 27, SEED_BOMB ;egg_bomb, removed
	db 37, MAGICAL_LEAF ;wood_hammer, x
	db 47, LEAF_BLADE ;leaf_storm, x
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, TACKLE ;tail_whip, removed
	db 7, BONE_CLUB
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 31, THRASH
	db 33, FEINT_ATTACK ;fling, x
	db 37, FURY_STRIKES ;bone_rush, removed
	db 41, FLAIL ;endeavor, x
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, TACKLE ;tail_whip, removed
	db 7, BONE_CLUB
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 33, THRASH
	db 37, FEINT_ATTACK ;fling, x
	db 43, FURY_STRIKES ;bone_rush, removed
	db 49, FLAIL ;endeavor, x
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
;	db 1, ;revenge, x
	db 1, DOUBLE_KICK ;evolution move?
	db 5, BULK_UP ;meditate, removed
	db 9, LOW_SWEEP ;rolling_kick, x
	db 13, JUMP_KICK
	db 17, BRICK_BREAK
	db 21, FOCUS_ENERGY
	db 25, FEINT_ATTACK ;feint, x
	db 29, JUMP_KICK ;hi_jump_kick, removed
	db 33, LOCK_ON ;mind_reader, removed
	db 37, FORESIGHT
	db 41, FLAME_WHEEL ;blaze_kick, x
	db 45, ENDURE
	db 49, FOCUS_BLAST ;mega_kick, removed
	db 53, CLOSE_COMBAT
	db 57, FLAIL ;reversal, removed
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, BULK_UP ;revenge, x
	db 1, FURY_STRIKES ;comet_punch, removed ;evolution move?
	db 6, AGILITY
	db 11, PURSUIT
	db 16, MACH_PUNCH
	db 16, BULLET_PUNCH
	db 21, DIZZY_PUNCH ;feint, x
	db 26, AERIAL_ACE ;vacuum_wave, x
	db 31, THUNDERPUNCH
	db 31, ICE_PUNCH
	db 31, FIRE_PUNCH
	db 36, BRICK_BREAK ;sky_uppercut
	db 41, DYNAMICPUNCH ;mega_punch, removed
	db 46, PROTECT ;detect, removed
	db 51, COUNTER
	db 56, CLOSE_COMBAT
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
	db 13, PURSUIT ;knock_off, x
	db 17, WRAP
	db 21, STOMP
	db 25, DISABLE
	db 29, BODY_SLAM ;slam, removed
	db 33, ROLLOUT
	db 37, MACH_PUNCH ;me_first, x
	db 41, HEAL_BELL ;refresh, x
	db 45, SCREECH
	db 49, IRON_TAIL ;power_whip, x
	db 53, FLAIL ;wring_out, x
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
;	db 1, SMOG ;poison_gas, removed
	db 1, TACKLE
	db 6, SMOG ;SMOG, 1
	db 10, SMOKESCREEN
	db 15, PURSUIT ;assurance, x
	db 19, SELFDESTRUCT
	db 24, SLUDGE
	db 28, HAZE
	db 33, GYRO_BALL
	db 37, DOUBLE_EDGE ;explosion, removed
	db 42, SLUDGE_BOMB
	db 46, DESTINY_BOND
	db 51, CURSE ;memento, x
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
;	db 1, SMOG ;poison_gas, removed
	db 1, TACKLE
	db 6, SMOG ;SMOG, 1
	db 10, SMOKESCREEN
	db 15, PURSUIT ;assurance, x
	db 19, SELFDESTRUCT
	db 24, SLUDGE
	db 28, HAZE
	db 33, GYRO_BALL
	db 40, DOUBLE_EDGE ;explosion, removed
	db 48, SLUDGE_BOMB
	db 55, DESTINY_BOND
	db 63, CURSE ;memento, x
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER ;tail_whip, removed
	db 9, STOMP
	db 13, FURY_STRIKES ;fury_attack, removed
	db 21, SCARY_FACE
	db 25, ROCK_BLAST
	db 33, TAKE_DOWN
	db 37, HORN_DRILL
	db 45, STONE_EDGE
	db 49, EARTHQUAKE
	db 57, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER ;tail_whip, removed
	db 9, STOMP
	db 13, FURY_STRIKES ;fury_attack, removed
	db 21, SCARY_FACE
	db 25, ROCK_BLAST
	db 33, TAKE_DOWN
	db 37, HORN_DRILL
	db 42, CLOSE_COMBAT ;hammer_arm, x ;evolution move?
	db 45, STONE_EDGE
	db 49, EARTHQUAKE
	db 57, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
BlisseyEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, TACKLE ;pound, removed
	db 1, GROWL
	db 5, LEER ;tail_whip, removed
	db 9, HEAL_BELL ;refresh, x
	db 12, SOFTBOILED
	db 16, DOUBLESLAP
	db 20, MINIMIZE
	db 23, SING
	db 27, FEINT_ATTACK ;fling, x
	db 31, DEFENSE_CURL
	db 34, LIGHT_SCREEN
	db 38, SEED_BOMB ;egg_bomb, removed
	db 42, SUBSTITUTE ;healing_wish, x
;	db 42, DOUBLE_EDGE
	db 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
;	db EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
	db 0 ; no more evolutions
	db 1, LEECH_SEED ;ingrain, x
	db 1, WRAP ;constrict, removed
	db 5, SLEEP_POWDER
	db 8, ABSORB
	db 12, GROWTH
	db 15, POISONPOWDER
	db 19, VINE_WHIP
	db 22, DOUBLESLAP ;bind, removed
	db 26, MEGA_DRAIN
	db 29, STUN_SPORE
	db 33, ANCIENTPOWER
	db 36, THIEF ;knock_off, x
	db 40, SYNTHESIS ;natural_gift, x
	db 43, BODY_SLAM ;slam, removed
	db 47, SUNNY_DAY ;tickle, x
	db 50, FLAIL ;wring_out, x
	db 54, SOLARBEAM ;power_whip, x
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, ICE_PUNCH
	db 1, THUNDERPUNCH
	; relearner
	db 1, ENDURE
	db 1, FURY_STRIKES ;comet_punch, removed
	db 1, ASTONISH ;fake_out, x
	db 1, LEER
	db 7, ASTONISH ;fake_out, x
	db 10, LEER ;tail_whip, removed
	db 13, BITE
	db 19, DIZZY_PUNCH ;mega_punch, removed
	db 22, RAGE
	db 25, DYNAMICPUNCH ;DIZZY_PUNCH, 19
	db 31, CRUNCH
	db 34, ENDURE
	db 37, OUTRAGE
	db 43, DOUBLESLAP ;double_hit, x
	db 46, FEINT_ATTACK ;sucker_punch, x
	db 49, FLAIL ;reversal, removed
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN ;bubble, removed
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, AQUA_JET ;WATER_GUN, 1
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 23, AGILITY
	db 26, TWISTER
	db 30, OCTAZOOKA ;brine, x
	db 35, HYDRO_PUMP
	db 38, DRAGON_DANCE
	db 42, DRAGON_PULSE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
KingdraEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, WATER_GUN ;bubble, removed
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, AQUA_JET ;WATER_GUN, 1
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 23, AGILITY
	db 26, TWISTER
	db 30, OCTAZOOKA ;brine, x
	db 40, HYDRO_PUMP
	db 48, DRAGON_DANCE
	db 57, DRAGON_PULSE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, LEER ;tail_whip, removed
	db 1, PECK
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, WATER_PULSE
	db 21, FLAIL
	db 27, AQUA_JET ;aqua_ring, x
	db 31, FURY_STRIKES ;fury_attack, removed
	db 37, WATERFALL
	db 41, HORN_DRILL
	db 47, AGILITY
	db 51, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 1, LEER ;tail_whip, removed
	db 1, PECK
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, WATER_PULSE
	db 21, FLAIL
	db 27, AQUA_JET ;aqua_ring, x
	db 31, FURY_STRIKES ;fury_attack, removed
	db 40, WATERFALL
	db 47, HORN_DRILL
	db 56, AGILITY
	db 63, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, WATER_GUN
	db 10, RAPID_SPIN
	db 15, RECOVER
	db 19, CONVERSION ;HIDDEN_POWER ;camoflage, x
	db 24, SWIFT
	db 28, BUBBLEBEAM
	db 33, MINIMIZE
	db 37, GYRO_BALL
	db 42, LIGHT_SCREEN
	db 46, POWER_GEM
	db 51, BARRIER ;HIDDEN_POWER ;cosmic_power, x
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, SWIFT
	db 28, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MAGICAL_LEAF
	db 1, BARRIER
	db 4, CONFUSION
	db 8, BULK_UP ;meditate, removed
	db 11, ENCORE
	db 15, DOUBLESLAP
	db 18, PROTECT ;mimic, removed
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 35, PSYBEAM
	db 29, SUBSTITUTE
	db 32, CONFUSE_RAY ;recycle, x
	db 36, THIEF ;trick, x
	db 43, FUTURE_SIGHT ;role_play, x
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, MACH_PUNCH ;vacuum_wave, x
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, AERIAL_ACE ;RAZOR_WIND
	db 37, DOUBLE_TEAM
	db 41, X_SCISSOR
	db 45, NIGHT_SLASH
	db 49, CROSS_CHOP ;double_hit, x
	db 53, AIR_SLICE ;air_slash, x
	db 57, SWORDS_DANCE
	db 61, FEINT_ATTACK ;feint, x
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ;pound, removed
	db 5, LICK
	db 8, HYPNOSIS ;lovely_kiss, x
	db 11, POWDER_SNOW
	db 15, DOUBLESLAP
	db 18, ICE_PUNCH
	db 21, MEAN_LOOK
	db 25, METAL_SOUND ;fake_tears, x
	db 28, WAKE_UP_SLAP
	db 33, ICY_WIND ;avalanche, x
	db 39, BODY_SLAM
	db 44, FLAIL ;wring_out, x
	db 49, PERISH_SONG
	db 55, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, THUNDERSHOCK
	db 10, LOW_SWEEP ;low_kick, ~
	db 16, SWIFT
	db 19, SPARK ;shock_wave, x
	db 25, LIGHT_SCREEN
	db 28, THUNDERPUNCH
	db 37, DISCHARGE
	db 43, THUNDERBOLT
	db 52, SCREECH
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, FEINT_ATTACK
	db 19, FIRE_SPIN
	db 25, CONFUSE_RAY
	db 28, FIRE_PUNCH
	db 36, FLAME_WHEEL ;lave_plume, x
	db 41, FLAMETHROWER
	db 49, SUNNY_DAY
	db 54, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUSH_CLAW ;vicegrip, removed
	db 1, FOCUS_ENERGY
	db 4, WRAP ;bind, removed
	db 8, SEISMIC_TOSS
	db 13, HARDEN
	db 18, FLAIL ;revenge, x
	db 21, BRICK_BREAK
	db 25, CROSS_CHOP ;vital_throw, removed
	db 30, X_SCISSOR
	db 35, THRASH
	db 38, SWORDS_DANCE
	db 42, SUBMISSION
	db 47, GUILLOTINE
	db 52, CLOSE_COMBAT ;superpower, x
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER ;tail_whip, removed
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
	db 24, FEINT_ATTACK ;payback, x
	db 29, ZEN_HEADBUTT
	db 35, TAKE_DOWN
	db 41, SWAGGER
	db 48, THRASH
	db 55, GIGA_IMPACT
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
;	db 1, BOUNCE
;	db 1, SPLASH
;	db 1, SPLASH
;	db 1, SPLASH
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE ;evolution move?
	db 23, DRAGON_RAGE
	db 26, LEER
	db 29, TWISTER
	db 32, ICE_FANG
	db 35, AQUA_TAIL
	db 38, RAIN_DANCE
	db 41, HYDRO_PUMP
	db 44, DRAGON_DANCE
	db 47, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, GROWL
	db 1, WATER_GUN
	db 4, HAZE ;mist, removed
	db 7, CONFUSE_RAY
	db 10, ICE_SHARD
	db 14, WATER_PULSE
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, PERISH_SONG
	db 32, ICE_BEAM
	db 37, AQUA_TAIL ;brine, x
	db 43, SAFEGUARD
	db 49, HYDRO_PUMP
	db 55, HORN_DRILL ;sheer_cold, x
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks: ; GEN6/7
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
	db 1, GROWL ;baby-doll eyes, x
	db 5, LEER ;tail_whip, x
	db 9, MUD_SLAP ;sand_attack, x
	db 13, QUICK_ATTACK
	db 17, BITE
	db 17, SWIFT
	db 20, HEAL_BELL ;refresh, x
	db 25, TAKE_DOWN
	db 29, CHARM
	db 33, BATON_PASS
	db 37, FLAIL ;DOUBLE_EDGE, 41
	db 41, DOUBLE_EDGE ;last_resort
;	db 45, ;trump_card, x
	db 0 ; no more level-up moves

VaporeonEvosAttacks: ; GEN6/7
	db 0 ; no more evolutions
	db 1, WATER_GUN ;evolution move?
	db 1, TACKLE
	db 1, GROWL ;baby-doll eyes, x
	db 5, LEER ;tail_whip, x
	db 9, MUD_SLAP ;sand_attack, x
	db 10, SWIFT
	db 13, QUICK_ATTACK
	db 17, WATER_PULSE
	db 20, AURORA_BEAM
	db 25, AQUA_JET ;RECOVER ;aqua_ring
	db 29, BARRIER ;acid_armor, removed
	db 33, HAZE
	db 37, MUD_BOMB ;muddy_water, x
	db 41, DOUBLE_EDGE ;last_resort, x
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks: ; GEN6/7
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK ;evolution move?
	db 1, TACKLE
	db 1, GROWL ;baby-doll eyes, x
	db 5, LEER ;tail_whip, x
	db 9, MUD_SLAP ;sand_attack, x
	db 13, QUICK_ATTACK
	db 17, DOUBLE_KICK
	db 20, THUNDER_FANG
	db 25, PIN_MISSILE
	db 29, AGILITY
	db 33, THUNDER_WAVE
	db 37, DISCHARGE
	db 41, DOUBLE_EDGE ;last_resort
	db 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks: ; GEN6/7
	db 0 ; no more evolutions
	db 1, EMBER ;evolution move?
	db 1, TACKLE
	db 1, GROWL ;baby-doll eyes, x
	db 5, LEER ;tail_whip, x
	db 9, MUD_SLAP ;sand_attack, x
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FIRE_FANG
	db 25, FIRE_SPIN
	db 29, SCARY_FACE
	db 33, SMOG
	db 37, HEAT_WAVE ;lava_plume, x
	db 41, DOUBLE_EDGE ;last_resort
	db 45, FLARE_BLITZ
	db 0 ; no more level-up moves

;LeafeonEvosAttacks: ; GEN6/7
;	db 0 ; no more evolutions
;	db 1, RAZOR_LEAF ;evolution move?
;	db 1, TACKLE
;	db 1, GROWL ;baby-doll eyes, x
;	db 5, LEER ;tail_whip, x
;	db 9, MUD_SLAP ;sand_attack, x
;	db 13, QUICK_ATTACK
;	db 17, SLEEP_POWDER ;grasswhistle, x
;	db 20, MAGICAL_LEAF
;	db 25, GIGA_DRAIN
;	db 29, SWORDS_DANCE
;	db 33, SYNTHESIS
;	db 37, SUNNY_DAY
;	db 41, DOUBLE_EDGE ;last_resort
;	db 45, LEAF_BLADE
;	db 0 ; no more level-up moves

;GlaceonEvosAttacks: ; GEN6/7
;	db 0 ; no more evolutions
;	db 1, POWDER_SNOW ;evolution move?
;	db 1, TACKLE
;	db 1, GROWL ;baby-doll eyes, x
;	db 5, LEER ;tail_whip, x
;	db 9, MUD_SLAP ;sand_attack, x
;	db 13, QUICK_ATTACK
;	db 17, BITE
;	db 20, ICE_FANG
;	db 25, ICE_SHARD
;	db 29, BARRIER
;	db 33, MIRROR_COAT
;	db 37, ICE_BEAM ;hail, x
;	db 41, DOUBLE_EDGE ;last_resort
;	db 45, BLIZZARD
;	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
;	db 1, conversion2, removed
	db 1, TACKLE
	db 1, CONVERSION
	db 1, SWORDS_DANCE ;SHARPEN, tm
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, BARRIER ;magnet_rise, x
	db 29, SIGNAL_BEAM
	db 34, THUNDER_WAVE ;recycle
	db 40, DISCHARGE
	db 45, LOCK_ON
	db 51, TRI_ATTACK
	db 56, MIRROR_COAT ;magic_coat, x
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM ;from PORYGON2
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP ;constrict, removed
	db 1, DEFENSE_CURL ;withdraw, removed
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_SHOT
	db 28, BUBBLEBEAM ;brine, x
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 43, RAIN_DANCE ;tickle, x
	db 46, ROCK_BLAST
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP ;constrict, removed
	db 1, DEFENSE_CURL
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_SHOT
	db 28, BUBBLEBEAM ;brine, x
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 40, ICICLE_SPEAR ;SPIKE_CANNON, removed ;evolution move?
	db 48, RAIN_DANCE ;tickle, x
	db 56, ROCK_BLAST
	db 67, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_SLAP ;MUD_SHOT, 21
	db 21, MUD_SHOT ;sand_attack, removed
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 41, METAL_SOUND
	db 46, ANCIENTPOWER
	db 51, TAKE_DOWN ;wring_out, x
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_SLAP ;MUD_SHOT, 21
	db 21, MUD_SHOT ;sand_attack, removed
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 40, SLASH
	db 45, METAL_SOUND
	db 54, ANCIENTPOWER
	db 63, NIGHT_SLASH ;wring_out, x
	db 72, DOUBLE_EDGE ;NIGHT_SLASH, 63
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, THUNDER_FANG
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 1, BITE
	db 1, SCARY_FACE
	db 9, ROAR
	db 17, AGILITY
	db 25, ANCIENTPOWER
	db 33, CRUNCH
	db 41, TAKE_DOWN
	db 49, IRON_TAIL ;iron_head, x
	db 57, HYPER_BEAM
	db 65, ROCK_SLIDE
	db 73, GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, BELLY_DRUM
	db 20, HEADBUTT ;yawn, x
	db 25, REST
	db 28, SNORE
	db 28, SLEEP_TALK
	db 33, BODY_SLAM
	db 36, MEAN_LOOK ;block, x
	db 40, REST ;dupe for respawn moveset
	db 41, ROLLOUT
	db 44, CRUNCH
	db 49, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 8, HAZE ;mist, removed
	db 15, ICE_SHARD
	db 22, LOCK_ON ;mind_reader, removed
	db 29, ANCIENTPOWER
	db 36, AGILITY
	db 43, ICE_BEAM
	db 50, REFLECT
	db 57, ROOST
	db 64, STEEL_WING ;tailwind, x
	db 71, SKY_ATTACK ;BLIZZARD, 78
	db 78, BLIZZARD ;sheer_cold, x
	db 85, AEROBLAST ;hail, x
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 15, PROTECT ;detect, removed
	db 22, AERIAL_ACE ;pluck, x
	db 29, ANCIENTPOWER
	db 36, LIGHT_SCREEN ;EXTRASENSORY? ;charge, x
	db 43, AGILITY
	db 50, DISCHARGE
	db 57, ROOST
	db 64, LIGHT_SCREEN
	db 71, DRILL_PECK
	db 78, THUNDER
	db 85, RAIN_DANCE
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 8, FIRE_SPIN
	db 15, AGILITY
	db 22, ENDURE
	db 29, ANCIENTPOWER
	db 36, FLAMETHROWER
	db 43, SAFEGUARD
	db 50, AIR_SLICE ;air_slash, ~
	db 57, ROOST
	db 64, HEAT_WAVE
	db 71, SOLARBEAM
	db 78, SKY_ATTACK
	db 85, SUNNY_DAY
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ;slam, removed
	db 25, AGILITY
	db 31, AQUA_TAIL
	db 35, IRON_TAIL ;dragon_rush
	db 41, SAFEGUARD
	db 45, DRAGON_DANCE
	db 51, OUTRAGE
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ;slam, removed
	db 25, AGILITY
	db 33, AQUA_TAIL
	db 39, IRON_TAIL ;dragon_rush
	db 47, SAFEGUARD
	db 53, DRAGON_DANCE
	db 61, OUTRAGE
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, THUNDERPUNCH
	db 1, DRAGON_CLAW
	db 1, ROOST
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ;slam, removed
	db 25, AGILITY
	db 33, AQUA_TAIL
	db 39, IRON_TAIL ;dragon_rush
	db 47, SAFEGUARD
	db 53, DRAGON_DANCE
	db 55, WING_ATTACK ;evolution move?
	db 64, OUTRAGE
	db 73, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks: ;CUSTSOM
	db 0 ; no more evolutions
	db 1, LIGHT_SCREEN
	db 1, REFLECT
	db 1, AMNESIA
	db 1, AGILITY ;psych_up, removed
	db 1, CONFUSION
	db 1, DISABLE
	db 10, FORESIGHT ;miracle_eye, x
	db 20, FUTURE_SIGHT
	db 30, ZEN_HEADBUTT ;psycho_cut, x
	db 40, SWIFT
	db 50, BARRIER
	db 60, RECOVER
	db 70, PSYCHIC_M
	db 80, SAFEGUARD
	db 90, FOCUS_BLAST ;aura_sphere, x
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH ;new
	db 1, TRANSFORM
	db 1, TACKLE ;pound, removed
	db 10, CONFUSION ;mega_punch, removed
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, AMNESIA
	db 70, BATON_PASS
	db 80, NASTY_PLOT
	db 90, FOCUS_BLAST ;aura_sphere, x
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 17, REFLECT
	db 20, MAGICAL_LEAF
	db 23, HEAL_BELL ;aromatherapy, ~
	db 28, SWEET_SCENT
	db 31, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 39, SAFEGUARD
	db 42, ENERGY_BALL ;natural_gift, x
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	db 22, MAGICAL_LEAF
	db 26, HEAL_BELL ;aromatherapy, ~
	db 32, SWEET_SCENT
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM
	db 46, SAFEGUARD
	db 50, ENERGY_BALL ;natural_gift, x
	db 54, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	db 22, MAGICAL_LEAF
	db 26, HEAL_BELL ;aromatherapy, ~
	db 32, PETAL_DANCE ;evolution move?
	db 34, SWEET_SCENT
	db 40, LIGHT_SCREEN
	db 46, BODY_SLAM
	db 54, SAFEGUARD
	db 60, ENERGY_BALL ;natural_gift, x
	db 66, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
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
	db 31, HEAT_WAVE ;lave_plume, x
	db 37, FLAMETHROWER
	db 40, ROLLOUT
	db 46, DOUBLE_EDGE
	db 49, FIRE_BLAST ;eruption, x
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
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
	db 35, HEAT_WAVE ;lave_plume, x
	db 42, FLAMETHROWER
	db 46, ROLLOUT
	db 53, DOUBLE_EDGE
	db 57, FIRE_BLAST ;eruption, x
	db 0 ; no more level-up moves

; overlap (quilava)
;TyphlosionEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, TACKLE
;	db 1, LEER
;	db 6, SMOKESCREEN
;	db 10, EMBER
;	db 13, QUICK_ATTACK
;	db 20, FLAME_WHEEL
;	db 24, DEFENSE_CURL
;	db 31, SWIFT
;	db 35, HEAT_WAVE ;lave_plume, x
;	db 42, FLAMETHROWER
;	db 46, ROLLOUT
;	db 53, DOUBLE_EDGE
;	db 57, FIRE_BLAST ;eruption, x
;	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 20, ICE_FANG
	db 22, THRASH
	db 27, CRUNCH
	db 29, SLASH
	db 34, SCREECH
	db 36, AQUA_TAIL
	db 41, CLOSE_COMBAT ;superpower, x
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_FANG
	db 24, THRASH
	db 30, CRUNCH
	db 33, SLASH
	db 39, SCREECH
	db 42, AQUA_TAIL
	db 48, CLOSE_COMBAT ;superpower, x
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_FANG
	db 24, THRASH
	db 30, AGILITY
	db 32, CRUNCH
	db 37, SLASH
	db 45, SCREECH
	db 50, AQUA_TAIL
	db 58, CLOSE_COMBAT ;superpower, x
	db 63, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ;fury_swipes, removed
	db 16, CHARM ;helping_hand, x
	db 19, LOUD_VOICE ;follow_me, x
	db 25, HEADBUTT ;slam, removed
	db 28, REST
	db 31, FEINT_ATTACK ;sucker_punch, x
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, SUPER_FANG ;me_first, x
	db 47, DOUBLE_EDGE ;hyper_voice
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ;fury_swipes, removed
	db 17, CHARM ;helping_hand, x
	db 21, LOUD_VOICE ;follow_me, x
	db 28, HEADBUTT ;slam, removed
	db 32, REST
	db 36, FEINT_ATTACK ;sucker_punch, x
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, SUPER_FANG ;me_first, x
	db 56, DOUBLE_EDGE ;hyper_voice
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 5, HYPNOSIS
	db 9, PECK
	db 13, LOUD_VOICE ;uproar, ~
	db 17, REFLECT
	db 21, CONFUSION
	db 25, TAKE_DOWN
	db 29, AIR_SLICE ;air_slash, ~
	db 33, ZEN_HEADBUTT
	db 37, EXTRASENSORY
	db 41, HEX ;psycho_shift, x
	db 45, ROOST
	db 49, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKY_ATTACK
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 5, HYPNOSIS
	db 9, PECK
	db 13, LOUD_VOICE ;uproar, ~
	db 17, REFLECT
	db 22, CONFUSION
	db 27, TAKE_DOWN
	db 32, AIR_SLICE ;air_slash, ~
	db 37, ZEN_HEADBUTT
	db 42, EXTRASENSORY
	db 47, HEX ;psycho_shift, x
	db 52, ROOST
	db 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, SUPERSONIC
	db 9, FURY_STRIKES ;comet_punch, removed
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 17, MACH_PUNCH
	db 22, BATON_PASS
	db 25, SILVER_WIND
	db 30, AGILITY
	db 33, SWIFT
	db 38, DOUBLE_EDGE
	db 41, BUG_BUZZ
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, SUPERSONIC
	db 9, FURY_STRIKES ;comet_punch, removed
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 17, MACH_PUNCH
	db 24, BATON_PASS
	db 29, SILVER_WIND
	db 36, AGILITY
	db 41, SWIFT
	db 48, DOUBLE_EDGE
	db 53, BUG_BUZZ
	db 0 ; no more level-up moves

SpinarakEvosAttacks: ;GEN4
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, WRAP ;constrict, removed
	db 12, LEECH_LIFE
	db 15, NIGHT_SHADE
	db 19, BUG_BITE ;shadow_sneak, x
	db 22, FURY_STRIKES ;fury_swipes, removed
	db 26, FEINT_ATTACK ;sucker_punch, x
	db 29, MEAN_LOOK ;spider_web, removed
	db 33, AGILITY
	db 36, PIN_MISSILE
	db 40, PSYCHIC_M
	db 43, POISON_JAB
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
;	db 1, BUG_BITE
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, WRAP ;constrict, removed
	db 12, LEECH_LIFE
	db 15, NIGHT_SHADE
	db 19, BUG_BITE ;shadow_sneak, x
	db 23, FURY_STRIKES ;fury_swipes, removed
	db 28, FEINT_ATTACK ;sucker_punch, x
	db 32, MEAN_LOOK ;spider_web, removed
	db 37, AGILITY
	db 41, PIN_MISSILE
	db 46, PSYCHIC_M
	db 50, POISON_JAB
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, CROSS_CHOP ;cross_poison
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
	db 9, ASTONISH
	db 13, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
	db 27, AERIAL_ACE ;air_cutter
	db 33, MEAN_LOOK
	db 39, POISON_FANG
	db 45, HAZE
	db 51, AIR_SLICE ;air_slash, ~
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, WATER_GUN ;bubble, removed
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ;FLAIL, 12
	db 12, FLAIL ;WATER_GUN, 1
	db 17, CONFUSE_RAY
	db 20, SPARK
	db 23, TAKE_DOWN
	db 28, BUBBLEBEAM
	db 31, SIGNAL_BEAM
	db 34, DISCHARGE
	db 39, RECOVER ;aqua_ring, x
	db 42, HYDRO_PUMP
	db 45, RAIN_DANCE ;charge, x
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN ;bubble, removed
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ;FLAIL, 12
	db 12, FLAIL ;WATER_GUN, 1
	db 17, CONFUSE_RAY
	db 20, SPARK
	db 23, TAKE_DOWN
;	db 27, ;stockpile, swallow, spit_up, x
	db 29, BUBBLEBEAM
	db 34, SIGNAL_BEAM
	db 39, DISCHARGE
	db 46, RECOVER ;aqua_ring, x
	db 51, HYDRO_PUMP
	db 56, RAIN_DANCE ;charge, x
	db 0 ; no more level-up moves

; overlap (magneton)
;MagnezoneEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, TRI_ATTACK
;	db 1, METAL_SOUND
;	db 1, TACKLE
;	db 6, THUNDERSHOCK
;	db 11, SUPERSONIC
;	db 14, LOUD_VOICE ;sonicboom, removed
;	db 17, THUNDER_WAVE
;	db 22, SPARK
;	db 27, LOCK_ON
;	db 30, MAGNET_BOMB
;	db 34, SCREECH
;	db 40, DISCHARGE
;	db 46, MIRROR_SHOT
;	db 50, BARRIER ;magnet_rise, x
;	db 54, GYRO_BALL
;	db 60, ZAP_CANNON
;	db 0 ; no more level-up moves

;TangrowthEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, LEECH_SEED ;ingrain, x
;	db 1, WRAP ;constrict, removed
;	db 5, SLEEP_POWDER
;	db 8, ABSORB
;	db 12, GROWTH
;	db 15, POISONPOWDER
;	db 19, VINE_WHIP
;	db 22, DOUBLESLAP ;bind, removed
;	db 26, MEGA_DRAIN
;	db 29, STUN_SPORE
;	db 33, ANCIENTPOWER
;	db 36, THIEF ;knock_off, x
;	db 40, SYNTHESIS ;natural_gift, x
;	db 43, BODY_SLAM ;slam, removed
;	db 47, SUNNY_DAY ;tickle, x
;	db 50, FLAIL ;wring_out, x
;	db 54, SOLARBEAM ;power_whip, x
;	db 57, MEAN_LOOK ;block, x
;	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, LEER ;tail_whip, removed
	db 10, THUNDER_WAVE
	db 13, CONFUSE_RAY ;sweet_kiss, removed
	db 18, NASTY_PLOT
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, TACKLE ;pound, removed
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 10, CONFUSE_RAY ;sweet_kiss, removed
;	db 13, ;copycat, x
	db 16, MAGICAL_LEAF
	db 0 ; no more level-up moves

IgglybuffEvosAttacks: ;GEN4
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 5, DEFENSE_CURL
	db 9, TACKLE ;pound, removed
	db 13, CONFUSE_RAY ;sweet_kiss, removed
;	db 17, ;copycat, x
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 6, METRONOME
	db 10, CONFUSE_RAY ;sweet_kiss, removed
;	db 15, ;yawn, x
	db 19, ENCORE
;	db 24, ;follow_me, x
	db 28, RECOVER ;wish, x
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 42, BATON_PASS
	db 46, DOUBLE_EDGE
;	db 51, ;last_resort, x
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, MAGICAL_LEAF
	db 1, GROWL
	db 1, CHARM
	db 6, METRONOME
	db 10, CONFUSE_RAY ;sweet_kiss, removed
;	db 15, ;yawn, x
	db 19, ENCORE
;	db 24, ;follow_me, x
	db 28, RECOVER ;wish, x
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 42, BATON_PASS
	db 46, DOUBLE_EDGE
;	db 51, ;last_resort
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, CHARM ;lucky_chant, x
	db 17, FORESIGHT ;miracle_eye
	db 20, ASTONISH ;me_first
	db 23, CONFUSE_RAY
	db 28, ROOST ;wish, x
	db 33, HEX ;psycho_shift, x
	db 36, FUTURE_SIGHT
	db 39, AIR_SLICE ;ominous_wind, x
	db 44, PAIN_SPLIT ;power_swap, guard_swap, x
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, CHARM ;lucky_chant, x
	db 17, FORESIGHT ;miracle_eye
	db 20, ASTONISH ;me_first
	db 23, CONFUSE_RAY
	db 27, AGILITY ;tailwind, x
	db 30, ROOST ;wish, x
	db 37, HEX ;psycho_shift, x
	db 42, FUTURE_SIGHT
	db 47, AIR_SLICE ;ominous_wind, x
	db 54, PAIN_SPLIT ;power_swap, guard_swap, x
	db 59, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 10, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 19, SPARK ;cotton_spore, removed
	db 23, CONFUSE_RAY ;charge, x
	db 28, DISCHARGE
	db 32, SIGNAL_BEAM
	db 37, LIGHT_SCREEN
	db 41, POWER_GEM
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 10, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 20, SPARK ;cotton_spore, removed
	db 25, CONFUSE_RAY ;charge, x
	db 31, DISCHARGE
	db 36, SIGNAL_BEAM
	db 42, LIGHT_SCREEN
	db 47, POWER_GEM
	db 53, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH
	db 1, TACKLE
	db 5, GROWL
	db 10, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 20, SPARK ;cotton_spore, removed
	db 25, CONFUSE_RAY ;charge, x
	db 30, THUNDERPUNCH ;evolution move?
	db 34, DISCHARGE
	db 42, SIGNAL_BEAM
	db 51, LIGHT_SCREEN
	db 59, POWER_GEM
	db 68, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEAF_BLADE
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, SUNNY_DAY
	db 23, MAGICAL_LEAF
	db 53, SOLARBEAM ;leaf_storm, x
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 7, LEER ;tail_whip, removed
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 18, BUBBLEBEAM
	db 23, AQUA_JET ;aqua_ring, x
	db 27, DOUBLE_EDGE
	db 32, RAIN_DANCE
	db 37, AQUA_TAIL
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 7, LEER ;tail_whip, removed
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 18, BUBBLEBEAM
	db 27, AQUA_JET ;aqua_ring, x
	db 33, DOUBLE_EDGE
	db 40, RAIN_DANCE
	db 47, AQUA_TAIL
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
;	db 1, ;wood_hammer, x
;	db 1, ;copycat, x
	db 1, ROCK_THROW
	db 6, FLAIL
	db 9, LOW_SWEEP ;low_kick, ~
	db 14, ROCK_THROW
	db 17, FURY_STRIKES ;mimic, removed
	db 22, MEAN_LOOK ;block, x
	db 25, FEINT_ATTACK
	db 30, MUD_SHOT ;rock_tomb, x
	db 33, ROCK_SLIDE
	db 38, BODY_SLAM ;slam, removed
	db 41, PURSUIT ;sucker_punch, x
	db 46, DOUBLE_EDGE
	db 49, CLOSE_COMBAT ;hammer_arm, x
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 27, SWAGGER
	db 37, BOUNCE
	db 47, LOUD_VOICE ;hyper_voice, x
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, SYNTHESIS
	db 7, LEER ;tail_whip, removed
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, BULLET_SEED
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
	db 28, SILVER_WIND ;cotton_spore, removed
	db 31, BUG_BITE ;u_turn, x
	db 34, SPORE ;worry_seed, x
	db 37, GIGA_DRAIN
	db 40, BOUNCE
	db 43, ENERGY_BALL ;memento, x
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
JumpluffEvosAttacks: ;GEN4
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, SYNTHESIS
	db 7, LEER ;tail_whip, removed
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, BULLET_SEED
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
	db 32, SILVER_WIND ;cotton_spore, removed
	db 36, BUG_BITE ;u_turn, x
	db 40, SPORE ;worry_seed, x
	db 34, GIGA_DRAIN
	db 48, BOUNCE
	db 52, ENERGY_BALL ;memento, x
	db 0 ; no more level-up moves

; overlap (skiploom)
;JumpluffEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, SPLASH
;	db 4, SYNTHESIS
;	db 7, LEER ;tail_whip, removed
;	db 10, TACKLE
;	db 12, POISONPOWDER
;	db 14, STUN_SPORE
;	db 16, SLEEP_POWDER
;	db 20, BULLET_SEED
;	db 24, LEECH_SEED
;	db 28, MEGA_DRAIN
;	db 32, SILVER_WIND ;cotton_spore, removed
;	db 36, BUG_BITE ;u_turn, x
;	db 40, SPORE ;worry_seed, x
;	db 34, GIGA_DRAIN
;	db 48, BOUNCE
;	db 52, CHARM ;memento, x
;	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ;tail_whip, removed
	db 4, MUD_SLAP ;sand_attack, removed
	db 8, ASTONISH
	db 11, BATON_PASS
	db 15, CHARM ;tickle, x
	db 18, FURY_STRIKES ;fury_swipes, removed
	db 22, SWIFT
	db 25, SCREECH
	db 29, AGILITY
	db 32, DOUBLESLAP ;double_hit, x
	db 36, THIEF ;fling, x
	db 39, NASTY_PLOT
	db 43, DOUBLE_EDGE ;last_resort, x
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
;	db 1, GROWTH, 5
	db 1, ABSORB
	db 5, GROWTH ;MEGA_DRAIN, 9
	db 9, MEGA_DRAIN ;ingrain, x
	db 13, HYPNOSIS ;grasswhistle, x
	db 17, LEECH_SEED
	db 21, FOCUS_ENERGY ;endeavor, x
	db 25, RAZOR_LEAF ;worry_seed, x
	db 29, FLAIL ;RAZOR_LEAF, 25
	db 33, SYNTHESIS
	db 37, SUNNY_DAY
	db 41, GIGA_DRAIN
	db 45, SEED_BOMB
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
;	db 1, GROWTH, 5
	db 1, TACKLE ;pound, removed
	db 1, ABSORB
	db 5, GROWTH ;MEGA_DRAIN, 9
	db 9, MEGA_DRAIN ;ingrain, x
	db 13, HYPNOSIS ;grasswhistle, x
	db 17, LEECH_SEED
	db 21, BULLET_SEED
	db 25, RAZOR_LEAF ;worry_seed, x
	db 29, FLAIL ;RAZOR_LEAF, 25
	db 33, PETAL_DANCE
	db 37, SUNNY_DAY
	db 41, MAGICAL_LEAF ;SOLARBEAM, 45
	db 45, SOLARBEAM ;leaf_storm, x
	db 0 ; no more level-up moves

YanmaEvosAttacks:
;	db EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, GUST ;sonicboom, removed
	db 17, PROTECT ;detect, removed
	db 22, SUPERSONIC
	db 27, LOUD_VOICE ;uproar, x
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	db 49, BUG_BITE ;u_turn
	db 54, AIR_SLICE ;air_slash, ~
	db 57, BUG_BUZZ
	db 0 ; no more level-up moves

;YanmegaEvosAttacks: ;GEN4
;	db 0 ; no more evolutions
;	db 1, NIGHT_SLASH
;	db 1, BUG_BITE
;	db 1, TACKLE
;	db 1, FORESIGHT
;	db 6, QUICK_ATTACK
;	db 11, DOUBLE_TEAM
;	db 14, GUST ;sonicboom, removed
;	db 17, PROTECT ;detect, removed
;	db 22, SUPERSONIC
;	db 27, LOUD_VOICE ;uproar, x
;	db 30, PURSUIT
;	db 33, ANCIENTPOWER
;	db 38, FEINT_ATTACK
;	db 43, SLASH
;	db 46, SCREECH
;	db 49, BUG_BITE ;u_turn
;	db 54, AIR_SLICE ;air_slash, ~
;	db 57, BUG_BUZZ
;	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ;tail_whip, removed
	db 5, MUD_SLAP ;mud_sport, x
	db 9, MUD_SHOT
	db 15, HEADBUTT ;slam, removed
	db 19, MUD_BOMB
	db 23, AMNESIA
	db 29, REST ;yawn, x
	db 29, SNORE ;yawn, x
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, HAZE ;mist, removed
	db 47, HYDRO_PUMP ;muddy_water, x
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ;tail_whip, removed
	db 5, MUD_SLAP ;mud_sport, x
	db 9, MUD_SHOT
	db 15, HEADBUTT ;slam, removed
	db 19, MUD_BOMB
	db 23, AMNESIA
	db 31, REST ;yawn, x
	db 31, SNORE ;yawn, x
	db 36, EARTHQUAKE
	db 31, RAIN_DANCE
	db 48, HAZE ;mist, removed
	db 53, HYDRO_PUMP ;muddy_water, x
	db 0 ; no more level-up moves

EspeonEvosAttacks: ; GEN6/7
	db 0 ; no more evolutions
	db 1, CONFUSION ;evolution move?
	db 1, TACKLE
	db 1, GROWL ;baby-doll eyes, x
	db 5, LEER ;tail_whip, x
	db 9, MUD_SLAP ;sand_attack, x
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, FUTURE_SIGHT
	db 29, REFLECT ;psych_up, x
	db 33, MORNING_SUN
	db 37, PSYCHIC_M
	db 41, DOUBLE_EDGE ;last_resort
	db 45, POWER_GEM ;power_swap
	db 0 ; no more level-up moves

UmbreonEvosAttacks: ; GEN6/7
	db 0 ; no more evolutions
	db 1, PURSUIT ;evolution move?
	db 1, TACKLE
	db 1, GROWL ;baby-doll eyes, x
	db 5, LEER ;tail_whip, x
	db 9, MUD_SLAP ;sand_attack, x
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FEINT_ATTACK
	db 25, BITE ;assurance, x
	db 29, SCREECH
	db 33, MOONLIGHT
	db 37, MEAN_LOOK
	db 41, DOUBLE_EDGE ;last_resort
	db 45, DARK_PULSE ;guard_swap, x
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
;	db EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, ASTONISH
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF ;assurance, x
	db 31, SWAGGER ;taunt, x
	db 35, FEINT_ATTACK
	db 41, MEAN_LOOK
	db 45, AIR_SLICE ;sucker_punch, x
	db 0 ; no more level-up moves

;HonchkrowEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, ASTONISH
;	db 1, PURSUIT
;	db 1, HAZE
;	db 1, WING_ATTACK
;	db 25, SWAGGER
;	db 35, NASTY_PLOT
;	db 45, NIGHT_SLASH
;	db 55, DARK_PULSE
;	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_GEM
	db 1, HIDDEN_POWER
	db 1, CURSE
;	db 1, REST ;yawn, x
;	db 1, SNORE ;yawn, x
	db 1, TACKLE
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
	db 29, WATER_PULSE
	db 34, ZEN_HEADBUTT
	db 39, NASTY_PLOT
	db 43, SWAGGER
	db 48, PSYCHIC_M
	db 53, RAIN_DANCE ;trump_card, x
	db 57, BELLY_DRUM ;psych_up, removed
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
;	db EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYBEAM ;psywave, removed
	db 5, DISABLE ;spite, removed
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX ;PSYBEAM, 1
	db 28, PAIN_SPLIT
	db 32, FEINT_ATTACK ;payback, x
	db 37, SHADOW_BALL
	db 41, PERISH_SONG
	db 46, DESTINY_BOND ;grudge, x
	db 50, POWER_GEM
	db 0 ; no more level-up moves

;MismagiusEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, CHARM ;lucky_chant, x
;	db 1, MAGICAL_LEAF
;	db 1, GROWL
;	db 1, PSYBEAM ;psywave, removed
;	db 1, DISABLE ;spite, removed
;	db 1, ASTONISH
;	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, ENCORE
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
;	db 1, power_swap, x
;	db 1, guard_swap, x
	db 1, ASTONISH
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 5, FORESIGHT ;odor_sleuth, x
	db 10, STOMP
	db 14, AGILITY
	db 19, PSYBEAM
	db 23, BATON_PASS
	db 28, FEINT_ATTACK ;assurance, x
	db 32, DOUBLE_KICK ;double_hit, x
	db 37, PSYCHIC_M
	db 41, ZEN_HEADBUTT
	db 46, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	db 23, PIN_MISSILE ;natural_gift
	db 28, SPIKES
	db 31, FEINT_ATTACK ;payback, x
	db 34, SELFDESTRUCT ;explosion, removed
	db 39, BARRIER ;iron_defense, x
	db 42, GYRO_BALL
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
;	db 1, ;toxic_spikes, x
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	db 23, PIN_MISSILE ;natural_gift, x
	db 28, SPIKES
	db 31, MIRROR_SHOT
	db 33, FEINT_ATTACK ;payback
	db 38, SELFDESTRUCT ;explosion, removed
	db 45, BARRIER ;iron_defense
	db 50, GYRO_BALL
	db 55, DOUBLE_EDGE
	db 62, METAL_SOUND ;magnet_rise, x
	db 67, ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 5, DEFENSE_CURL
	db 9, FURY_STRIKES ;yawn, x
	db 13, GLARE
	db 17, ROLLOUT
	db 21, DISABLE ;spite, removed
	db 25, PURSUIT
	db 29, SCREECH
	db 33, ROOST
	db 37, TAKE_DOWN
	db 41, ANCIENTPOWER
	db 45, DIG
	db 49, FLAIL ;endeavor, x
	db 53, DOUBLE_EDGE ;FLAIL, 49
	db 0 ; no more level-up moves

GligarEvosAttacks:
;	db EVOLVE_HOLD, RAZOR_FANG, TR_NITE, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, MUD_SLAP ;sand_attack, removed
	db 9, HARDEN
	db 12, THIEF ;knock_off, x
	db 16, QUICK_ATTACK
	db 20, FURY_CUTTER
	db 23, FEINT_ATTACK
	db 27, SCREECH
	db 31, SLASH
	db 34, BUG_BITE ;SWORDS_DANCE, 38
	db 38, SWORDS_DANCE ;u_turn, x
	db 42, X_SCISSOR
	db 45, GUILLOTINE
	db 0 ; no more level-up moves

;GliscorEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, THUNDER_FANG
;	db 1, ICE_FANG
;	db 1, FIRE_FANG
;	db 1, POISON_JAB
;	db 5, MUD_SLAP ;sand_attack, removed
;	db 9, HARDEN
;	db 12, THIEF ;knock_off, x
;	db 16, QUICK_ATTACK
;	db 20, FURY_CUTTER
;	db 23, FEINT_ATTACK
;	db 27, SCREECH
;	db 31, NIGHT_SLASH
;	db 34, BUG_BITE, ;SWORDS_DANCE, 38
;	db 38, SOWRDS_DANCE ;u_turn, x
;	db 42, X_SCISSOR
;	db 45, GUILLOTINE
;	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, WRAP ;bind, removed
	db 6, SCREECH
	db 9, ROCK_THROW
	db 14, RAGE
	db 17, MUD_SHOT ;rock_tomb, x
	db 22, SANDSTORM
	db 25, BODY_SLAM ;slam, removed
	db 30, AGILITY ;rock_polish, x
	db 33, DRAGONBREATH
	db 38, CURSE
	db 41, IRON_TAIL
	db 46, CRUNCH
	db 49, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, THUNDER_FANG
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ;tail_whip, removed
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, FEINT_ATTACK ;TAKE_DOWN, 43
	db 43, TAKE_DOWN ;payback
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, THUNDER_FANG
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ;tail_whip, removed
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, FEINT_ATTACK ;TAKE_DOWN, 43
	db 51, TAKE_DOWN ;payback
	db 59, CRUNCH
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 9, HARDEN
	db 9, MINIMIZE
	db 13, WATER_GUN
	db 17, ROLLOUT
	db 21, POISON_TAIL ;toxic_spikes, x
	db 25, COUNTER ;stockpile, spit_up, x
	db 29, FLAIL ;revenge, x
	db 33, WATER_PULSE ;brine, x
	db 37, PIN_MISSILE
	db 41, TAKE_DOWN
	db 45, AQUA_TAIL
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BULLET_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, METAL_CLAW
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, AERIAL_ACE ;razor_wind, x
	db 37, BARRIER ;iron_defense, x
	db 41, X_SCISSOR
	db 45, NIGHT_SLASH
	db 49, CROSS_CHOP ;double_hit, x
	db 53, STEEL_WING ;iron_head, x
	db 57, SWORDS_DANCE
	db 61, FEINT_ATTACK ;feint, x
	db 0 ; no more level-up moves

ShuckleEvosAttacks: ;GEN6~
	db 0 ; no more evolutions
	db 1, MUD_SLAP ;constrict, x
	db 1, DEFENSE_CURL ;withdraw, x
	db 1, ROLLOUT
	db 5, ENCORE
	db 9, WRAP
	db 12, STRING_SHOT ;struggle_bug, x
	db 16, SAFEGUARD
	db 20, REST
	db 23, ROCK_THROW
	db 27, ACID ;gastro_acid, x
	db 31, DISABLE ;power_trick, x
	db 34, ROCK_BLAST
	db 38, BUG_BITE
	db 42, ROCK_SLIDE
	db 45, FLAIL
	db 49, STONE_EDGE
	db 0 ; no more level-up moves
	
HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, ENDURE
	db 7, FURY_STRIKES ;fury_attack, removed
	db 13, AERIAL_ACE
	db 19, BRICK_BREAK
	db 25, COUNTER
	db 31, TAKE_DOWN
	db 37, CLOSE_COMBAT
	db 43, FLAIL ;reversal, removed
	db 49, FEINT_ATTACK ;feint, x
	db 55, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
;	db EVOLVE_HOLD, RAZOR_CLAW, TR_NITE, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER 
	db 1, SHARPEN ;taunt, x
	db 8, QUICK_ATTACK
	db 10, SCREECH
	db 14, FEINT_ATTACK
	db 21, FURY_STRIKES ;fury_swipes, removed
	db 24, AGILITY
	db 28, ICY_WIND
	db 35, SLASH
	db 38, PURSUIT ;beat_up, removed
	db 42, METAL_CLAW
	db 49, ICE_SHARD
	db 0 ; no more level-up moves

;WeavileEvosAttacks:
;	db 0 ; no more evolutions
;;	db 1, ;embargo, x
;	db 1, PAYBACK ;revenge, x
;;	db 1, ;assurance, x
;	db 1, SCRATCH
;	db 1, LEER
;	db 1, SHARPEN ;taunt, x
;	db 8, QUICK_ATTACK
;	db 10, SCREECH
;	db 14, FEINT_ATTACK
;	db 21, FURY_STRIKES ;fury_swipes, removed
;	db 24, NASTY_PLOT
;	db 28, ICY_WIND
;	db 35, NIGHT_SLASH
;	db 38, PURSUIT ;fling, x
;	db 42, METAL_CLAW
;	db 49, DARK_PULSE
;	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, THIEF ;covet, x
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, CHARM ;fake_tears, x
	db 8, FURY_STRIKES ;fury_swipes, removed
	db 15, FEINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, SNORE
	db 50, THRASH
	db 57, ROCK_THROW ;FEINT_ATTACK ;fling, x
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, THIEF ;covet, x
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, CHARM ;fake_tears, x
	db 8, FURY_STRIKES ;fury_swipes, removed
	db 15, FEINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, SNORE
	db 58, THRASH
	db 67, CLOSE_COMBAT ;hammer_arm, x
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
;	db 1, ;yawn, x
	db 1, SMOG
	db 8, EMBER
	db 11, ROCK_THROW
	db 16, HARDEN
	db 23, RECOVER
	db 26, ANCIENTPOWER
	db 31, AMNESIA
	db 38, HEAT_WAVE ;lava_plume, x
	db 41, ROCK_SLIDE
	db 46, BODY_SLAM
	db 53, FLAMETHROWER
	db 56, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
;	db 1, ;yawn, x
	db 1, SMOG
	db 8, EMBER
	db 11, ROCK_THROW
	db 16, HARDEN
	db 23, RECOVER
	db 26, ANCIENTPOWER
	db 31, AMNESIA
	db 40, HEAT_WAVE ;lava_plume, x
	db 45, ROCK_SLIDE
	db 52, BODY_SLAM
	db 61, FLAMETHROWER
	db 66, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT ;odor_sleuth, x
	db 4, MUD_SLAP ;mud_sport, x
	db 8, POWDER_SNOW
	db 13, MAGNITUDE ;MUD_SLAP, 4
	db 16, ENDURE
	db 20, MUD_BOMB
	db 25, ICY_WIND
	db 28, ICE_SHARD
	db 32, TAKE_DOWN
	db 37, EARTHQUAKE
	db 40, HAZE ;mist, removed
	db 44, BLIZZARD
	db 49, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
;	db EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, PECK
	db 1, FORESIGHT ;odor_sleuth, x
	db 4, MUD_SLAP ;mud_sport, x
	db 8, POWDER_SNOW
	db 13, MAGNITUDE ;MUD_SLAP, 4
	db 16, ENDURE
	db 20, MUD_BOMB
	db 25, ICY_WIND
	db 28, ICE_FANG
	db 32, TAKE_DOWN
	db 33, FURY_STRIKES ;fury_attack, removed ;evolution move?
	db 40, EARTHQUAKE
	db 48, HAZE ;MIST, removed
	db 56, BLIZZARD
	db 65, AMNESIA
	db 0 ; no more level-up moves

;MamowineEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, ANCIENTPOWER
;	db 1, PECK
;	db 1, FORESIGHT ;odor_sleuth, x
;	db 4, MUD_SLAP ;mud_sport, x
;	db 8, POWDER_SNOW
;	db 13, MAGNITUDE ;MUD_SLAP, 4
;	db 16, ENDURE
;	db 20, MUD_BOMB
;	db 25, ICY_WIND
;	db 28, ICE_FANG
;	db 32, TAKE_DOWN
;	db 33, FURY_STRIKES ;fury_attack, removed ;evolution move?
;	db 40, EARTHQUAKE
;	db 48, HAZE ;MIST, removed
;	db 56, BLIZZARD
;	db 65, SCARY_FACE
;	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 8, WATER_GUN ;bubble, removed
	db 13, RECOVER
	db 16, HEAL_BELL ;refresh, x
	db 20, ROCK_BLAST
	db 25, BUBBLEBEAM
	db 28, CHARM ;lucky_chant, x
	db 32, ANCIENTPOWER
	db 37, AQUA_JET ;aqua_ring, x
	db 40, ICICLE_SPEAR ;spike_cannon, removed
	db 44, POWER_GEM
	db 48, MIRROR_COAT
	db 53, EARTH_POWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 19, BUBBLEBEAM
	db 23, FOCUS_ENERGY
	db 27, BULLET_SEED
	db 32, WATER_PULSE
	db 36, SIGNAL_BEAM
	db 40, ICE_BEAM
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
;	db 1, ;gunk_shot, x
	db 1, ROCK_BLAST
	db 1, WATER_GUN
	db 6, WRAP ;constrict, removed
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 19, BUBBLEBEAM
	db 23, FOCUS_ENERGY
	db 25, OCTAZOOKA
	db 29, BULLET_SEED
	db 36, FLAIL ;wring_out, x
	db 42, SIGNAL_BEAM
	db 48, ICE_BEAM
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks: ;~chatot
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, PAY_DAY
	db 12, SING
	db 17, ICY_WIND
	db 22, WING_ATTACK
	db 28, AURORA_BEAM
	db 33, DRILL_PECK
	db 38, BODY_SLAM
	db 43, ROOST
	db 48, BELLY_DRUM
	db 53, BLIZZARD
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, BULLET_SEED
	db 1, SIGNAL_BEAM
	db 1, TACKLE
	db 1, WATER_GUN ;bubble, removed
	db 1, SUPERSONIC
	db 1, BUBBLEBEAM
	db 4, SUPERSONIC
	db 10, BUBBLEBEAM
	db 13, HEADBUTT
	db 19, AGILITY
	db 22, WING_ATTACK
	db 28, WATER_PULSE
	db 31, TAKE_DOWN
	db 37, CONFUSE_RAY
	db 40, BOUNCE
	db 46, RECOVER ;aqua_ring
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, MUD_SLAP ;sand_attack, removed
	db 9, SWIFT
	db 12, AGILITY
	db 17, FURY_STRIKES ;fury_attack, removed
	db 20, FEINT_ATTACK ;feint, x
	db 23, AERIAL_ACE ;air_cutter
	db 28, SPIKES
	db 31, METAL_SOUND
	db 34, STEEL_WING
	db 39, AIR_SLICE ;air_slash, ~
	db 42, SLASH
	db 45, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, SHARPEN ;howl, x
	db 9, SMOG
	db 14, ROAR
	db 17, BITE
	db 22, FORESIGHT ;odor_sleuth, x
	db 27, PURSUIT ;beat_up, removed
	db 30, FIRE_FANG
	db 35, FEINT_ATTACK
	db 40, SUPER_FANG ;embargo, x
	db 43, FLAMETHROWER
	db 48, CRUNCH
	db 53, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDER_FANG
	db 1, LEER
	db 1, EMBER
	db 4, SHARPEN ;howl, x
	db 9, SMOG
	db 14, ROAR
	db 17, BITE
	db 22, FORESIGHT ;odor_sleuth, x
	db 28, PURSUIT ;beat_up, removed
	db 32, FIRE_FANG
	db 38, FEINT_ATTACK
	db 44, SUPER_FANG ;embargo, x
	db 48, FLAMETHROWER
	db 54, CRUNCH
	db 60, NASTY_PLOT
	db 0 ; no more level-up moves

; overlap (seadra)
;KingdraEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, WATER_GUN ;bubble, removed
;	db 4, SMOKESCREEN
;	db 8, LEER
;	db 11, AQUA_JET ;WATER_GUN, 1
;	db 14, FOCUS_ENERGY
;	db 18, BUBBLEBEAM
;	db 23, AGILITY
;	db 26, TWISTER
;	db 30, OCTAZOOKA ;brine, x
;	db 40, HYDRO_PUMP
;	db 48, DRAGON_DANCE
;	db 57, DRAGON_PULSE
;	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, FORESIGHT ;odor_sleuth, x
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, TAKE_DOWN
	db 15, ROLLOUT
	db 19, MAGNITUDE ;natural_gift, x
	db 24, BODY_SLAM ;slam, removed
	db 28, ENDURE
	db 33, CHARM
	db 37, DOUBLE_EDGE ;last_resort, x
;	db 42, DOUBLE_EDGE, 37
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, THUNDER_FANG
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, FLAIL
	db 6, RAPID_SPIN
	db 10, THIEF ;knock_off, x
	db 15, ROLLOUT
	db 19, MAGNITUDE
	db 24, BODY_SLAM ;slam, removed
	db 25, FURY_STRIKES ;fury_attack, removed
	db 31, PURSUIT ;assurance, x
	db 39, SCARY_FACE
	db 46, EARTHQUAKE
	db 54, GIGA_IMPACT
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
;	db 1, conversion2, removed
	db 1, TACKLE
	db 1, CONVERSION
	db 1, SWORDS_DANCE ;SHARPEN, tm
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, BARRIER ;magnet_rise, x
	db 29, SIGNAL_BEAM
	db 34, THUNDER_WAVE ;recycle
	db 40, DISCHARGE
	db 45, LOCK_ON
	db 51, TRI_ATTACK
	db 56, MIRROR_COAT ;magic_coat, x
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 7, ASTONISH
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, MUD_SLAP ;sand_attack, removed
	db 21, DOUBLE_KICK ;TAKE_DOWN, 43
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	db 33, HEADBUTT ;role_play, x
	db 38, ZEN_HEADBUTT
	db 43, TAKE_DOWN ;imprison, x
	db 49, JUMP_KICK ;captivate, x
	db 53, MEGAHORN ;me_first, x
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
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

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ASTONISH ;fake_out, x
	db 1, RAGE ;helping_hand, x
	db 1, FORESIGHT
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, BULK_UP
	db 1, LOW_SWEEP ;rolling_kick, x
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, DOUBLE_KICK ;triple_kick, removed
	db 24, RAPID_SPIN
	db 28, COUNTER
	db 33, ROLLOUT ;FEINT_ATTACK ;feint, x
	db 37, AGILITY
	db 42, GYRO_BALL
	db 46, PROTECT ;detect, removed
	db 51, CLOSE_COMBAT
	db 55, FLAIL ;reversal, removed
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, TACKLE ;pound, removed
	db 5, LICK
	db 9, CONFUSE_RAY ;sweet_kiss, removed
	db 11, POWDER_SNOW
	db 15, CONFUSION
	db 18, SING
	db 21, MEAN_LOOK
	db 25, CHARM ;fake_tears, x
;	db 28, ;lucky_chant, x
	db 31, ICY_WIND ;avalanche, x
	db 35, PSYCHIC_M
;	db 38, ;copycat, x
	db 41, PERISH_SONG
	db 45, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, THUNDERSHOCK
	db 10, LOW_SWEEP ;low_kick, x
	db 16, SWIFT
	db 19, SPARK ;shock_wave
	db 25, LIGHT_SCREEN
	db 28, THUNDERPUNCH
	db 34, DISCHARGE
	db 37, THUNDERBOLT
	db 43, SCREECH
	db 46, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
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
	db 34, HEAT_WAVE ;lava_plume, x
	db 37, FLAMETHROWER
	db 43, SUNNY_DAY
	db 46, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, RECOVER ;milk_drink, removed
	db 15, BIDE
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 29, ZEN_HEADBUTT
	db 35, ATTRACT ;captivate
	db 41, GYRO_BALL
	db 48, HEAL_BELL
	db 55, WAKE_UP_SLAP
	db 0 ; no more level-up moves

; overlap (chansey)
;BlisseyEvosAttacks:
;	db 0 ; no more evolutions
;	db 1, TACKLE ;pound, removed
;	db 1, GROWL
;	db 5, LEER ;tail_whip, removed
;	db 9, HEAL_BELL ;refresh, x
;	db 12, SOFTBOILED
;	db 16, DOUBLESLAP
;	db 20, MINIMIZE
;	db 23, SING
;	db 27, FEINT_ATTACK ;fling, x
;	db 31, DEFENSE_CURL
;	db 34, LIGHT_SCREEN
;	db 38, SEED_BOMB ;egg_bomb, removed
;	db 42, SUBSTITUTE ;healing_wish, x
;;	db 42, DOUBLE_EDGE
;	db 46, DOUBLE_EDGE
;	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, CRUNCH
	db 50, THUNDER_FANG
	db 57, DISCHARGE
	db 64, EXTRASENSORY
	db 71, RAIN_DANCE
	db 78, CALM_MIND
	db 85, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FLAMETHROWER
	db 43, SWAGGER
	db 50, FIRE_FANG
	db 57, HEAT_WAVE ;lava_plume, x
	db 64, EXTRASENSORY
	db 71, FIRE_BLAST
	db 78, CALM_MIND
	db 85, FLARE_BLITZ ;eruption, x
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, BUBBLEBEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, HAZE ;mist, removed
	db 43, MIRROR_COAT
	db 50, ICE_FANG
	db 57, AGILITY ;tailwind, x
	db 64, EXTRASENSORY
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 85, BLIZZARD
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, BITE
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, ROCK_SLIDE
	db 19, SCARY_FACE
	db 23, THRASH
	db 28, DARK_PULSE
	db 32, PURSUIT ;payback, x
	db 37, CRUNCH
	db 41, EARTHQUAKE
	db 46, STONE_EDGE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, BITE
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, ROCK_SLIDE
	db 19, SCARY_FACE
	db 23, THRASH
	db 28, DARK_PULSE
	db 34, PURSUIT ;payback, x
	db 41, CRUNCH
	db 47, EARTHQUAKE
	db 54, STONE_EDGE
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, LEER
	db 1, BITE
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, ROCK_SLIDE
	db 19, SCARY_FACE
	db 23, THRASH
	db 28, DARK_PULSE
	db 34, PURSUIT ;payback, x
	db 41, CRUNCH
	db 47, EARTHQUAKE
	db 54, STONE_EDGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR ;whirlwind, removed
	db 9, GUST
	db 15, DRAGONBREATH ;dragon_rush, x
	db 23, EXTRASENSORY
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, AEROBLAST
	db 50, FEINT_ATTACK ;PAYBACK ;punishment, x
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, CALM_MIND ;natural_gift, x
	db 93, SKY_ATTACK ;CALM_MIND, 85
;	db 99, SKY_ATTACK, 93
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR ;whirlwind, removed
	db 9, GUST
	db 15, DRAGONBREATH ;brave_bird, x
	db 23, EXTRASENSORY
	db 29, SUNNY_DAY
	db 37, FIRE_BLAST
	db 43, SACRED_FIRE
	db 50, FEINT_ATTACK ;PAYBACK ;punishment, x
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, CALM_MIND ;natural_gift, x
	db 93, SKY_ATTACK ;CALM_MIND, 85
;	db 99, SKY_ATTACK, 93
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 19, MAGICAL_LEAF
	db 28, ANCIENTPOWER
	db 37, BATON_PASS
	db 46, HIDDEN_POWER ;natural_gift, x
	db 55, LIGHT_SCREEN ;heal_block, x
	db 55, REFLECT ;heal_block, x
	db 64, FUTURE_SIGHT
	db 73, METRONOME ;healing_wish, x
	db 82, ENERGY_BALL ;leaf_storm, x
	db 91, PERISH_SONG
	db 0 ; no more level-up moves

MissingnoEvosAttacks:
	db 0 ; no more evolutions
;	db 1, WATER_GUN
	db 1, WATER_GUN
	db 1, SKY_ATTACK
	db 0 ; no more level-up moves
