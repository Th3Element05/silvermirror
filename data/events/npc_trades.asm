MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
; route 2 ~
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MR__MIME,   "MARCEL@@@@@", $37, $66, SITRUS_BERRY, 47460, "MATEO@@@@@@", TRADE_GENDER_EITHER
; route 5 underground entrance (gender specific text: hardcoded ♂ / ♀)
	npctrade TRADE_DIALOGSET_GIRL,      NIDORAN_F,  NIDORAN_M,  "SPIKE@@@@@@", $96, $66, PECHA_BERRY,  49926, "MIA@@@@@@@@", TRADE_GENDER_FEMALE
; route 11 gate 2f ~
	npctrade TRADE_DIALOGSET_HAPPY,     GEODUDE,    CUBONE,     "FLINT@@@@@@", $98, $88, THICK_CLUB,   29289, "LUCAS@@@@@@", TRADE_GENDER_EITHER
; route 18 gate 2f ~
	npctrade TRADE_DIALOGSET_COLLECTOR, SLOWBRO,    LICKITUNG,  "MARC@@@@@@@", $77, $66, LEPPA_BERRY,  00293, "NOAH@@@@@@@", TRADE_GENDER_EITHER
; cerulean city ~
	npctrade TRADE_DIALOGSET_HAPPY,     POLIWHIRL,  JYNX,       "LOLA@@@@@@@", $96, $86, ASPEAR_BERRY, 15617, "MASON@@@@@@", TRADE_GENDER_EITHER
; vermilion city ~
	npctrade TRADE_DIALOGSET_GENERIC,   SPEAROW,    FARFETCH_D, "DUX@@@@@@@@", $96, $66, STICK,        36491, "ELYSSA@@@@@", TRADE_GENDER_EITHER
; cinnabar lab scientist ~
	npctrade TRADE_DIALOGSET_GENERIC,   DITTO,      DITTO,      "MORPH@@@@@@", $ea, $aa, METAL_POWDER, 51082, "JIM@@@@@@@@", TRADE_GENDER_EITHER
; cinnabar lab gramps ~
	npctrade TRADE_DIALOGSET_HAPPY,     GROWLITHE,  CHANSEY,    "DORIS@@@@@@", $96, $77, LUCKY_PUNCH,  51082, "CLIFTON@@@@", TRADE_GENDER_EITHER
; cinnabar lab beauty ~
	npctrade TRADE_DIALOGSET_COLLECTOR, VENONAT,    TANGELA,    "CRINKLES@@@", $86, $76, CHESTO_BERRY, 51082, "NORMA@@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
