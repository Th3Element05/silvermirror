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
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 10, EXEGGCUTE,     14, 30
	db 24, DODUO,         14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, TAUROS,        15, 30
	db  5, LICKITUNG,     15, 30
	db  5, CHANSEY,       15, 30
	db  1, EEVEE,         14, 30
; day/eve
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 10, EXEGGCUTE,     14, 30
	db 24, DODUO,         14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, TAUROS,        15, 30
	db  5, LICKITUNG,     15, 30
	db  5, CHANSEY,       15, 30
	db  1, EEVEE,         14, 30
; nite
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 10, EXEGGCUTE,     14, 30
	db 24, DODUO,         14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, TAUROS,        15, 30
	db  5, LICKITUNG,     15, 30
	db  5, CHANSEY,       15, 30
	db  1, EEVEE,         14, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_2 ; FOREST ;silvermirror
.Safari2
	table_width 4, .Safari2
; morning
	db 20, NIDORAN_M,      14, 30
	db 20, NIDORAN_F,      14, 30
	db 10, EXEGGCUTE,      14, 30
	db  8, PARAS,          14, 30
	db  8, PARAS,          14, 30
	db  8, PARAS,          14, 30
	db  5, PARASECT,       16, 30
	db 10, SCYTHER,        15, 30
	db 10, PINSIR,         15, 30
	db  1, CHANSEY,        15, 30
; day/eve
	db 20, NIDORAN_M,      14, 30
	db 20, NIDORAN_F,      14, 30
	db 10, EXEGGCUTE,      14, 30
	db  8, PARAS,          14, 30
	db  8, PARAS,          14, 30
	db  8, PARAS,          14, 30
	db  5, PARASECT,       16, 30
	db 10, SCYTHER,        15, 30
	db 10, PINSIR,         15, 30
	db  1, CHANSEY,        15, 30
; nite
	db 20, NIDORAN_M,      14, 30
	db 20, NIDORAN_F,      14, 30
	db 10, EXEGGCUTE,      14, 30
	db  8, VENONAT,        14, 30
	db  8, VENONAT,        14, 30
	db  8, VENONAT,        14, 30
	db  5, VENOMOTH,       16, 30
	db 10, SCYTHER,        15, 30
	db 10, PINSIR,         15, 30
	db  1, CHANSEY,        15, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_3 ; SAVANNAH ;silvermirror
.Safari3
	table_width 4, .Safari3
; morning
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 10, EXEGGCUTE,     14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 14, RHYHORN,       14, 30
	db 10, TAUROS,        15, 30
	db 10, KANGASKHAN,    15, 30
	db  5, CUBONE,        14, 30
	db  1, CHANSEY,       15, 30
; day/eve
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 10, EXEGGCUTE,     14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 14, RHYHORN,       14, 30
	db 10, TAUROS,        15, 30
	db 10, KANGASKHAN,    15, 30
	db  5, CUBONE,        14, 30
	db  1, CHANSEY,       15, 30
; nite
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 10, EXEGGCUTE,     14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db 14, RHYHORN,       14, 30
	db 10, TAUROS,        15, 30
	db 10, KANGASKHAN,    15, 30
	db  5, CUBONE,        14, 30
	db  1, CHANSEY,       15, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_4 ; DEEP_FIELD ;silvermirror
.Safari4
	table_width 4, .Safari4
; morning
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 20, EXEGGCUTE,     14, 30
	db 10, TANGELA,       15, 30
	db  9, DODUO,         14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, FARFETCH_D,    15, 30
	db  5, TAUROS,        15, 30
	db  1, CHANSEY,       15, 30
; day/eve
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 20, EXEGGCUTE,     14, 30
	db 10, TANGELA,       15, 30
	db  9, DODUO,         14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, FARFETCH_D,    15, 30
	db  5, TAUROS,        15, 30
	db  1, CHANSEY,       15, 30
; nite
	db 20, NIDORAN_M,     14, 30
	db 20, NIDORAN_F,     14, 30
	db 20, EXEGGCUTE,     14, 30
	db 10, TANGELA,       15, 30
	db  9, DODUO,         14, 30
	db  5, NIDORINO,      16, 30
	db  5, NIDORINA,      16, 30
	db  5, FARFETCH_D,    15, 30
	db  5, TAUROS,        15, 30
	db  1, CHANSEY,       15, 30
	assert_table_length 30
	
	db -1 ; terminator
	