MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
; gameboy_kid, route 2 nugget house
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MR__MIME,   "MARCEL@@@@@", $c8, $fe, SITRUS_BERRY, 58317, "MATEO@@@@@@", TRADE_GENDER_EITHER
; twin, route 5 underground entrance
	npctrade TRADE_DIALOGSET_GIRL,      NIDORAN_F,  NIDORAN_M,  "SPIKE@@@@@@", $9d, $ac, PECHA_BERRY,  92406, "MIA@@@@@@@@", TRADE_GENDER_EITHER
; youngster, route 11 gate 2f
	npctrade TRADE_DIALOGSET_HAPPY,     GEODUDE,    CUBONE,     "FLINT@@@@@@", $bf, $8e, THICK_CLUB,   37185, "LUCAS@@@@@@", TRADE_GENDER_EITHER
; super_nerd, route 18 gate 2f
	npctrade TRADE_DIALOGSET_COLLECTOR, SLOWBRO,    LICKITUNG,  "MARC@@@@@@@", $ac, $f8, LEPPA_BERRY,  80642, "NOAH@@@@@@@", TRADE_GENDER_EITHER
; gramps, cerulean trade speech house
	npctrade TRADE_DIALOGSET_HAPPY,     POLIWHIRL,  JYNX,       "LOLA@@@@@@@", $e9, $db, ASPEAR_BERRY, 24973, "MASON@@@@@@", TRADE_GENDER_EITHER
; twin, vermilion magnet train speech house
	npctrade TRADE_DIALOGSET_GIRL,      SPEAROW,    FARFETCH_D, "DUX@@@@@@@@", $fa, $bd, STICK,        71538, "ELYSSA@@@@@", TRADE_GENDER_EITHER
; scientist, cinnabar lab fossil room
	npctrade TRADE_DIALOGSET_GENERIC,   DITTO,      DITTO,      "MORPH@@@@@@", $ee, $ee, METAL_POWDER, 46291, "JIM@@@@@@@@", TRADE_GENDER_EITHER
; gramps, cinnabar lab
	npctrade TRADE_DIALOGSET_HAPPY,     GROWLITHE,  CHANSEY,    "DORIS@@@@@@", $d8, $bf, LUCKY_PUNCH,  13864, "CLIFTON@@@@", TRADE_GENDER_EITHER
; beauty, cinnabar lab
	npctrade TRADE_DIALOGSET_GIRL,      VENONAT,    TANGELA,    "CRINKLES@@@", $8f, $ad, CHESTO_BERRY, 95720, "NORMA@@@@@@", TRADE_GENDER_EITHER
; lass, olivine tims house 
	npctrade TRADE_DIALOGSET_GIRL,      PRIMEAPE,   HAUNTER,    "GASPAR@@@@@", $8e, $ca, EVERSTONE,    68413, "MINDY@@@@@@", TRADE_GENDER_EITHER
; cooltrainer, goldenrod dept store 5f
	npctrade TRADE_DIALOGSET_GENERIC,   XATU,       HERACROSS,  "HERCULES@@@", $b9, $ea, LUM_BERRY,    32096, "CHRIS@@@@@@", TRADE_GENDER_EITHER
; youngster, violet kyles house
	npctrade TRADE_DIALOGSET_COLLECTOR, ONIX,       SHUCKLE,    "SHUCKS@@@@@", $db, $e8, BERRY_JUICE,  87152, "KYLE@@@@@@@", TRADE_GENDER_EITHER
; twin, blackthorn emys house
	npctrade TRADE_DIALOGSET_GIRL,      DODRIO,     PINECO,     "CONEHEAD@@@", $fd, $c8, LEPPA_BERRY,  49680, "EMY@@@@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
