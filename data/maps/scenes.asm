MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	scene_var PALLET_TOWN,                                 wPalletTownSceneID
	scene_var OAKS_LAB,                                    wOaksLabSceneID
	scene_var VIRIDIAN_CITY,                               wViridianCitySceneID
	scene_var VIRIDIAN_MART,                               wViridianMartSceneID
	scene_var ROUTE_22,                                    wRoute22SceneID
	scene_var ROUTE_26_GATE,                               wRoute26GateSceneID
	scene_var PEWTER_CITY,                                 wPewterCitySceneID
	scene_var PEWTER_MUSEUM_1F,                            wPewterMuseumSceneID
	scene_var MOUNT_MOON_B2F,                              wMountMoonB2FSceneID
	scene_var CERULEAN_CITY,                               wCeruleanCitySceneID
	scene_var ROUTE_24,                                    wRoute24SceneID
	scene_var BILLS_HOUSE,                                 wBillsHouseSceneID
	scene_var ROUTE_5_SAFFRON_GATE,                        wRoute5SaffronGateSceneID
	scene_var ROUTE_6_SAFFRON_GATE,                        wRoute6SaffronGateSceneID
	scene_var ROUTE_7_SAFFRON_GATE,                        wRoute7SaffronGateSceneID
	scene_var ROUTE_8_SAFFRON_GATE,                        wRoute8SaffronGateSceneID
	scene_var VERMILION_CITY,                              wVermilionCitySceneID
	scene_var SS_ANNE_2F,                                  wSSAnne2FSceneID
	scene_var ROUTE_9,                                     wRoute9SceneID
	scene_var POKEMON_TOWER_2F,                            wPokemonTower2FSceneID
	scene_var POKEMON_TOWER_5F,                            wPokemonTower5FSceneID
	scene_var POKEMON_TOWER_6F,                            wPokemonTower6FSceneID
	scene_var FIGHTING_DOJO,                               wFightingDojoSceneID
	scene_var MR_FUJIS_HOUSE,                              wMrFujisHouseSceneID
	scene_var SAFARI_ZONE_ENTRANCE,                        wSafariZoneEntranceSceneID
	scene_var SILPH_CO_7F,                                 wSilphCo7FSceneID
	scene_var SILPH_CO_11F,                                wSilphCo11FSceneID
	scene_var CINNABAR_ISLAND,                             wCinnabarIslandSceneID
	scene_var VICTORY_ROAD_GATE,                           wVictoryRoadGateSceneID
	scene_var SAFFRON_MAGNET_TRAIN_STATION,                wSaffronMagnetTrainStationSceneID
	scene_var ROUTE_16_GATE,                               wRoute16GateSceneID
	scene_var ROUTE_18_GATE,                               wRoute18GateSceneID
	scene_var INDIGO_PLATEAU_POKECENTER_1F,                wIndigoPlateauPokecenter1FSceneID
	scene_var E4_LORELEIS_ROOM,                            wE4LoreleisRoomSceneID
	scene_var E4_BRUNOS_ROOM,                              wE4BrunosRoomSceneID
	scene_var E4_AGATHAS_ROOM,                             wE4AgathasRoomSceneID
	scene_var E4_LANCES_ROOM,                              wE4LancesRoomSceneID
	scene_var HALL_OF_FAME,                                wHallOfFameSceneID
	scene_var VERMILION_PORT,                              wVermilionPortSceneID
	scene_var OLIVINE_PORT,                                wOlivinePortSceneID
	scene_var FAST_SHIP_1F,                                wFastShip1FSceneID
	scene_var FAST_SHIP_B1F,                               wFastShipB1FSceneID
	scene_var FAST_SHIP_ENGINE_ROOM,                       wFastShipEngineRoomSceneID
	scene_var OLIVINE_CITY,                                wOlivineCitySceneID
	scene_var BURNED_TOWER_1F,                             wBurnedTower1FSceneID
	scene_var BURNED_TOWER_B1F,                            wBurnedTowerB1FSceneID
; og scenes below
	scene_var TRAINER_HOUSE_B1F,                           wTrainerHouseB1FSceneID
	scene_var NEW_BARK_TOWN,                               wNewBarkTownSceneID
	scene_var ELMS_LAB,                                    wElmsLabSceneID
	scene_var ROUTE_29,                                    wRoute29SceneID
	scene_var CHERRYGROVE_CITY,                            wCherrygroveCitySceneID
	scene_var MR_POKEMONS_HOUSE,                           wMrPokemonsHouseSceneID
	scene_var ROUTE_32,                                    wRoute32SceneID
	scene_var ROUTE_35_NATIONAL_PARK_GATE,                 wRoute35NationalParkGateSceneID
	scene_var ROUTE_36,                                    wRoute36SceneID
	scene_var ROUTE_36_NATIONAL_PARK_GATE,                 wRoute36NationalParkGateSceneID
	scene_var AZALEA_TOWN,                                 wAzaleaTownSceneID
	scene_var GOLDENROD_GYM,                               wGoldenrodGymSceneID
	scene_var GOLDENROD_MAGNET_TRAIN_STATION,              wGoldenrodMagnetTrainStationSceneID
	scene_var GOLDENROD_POKECENTER_1F,                     wGoldenrodPokecenter1FSceneID
	scene_var ROUTE_34,                                    wRoute34SceneID ; unused
	scene_var ROUTE_34_ILEX_FOREST_GATE,                   wRoute34IlexForestGateSceneID ; unused
	scene_var ECRUTEAK_TIN_TOWER_ENTRANCE,                 wEcruteakTinTowerEntranceSceneID
	scene_var WISE_TRIOS_ROOM,                             wWiseTriosRoomSceneID
	scene_var MAHOGANY_TOWN,                               wMahoganyTownSceneID
	scene_var ROUTE_42,                                    wRoute42SceneID
	scene_var CIANWOOD_CITY,                               wCianwoodCitySceneID
	scene_var BATTLE_TOWER_1F,                             wBattleTower1FSceneID
	scene_var BATTLE_TOWER_BATTLE_ROOM,                    wBattleTowerBattleRoomSceneID
	scene_var BATTLE_TOWER_ELEVATOR,                       wBattleTowerElevatorSceneID
	scene_var BATTLE_TOWER_HALLWAY,                        wBattleTowerHallwaySceneID
	scene_var BATTLE_TOWER_OUTSIDE,                        wBattleTowerOutsideSceneID ; unused
	scene_var ROUTE_43_GATE,                               wRoute43GateSceneID
	scene_var SPROUT_TOWER_3F,                             wSproutTower3FSceneID
	scene_var TIN_TOWER_1F,                                wTinTower1FSceneID
	scene_var RUINS_OF_ALPH_OUTSIDE,                       wRuinsOfAlphOutsideSceneID
	scene_var RUINS_OF_ALPH_RESEARCH_CENTER,               wRuinsOfAlphResearchCenterSceneID
	scene_var RUINS_OF_ALPH_HO_OH_CHAMBER,                 wRuinsOfAlphHoOhChamberSceneID
	scene_var RUINS_OF_ALPH_KABUTO_CHAMBER,                wRuinsOfAlphKabutoChamberSceneID
	scene_var RUINS_OF_ALPH_OMANYTE_CHAMBER,               wRuinsOfAlphOmanyteChamberSceneID
	scene_var RUINS_OF_ALPH_AERODACTYL_CHAMBER,            wRuinsOfAlphAerodactylChamberSceneID
	scene_var RUINS_OF_ALPH_INNER_CHAMBER,                 wRuinsOfAlphInnerChamberSceneID
	scene_var MAHOGANY_MART_1F,                            wMahoganyMart1FSceneID
	scene_var TEAM_ROCKET_BASE_B1F,                        wTeamRocketBaseB1FSceneID
	scene_var TEAM_ROCKET_BASE_B2F,                        wTeamRocketBaseB2FSceneID
	scene_var TEAM_ROCKET_BASE_B3F,                        wTeamRocketBaseB3FSceneID
	scene_var GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, wGoldenrodUndergroundSwitchRoomEntrancesSceneID
	scene_var SILVER_CAVE_ROOM_3,                          wSilverCaveRoom3SceneID ; unused
	scene_var DRAGONS_DEN_B1F,                             wDragonsDenB1FSceneID
	scene_var DRAGON_SHRINE,                               wDragonShrineSceneID
	scene_var MOUNT_MOON_SQUARE,                           wMountMoonSquareSceneID
	scene_var POKEMON_MANSION_1F,                          wPokemonMansion1FSceneID
	scene_var POKEMON_MANSION_B1F,                         wPokemonMansionB1FSceneID
;	scene_var ROUTE_42_ECRUTEAK_GATE,                      wRoute42EcruteakGateSceneID
;	scene_var ECRUTEAK_POKECENTER_1F,                      wEcruteakPokecenter1FSceneID
;	scene_var ECRUTEAK_GYM,                                wEcruteakGymSceneID
;	scene_var ROUTE_39,                                    wRoute39SceneID
;	scene_var E4_CHAMPIONS_ROOM,                           wE4ChampionsRoomSceneID
;	scene_var VICTORY_ROAD,                                wVictoryRoadSceneID
;	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
;	scene_var TRADE_CENTER,                                wTradeCenterSceneID
;	scene_var COLOSSEUM,                                   wColosseumSceneID
;	scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID
;	scene_var POWER_PLANT,                                 wPowerPlantSceneID
;	scene_var CERULEAN_GYM,                                wCeruleanGymSceneID
;	scene_var ROUTE_25,                                    wRoute25SceneID
;	scene_var ROUTE_27,                                    wRoute27SceneID
;	scene_var MOUNT_MOON,                                  wMountMoonSceneID
;	scene_var RADIO_TOWER_5F,                              wRadioTower5FSceneID
;	scene_var MOBILE_TRADE_ROOM,                           wMobileTradeRoomSceneID
;	scene_var MOBILE_BATTLE_ROOM,                          wMobileBattleRoomSceneID
	db -1 ; end
