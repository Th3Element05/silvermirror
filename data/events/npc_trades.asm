MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MR__MIME,   "MARCEL@@@@@", $37, $66, SITRUS_BERRY, 47460, "MATEO@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      NIDORAN_M,  NIDORAN_F,  "SPOT@@@@@@@", $96, $66, PECHA_BERRY,  49926, "MIA@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    HAUNTER,    KADABRA,    "ABBY@@@@@@@", $98, $88, LUM_BERRY,    29289, "LUCAS@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     SLOWBRO,    LICKITUNG,  "MARC@@@@@@@", $77, $66, LEPPA_BERRY,  00293, "NOAH@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     POLIWHIRL,  JYNX,       "LOLA@@@@@@@", $96, $86, ASPEAR_BERRY, 15617, "MASON@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      SPEAROW,    FARFETCH_D, "DUX@@@@@@@@", $96, $66, STICK,        36491, "ELYSSA@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, PONYTA,     SEEL,       "SAILOR@@@@@", $96, $66, SITRUS_BERRY, 51082, "GARETT@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     RAICHU,     ELECTRODE,  "DORIS@@@@@@", $96, $66, CHERI_BERRY,  51082, "CLIFTON@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, VENONAT,    TANGELA,    "CRINKLES@@@", $96, $66, CHESTO_BERRY, 51082, "NORMA@@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
