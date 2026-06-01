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
	landmark  44,  76, OlivineCityName
;	landmark  48,  80, LighthouseName
	landmark  36,  68, BattleTowerName
	landmark  36,  92, Route40Name
	landmark  36, 108, WhirlIslandsName
	landmark  28, 108, Route41Name
	landmark  20, 108, CianwoodCityName
	landmark  44,  64, Route39Name
	landmark  60,  60, Route38Name
	landmark  76,  60, EcruteakCityName
	landmark  72,  56, BurnedTowerName
	landmark  80,  56, TinTowerName
	landmark  76,  68, Route37Name
	landmark  76,  76, Route36Name
	landmark  56,  76, NationalParkName
	landmark  60,  88, Route35Name
	landmark  60, 100, GoldenrodCityName
	landmark  56, 100, RadioTowerName
	landmark  60, 112, Route34Name
	landmark  60, 124, IlexForestName
	landmark  76, 124, AzaleaTownName
	landmark  80, 124, SlowpokeWellName
	landmark  88, 124, Route33Name
	landmark  92, 116, UnionCaveName
	landmark  92,  96, Route32Name
	landmark  84,  84, RuinsOfAlphName
	landmark  92,  76, VioletCityName
	landmark  92,  72, SproutTowerName
	landmark 104,  76, Route31Name
	landmark 108,  92, Route30Name
	landmark 108, 108, CherrygroveCityName
	landmark 124, 108, Route29Name
	landmark 140, 108, NewBarkTownName
	landmark 148, 108, Route27WestName
	landmark 112,  76, DarkCaveName ; route 31
	landmark 128,  76, DarkCaveName ; route 45
	landmark 124,  88, DarkCaveName ; route 46
	landmark 124,  96, Route46Name
	landmark 132,  84, Route45Name
	landmark 132,  68, BlackthornCityName
	landmark 128,  68, DragonsDenName
	landmark 132,  60, IcePathName
	landmark 120,  60, Route44Name
	landmark 108,  60, MahoganyTownName
	landmark 108,  52, Route43Name
	landmark 108,  44, LakeOfRageName
	landmark  92,  60, Route42Name
	landmark  92,  52, MtMortarName
	landmark 148,  76, SilverCaveName
; PokegearMap_JohtoMap: (johto region town map landmark limits)
	landmark  36, 124, FastShipName
;	landmark 120,  68, DarkCaveName
;	landmark 108,  56, NinjaDenName

	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName
	landmark  52,  96, Route1Name
	landmark  52,  84, ViridianCityName
	landmark  52,  72, Route2Name
	landmark  48,  68, ViridianForestName
	landmark  52,  60, PewterCityName
	landmark  68,  60, Route3Name
	landmark  84,  52, MtMoonName
	landmark  96,  52, Route4Name
	landmark 108,  52, CeruleanCityName
	landmark 100,  44, CeruleanCaveName
	landmark 108,  40, Route24Name
	landmark 120,  36, Route25Name
	landmark 124,  32, BillsHouseName
	landmark 108,  64, Route5Name
	landmark 108,  84, Route6Name
	landmark 108,  92, VermilionCityName
	landmark 116,  88, DiglettsCaveName ;route 11
	landmark  56,  68, DiglettsCaveName ;route 2
	landmark 124,  52, Route9Name
	landmark 140,  56, Route10Name
	landmark 140,  64, RockTunnelName
	landmark 136,  68, PowerPlantName
	landmark 140,  76, LavenderTownName
	landmark 144,  76, PokemonTowerName
	landmark 124,  76, Route8Name
	landmark 100,  76, Route7Name
	landmark  92,  76, CeladonCityName
	landmark 108,  76, SaffronCityName
	landmark 108,  76, SilphCoName
	landmark 116,  68, UndergroundName
	landmark 124,  92, Route11Name
	landmark 140,  92, Route12Name
	landmark 136, 108, Route13Name
	landmark 124, 112, Route14Name
	landmark 108, 116, Route15Name
	landmark  80,  76, Route16Name
	landmark  76,  96, Route17Name
	landmark  80, 116, Route18Name
	landmark  92, 116, FuchsiaCityName
	landmark  92, 108, SafariZoneName
	landmark  92, 128, Route19Name
	landmark  76, 132, SeafoamIslandsName
	landmark  64, 132, Route20Name
	landmark  52, 132, CinnabarIslandName
	landmark  48, 132, PokemonMansionName
	landmark  52, 120, Route21Name
	landmark  40,  84, Route22Name
	landmark  28,  72, Route23Name
	landmark  28,  56, VictoryRoadName
	landmark  28,  44, IndigoPlateauName
	landmark  28,  96, Route26Name
	landmark  24, 108, Route27Name
	landmark  12, 108, TohjoFallsName
; hof \engine\pokegear\pokegear.asm > TownMap_GetKantoLandmarkLimits:
	landmark  16,  84, Route28Name
; end
	landmark 108, 100, SSAnneName
	landmark 140,  44, Route10North
;	landmark  92,  72, RocketHideoutName

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
;LighthouseName:      db "OLIVINE¯LIGHTHOUSE@"
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
PokemonMansionName:  db "POKéMON¯MANSION@"
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
UndergroundName:     db "UNDERGROUND¯PATH@"
BattleTowerName:     db "BATTLE¯TOWER@"
;CliffEdgeGateName:   db "CLIFF EDGE¯GATE@"
;CliffCaveName:       db "CLIFF CAVE@"
SafariZoneName:      db "SAFARI ZONE@"
SpecialMapName:      db "SPECIAL@"
;SafariZoneGateName:  db "SAFARI ZONE¯GATE@"
;RocketHideoutName:   db "ROCKET¯HIDEOUT@"
;NinjaDenName:        db "NINJA¯DEN@"
BillsHouseName:      db "BILL's HOUSE@"
Route10North:        db "ROUTE 10¯NORTH@"
;BillsBackYardName:   db "BEHIND¯BILL's HOUSE@" ;"BILL's¯BACK YARD@"
;                       "SILVER CAVE/" one line on map screen
;                       "CHERRYGROVE CITY" one line on fly screen
;                                           also nearly full banner