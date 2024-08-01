MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup PALLET                                               ;  1
	map_const PALLET_TOWN,                                 10,  9 ;  1
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  2
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  3
	map_const OAKS_LAB,                                     5,  6 ;  4
	map_const BLUES_HOUSE,                                  4,  4 ;  5
	map_const BLUES_HOUSE_2F,                               4,  3 ;  6
	map_const ROUTE_1,                                     10, 18 ;  7
	endgroup

	newgroup VIRIDIAN                                             ;  2
	map_const VIRIDIAN_CITY,                               20, 18 ;  1
	map_const VIRIDIAN_POKECENTER_1F,                       7,  4 ;  2
	map_const VIRIDIAN_MART,                                5,  4 ;  3
	map_const VIRIDIAN_GYM,                                10,  9 ;  4
	map_const EARLS_POKEMON_ACADEMY,                        4,  5 ;  5
	map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE,               4,  4 ;  6
	map_const ROUTE_2_SOUTH,                               10, 17 ;  7
	map_const ROUTE_2_GATE,                                 4,  4 ;  8
	map_const ROUTE_22,                                    20,  9 ;  9
	endgroup

	newgroup PEWTER                                               ;  3
	map_const PEWTER_CITY,                                 20, 18 ;  1
	map_const PEWTER_POKECENTER_1F,                         7,  4 ;  2
	map_const PEWTER_MART,                                  5,  4 ;  3
	map_const PEWTER_GYM,                                   5,  7 ;  4
	map_const PEWTER_MUSEUM_1F,                            10,  4 ;  5
	map_const PEWTER_MUSEUM_2F,                             7,  4 ;  6
	map_const PEWTER_SNOOZE_SPEECH_HOUSE,                   4,  4 ;  7
	map_const PEWTER_NIDORAN_SPEECH_HOUSE,                  4,  4 ;  8
	map_const ROUTE_2_NORTH,                               10, 18 ;  9
	map_const ROUTE_2_NUGGET_HOUSE,                         4,  4 ; 10
	map_const VIRIDIAN_FOREST,                             17, 28 ; 11
	map_const VIRIDIAN_FOREST_GATE_N,                       4,  4 ; 12
	map_const VIRIDIAN_FOREST_GATE_S,                       4,  4 ; 13
	map_const ROUTE_3,                                     30, 18 ; 14
	map_const MOUNT_MOON_POKECENTER_1F,                     7,  4 ; 15
	endgroup

	newgroup CERULEAN                                             ;  4
	map_const CERULEAN_CITY,                               20, 18 ;  1
	map_const CERULEAN_POKECENTER_1F,                       7,  4 ;  2
	map_const CERULEAN_MART,                                5,  4 ;  3
	map_const CERULEAN_GYM,                                 5,  8 ;  4
	map_const CERULEAN_TRASHED_HOUSE,                       4,  4 ;  5
	map_const CERULEAN_GYM_BADGE_SPEECH_HOUSE,              4,  4 ;  6
	map_const CERULEAN_TRADE_SPEECH_HOUSE,                  4,  4 ;  7
	map_const BIKE_SHOP,                                    4,  4 ;  8
	map_const DAY_CARE,                                     4,  4 ;  9
	map_const ROUTE_4,                                     30,  9 ; 10
	map_const ROUTE_24,                                    10, 18 ; 11
	map_const ROUTE_25,                                    30,  9 ; 12
	map_const BILLS_HOUSE,                                  4,  4 ; 13
	map_const ROUTE_9,                                     30,  9 ; 14
	map_const ROUTE_10_NORTH,                              10, 24 ; 15
	map_const ROUTE_10_POKECENTER_1F,                       7,  4 ; 16
	endgroup

	newgroup VERMILION                                            ;  5
	map_const VERMILION_CITY,                              20, 18 ;  1
	map_const VERMILION_POKECENTER_1F,                      7,  4 ;  2
	map_const VERMILION_MART,                               5,  4 ;  3
	map_const VERMILION_GYM,                                5,  9 ;  4
	map_const POKEMON_FAN_CLUB,                             4,  4 ;  5
	map_const VERMILION_FISHING_SPEECH_HOUSE,               4,  4 ;  6
	map_const VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE,         4,  4 ;  7
	map_const VERMILION_MAGNET_TRAIN_SPEECH_HOUSE,          4,  4 ;  8
	map_const ROUTE_6,                                     10, 16 ;  9
	map_const ROUTE_6_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 10
	map_const ROUTE_6_SAFFRON_GATE,                         4,  4 ; 13
	map_const ROUTE_11,                                    27,  9 ; 11
	map_const ROUTE_11_GATE,                                4,  5 ; 12
	map_const ROUTE_11_GATE_2F,                             4,  4 ; 13
	endgroup

	newgroup SS_ANNE ; FAST_SHIP                                  ;  6
	map_const VERMILION_PORT,                              10,  9 ;  1
	map_const OLIVINE_PORT,                                10, 18 ;  2
	map_const SS_ANNE_1F,                                  19,  8 ;  3
	map_const SS_ANNE_ROOMS_1F,                            12,  8 ;  4
	map_const SS_ANNE_ROOMS_B1F,                           12,  8 ;  5
	map_const SS_ANNE_KITCHEN,                              7,  7 ;  6
	map_const SS_ANNE_2F,                                  19,  8 ;  7
	map_const SS_ANNE_ROOMS_2F,                            12,  8 ;  8
	map_const SS_ANNE_BOW,                                 10,  7 ;  9
;	map_const FAST_SHIP_1F,                                16,  9 ; 10
;	map_const FAST_SHIP_CABINS_NNW_NNE_NE,                  4, 16 ; 11
;	map_const FAST_SHIP_CABINS_SW_SSW_NW,                   4, 16 ; 12
;	map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,       5, 17 ; 13
;	map_const FAST_SHIP_B1F,                               16,  8 ; 14
	map_const MOUNT_MOON_SQUARE,                           15,  9 ; 15
	map_const MOUNT_MOON_GIFT_SHOP,                         4,  4 ; 16
	map_const TIN_TOWER_ROOF,                              10,  9 ; 17
	endgroup

	newgroup LAVENDER                                             ;  7
	map_const LAVENDER_TOWN,                               10,  9 ;  1
	map_const LAVENDER_POKECENTER_1F,                       7,  4 ;  2
	map_const LAVENDER_MART,                                5,  4 ;  3
	map_const MR_FUJIS_HOUSE,                               5,  4 ;  4
	map_const LAVENDER_SPEECH_HOUSE,                        4,  4 ;  5
	map_const LAVENDER_NAME_RATER,                          4,  4 ;  6
	map_const ROUTE_10_SOUTH,                              10, 11 ;  7
	map_const ROUTE_8,                                     28, 11 ;  9
	map_const ROUTE_8_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 10
	map_const ROUTE_8_SAFFRON_GATE,                         4,  5 ; 11
	map_const ROUTE_12,                                    11, 52 ; 12
	map_const ROUTE_12_GATE,                                4,  4 ; 13
	map_const ROUTE_12_GATE_2F,                             4,  4 ; 14
	map_const ROUTE_12_SUPER_ROD_HOUSE,                     4,  4 ; 15
	map_const ROUTE_13,                                    38,  9 ; 16
	map_const ROUTE_14,                                    10, 18 ; 17
	map_const ROUTE_15,                                    25,  9 ; 18
	endgroup

	newgroup CELADON                                              ;  8
	map_const CELADON_CITY,                                24, 18 ;  1
	map_const CELADON_POKECENTER_1F,                        7,  4 ;  2
	map_const CELADON_DEPT_STORE_1F,                        8,  4 ;  3
	map_const CELADON_DEPT_STORE_2F,                        8,  4 ;  4
	map_const CELADON_DEPT_STORE_3F,                        8,  4 ;  5
	map_const CELADON_DEPT_STORE_4F,                        8,  4 ;  6
	map_const CELADON_DEPT_STORE_5F,                        8,  4 ;  7
	map_const CELADON_DEPT_STORE_ROOF,                      8,  6 ;  8
	map_const CELADON_DEPT_STORE_ELEVATOR,                  2,  2 ;  9
	map_const CELADON_GYM,                                  5,  9 ; 10
	map_const CELADON_MANSION_1F,                           4,  5 ; 11
	map_const CELADON_MANSION_2F,                           4,  5 ; 12
	map_const CELADON_MANSION_3F,                           4,  5 ; 13
	map_const CELADON_MANSION_ROOF,                         4,  7 ; 14
	map_const CELADON_MANSION_ROOF_HOUSE,                   4,  4 ; 15
	map_const CELADON_GAME_CORNER,                         10,  7 ; 16
	map_const CELADON_GAME_CORNER_PRIZE_ROOM,               4,  3 ; 17
	map_const CELADON_CAFE,                                 5,  4 ; 28
	map_const CELADON_CHIEF_HOUSE,                          4,  4 ; 19
	map_const CELADON_HOTEL,                                7,  4 ; 20
	map_const ROUTE_7,                                     10, 10 ; 21
	map_const ROUTE_7_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 23
	map_const ROUTE_7_SAFFRON_GATE,                         4,  5 ; 22
	map_const ROUTE_16,                                    19, 10 ; 24
	map_const ROUTE_16_FUCHSIA_SPEECH_HOUSE,                4,  4 ; 25
	map_const ROUTE_16_GATE,                                4,  5 ; 26
	endgroup

	newgroup FUCHSIA                                              ;  9
	map_const FUCHSIA_CITY,                                20, 19 ;  1
	map_const FUCHSIA_POKECENTER_1F,                        7,  4 ;  2
	map_const FUCHSIA_MART,                                 5,  4 ;  3
	map_const FUCHSIA_GYM,                                  5,  9 ;  4
	map_const SAFARI_ZONE_WARDENS_HOME,                     4,  4 ;  5
	map_const SAFARI_ZONE_MAIN_OFFICE,                      5,  4 ;  6
	map_const BILLS_BROTHERS_HOUSE,                         4,  4 ;  7
	map_const FUCHSIA_GOOD_ROD_HOUSE,                       4,  4 ;  8
	map_const ROUTE_15_GATE,                                4,  5 ;  9
	map_const ROUTE_15_GATE_2F,                             4,  4 ; 10
	map_const ROUTE_17,                                    10, 71 ; 11
	map_const ROUTE_18,                                    25,  9 ; 12
	map_const ROUTE_18_GATE,                                4,  5 ; 13
	map_const ROUTE_18_GATE_2F,                             4,  4 ; 14
	map_const ROUTE_19_GATE,                                4,  4 ; 15
	endgroup

	newgroup SAFARI_ZONE                                          ; 10
	map_const SAFARI_ZONE_ENTRANCE,                         5,  5 ;  1
	map_const SAFARI_ZONE_AREA_1,                          20, 16 ;  2
	map_const SAFARI_ZONE_AREA_2,                          17, 13 ;  3
	map_const SAFARI_ZONE_AREA_3,                          21, 19 ;  4
	map_const SAFARI_ZONE_AREA_4,                          18, 15 ;  5
	map_const SAFARI_REST_HOUSE_AREA_1,                     4,  4 ;  6
	map_const SAFARI_REST_HOUSE_AREA_2,                     4,  4 ;  7
	map_const SAFARI_REST_HOUSE_AREA_3,                     4,  4 ;  8
	map_const SAFARI_REST_HOUSE_AREA_4,                     4,  4 ;  9
	map_const SAFARI_SECRET_HOUSE,                          4,  4 ; 10
	endgroup

	newgroup SAFFRON                                              ; 11
	map_const SAFFRON_CITY,                                20, 18 ;  1
	map_const SAFFRON_POKECENTER_1F,                        7,  4 ;  2
	map_const SAFFRON_MART,                                 5,  4 ;  3
	map_const SAFFRON_GYM,                                 10,  9 ;  4
	map_const FIGHTING_DOJO,                                5,  6 ;  5
	map_const MR_PSYCHICS_HOUSE,                            4,  4 ;  6
	map_const COPYCATS_HOUSE_1F,                            4,  4 ;  7
	map_const COPYCATS_HOUSE_2F,                            4,  3 ;  8
	map_const SAFFRON_PIDGEY_HOUSE,                         4,  4 ;  9
	map_const SAFFRON_MAGNET_TRAIN_STATION,                10,  9 ; 10
	map_const ROUTE_5,                                     10, 16 ; 11
	map_const ROUTE_5_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 12
	map_const ROUTE_5_SAFFRON_GATE,                         4,  4 ; 13
	endgroup

	newgroup CINNABAR                                             ; 12
	map_const CINNABAR_ISLAND,                             11, 10 ;  1
	map_const CINNABAR_POKECENTER_1F,                       7,  4 ;  2
	map_const CINNABAR_MART,                                5,  4 ;  3
	map_const CINNABAR_GYM,                                12,  9 ;  4
	map_const CINNABAR_LAB,                                 8,  4 ;  5
	map_const CINNABAR_LAB_RESEARCH_ROOM,                   4,  4 ;  6
	map_const CINNABAR_LAB_FOSSIL_ROOM,                     4,  4 ;  7
	map_const ROUTE_19,                                    10, 25 ;  8
	map_const ROUTE_20,                                    45,  9 ;  9
	map_const ROUTE_21,                                    10, 30 ; 10
	endgroup

	newgroup INDIGO                                               ; 13
	map_const VICTORY_ROAD_GATE,                           10,  8 ;  1
	map_const ROUTE_23,                                    10, 37 ;  2
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  6 ;  3
	map_const E4_LORELEIS_ROOM,                             5,  9 ;  4
	map_const E4_BRUNOS_ROOM,                               5,  9 ;  5
	map_const E4_AGATHAS_ROOM,                              5,  9 ;  6
	map_const E4_LANCES_ROOM,                               5, 11 ;  7
	map_const HALL_OF_FAME,                                 5,  5 ;  9
	endgroup

	newgroup NEW_BARK                                             ; 15
	map_const NEW_BARK_TOWN,                               10,  9 ;  1
	map_const ELMS_LAB,                                     5,  6 ;  2
	map_const ELMS_HOUSE,                                   4,  4 ;  3
	map_const PLAYERS_NEIGHBORS_HOUSE,                      4,  4 ;  4
	map_const ROUTE_29,                                    30,  9 ;  5
	map_const ROUTE_29_ROUTE_46_GATE,                       4,  4 ;  6
	map_const ROUTE_27_WEST,                               18,  9 ;  7
	map_const REDS_HOUSE_1F,                                4,  4 ;  8
	map_const REDS_HOUSE_2F,                                4,  4 ;  9
	endgroup

	newgroup CHERRYGROVE                                          ; 16
	map_const CHERRYGROVE_CITY,                            20,  9 ;  1
	map_const CHERRYGROVE_POKECENTER_1F,                    7,  4 ;  2
	map_const CHERRYGROVE_MART,                             5,  4 ;  3
	map_const GUIDE_GENTS_HOUSE,                            4,  4 ;  4
	map_const CHERRYGROVE_GYM_SPEECH_HOUSE,                 4,  4 ;  5
	map_const CHERRYGROVE_EVOLUTION_SPEECH_HOUSE,           4,  4 ;  6
	map_const ROUTE_30,                                    10, 27 ;  7
	map_const ROUTE_30_BERRY_HOUSE,                         4,  4 ;  8
	map_const MR_POKEMONS_HOUSE,                            4,  4 ;  9
	map_const ROUTE_31,                                    20,  9 ; 10
	map_const ROUTE_31_VIOLET_GATE,                         4,  5 ; 11
	endgroup

	newgroup VIOLET                                               ; 17
	map_const VIOLET_CITY,                                 20, 18 ;  1
	map_const VIOLET_POKECENTER_1F,                         7,  4 ;  2
	map_const VIOLET_MART,                                  5,  4 ;  3
	map_const VIOLET_GYM,                                   5,  8 ;  4
	map_const TRAINER_HOUSE_1F,                             5,  7 ;  5
	map_const TRAINER_HOUSE_B1F,                            5,  8 ;  6
	map_const VIOLET_KYLES_HOUSE,                           4,  4 ;  7
	map_const VIOLET_NICKNAME_SPEECH_HOUSE,                 4,  4 ;  8
	map_const ROUTE_32,                                    10, 45 ;  9
	map_const ROUTE_32_RUINS_OF_ALPH_GATE,                  4,  5 ; 10
	map_const ROUTE_32_POKECENTER_1F,                       7,  4 ; 11
	map_const ROUTE_35,                                    10, 18 ; 12
	map_const ROUTE_35_GOLDENROD_GATE,                      4,  4 ; 13
	map_const ROUTE_35_NATIONAL_PARK_GATE,                  4,  4 ; 14
	map_const ROUTE_36,                                    30,  9 ; 15
	map_const ROUTE_36_RUINS_OF_ALPH_GATE,                  4,  4 ; 16
	map_const ROUTE_36_NATIONAL_PARK_GATE,                  5,  4 ; 17
	endgroup

	newgroup AZALEA                                               ; 18
	map_const AZALEA_TOWN,                                 20,  9 ;  1
	map_const AZALEA_POKECENTER_1F,                         7,  4 ;  2
	map_const AZALEA_MART,                                  5,  4 ;  3
	map_const AZALEA_GYM,                                   5,  8 ;  4
	map_const KURTS_HOUSE,                                  8,  4 ;  5
	map_const CHARCOAL_KILN,                                4,  4 ;  6
	map_const ROUTE_33,                                    10,  9 ;  7
	map_const ILEX_FOREST_AZALEA_GATE,                      4,  5 ;  8
	endgroup

	newgroup GOLDENROD                                            ; 19
	map_const GOLDENROD_CITY,                              20, 18 ;  1
	map_const GOLDENROD_POKECENTER_1F,                      7,  4 ;  2
	map_const GOLDENROD_DEPT_STORE_1F,                      8,  4 ;  3
	map_const GOLDENROD_DEPT_STORE_2F,                      8,  4 ;  4
	map_const GOLDENROD_DEPT_STORE_3F,                      8,  4 ;  5
	map_const GOLDENROD_DEPT_STORE_4F,                      8,  4 ;  6
	map_const GOLDENROD_DEPT_STORE_5F,                      8,  4 ;  7
	map_const GOLDENROD_DEPT_STORE_6F,                      8,  4 ;  8
	map_const GOLDENROD_DEPT_STORE_ELEVATOR,                2,  2 ;  9
	map_const GOLDENROD_DEPT_STORE_ROOF,                    8,  4 ; 10
	map_const GOLDENROD_GYM,                               10,  9 ; 11
	map_const GOLDENROD_MAGNET_TRAIN_STATION,              10,  9 ; 12
	map_const GOLDENROD_HAPPINESS_RATER,                    4,  4 ; 13
	map_const BILLS_FAMILYS_HOUSE,                          4,  4 ; 14
	map_const GOLDENROD_FLOWER_SHOP,                        4,  4 ; 15
	map_const GOLDENROD_PP_SPEECH_HOUSE,                    4,  4 ; 16
	map_const GOLDENROD_NAME_RATER,                         4,  4 ; 17
	map_const GOLDENROD_GAME_CORNER,                       10,  7 ; 18
	map_const ROUTE_34,                                    10, 27 ; 19
	map_const ROUTE_34_ILEX_FOREST_GATE,                    4,  4 ; 20
	endgroup

	newgroup ECRUTEAK                                             ; 20
	map_const ECRUTEAK_CITY,                               20, 18 ;  1
	map_const ECRUTEAK_POKECENTER_1F,                       7,  4 ;  2
	map_const ECRUTEAK_MART,                                5,  4 ;  3
	map_const ECRUTEAK_GYM,                                 5,  9 ;  4
	map_const DANCE_THEATER,                                6,  7 ;  5
	map_const ECRUTEAK_TIN_TOWER_ENTRANCE,                 10,  9 ;  6
	map_const WISE_TRIOS_ROOM,                              4,  4 ;  7
	map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,                  4,  4 ;  9
	map_const ECRUTEAK_ITEMFINDER_HOUSE,                    4,  4 ; 10
	map_const ROUTE_37,                                    10,  9 ; 11
	endgroup

	newgroup OLIVINE                                              ; 21
	map_const OLIVINE_CITY,                                20, 18 ;  1
	map_const OLIVINE_POKECENTER_1F,                        7,  4 ;  2
	map_const OLIVINE_MART,                                 5,  4 ;  3
	map_const OLIVINE_GYM,                                  5,  8 ;  4
	map_const OLIVINE_CAFE,                                 5,  4 ;  5
	map_const OLIVINE_GOOD_ROD_HOUSE,                       4,  4 ;  6
	map_const OLIVINE_TIMS_HOUSE,                           4,  4 ;  7
	map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE,              4,  4 ;  8
	map_const OLIVINE_HOUSE_BETA,                           4,  4 ;  9
	map_const ROUTE_38,                                    20,  9 ; 10
	map_const ROUTE_38_ECRUTEAK_GATE,                       4,  5 ; 11
	map_const ROUTE_39,                                    10, 18 ; 12
	map_const ROUTE_39_BARN,                                4,  4 ; 13
	map_const ROUTE_39_FARMHOUSE,                           4,  4 ; 14
	endgroup

	newgroup CIANWOOD                                             ; 22
	map_const CIANWOOD_CITY,                               15, 27 ;  1
	map_const CIANWOOD_POKECENTER_1F,                       7,  4 ;  2
	map_const CIANWOOD_PHARMACY,                            4,  4 ;  3
	map_const CIANWOOD_GYM,                                 5,  9 ;  4
	map_const MANIAS_HOUSE,                                 4,  4 ;  5
	map_const CIANWOOD_PHOTO_STUDIO,                        4,  4 ;  6
	map_const CIANWOOD_LUGIA_SPEECH_HOUSE,                  4,  4 ;  7
	map_const POKE_SEERS_HOUSE,                             4,  4 ;  8
	map_const ROUTE_40,                                    10, 18 ;  9
	map_const ROUTE_40_BATTLE_TOWER_GATE,                   4,  4 ; 10
	map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ; 11
	map_const BATTLE_TOWER_1F,                              8,  5 ; 12
	map_const BATTLE_TOWER_ELEVATOR,                        2,  2 ; 13
	map_const BATTLE_TOWER_HALLWAY,                        11,  2 ; 14
	map_const BATTLE_TOWER_BATTLE_ROOM,                     4,  4 ; 15
	map_const ROUTE_41,                                    25, 27 ; 16
	endgroup

	newgroup MAHOGANY                                             ; 23
	map_const MAHOGANY_TOWN,                               10,  9 ;  1
	map_const MAHOGANY_POKECENTER_1F,                       7,  4 ;  2
	map_const MAHOGANY_GYM,                                 5,  9 ;  3
	map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,           4,  4 ;  4
	map_const ROUTE_42,                                    30,  9 ;  5
	map_const ROUTE_42_ECRUTEAK_GATE,                       4,  5 ;  6
	map_const ROUTE_44,                                    30,  9 ;  7
	endgroup

	newgroup LAKE_OF_RAGE                                         ; 24
	map_const LAKE_OF_RAGE,                                20, 18 ;  1
	map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,              4,  4 ;  2
	map_const LAKE_OF_RAGE_MAGIKARP_HOUSE,                  4,  4 ;  3
	map_const ROUTE_43,                                    10, 27 ;  4
	map_const ROUTE_43_GATE,                                4,  4 ;  5
	map_const ROUTE_43_MAHOGANY_GATE,                       4,  4 ;  6
	endgroup

	newgroup BLACKTHORN                                           ; 25
	map_const BLACKTHORN_CITY,                             20, 18 ;  1
	map_const BLACKTHORN_POKECENTER_1F,                     7,  4 ;  2
	map_const BLACKTHORN_MART,                              5,  4 ;  3
	map_const BLACKTHORN_GYM_1F,                            5,  9 ;  4
	map_const BLACKTHORN_GYM_2F,                            5,  9 ;  5
	map_const BLACKTHORN_DRAGON_SPEECH_HOUSE,               4,  4 ;  6
	map_const BLACKTHORN_EMYS_HOUSE,                        4,  4 ;  7
	map_const MOVE_DELETERS_HOUSE,                          4,  4 ;  8
	map_const ROUTE_45,                                    10, 45 ;  9
	map_const ROUTE_46,                                    10, 18 ; 10
	endgroup

	newgroup SILVER                                               ; 26
	map_const ROUTE_26,                                    10, 52 ;  1
	map_const ROUTE_26_GATE,                                4,  4 ;  2
;	map_const ROUTE_26_HEAL_HOUSE,                          4,  4 ;  3
	map_const DAY_OF_WEEK_SIBLINGS_HOUSE,                   4,  4 ;  4
	map_const ROUTE_27_EAST,                               26,  9 ;  5
	map_const ROUTE_28,                                    20,  9 ;  6
	map_const SILVER_CAVE_OUTSIDE,                         20, 15 ;  7
	map_const SILVER_CAVE_POKECENTER_1F,                    7,  4 ;  8
	map_const ROUTE_28_STEEL_WING_HOUSE,                    4,  4 ;  9
	endgroup

	newgroup DUNGEONS                                             ; 14
; kanto
	map_const MOUNT_MOON,                                  20, 27 ;  1
	map_const MOUNT_MOON_B2F,                              20, 19 ;  2
	map_const UNDERGROUND_PATH,                             3, 14 ;  3
	map_const DIGLETTS_CAVE,                               19, 17 ;  4
	map_const ROCK_TUNNEL_1F,                              18, 16 ;  5
	map_const ROCK_TUNNEL_B1F,                             18, 16 ;  6
	map_const UNDERGROUND_PATH_EW,                         16,  3 ;  7
	map_const ROCKET_HIDEOUT_B1F,                          11, 12 ;  8
	map_const ROCKET_HIDEOUT_B2F,                          15, 11 ;  9
	map_const ROCKET_HIDEOUT_B3F,                          11, 12 ; 10
	map_const ROCKET_HIDEOUT_B4F,                          11, 12 ; 11
	map_const ROCKET_HIDEOUT_ELEVATOR,                      2,  2 ; 12
	map_const POKEMON_TOWER_1F,                             9,  9 ; 13
	map_const POKEMON_TOWER_2F,                             9,  9 ; 14
	map_const POKEMON_TOWER_3F,                             9,  9 ; 15
	map_const POKEMON_TOWER_4F,                             9,  9 ; 16
	map_const POKEMON_TOWER_5F,                             9,  9 ; 17
	map_const POKEMON_TOWER_6F,                             9,  9 ; 18
	map_const POKEMON_TOWER_7F,                             9,  9 ; 19
	map_const SILPH_CO_1F,                                 15,  9 ; 20
	map_const SILPH_CO_2F,                                 15,  9 ; 21
	map_const SILPH_CO_3F,                                 15,  9 ; 22
	map_const SILPH_CO_4F,                                 15,  9 ; 23
	map_const SILPH_CO_5F,                                 15,  9 ; 24
	map_const SILPH_CO_6F,                                 13,  9 ; 25
	map_const SILPH_CO_7F,                                 13,  9 ; 26
	map_const SILPH_CO_8F,                                 13,  9 ; 27
	map_const SILPH_CO_9F,                                 13,  9 ; 28
	map_const SILPH_CO_10F,                                 8,  9 ; 29
	map_const SILPH_CO_11F,                                 9,  9 ; 30
	map_const SILPH_CO_ELEVATOR,                            2,  2 ; 30
	map_const SEAFOAM_ISLANDS,                             15, 10 ; 31
	map_const SEAFOAM_ISLANDS_B1F,                         15, 10 ; 32
	map_const SEAFOAM_ISLANDS_B2F,                         15, 10 ; 33
	map_const SEAFOAM_ISLANDS_B3F,                         15, 11 ; 34
	map_const SEAFOAM_ISLANDS_B4F,                         15, 10 ; 35
	map_const POKEMON_MANSION_1F,                          15, 14 ; 36
	map_const POKEMON_MANSION_2F,                          15, 14 ; 37
	map_const POKEMON_MANSION_3F,                          15,  9 ; 38
	map_const POKEMON_MANSION_B1F,                         15, 14 ; 39
	map_const POWER_PLANT,                                 20, 18 ; 40 ; 10,  9 ; 40
;	map_const VICTORY_ROAD,                                10, 36 ; 41
	map_const VICTORY_ROAD_1F,                             13, 12 ; 41
	map_const VICTORY_ROAD_2F,                             15, 12 ; 42
	map_const VICTORY_ROAD_3F,                             15, 12 ; 43
	map_const CERULEAN_CAVE_1F,                            17, 11 ; 42
	map_const CERULEAN_CAVE_2F,                            15,  9 ; 43
	map_const CERULEAN_CAVE_B1F,                           17, 11 ; 44
; johto
	map_const SPROUT_TOWER_1F,                             10,  8 ; 45
	map_const SPROUT_TOWER_2F,                             10,  8 ; 46
	map_const SPROUT_TOWER_3F,                             10,  8 ; 47
	map_const TIN_TOWER_1F,                                10,  9 ; 48
	map_const TIN_TOWER_2F,                                10,  9 ; 49
	map_const TIN_TOWER_3F,                                10,  9 ; 50
	map_const TIN_TOWER_4F,                                10,  9 ; 51
	map_const TIN_TOWER_5F,                                10,  9 ; 52
	map_const TIN_TOWER_6F,                                10,  9 ; 53
	map_const TIN_TOWER_7F,                                10,  9 ; 54
	map_const TIN_TOWER_8F,                                10,  9 ; 55
	map_const TIN_TOWER_9F,                                10,  9 ; 56
	map_const BURNED_TOWER_1F,                             10,  9 ; 57
	map_const BURNED_TOWER_B1F,                            10,  9 ; 58
	map_const NATIONAL_PARK,                               20, 27 ; 59
	map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27 ; 60
	map_const RADIO_TOWER_1F,                               9,  4 ; 61
	map_const RADIO_TOWER_2F,                               9,  4 ; 62
	map_const RADIO_TOWER_3F,                               9,  4 ; 63
	map_const RADIO_TOWER_4F,                               9,  4 ; 64
	map_const RADIO_TOWER_5F,                               9,  4 ; 65
	map_const RUINS_OF_ALPH_OUTSIDE,                       10, 18 ; 66
	map_const RUINS_OF_ALPH_HO_OH_CHAMBER,                  4,  5 ; 67
	map_const RUINS_OF_ALPH_KABUTO_CHAMBER,                 4,  5 ; 68
	map_const RUINS_OF_ALPH_OMANYTE_CHAMBER,                4,  5 ; 69
	map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER,             4,  5 ; 70
	map_const RUINS_OF_ALPH_INNER_CHAMBER,                 10, 14 ; 71
	map_const RUINS_OF_ALPH_RESEARCH_CENTER,                4,  4 ; 72
	map_const RUINS_OF_ALPH_HO_OH_ITEM_ROOM,                4,  5 ; 73
	map_const RUINS_OF_ALPH_KABUTO_ITEM_ROOM,               4,  5 ; 74
	map_const RUINS_OF_ALPH_OMANYTE_ITEM_ROOM,              4,  5 ; 75
	map_const RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM,           4,  5 ; 76
	map_const UNION_CAVE_1F,                               10, 18 ; 77
	map_const UNION_CAVE_B1F,                              10, 18 ; 78
	map_const UNION_CAVE_B2F,                              10, 18 ; 79
	map_const SLOWPOKE_WELL_B1F,                           10,  9 ; 80
	map_const SLOWPOKE_WELL_B2F,                           10,  9 ; 81
	map_const OLIVINE_LIGHTHOUSE_1F,                       10,  9 ; 82
	map_const OLIVINE_LIGHTHOUSE_2F,                       10,  9 ; 83
	map_const OLIVINE_LIGHTHOUSE_3F,                       10,  9 ; 84
	map_const OLIVINE_LIGHTHOUSE_4F,                       10,  9 ; 85
	map_const OLIVINE_LIGHTHOUSE_5F,                       10,  9 ; 86
	map_const OLIVINE_LIGHTHOUSE_6F,                       10,  9 ; 87
	map_const MAHOGANY_MART_1F,                             4,  4 ; 88
	map_const TEAM_ROCKET_BASE_B1F,                        15,  9 ; 89
	map_const TEAM_ROCKET_BASE_B2F,                        15,  9 ; 90
	map_const TEAM_ROCKET_BASE_B3F,                        15,  9 ; 91
	map_const ILEX_FOREST,                                 15, 27 ; 92
	map_const GOLDENROD_UNDERGROUND,                        9, 18 ; 93 ; 15, 18 ; 93
	map_const GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 15, 18 ; 94
	map_const GOLDENROD_DEPT_STORE_B1F,                    10,  9 ; 95
	map_const GOLDENROD_UNDERGROUND_WAREHOUSE,             10,  9 ; 96
	map_const MOUNT_MORTAR_1F_OUTSIDE,                     20, 18 ; 97
	map_const MOUNT_MORTAR_1F_INSIDE,                      20, 27 ; 98
	map_const MOUNT_MORTAR_2F_INSIDE,                      20, 18 ; 99
	map_const MOUNT_MORTAR_B1F,                            20, 18 ; 100
	map_const ICE_PATH_1F,                                 20, 18 ; 101
	map_const ICE_PATH_B1F,                                10, 18 ; 102
	map_const ICE_PATH_B2F_MAHOGANY_SIDE,                  10,  9 ; 103
	map_const ICE_PATH_B2F_BLACKTHORN_SIDE,                 5,  9 ; 104
	map_const ICE_PATH_B3F,                                10,  9 ; 105
	map_const WHIRL_ISLAND_NW,                              5,  9 ; 106
	map_const WHIRL_ISLAND_NE,                             10,  9 ; 107
	map_const WHIRL_ISLAND_SW,                             10,  9 ; 108
	map_const WHIRL_ISLAND_CAVE,                            5,  9 ; 109
	map_const WHIRL_ISLAND_SE,                              5,  9 ; 110
	map_const WHIRL_ISLAND_B1F,                            20, 18 ; 111
	map_const WHIRL_ISLAND_B2F,                            10, 18 ; 112
	map_const WHIRL_ISLAND_LUGIA_CHAMBER,                  10,  9 ; 113
	map_const SILVER_CAVE_ROOM_1,                          10, 18 ; 114
	map_const SILVER_CAVE_ROOM_2,                          15, 17 ; 115
	map_const SILVER_CAVE_ROOM_3,                          10, 18 ; 116
	map_const SILVER_CAVE_ITEM_ROOMS,                      10,  9 ; 117
	map_const DARK_CAVE_VIOLET_ENTRANCE,                   20, 18 ; 118
	map_const DARK_CAVE_BLACKTHORN_ENTRANCE,               17, 18 ; 119
	map_const DRAGONS_DEN_1F,                               5,  9 ; 120
	map_const DRAGONS_DEN_B1F,                             20, 18 ; 121
	map_const DRAGON_SHRINE,                                5,  5 ; 122
	map_const TOHJO_FALLS,                                 15,  9 ; 123
	endgroup

	newgroup SAFARI_ZONE_GATE                                     ; 27
;	map_const ROUTE_47,                                    39, 19 ;  1
;	map_const ROUTE_48,                                    18, 10 ;  2
;	map_const SAFARI_ZONE_GATE,                            14, 11 ;  3
;	map_const SAFARI_ZONE_GATE_POKECENTER_1F,               7,  4 ;  4
	endgroup

	newgroup CABLE_CLUB                                           ; 28
;	map_const POKECENTER_2F,                                8,  4 ;  1
;	map_const TRADE_CENTER,                                 5,  4 ;  2
;	map_const COLOSSEUM,                                    5,  4 ;  3
;	map_const TIME_CAPSULE,                                 5,  4 ;  4
;	map_const MOBILE_TRADE_ROOM,                            5,  4 ;  5
;	map_const MOBILE_BATTLE_ROOM,                           5,  4 ;  6
	endgroup

DEF NUM_MAP_GROUPS EQU const_value ; 26
