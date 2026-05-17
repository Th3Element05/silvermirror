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
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MR__MIME,   "MARCEL@@@@@", $9e, $ee, SITRUS_BERRY, 04179, "MATEO@@@@@@", TRADE_GENDER_EITHER
; twin, route 5 underground entrance (gender specific text: hardcoded ♂ / ♀)
	npctrade TRADE_DIALOGSET_GIRL,      NIDORAN_F,  NIDORAN_M,  "SPIKE@@@@@@", $9e, $ee, PECHA_BERRY,  58236, "MIA@@@@@@@@", TRADE_GENDER_FEMALE
; youngster, route 11 gate 2f
	npctrade TRADE_DIALOGSET_HAPPY,     GEODUDE,    CUBONE,     "FLINT@@@@@@", $9e, $ee, THICK_CLUB,   90714, "LUCAS@@@@@@", TRADE_GENDER_EITHER
; super_nerd, route 18 gate 2f
	npctrade TRADE_DIALOGSET_COLLECTOR, SLOWBRO,    LICKITUNG,  "MARC@@@@@@@", $7e, $ee, LEPPA_BERRY,  26850, "NOAH@@@@@@@", TRADE_GENDER_EITHER
; gramps, cerulean trade speech house
	npctrade TRADE_DIALOGSET_HAPPY,     POLIWHIRL,  JYNX,       "LOLA@@@@@@@", $7e, $ee, ASPEAR_BERRY, 71392, "MASON@@@@@@", TRADE_GENDER_EITHER
; twin, vermilion magnet train speech house
	npctrade TRADE_DIALOGSET_GENERIC,   SPEAROW,    FARFETCH_D, "DUX@@@@@@@@", $9e, $ee, STICK,        45087, "ELYSSA@@@@@", TRADE_GENDER_EITHER
; scientist, cinnabar lab fossil room
	npctrade TRADE_DIALOGSET_GENERIC,   DITTO,      DITTO,      "MORPH@@@@@@", $ea, $aa, METAL_POWDER, 19643, "JIM@@@@@@@@", TRADE_GENDER_EITHER
; gramps, cinnabar lab
	npctrade TRADE_DIALOGSET_HAPPY,     GROWLITHE,  CHANSEY,    "DORIS@@@@@@", $7e, $ee, LUCKY_PUNCH,  82415, "CLIFTON@@@@", TRADE_GENDER_EITHER
; beauty, cinnabar lab
	npctrade TRADE_DIALOGSET_COLLECTOR, VENONAT,    TANGELA,    "CRINKLES@@@", $9e, $ee, CHESTO_BERRY, 37508, "NORMA@@@@@@", TRADE_GENDER_EITHER
; lass, olivine tims house 
	npctrade TRADE_DIALOGSET_HAPPY,     PRIMEAPE,   HAUNTER,    "GASPAR@@@@@", $7e, $ee, EVERSTONE,    64921, "MINDY@@@@@@", TRADE_GENDER_EITHER
; cooltrainer, goldenrod dept store 5f
	npctrade TRADE_DIALOGSET_GENERIC,   XATU,       HERACROSS,  "CHRISCROSS@", $9e, $ee, LUM_BERRY,    15616, "CHRIS@@@@@@", TRADE_GENDER_EITHER
; youngster, violet kyles house
	npctrade TRADE_DIALOGSET_COLLECTOR, ONIX,       SHUCKLE,    "SHUCKS@@@@@", $9e, $ee, BERRY_JUICE,  48926, "KYLE@@@@@@@", TRADE_GENDER_EITHER
; twin, blackthorn emys house
	npctrade TRADE_DIALOGSET_GENERIC,   DODRIO,     PINECO,     "CONEHEAD@@@", $9e, $ee, LEPPA_BERRY,  00283, "EMY@@@@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
