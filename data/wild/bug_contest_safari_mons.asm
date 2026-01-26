ContestSafariMonsNormal:
	;   %, species,   min, max

	map_id NATIONAL_PARK_BUG_CONTEST
.NationalPark
	table_width 4, .NationalPark
; morning
	db 20, CATERPIE,    7, 18
	db 20, WEEDLE,      7, 18
	db 10, METAPOD,     9, 18
	db 10, KAKUNA,      9, 18
	db  5, BUTTERFREE, 12, 15
	db  5, BEEDRILL,   12, 15
	db 10, VENONAT,    10, 16
	db 10, PARAS,      10, 17
	db  5, SCYTHER,    13, 14
	db  5, PINSIR,     13, 14
; day/eve
	db 20, CATERPIE,    7, 18
	db 20, WEEDLE,      7, 18
	db 10, METAPOD,     9, 18
	db 10, KAKUNA,      9, 18
	db  5, BUTTERFREE, 12, 15
	db  5, BEEDRILL,   12, 15
	db 10, VENONAT,    10, 16
	db 10, PARAS,      10, 17
	db  5, SCYTHER,    13, 14
	db  5, PINSIR,     13, 14
; nite
	db 20, CATERPIE,    7, 18
	db 20, WEEDLE,      7, 18
	db 10, METAPOD,     9, 18
	db 10, KAKUNA,      9, 18
	db  5, BUTTERFREE, 12, 15
	db  5, BEEDRILL,   12, 15
	db 10, VENONAT,    10, 16
	db 10, PARAS,      10, 17
	db  5, SCYTHER,    13, 14
	db  5, PINSIR,     13, 14
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_1 ; FIELD ;silvermirror
.Safari1
	table_width 4, .Safari1
; morning
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db 24, DODUO,         10, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, TAUROS,        14, 30
	db  5, LICKITUNG,     14, 30
	db  5, CHANSEY,       14, 30
	db  1, EEVEE,         10, 20
; day/eve
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db 24, DODUO,         10, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, TAUROS,        14, 30
	db  5, LICKITUNG,     14, 30
	db  5, CHANSEY,       14, 30
	db  1, EEVEE,         10, 20
; nite
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db 24, DODUO,         10, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, TAUROS,        14, 30
	db  5, LICKITUNG,     14, 30
	db  5, CHANSEY,       14, 30
	db  1, EEVEE,         10, 20
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_2 ; FOREST ;silvermirror
.Safari2
	table_width 4, .Safari2
; morning
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db  8, PARAS,         10, 24
	db  8, PARAS,         10, 24
	db  8, PARAS,         10, 24
	db  5, PARASECT,      24, 30
	db 10, SCYTHER,       14, 30
	db 10, PINSIR,        14, 30
	db  1, CHANSEY,       14, 30
; day/eve
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db  8, PARAS,         10, 24
	db  8, PARAS,         10, 24
	db  8, PARAS,         10, 24
	db  5, PARASECT,      24, 30
	db 10, SCYTHER,       14, 30
	db 10, PINSIR,        14, 30
	db  1, CHANSEY,       14, 30
; nite
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db  4, PARAS,         10, 24
	db 10, VENONAT,       10, 30
	db 10, VENONAT,       10, 30
	db  5, VENOMOTH,      24, 30
	db 10, SCYTHER,       14, 30
	db 10, PINSIR,        14, 30
	db  1, CHANSEY,       14, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_3 ; SAVANNAH ;silvermirror
.Safari3
	table_width 4, .Safari3
; morning
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 14, RHYHORN,       14, 30
	db 10, TAUROS,        14, 30
	db 10, KANGASKHAN,    14, 30
	db  5, CUBONE,        10, 28
	db  1, CHANSEY,       14, 30
; day/eve
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 14, RHYHORN,       14, 30
	db 10, TAUROS,        14, 30
	db 10, KANGASKHAN,    14, 30
	db  5, CUBONE,        10, 28
	db  1, CHANSEY,       14, 30
; nite
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 10, EXEGGCUTE,     10, 20
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 14, RHYHORN,       14, 30
	db 10, TAUROS,        14, 30
	db 10, KANGASKHAN,    14, 30
	db  5, CUBONE,        10, 28
	db  1, CHANSEY,       14, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_4 ; DEEP_FIELD ;silvermirror
.Safari4
	table_width 4, .Safari4
; morning
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 20, EXEGGCUTE,     10, 20
	db 10, TANGELA,       14, 30
	db  5, TANGELA,       14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 10, FARFETCH_D,    14, 30
	db  4, CHANSEY,       14, 30
	db  1, CHANSEY,       14, 30
; day/eve
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 20, EXEGGCUTE,     10, 20
	db 10, TANGELA,       14, 30
	db  5, TANGELA,       14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 10, FARFETCH_D,    14, 30
	db  4, CHANSEY,       14, 30
	db  1, CHANSEY,       14, 30
; nite
	db 20, NIDORAN_M,     10, 20
	db 20, NIDORAN_F,     10, 20
	db 20, EXEGGCUTE,     10, 20
	db 10, TANGELA,       14, 30
	db  5, TANGELA,       14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 10, FARFETCH_D,    14, 30
	db  4, CHANSEY,       14, 30
	db  1, CHANSEY,       14, 30
	assert_table_length 30
	
	db -1 ; terminator
	