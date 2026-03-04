SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

BulbasaurEggMoves:
	db LIGHT_SCREEN
;	db SKULL_BASH   ;removed
	db SAFEGUARD
;	db AIR_SLICE    ;RAZOR_WIND ;removed
	db PETAL_DANCE
	db -1 ; end

CharmanderEggMoves:
	db BELLY_DRUM
;	db ANCIENTPOWER ;tm77
;	db ROCK_SLIDE   ;tm48
	db BITE
	db OUTRAGE
;	db BEAT_UP ;removed
	db -1 ; end

SquirtleEggMoves:
	db MIRROR_COAT
	db HAZE
;	db MIST        ;removed
	db CONFUSION
	db FORESIGHT
	db FLAIL
	db -1 ; end

PidgeyEggMoves:
	db PURSUIT
	db FEINT_ATTACK
	db FORESIGHT
;	db DETECT       ;removed
	db -1 ; end

RattataEggMoves:
	db SCREECH
	db FLAME_WHEEL
	db FURY_STRIKES ;FURY_SWIPES ;removed
	db BITE
;	db COUNTER      ;tm18
	db FLAIL        ;REVERSAL ;removed
	db -1 ; end

SpearowEggMoves:
	db FEINT_ATTACK
	db FALSE_SWIPE
	db SCARY_FACE
	db QUICK_ATTACK
	db TRI_ATTACK
;	db DETECT       ;removed
	db -1 ; end

EkansEggMoves:
	db PURSUIT
;	db SLAM    ;removed
	db DISABLE ;SPITE ;removed
;	db BEAT_UP ;removed
	db CRUNCH
	db -1 ; end

SandshrewEggMoves:
	db FLAIL
	db SAFEGUARD
;	db COUNTER    ;tm18
	db RAPID_SPIN
	db METAL_CLAW
;	db DETECT     ;removed
	db -1 ; end

NidoranFEggMoves:
	db SUPERSONIC
	db DISABLE
;	db TAKE_DOWN    ;tm09
	db FOCUS_ENERGY
	db CHARM
	db COUNTER
;	db BEAT_UP      ;removed
;	db DETECT       ;removed
	db -1 ; end

NidoranMEggMoves:
	db SUPERSONIC
	db DISABLE
;	db TAKE_DOWN ;tm09
	db CONFUSION
	db AMNESIA
	db COUNTER
;	db BEAT_UP   ;removed
;	db DETECT    ;removed
	db -1 ; end

VulpixEggMoves:
	db FEINT_ATTACK
	db HYPNOSIS
	db FLAIL
;	db DISABLE      ;SPITE ;removed
	db DISABLE
	db -1 ; end

ZubatEggMoves:
	db QUICK_ATTACK
	db PURSUIT
	db FEINT_ATTACK
	db GUST
;	db WHIRLWIND    ;removed
;	db DETECT       ;removed
	db -1 ; end

OddishEggMoves:
;	db SWORDS_DANCE ;tm03
	db RAZOR_LEAF
	db FLAIL
	db SYNTHESIS
	db -1 ; end

ParasEggMoves:
;	db FALSE_SWIPE ;tm54
	db SCREECH
	db COUNTER
	db PSYBEAM
	db FLAIL
	db LIGHT_SCREEN
	db PURSUIT
	db -1 ; end

VenonatEggMoves:
	db BATON_PASS
	db SCREECH
	db GIGA_DRAIN
	db -1 ; end

DiglettEggMoves:
	db FEINT_ATTACK
	db SCREECH
;	db ANCIENTPOWER ;tm77
	db PURSUIT
;	db BEAT_UP ;removed
	db -1 ; end

MeowthEggMoves:
	db DISABLE  ;SPITE ;removed
	db CHARM
	db HYPNOSIS
	db AMNESIA
;	db DETECT   ;removed
	db -1 ; end

PsyduckEggMoves:
;	db ICE_BEAM     ;tm13
	db HYPNOSIS
	db PSYBEAM
	db FORESIGHT
	db LIGHT_SCREEN
	db FUTURE_SIGHT
	db PSYCHIC_M
	db CROSS_CHOP
	db LOW_SWEEP
	db -1 ; end

MankeyEggMoves:
;	db ROCK_SLIDE ;tm48
	db FORESIGHT
	db BULK_UP    ;MEDITATE
;	db COUNTER    ;tm18
	db FLAIL      ;REVERSAL ;removed
;	db BEAT_UP    ;removed
;	db DETECT     ;removed
	db -1 ; end

GrowlitheEggMoves:
;	db BODY_SLAM ;tm08
	db SAFEGUARD
	db CRUNCH
	db THRASH
	db FIRE_SPIN
	db -1 ; end

PoliwagEggMoves:
;	db MIST       ;removed
	db SPLASH
;	db BUBBLEBEAM ;tm11
	db HAZE
	db LOCK_ON    ;MIND_READER ;removed
;	db DETECT     ;removed
	db LOW_SWEEP
	db -1 ; end

AbraEggMoves:
	db LIGHT_SCREEN
	db ENCORE
	db BARRIER
	db -1 ; end

MachopEggMoves:
	db LIGHT_SCREEN
	db BULK_UP      ;MEDITATE
	db LOW_SWEEP    ;ROLLING_KICK ;removed
	db ENCORE
;	db DETECT       ;removed
	db -1 ; end

BellsproutEggMoves:
;	db SWORDS_DANCE ;tm03
	db ENCORE
;	db REFLECT      ;tm33
	db SYNTHESIS
	db LEECH_LIFE
	db -1 ; end

TentacoolEggMoves:
	db AURORA_BEAM
	db MIRROR_COAT
	db RAPID_SPIN
	db HAZE
	db SAFEGUARD
	db -1 ; end

GeodudeEggMoves:
	db DYNAMICPUNCH ;MEGA_PUNCH ;removed
;	db ROCK_SLIDE   ;tm48
;	db DETECT       ;removed
	db -1 ; end

PonytaEggMoves:
	db FLAME_WHEEL
	db THRASH
	db DOUBLE_KICK
	db HYPNOSIS
	db CHARM
	db QUICK_ATTACK
	db -1 ; end

SlowpokeEggMoves:
	db SAFEGUARD
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db -1 ; end

FarfetchDEggMoves:
	db FORESIGHT
;	db MIRROR_MOVE  ;removed
	db GUST
	db QUICK_ATTACK
	db FLAIL
;	db DETECT       ;removed
	db -1 ; end

DoduoEggMoves:
	db QUICK_ATTACK
	db SUPERSONIC
	db HAZE
	db FEINT_ATTACK
	db FLAIL
	db -1 ; end

SeelEggMoves:
	db LICK
	db PERISH_SONG
	db DISABLE
	db PECK
;	db SLAM ;removed
	db ENCORE
	db -1 ; end

GrimerEggMoves:
	db HAZE
	db MEAN_LOOK
	db LICK
	db -1 ; end

ShellderEggMoves:
;	db BUBBLEBEAM ;tm11
;	db TAKE_DOWN  ;tm09
	db BARRIER
	db RAPID_SPIN
	db SCREECH
	db -1 ; end

GastlyEggMoves:
	db PSYBEAM     ;PSYWAVE ;removed
	db PERISH_SONG
	db HAZE
	db -1 ; end

OnixEggMoves:
;	db ROCK_SLIDE ;tm48
	db FLAIL
	db -1 ; end

DrowzeeEggMoves:
	db LIGHT_SCREEN
	db BARRIER
	db LOW_SWEEP
	db -1 ; end

KrabbyEggMoves:
	db DIG
	db HAZE
	db AMNESIA
	db FLAIL
;	db SLAM ;removed
	db -1 ; end

ExeggcuteEggMoves:
	db SYNTHESIS
	db MOONLIGHT
;	db REFLECT      ;tm33
	db MEGA_DRAIN
;	db ANCIENTPOWER ;tm77
	db -1 ; end

CuboneEggMoves:
;	db ROCK_SLIDE   ;tm48
;	db ANCIENTPOWER ;tm77
	db BELLY_DRUM
	db SCREECH
;	db SKULL_BASH   ;removed
	db PERISH_SONG
	db SWORDS_DANCE
;	db DETECT       ;removed
	db -1 ; end

LickitungEggMoves:
	db BELLY_DRUM
	db MAGNITUDE
;	db BODY_SLAM ;tm08
	db -1 ; end

KoffingEggMoves:
	db SCREECH
;	db PSYWAVE ;removed
	db PSYBEAM
	db DESTINY_BOND
	db PAIN_SPLIT
	db -1 ; end

RhyhornEggMoves:
	db CRUNCH
	db FLAIL      ;REVERSAL ;removed
;	db ROCK_SLIDE ;tm48
	db THRASH
	db PURSUIT
	db COUNTER
	db MAGNITUDE
	db -1 ; end

ChanseyEggMoves:
;	db PRESENT   ;removed
;	db METRONOME ;tm35
	db HEAL_BELL
	db -1 ; end

TangelaEggMoves:
	db FLAIL
	db CONFUSION
	db MEGA_DRAIN
;	db REFLECT    ;tm33
	db AMNESIA
	db -1 ; end

KangaskhanEggMoves:
	db STOMP
	db FORESIGHT
	db FOCUS_ENERGY
	db SAFEGUARD
	db DISABLE
	db -1 ; end

HorseaEggMoves:
	db FLAIL
	db AURORA_BEAM
	db OCTAZOOKA
	db DISABLE
	db SPLASH
	db DRAGON_RAGE
	db -1 ; end

GoldeenEggMoves:
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db -1 ; end

MrMimeEggMoves:
	db FUTURE_SIGHT
	db HYPNOSIS
;	db MIMIC        ;removed
	db -1 ; end

ScytherEggMoves:
;	db COUNTER      ;tm18
	db SAFEGUARD
	db BATON_PASS
;	db AIR_SLICE    ;RAZOR_WIND ;removed
	db FLAIL        ;REVERSAL ;removed
	db LIGHT_SCREEN
;	db DETECT       ;removed
	db -1 ; end

PinsirEggMoves:
	db FURY_STRIKES ;FURY_ATTACK ;removed
	db FLAIL
	db -1 ; end

LaprasEggMoves:
	db AURORA_BEAM
	db FORESIGHT
	db -1 ; end

EeveeEggMoves:
	db FLAIL
	db CHARM
;	db DETECT ;removed
	db -1 ; end

OmanyteEggMoves:
;	db BUBBLEBEAM ;tm11
	db AURORA_BEAM
;	db SLAM ;removed
	db SUPERSONIC
	db HAZE
	db -1 ; end

KabutoEggMoves:
;	db BUBBLEBEAM ;tm11
	db AURORA_BEAM
	db RAPID_SPIN
	db DIG
	db FLAIL
	db -1 ; end

AerodactylEggMoves:
;	db WHIRLWIND ;removed
	db PURSUIT
	db FORESIGHT
;	db DETECT    ;removed
	db -1 ; end

SnorlaxEggMoves:
	db LICK
	db -1 ; end

DratiniEggMoves:
	db LIGHT_SCREEN
;	db MIST         ;removed
	db HAZE
	db SUPERSONIC
;	db DETECT       ;removed
	db -1 ; end

ChikoritaEggMoves:
	db VINE_WHIP
	db LEECH_SEED
;	db COUNTER      ;tm18
;	db ANCIENTPOWER ;tm77
	db FLAIL
;	db SWORDS_DANCE ;tm03
;	db DETECT       ;removed
	db -1 ; end

CyndaquilEggMoves:
	db FURY_STRIKES ;FURY_SWIPES ;removed
	db QUICK_ATTACK
	db FLAIL        ;REVERSAL ;removed
	db THRASH
	db FORESIGHT
;	db SUBMISSION   ;tm17
;	db DETECT       ;removed
	db -1 ; end

TotodileEggMoves:
	db CRUNCH
	db THRASH
	db HYDRO_PUMP
;	db ANCIENTPOWER ;tm77
;	db AIR_SLICE    ;RAZOR_WIND ;removed
;	db ROCK_SLIDE   ;tm48
;	db DETECT       ;removed
	db -1 ; end

SentretEggMoves:
;	db DOUBLE_EDGE  ;tm10
	db PURSUIT
	db SLASH
	db FOCUS_ENERGY
	db FLAIL        ;REVERSAL ;removed
;	db DETECT       ;removed
	db -1 ; end

HoothootEggMoves:
;	db MIRROR_MOVE  ;removed
	db SUPERSONIC
	db FEINT_ATTACK
	db WING_ATTACK
;	db WHIRLWIND    ;removed
	db SKY_ATTACK   ;tm?
;	db DETECT       ;removed
	db -1 ; end

LedybaEggMoves:
	db PSYBEAM
;	db BIDE         ;tm34
	db LIGHT_SCREEN
	db -1 ; end

SpinarakEggMoves:
	db PSYBEAM
	db DISABLE
;	db LOUD_VOICE ;SONICBOOM, removed
	db BATON_PASS
	db PURSUIT
	db -1 ; end

ChinchouEggMoves:
	db FLAIL
	db SUPERSONIC
	db SCREECH
	db -1 ; end

;PichuEggMoves:
;	db FLAIL      ;REVERSAL ;removed
;;	db BIDE       ;tm34
;;	db PRESENT    ;removed
;	db ENCORE
;	db DOUBLESLAP
;;	db DETECT     ;removed
;	db -1 ; end

CleffaEggMoves:
;	db PRESENT    ;removed
;	db METRONOME  ;tm35
	db AMNESIA
	db BELLY_DRUM
	db SPLASH
;	db MIMIC      ;removed
;	db DETECT     ;removed
	db -1 ; end

IgglybuffEggMoves:
	db PERISH_SONG
;	db PRESENT      ;removed
	db FEINT_ATTACK
;	db DETECT       ;removed
	db -1 ; end

TogepiEggMoves:
;	db PRESENT      ;removed
;	db MIRROR_MOVE  ;removed
	db PECK
	db FORESIGHT
	db FUTURE_SIGHT
;	db DETECT       ;removed
	db -1 ; end

NatuEggMoves:
	db HAZE
	db DRILL_PECK
	db QUICK_ATTACK
	db FEINT_ATTACK
	db STEEL_WING
;	db DETECT       ;removed
	db -1 ; end

MareepEggMoves:
;	db THUNDERBOLT ;tm24
;	db TAKE_DOWN   ;tm09
;	db BODY_SLAM   ;tm08
	db SAFEGUARD
	db SCREECH
;	db REFLECT     ;tm33
	db -1 ; end

MarillEggMoves:
	db LIGHT_SCREEN
;	db PRESENT      ;removed
	db AMNESIA
	db FUTURE_SIGHT
	db BELLY_DRUM
	db PERISH_SONG
	db SUPERSONIC
	db FORESIGHT
	db -1 ; end

SudowoodoEggMoves:
;	db SELFDESTRUCT ;tm36
;	db DETECT       ;removed
	db LOW_SWEEP
	db -1 ; end

HoppipEggMoves:
	db CONFUSION
	db GROWL
	db ENCORE
;	db DOUBLE_EDGE ;tm10
;	db REFLECT     ;tm33
	db AMNESIA
;	db PAY_DAY     ;tm16
	db -1 ; end

AipomEggMoves:
;	db COUNTER    ;tm18
	db SCREECH
	db PURSUIT
	db AGILITY
	db DISABLE    ;SPITE ;removed
;	db SLAM       ;removed
	db DOUBLESLAP
;	db BEAT_UP    ;removed
;	db DETECT     ;removed
	db LOW_SWEEP
	db -1 ; end

YanmaEggMoves:
;	db WHIRLWIND  ;removed
	db FLAIL      ;REVERSAL ;removed
	db LEECH_LIFE
;	db DETECT     ;removed
	db -1 ; end

WooperEggMoves:
;	db BODY_SLAM    ;tm08
;	db ANCIENTPOWER ;tm77
	db SAFEGUARD
	db -1 ; end

MurkrowEggMoves:
;	db WHIRLWIND    ;removed
	db DRILL_PECK
	db QUICK_ATTACK
;	db MIRROR_MOVE  ;removed
	db WING_ATTACK
	db SKY_ATTACK   ;tm?
;	db DETECT       ;removed
	db -1 ; end

MisdreavusEggMoves:
	db SCREECH
	db DESTINY_BOND
	db -1 ; end

GirafarigEggMoves:
;	db TAKE_DOWN    ;tm09
	db AMNESIA
	db FORESIGHT
	db FUTURE_SIGHT
;	db BEAT_UP ;removed
	db -1 ; end

PinecoEggMoves:
;	db REFLECT     ;tm33
	db PIN_MISSILE
	db FLAIL
;	db SWIFT       ;tm39
	db -1 ; end

DunsparceEggMoves:
;	db BIDE         ;tm34
;	db ANCIENTPOWER ;tm77
;	db ROCK_SLIDE   ;tm48
	db BITE
;	db RAGE         ;tm20
	db HEX
	db -1 ; end

GligarEggMoves:
	db METAL_CLAW
	db WING_ATTACK
;	db AIR_SLICE   ;RAZOR_WIND ;removed  
;	db COUNTER     ;tm18
;	db DETECT      ;removed
	db -1 ; end

SnubbullEggMoves:
;	db METRONOME    ;tm35
	db FEINT_ATTACK
;	db REFLECT      ;tm33
;	db PRESENT      ;removed
	db CRUNCH
	db HEAL_BELL
	db LICK
	db LEER
;	db DETECT       ;removed
	db LOW_SWEEP
	db -1 ; end

QwilfishEggMoves:
	db FLAIL
	db HAZE
;	db BUBBLEBEAM ;tm11
	db SUPERSONIC
	db -1 ; end

ShuckleEggMoves:
	db SWEET_SCENT
	db -1 ; end

HeracrossEggMoves:
	db HARDEN
;	db BIDE   ;tm34
;	db FLAIL  ;removed
;	db DETECT ;removed
	db -1 ; end

SneaselEggMoves:
;	db COUNTER   ;tm18
	db DISABLE   ;SPITE ;removed
	db FORESIGHT
;	db REFLECT   ;tm33
	db BITE
;	db DETECT ;removed
	db LOW_SWEEP
	db -1 ; end

TeddiursaEggMoves:
	db CRUNCH
;	db TAKE_DOWN    ;tm09
;	db SEISMIC_TOSS ;tm19
	db FOCUS_ENERGY
;	db COUNTER      ;tm18
	db METAL_CLAW
	db -1 ; end

SlugmaEggMoves:
	db BARRIER ;ACID_ARMOR ;removed
	db -1 ; end

SwinubEggMoves:
;	db TAKE_DOWN    ;tm09
	db BITE
;	db BODY_SLAM    ;tm08
;	db ROCK_SLIDE   ;tm48
;	db ANCIENTPOWER ;tm77
;	db DETECT       ;removed
	db -1 ; end

CorsolaEggMoves:
;	db ROCK_SLIDE ;tm48
	db SAFEGUARD
	db SCREECH
	db HAZE       ;MIST ;removed
	db AMNESIA
	db -1 ; end

RemoraidEggMoves:
	db AURORA_BEAM
	db OCTAZOOKA
	db SUPERSONIC
	db HAZE
	db SCREECH
	db -1 ; end

;DelibirdEggMoves:
;	db AURORA_BEAM
;	db QUICK_ATTACK
;	db FUTURE_SIGHT
;	db SPLASH
;	db RAPID_SPIN
;;	db DETECT       ;removed
;	db -1 ; end

MantineEggMoves:
	db TWISTER
	db HYDRO_PUMP
	db HAZE
;	db BODY_SLAM ;tm08 ;SLAM ;removed
	db -1 ; end

SkarmoryEggMoves:
	db DRILL_PECK
	db PURSUIT
;	db WHIRLWIND  ;removed
	db SKY_ATTACK ;tm?
;	db DETECT     ;removed
	db -1 ; end

HoundourEggMoves:
	db FIRE_SPIN
;	db RAGE      ;tm20
	db PURSUIT
;	db COUNTER   ;tm18
	db DISABLE   ;SPITE ;removed
	db FLAIL     ;REVERSAL ;removed
;	db BEAT_UP   ;removed
;	db DETECT    ;removed
	db -1 ; end

PhanpyEggMoves:
	db FOCUS_ENERGY
;	db BODY_SLAM    ;tm08
;	db ANCIENTPOWER ;tm77
;	db WATER_GUN    ;tm12
	db -1 ; end

StantlerEggMoves:
;	db REFLECT      ;tm33
;	db DISABLE      ;SPITE ;removed
	db DISABLE
	db LIGHT_SCREEN
	db BITE
;	db DETECT       ;removed
	db -1 ; end

TyrogueEggMoves:
	db RAPID_SPIN
	db JUMP_KICK ;HI_JUMP_KICK
	db MACH_PUNCH
	db LOCK_ON      ;MIND_READER ;removed
;	db DETECT       ;removed
	db LOW_SWEEP
	db -1 ; end

SmoochumEggMoves:
	db BULK_UP ;MEDITATE ;removed
	db -1 ; end

ElekidEggMoves:
	db KARATE_CHOP
	db BARRIER
	db LOW_SWEEP    ;ROLLING_KICK ;removed
	db BULK_UP      ;MEDITATE ;removed
	db CROSS_CHOP
;	db DETECT       ;removed
	db -1 ; end

MagbyEggMoves:
	db KARATE_CHOP
	db DYNAMICPUNCH ;MEGA_PUNCH ;removed
	db BARRIER
	db SCREECH
	db CROSS_CHOP
;	db DETECT       ;removed
	db LOW_SWEEP
	db -1 ; end

MiltankEggMoves:
;	db PRESENT      ;removed
	db FLAIL        ;REVERSAL ;removed
;	db SEISMIC_TOSS ;tm19
	db -1 ; end

LarvitarEggMoves:
	db PURSUIT
	db STOMP
	db OUTRAGE
	db FOCUS_ENERGY
;	db ANCIENTPOWER ;tm77
;	db DETECT       ;removed
	db -1 ; end

NoEggMoves:
	db -1 ; end
