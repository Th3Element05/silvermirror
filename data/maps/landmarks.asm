MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
; johto
	landmark  44,  68, OlivineCityName
	landmark  32,  64, BattleTowerName
	landmark  36,  84, Route40Name
	landmark  36, 100, WhirlIslandsName
	landmark  28, 100, Route41Name
	landmark  20, 100, CianwoodCityName
	landmark  44,  56, Route39Name
	landmark  60,  52, Route38Name
	landmark  76,  52, EcruteakCityName
	landmark  76,  44, TinTowerName
	landmark  76,  60, Route37Name
	landmark  76,  68, Route36Name
	landmark  56,  68, NationalParkName
	landmark  60,  80, Route35Name
	landmark  60,  92, GoldenrodCityName
	landmark  60,  92, RadioTowerName
	landmark  60, 108, Route34Name
	landmark  60, 124, IlexForestName
	landmark  76, 124, AzaleaTownName
	landmark  88, 124, Route33Name
	landmark  92, 116, UnionCaveName
	landmark  92,  92, Route32Name
	landmark  84,  76, RuinsOfAlphName
	landmark  92,  68, VioletCityName
	landmark  92,  64, SproutTowerName
	landmark 104,  68, Route31Name
	landmark 112,  68, DarkCaveName ; route 31
	landmark 128,  68, DarkCaveName ; route 45
	landmark 124,  80, DarkCaveName ; route 46
	landmark 108,  84, Route30Name
	landmark 108, 100, CherrygroveCityName
	landmark 124, 100, Route29Name
	landmark 140, 100, NewBarkTownName
	landmark 148, 100, Route27WestName
	landmark 124,  88, Route46Name
	landmark 132,  76, Route45Name
	landmark 132,  60, BlackthornCityName
	landmark 130,  52, IcePathName
	landmark 120,  52, Route44Name
	landmark 108,  52, MahoganyTownName
	landmark 108,  44, Route43Name
	landmark 108,  36, LakeOfRageName
	landmark  92,  52, Route42Name
	landmark  92,  44, MtMortarName
	landmark 148,  68, SilverCaveName
	assert_table_length KANTO_LANDMARK
	landmark  44, 100, PalletTownName
	landmark  44,  88, Route1Name
	landmark  44,  76, ViridianCityName
	landmark  44,  64, Route2Name
	landmark  40,  60, ViridianForestName
	landmark  52,  60, DiglettsCaveName ;route 2
	landmark  44,  52, PewterCityName
	landmark  60,  52, Route3Name
	landmark  76,  44, MtMoonName
	landmark  88,  44, Route4Name
	landmark 100,  44, CeruleanCityName
	landmark 100,  32, Route24Name
	landmark 112,  28, Route25Name
	landmark 100,  56, Route5Name
	landmark 100,  72, Route6Name
	landmark 100,  88, VermilionCityName
	landmark 108,  88, DiglettsCaveName ;route 11
	landmark 116,  44, Route9Name
	landmark 132,  48, Route10Name
	landmark 132,  60, RockTunnelName
	landmark 132,  68, LavenderTownName
	landmark 138,  68, PokemonTowerName
	landmark 116,  68, Route8Name
	landmark  88,  68, Route7Name
	landmark  76,  68, CeladonCityName
	landmark 100,  68, SaffronCityName
	landmark 116,  92, Route11Name
	landmark 132,  88, Route12Name
	landmark 124, 108, Route13Name
	landmark 116, 112, Route14Name
	landmark 100, 116, Route15Name
	landmark  64,  68, Route16Name
	landmark  60,  92, Route17Name
	landmark  72, 116, Route18Name
	landmark  84, 116, FuchsiaCityName
	landmark  84, 108, SafariZoneName
	landmark  84, 130, Route19Name
	landmark  68, 132, SeafoamIslandsName
	landmark  56, 132, Route20Name
	landmark  44, 132, CinnabarIslandName
	landmark  44, 116, Route21Name
	landmark  32,  76, Route22Name
	landmark  28,  60, Route23Name
	landmark  28,  44, VictoryRoadName
	landmark  28,  36, IndigoPlateauName
	landmark 140,  52, PowerPlantName
	landmark  28,  88, Route26Name
	landmark  24, 100, Route27Name
	landmark  12, 100, TohjoFallsName
; hof \engine\pokegear\pokegear.asm > TownMap_GetKantoLandmarkLimits:
	landmark  16,  76, Route28Name
; end
	landmark 116,  28, BillsHouseName
	landmark 104,  64, UndergroundName
	landmark 100, 100, SSAnneName
	landmark  76,  72, RocketHideoutName
	landmark 100,  68, SilphCoName
	landmark  40, 128, PokemonMansionName
	landmark  92,  36, CeruleanCaveName
	landmark 116,  22, BillsBackYardName
	landmark 140, 116, FastShipName
	landmark  48,  68, LighthouseName
	landmark  72,  48, BurnedTowerName
	landmark  80, 124, SlowpokeWellName
	landmark 120,  68, DarkCaveName
	landmark 128,  60, DragonsDenName
	landmark 108,  56, NinjaDenName
	assert_table_length NUM_LANDMARKS


NewBarkTownName:     db "NEW BARK¯TOWN@"
CherrygroveCityName: db "CHERRYGROVE¯CITY@"
VioletCityName:      db "VIOLET CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD¯CITY@"
EcruteakCityName:    db "ECRUTEAK¯CITY@"
OlivineCityName:     db "OLIVINE¯CITY@"
CianwoodCityName:    db "CIANWOOD¯CITY@"
MahoganyTownName:    db "MAHOGANY¯TOWN@"
BlackthornCityName:  db "BLACKTHORN¯CITY@"
LakeOfRageName:      db "LAKE OF¯RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT¯TOWER@"
RuinsOfAlphName:     db "RUINS¯OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE¯WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL¯PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL¯ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON's¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
CeruleanCaveName:    db "CERULEAN¯CAVE@"
LavenderTownName:    db "LAVENDER¯TOWN@"
VermilionCityName:   db "VERMILION¯CITY@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
PokemonMansionName:  db "ABANDONED¯LAB@" ; "POKéMON¯MANSION@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
;LavRadioTowerName:   db "LAV¯RADIO TOWER@"
PokemonTowerName:    db "POKéMON¯TOWER@"
SilphCoName:         db "SILPH CO.@"
;KantoSafariZoneName: db "SAFARI ZONE@" ; unreferenced
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route27WestName:     db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
;Route47Name:         db "ROUTE 47@"
;Route48Name:         db "ROUTE 48@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX¯FOREST@"
BurnedTowerName:     db "BURNED¯TOWER@"
SSAnneName:          db "S.S.ANNE@" ;"CRUISE SHIP¯S.S.ANNE@"
FastShipName:        db "S.S.AQUA@" ;"FAST SHIP¯S.S.AQUA@"
ViridianForestName:  db "VIRIDIAN¯FOREST@"
DiglettsCaveName:    db "DIGLETT's¯CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE¯TOWER@"
;CliffEdgeGateName:   db "CLIFF EDGE¯GATE@"
;CliffCaveName:       db "CLIFF CAVE@"
SafariZoneName:      db "SAFARI ZONE@"
SpecialMapName:      db "SPECIAL@"
;SafariZoneGateName:  db "SAFARI ZONE¯GATE@"
RocketHideoutName:   db "ROCKET¯HIDEOUT@"
NinjaDenName:        db "NINJA¯DEN@"
BillsHouseName:      db "BILL's HOUSE@"
BillsBackYardName:   db "BEHIND¯BILL's HOUSE@" ;"BILL's¯BACK YARD@"
;                       "SILVER CAVE/" one line on map screen
;                       "CHERRYGROVE CITY" one line on fly screen
;                                           also nearly full banner