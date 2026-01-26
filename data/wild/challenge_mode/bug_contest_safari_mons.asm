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
	db 20, GIRAFARIG,     14, 30
	db 20, STANTLER,      14, 30
	db 10, EXEGGCUTE,     10, 20
	db 20, AIPOM,         12, 30
	db  5, MILTANK,       14, 30
	db  5, MILTANK,       14, 30
	db  5, TAUROS,        14, 30
	db  5, TAUROS,        14, 30
	db  5, CHANSEY,       14, 30
	db  5, EEVEE,         10, 20
; day/eve
	db 20, GIRAFARIG,     14, 30
	db 20, STANTLER,      14, 30
	db 10, EXEGGCUTE,     10, 20
	db 20, AIPOM,         12, 30
	db  5, MILTANK,       14, 30
	db  5, MILTANK,       14, 30
	db  5, TAUROS,        14, 30
	db  5, TAUROS,        14, 30
	db  5, CHANSEY,       14, 30
	db  5, EEVEE,         10, 20
; nite
	db 20, GIRAFARIG,     14, 30
	db 20, STANTLER,      14, 30
	db 10, EXEGGCUTE,     10, 20
	db 20, AIPOM,         12, 30
	db  5, MILTANK,       14, 30
	db  5, MILTANK,       14, 30
	db  5, TAUROS,        14, 30
	db  5, TAUROS,        14, 30
	db  5, CHANSEY,       14, 30
	db  5, EEVEE,         10, 20
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_2 ; FOREST ;GEN2
.Safari2
	table_width 4, .Safari2
; morning
	db 20, LEDYBA,        10, 20
	db 10, YANMA,         14, 30
	db 10, EXEGGCUTE,     10, 20
	db 20, PARAS,         10, 24
	db  4, PARAS,         10, 24
	db  5, LEDIAN,        18, 30
	db 10, SCYTHER,       14, 30
	db 10, PINSIR,        14, 30
	db 10, HERACROSS,     14, 30
	db  1, CHANSEY,       14, 30
; day/eve
	db 20, LEDYBA,        10, 20
	db 10, YANMA,         14, 30
	db 10, EXEGGCUTE,     10, 20
	db 20, PARAS,         10, 24
	db  4, PARAS,         10, 24
	db  5, LEDIAN,        18, 30
	db 10, SCYTHER,       14, 30
	db 10, PINSIR,        14, 30
	db 10, HERACROSS,     14, 30
	db  1, CHANSEY,       14, 30
; nite
	db 20, SPINARAK,      10, 21
	db 10, YANMA,         14, 30
	db 10, EXEGGCUTE,     10, 20
	db 20, VENONAT,       10, 30
	db  4, VENOMOTH,      24, 30
	db  5, ARIADOS,       22, 30
	db 10, SCYTHER,       14, 30
	db 10, PINSIR,        14, 30
	db 10, HERACROSS,     14, 30
	db  1, CHANSEY,       14, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_3 ; SAVANNAH ;GEN2
.Safari3
	table_width 4, .Safari3
; morning
	db 20, PHANPY,        10, 24
	db 20, GLIGAR,        10, 24
	db 10, EXEGGCUTE,     10, 20
	db 10, SKARMORY,      14, 30
	db 10, RHYHORN,       14, 30
	db 10, TAUROS,        14, 30
	db 10, KANGASKHAN,    14, 30
	db  5, CUBONE,        10, 28
	db  4, LARVITAR,      10, 20
	db  1, CHANSEY,       14, 30
; day/eve
	db 20, PHANPY,        10, 24
	db 20, GLIGAR,        10, 24
	db 10, EXEGGCUTE,     10, 20
	db 10, SKARMORY,      14, 30
	db 10, RHYHORN,       14, 30
	db 10, TAUROS,        14, 30
	db 10, KANGASKHAN,    14, 30
	db  5, CUBONE,        10, 28
	db  4, LARVITAR,      10, 20
	db  1, CHANSEY,       14, 30
; nite
	db 20, PHANPY,        10, 24
	db 20, GLIGAR,        10, 24
	db 10, EXEGGCUTE,     10, 20
	db 10, SKARMORY,      14, 30
	db 10, RHYHORN,       14, 30
	db 10, TAUROS,        14, 30
	db 10, KANGASKHAN,    14, 30
	db  5, CUBONE,        10, 28
	db  4, LARVITAR,      10, 20
	db  1, CHANSEY,       14, 30
	assert_table_length 30
	
	map_id SAFARI_ZONE_AREA_4 ; DEEP_FIELD ;GEN2
.Safari4
	table_width 4, .Safari4
; morning
	db 15, HOPPIP,        10, 20
	db 10, SUNKERN,       10, 20
	db  5, SUNKERN,       10, 20
	db 15, MARILL,        10, 20
	db 20, EXEGGCUTE,     10, 20
	db 14, TANGELA,       14, 30
	db 10, AIPOM,         12, 30
	db  5, MILTANK,       14, 30
	db  5, SMEARGLE,      10, 20
	db  1, CHANSEY,       14, 30
; day/eve
	db 15, HOPPIP,        10, 20
	db 10, SUNKERN,       10, 20
	db  5, SUNKERN,       10, 20
	db 15, MARILL,        10, 20
	db 20, EXEGGCUTE,     10, 20
	db 14, TANGELA,       14, 30
	db 10, AIPOM,         12, 30
	db  5, MILTANK,       14, 30
	db  5, SMEARGLE,      10, 20
	db  1, CHANSEY,       14, 30
; nite
	db 10, MARILL,        10, 20
	db  5, MARILL,        10, 20
	db 20, WOOPER,        10, 20
	db  4, WOOPER,        10, 20
	db 20, EXEGGCUTE,     10, 20
	db 20, TANGELA,       14, 30
	db 10, AIPOM,         12, 30
	db  5, MILTANK,       14, 30
	db  5, SMEARGLE,      10, 20
	db  1, CHANSEY,       14, 30
	assert_table_length 30
	
	db -1 ; terminator
	