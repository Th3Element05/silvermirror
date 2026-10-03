MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
; kanto
; NPC_TRADE_MATEO ;gameboy_kid, route 2 nugget house
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MR__MIME,   "MARCEL@@@@@", $c8, $fe, SITRUS_BERRY, 32891, "MATEO@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_MIA ;twin, route 5 underground entrance
	npctrade TRADE_DIALOGSET_GIRL,      NIDORAN_F,  NIDORAN_M,  "SPIKE@@@@@@", $9d, $ac, PECHA_BERRY,  57572, "MIA@@@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_HIROSHI ;youngster, route 10 pokecenter
	npctrade TRADE_DIALOGSET_GENERIC,   BELLSPROUT, ODDISH,     "ODOKAWA@@@@", $9d, $ac, PERSIM_BERRY, 33623, "HIROSHI@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_LUCAS ;youngster, route 11 gate 2f
	npctrade TRADE_DIALOGSET_HAPPY,     GEODUDE,    CUBONE,     "FLINT@@@@@@", $bf, $8e, THICK_CLUB,   62774, "LUCAS@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_NOAH ;super_nerd, route 18 gate 2f
	npctrade TRADE_DIALOGSET_COLLECTOR, SLOWBRO,    LICKITUNG,  "MARC@@@@@@@", $ac, $f8, LEPPA_BERRY,  64445, "NOAH@@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_MASON ;gramps, cerulean trade speech house
	npctrade TRADE_DIALOGSET_HAPPY,     POLIWHIRL,  JYNX,       "LOLA@@@@@@@", $e9, $db, ASPEAR_BERRY, 16856, "MASON@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_ELYSSA ;twin, vermilion magnet train speech house
	npctrade TRADE_DIALOGSET_GIRL,      SPEAROW,    FARFETCH_D, "DUX@@@@@@@@", $fa, $bd, STICK,        35347, "ELYSSA@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_SOKKA ;pokefan_m, route 7 underground entrance
	npctrade TRADE_DIALOGSET_GENERIC,   MANKEY,     MEOWTH,     "MOMO@@@@@@@", $eb, $cc, AMULET_COIN,  47758, "SOKKA@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_FRANK ;firebreather, safari zone entrance
	npctrade TRADE_DIALOGSET_SAFARI,    MAGMAR,     SCYTHER,    "DR.MANTIS@@", $98, $de, RAZOR_CLAW,   06969, "FRANK@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_ARATA ;rocker, safari zone entrance
	npctrade TRADE_DIALOGSET_SAFARI,    ELECTABUZZ, PINSIR,     "GATACK@@@@@", $98, $de, LUM_BERRY,    23931, "ARATA@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_JIM ;scientist, cinnabar lab fossil room
	npctrade TRADE_DIALOGSET_GENERIC,   DITTO,      DITTO,      "MORPH@@@@@@", $ff, $ff, METAL_POWDER, 64582, "JIM@@@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_CLIFTON ;gramps, cinnabar lab
	npctrade TRADE_DIALOGSET_HAPPY,     GROWLITHE,  CHANSEY,    "DORIS@@@@@@", $d8, $bf, LUCKY_PUNCH,  29213, "CLIFTON@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_NORMA ;beauty, cinnabar lab
	npctrade TRADE_DIALOGSET_GIRL,      VENONAT,    TANGELA,    "CRINKLES@@@", $8f, $ad, CHESTO_BERRY, 49114, "NORMA@@@@@@", TRADE_GENDER_EITHER
; johto
; NPC_TRADE_MINDY ;lass, olivine tims house 
	npctrade TRADE_DIALOGSET_GIRL,      PRIMEAPE,   HAUNTER,    "GASPAR@@@@@", $8e, $ca, EVERSTONE,    21435, "MINDY@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_JACKSON ;gentleman, dance theater
	npctrade TRADE_DIALOGSET_COLLECTOR, RHYDON,     KANGASKHAN, "JACKLYN@@@@", $bb, $e9, SITRUS_BERRY, 15196, "JACKSON@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_CHRIS ;cooltrainer, goldenrod dept store 5f
	npctrade TRADE_DIALOGSET_GENERIC,   XATU,       HERACROSS,  "HERCULES@@@", $b9, $ea, LUM_BERRY,    48667, "CHRIS@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_KYLE ;youngster, violet kyles house
	npctrade TRADE_DIALOGSET_COLLECTOR, ONIX,       SHUCKLE,    "SHUCKS@@@@@", $db, $e8, BERRY_JUICE,  58328, "KYLE@@@@@@@", TRADE_GENDER_EITHER
; NPC_TRADE_EMY ;twin, blackthorn emys house
	npctrade TRADE_DIALOGSET_GIRL,      DODRIO,     PINECO,     "CONEHEAD@@@", $fd, $c8, LEPPA_BERRY,  51289, "EMY@@@@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES

; TRADE_DIALOGSET_COLLECTOR ; 4
; TRADE_DIALOGSET_HAPPY     ; 3
; TRADE_DIALOGSET_GENERIC   ; 4
; TRADE_DIALOGSET_GIRL      ; 5
; TRADE_DIALOGSET_SAFARI    ; 2
