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
	db 20, NIDORAN_M,     16, 30
	db 20, NIDORAN_F,     16, 30
	db 15, EXEGGCUTE,     16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db  5, TAUROS,        16, 30
	db  5, SCYTHER,       16, 30
	db  5, PINSIR,        16, 30
	db  5, LICKITUNG,     16, 30
	db  5, CHANSEY,       16, 30
; day/eve
	db 20, NIDORAN_M,     16, 30
	db 20, NIDORAN_F,     16, 30
	db 15, EXEGGCUTE,     16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db  5, TAUROS,        16, 30
	db  5, SCYTHER,       16, 30
	db  5, PINSIR,        16, 30
	db  5, LICKITUNG,     16, 30
	db  5, CHANSEY,       16, 30
; nite
	db 20, NIDORAN_M,     16, 30
	db 20, NIDORAN_F,     16, 30
	db 15, EXEGGCUTE,     16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db  5, TAUROS,        16, 30
	db  5, SCYTHER,       16, 30
	db  5, PINSIR,        16, 30
	db  5, LICKITUNG,     16, 30
	db  5, CHANSEY,       16, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_2 ; FOREST ;silvermirror
.Safari2
	table_width 4, .Safari2
; morning
	db 24, EXEGGCUTE,      16, 30
	db 15, VENONAT,        16, 30
	db 10, NIDORAN_M,      16, 30
	db 10, NIDORAN_F,      16, 30
	db 10, PARAS,          16, 30
	db 10, SCYTHER,        16, 30
	db 10, PINSIR,         16, 30
	db  5, PARASECT,       16, 30
	db  5, VENOMOTH,       16, 30
	db  1, CHANSEY,        16, 30
; day/eve
	db 24, EXEGGCUTE,      16, 30
	db 15, VENONAT,        16, 30
	db 10, NIDORAN_M,      16, 30
	db 10, NIDORAN_F,      16, 30
	db 10, PARAS,          16, 30
	db 10, SCYTHER,        16, 30
	db 10, PINSIR,         16, 30
	db  5, PARASECT,       16, 30
	db  5, VENOMOTH,       16, 30
	db  1, CHANSEY,        16, 30
; nite
	db 24, EXEGGCUTE,      16, 30
	db 15, VENONAT,        16, 30
	db 10, NIDORAN_M,      16, 30
	db 10, NIDORAN_F,      16, 30
	db 10, PARAS,          16, 30
	db 10, SCYTHER,        16, 30
	db 10, PINSIR,         16, 30
	db  5, PARASECT,       16, 30
	db  5, VENOMOTH,       16, 30
	db  1, CHANSEY,        16, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_3 ; SAVANNAH ;silvermirror
.Safari3
	table_width 4, .Safari3
; morning
	db 15, NIDORAN_M,     16, 30
	db 15, NIDORAN_F,     16, 30
	db 15, RHYHORN,       16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db 10, TAUROS,        16, 30
	db 10, KANGASKHAN,    16, 30
	db 10, CUBONE,        16, 30
	db  4, MAROWAK,       16, 30
	db  1, CHANSEY,       16, 30
; day/eve
	db 15, NIDORAN_M,     16, 30
	db 15, NIDORAN_F,     16, 30
	db 15, RHYHORN,       16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db 10, TAUROS,        16, 30
	db 10, KANGASKHAN,    16, 30
	db 10, CUBONE,        16, 30
	db  4, MAROWAK,       16, 30
	db  1, CHANSEY,       16, 30
; nite
	db 15, NIDORAN_M,     16, 30
	db 15, NIDORAN_F,     16, 30
	db 15, RHYHORN,       16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db 10, TAUROS,        16, 30
	db 10, KANGASKHAN,    16, 30
	db 10, CUBONE,        16, 30
	db  4, MAROWAK,       16, 30
	db  1, CHANSEY,       16, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_4 ; FIELD_2? ;silvermirror
.Safari4
	table_width 4, .Safari4
; morning
	db 20, NIDORAN_M,     16, 30
	db 20, NIDORAN_F,     16, 30
	db 15, EXEGGCUTE,     16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db 10, TANGELA,       16, 30
	db  5, TAUROS,        16, 30
	db  5, KANGASKHAN,    16, 30
	db  4, LICKITUNG,     16, 30
	db  1, CHANSEY,       16, 30
; day/eve
	db 20, NIDORAN_M,     16, 30
	db 20, NIDORAN_F,     16, 30
	db 15, EXEGGCUTE,     16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db 10, TANGELA,       16, 30
	db  5, TAUROS,        16, 30
	db  5, KANGASKHAN,    16, 30
	db  4, LICKITUNG,     16, 30
	db  1, CHANSEY,       16, 30
; nite
	db 20, NIDORAN_M,     16, 30
	db 20, NIDORAN_F,     16, 30
	db 15, EXEGGCUTE,     16, 30
	db 10, NIDORINO,      16, 30
	db 10, NIDORINA,      16, 30
	db 10, TANGELA,       16, 30
	db  5, TAUROS,        16, 30
	db  5, KANGASKHAN,    16, 30
	db  4, LICKITUNG,     16, 30
	db  1, CHANSEY,       16, 30
	assert_table_length 30
	
	db -1 ; terminator
	