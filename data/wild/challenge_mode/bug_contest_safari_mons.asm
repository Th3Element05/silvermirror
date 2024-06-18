ContestSafariMonsChallenge:
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
	
	map_id SAFARI_ZONE_AREA_1 ; FIELD ;GEN2
.Safari1
	table_width 4, .Safari1
; morning
	db 20, GIRAFARIG,     15, 30
	db 20, STANTLER,      15, 30
	db 10, EXEGGCUTE,     14, 30
	db 20, AIPOM,         14, 30
	db  5, MILTANK,       15, 30
	db  5, MILTANK,       15, 30
	db  5, TAUROS,        15, 30
	db  5, TAUROS,        15, 30
	db  5, CHANSEY,       15, 30
	db  5, EEVEE,         14, 30
; day/eve
	db 20, GIRAFARIG,     15, 30
	db 20, STANTLER,      15, 30
	db 10, EXEGGCUTE,     14, 30
	db 20, AIPOM,         14, 30
	db  5, MILTANK,       15, 30
	db  5, MILTANK,       15, 30
	db  5, TAUROS,        15, 30
	db  5, TAUROS,        15, 30
	db  5, CHANSEY,       15, 30
	db  5, EEVEE,         14, 30
; nite
	db 20, GIRAFARIG,     15, 30
	db 20, STANTLER,      15, 30
	db 10, EXEGGCUTE,     14, 30
	db 20, AIPOM,         14, 30
	db  5, MILTANK,       15, 30
	db  5, MILTANK,       15, 30
	db  5, TAUROS,        15, 30
	db  5, TAUROS,        15, 30
	db  5, CHANSEY,       15, 30
	db  5, EEVEE,         14, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_2 ; FOREST ;GEN2
.Safari2
	table_width 4, .Safari2
; morning
	db 20, LEDYBA,         14, 30
	db 10, YANMA,          15, 30
	db 10, EXEGGCUTE,      14, 30
	db 20, PARAS,          14, 30
	db  4, PARAS,          14, 30
	db  5, LEDIAN,         16, 30
	db 10, SCYTHER,        15, 30
	db 10, PINSIR,         15, 30
	db 10, HERACROSS,      15, 30
	db  1, CHANSEY,        15, 30
; day/eve
	db 20, LEDYBA,         14, 30
	db 10, YANMA,          15, 30
	db 10, EXEGGCUTE,      14, 30
	db 20, PARAS,          14, 30
	db  4, PARAS,          14, 30
	db  5, LEDIAN,         16, 30
	db 10, SCYTHER,        15, 30
	db 10, PINSIR,         15, 30
	db 10, HERACROSS,      15, 30
	db  1, CHANSEY,        15, 30
; nite
	db 20, SPINARAK,       14, 30
	db 10, YANMA,          15, 30
	db 10, EXEGGCUTE,      14, 30
	db 20, VENONAT,        14, 30
	db  4, VENONAT,        14, 30
	db  5, ARIADOS,        16, 30
	db 10, SCYTHER,        15, 30
	db 10, PINSIR,         15, 30
	db 10, HERACROSS,      15, 30
	db  1, CHANSEY,        15, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_3 ; SAVANNAH ;GEN2
.Safari3
	table_width 4, .Safari3
; morning
	db 20, PHANPY,        14, 30
	db 20, GLIGAR,        15, 30
	db 10, EXEGGCUTE,     14, 30
	db 10, SKARMORY,      15, 30
	db  5, RHYHORN,       14, 30
	db  5, RHYHORN,       14, 30
	db 10, TAUROS,        15, 30
	db 10, KANGASKHAN,    15, 30
	db  5, CUBONE,        14, 30
	db  5, LARVITAR,      14, 30
; day/eve
	db 20, PHANPY,        14, 30
	db 20, GLIGAR,        15, 30
	db 10, EXEGGCUTE,     14, 30
	db 10, SKARMORY,      15, 30
	db  5, RHYHORN,       14, 30
	db  5, RHYHORN,       14, 30
	db 10, TAUROS,        15, 30
	db 10, KANGASKHAN,    15, 30
	db  5, CUBONE,        14, 30
	db  5, LARVITAR,      14, 30
; nite
	db 20, PHANPY,        14, 30
	db 20, GLIGAR,        15, 30
	db 10, EXEGGCUTE,     14, 30
	db 10, SKARMORY,      15, 30
	db  5, RHYHORN,       14, 30
	db  5, RHYHORN,       14, 30
	db 10, TAUROS,        15, 30
	db 10, KANGASKHAN,    15, 30
	db  5, CUBONE,        14, 30
	db  5, LARVITAR,      14, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_4 ; DEEP_FIELD ;GEN2
.Safari4
	table_width 4, .Safari4
; morning
	db 10, HOPPIP,        14, 30
	db 10, HOPPIP,        14, 30	
	db 20, EXEGGCUTE,     14, 30
	db 20, TANGELA,       15, 30
	db  4, TANGELA,       14, 30
	db 15, AIPOM,         15, 30
	db 10, AIPOM,         15, 30
	db  5, SMEARGLE,      15, 30
	db  5, MILTANK,       15, 30
	db  1, CHANSEY,       15, 30
; day/eve
	db 15, HOPPIP,        14, 30
	db 10, SUNKERN,       14, 30
	db  5, SUNKERN,       14, 30
	db 20, EXEGGCUTE,     14, 30
	db 14, TANGELA,       15, 30
	db 15, AIPOM,         15, 30
	db 10, AIPOM,         15, 30
	db  5, SMEARGLE,      15, 30
	db  5, MILTANK,       15, 30
	db  1, CHANSEY,       15, 30
; nite
	db  5, WOOPER,        14, 30
	db  5, WOOPER,        14, 30
	db 20, EXEGGCUTE,     14, 30
	db 34, TANGELA,       15, 30
	db 10, AIPOM,         15, 30
	db 10, AIPOM,         15, 30
	db  5, AIPOM,         15, 30
	db  5, SMEARGLE,      15, 30
	db  5, MILTANK,       15, 30
	db  1, CHANSEY,       15, 30
	assert_table_length 30
	
	db -1 ; terminator
	