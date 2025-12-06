LoadSpecialMapPalette:
	call GetMapTimeOfDay
	bit IN_DARKNESS_F, a
	jr z, .not_dark
	ld a, [wStatusFlags]
	bit STATUSFLAGS_FLASH_F, a
	jr z, .darkness

.not_dark
	ld a, [wMapTileset]
	cp TILESET_POKECOM_CENTER
	jr z, .pokecom_2f
	cp TILESET_BATTLE_TOWER_INSIDE
	jr z, .battle_tower_inside
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_HOUSE
	jr z, .house
	cp TILESET_RADIO_TOWER
	jr z, .radio_tower
	cp TILESET_MANSION
	jr z, .mansion_mobile
	jr .lookup_specifics

.darkness
	call LoadDarknessPalette
	scf
	ret

.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.radio_tower
	call LoadRadioTowerPalette
	scf
	ret

.mansion_mobile
	call LoadMansionPalette
	scf
	ret

.do_nothing
	and a
	ret

.lookup_specifics
	ld hl, MapSpecificPalettes
; fallthru
SearchPaletteRoutine:
.keep_looking
	ld a, [hl]
	cp -1
	jr z, .do_nothing
	ld b, a
	ld a, [wMapGroup]
	cp b
	jr nz, .group_not_matching
	inc hl
	ld b, [hl]
	ld a, [wMapNumber]
	cp b
	jr nz, .map_not_matching
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
.group_not_matching
	inc hl
.map_not_matching
	inc hl
	inc hl
	inc hl
	jr .keep_looking
.do_nothing
	and a
	ret

MACRO _use_palette_routine_for_map
	db GROUP_\1, MAP_\1
	dw \2
ENDM

MapSpecificPalettes:
;	_use_palette_routine_for_map POKEMON_MANSION_B1F, .LavaOverRedCoalOverBrownBGPalette
;	_use_palette_routine_for_map SAFARI_ZONE_AREA_2, .SandOverBrownBGPalette
;	_use_palette_routine_for_map SAFARI_ZONE_AREA_3, .SwampBGPalettes
;	_use_palette_routine_for_map SAFARI_ZONE_AREA_4, .SundriedBGPalettes
	_use_palette_routine_for_map BLACKTHORN_GYM_1F, .BlackThornGymBGPalettes
	_use_palette_routine_for_map BLACKTHORN_GYM_2F, .BlackThornGymBGPalettes
;	_use_palette_routine_for_map E4_BRUNOS_ROOM, .BlackThornGymBGPalettes
	_use_palette_routine_for_map E4_AGATHAS_ROOM, .AgathasRoomBGPalettes
;	_use_palette_routine_for_map KOGAS_ROOM, .KogasRoomBGPalettes
	_use_palette_routine_for_map E4_LORELEIS_ROOM, .LoreleisRoomBGPalettes
	_use_palette_routine_for_map POWER_PLANT, .PowerPlantIndoorPalettes
;	_use_palette_routine_for_map VIRIDIAN_GYM, .ViridianGymBGPalettes
	_use_palette_routine_for_map MAHOGANY_GYM, .MahoganyGymBGPalettes
;	_use_palette_routine_for_map PEWTER_MUSEUM_1F, .MuseumBGPalettes
;	_use_palette_routine_for_map PEWTER_MUSEUM_2F, .MuseumBGPalettes
	db -1 ; terminator

;.LavaOverRedCoalOverBrownBGPalette:
;	ld hl, LavaOverRedCoalOverBrown
;	jp .next
;.SandOverBrownBGPalette:
;	ld hl, SandOverRock
;	ld a, [wTimeOfDayPal]
;	maskbits NUM_DAYTIMES
;	ld bc, 8 palettes
;	call AddNTimes
;	jp .next_TimeOfDay
;.SwampBGPalettes:
;	ld hl, SwampPals
;	ld a, [wTimeOfDayPal]
;	maskbits NUM_DAYTIMES
;	ld bc, 8 palettes
;	call AddNTimes
;	jp .next_TimeOfDay
;.SundriedBGPalettes:
;	ld hl, SundriedPals
;	ld a, [wTimeOfDayPal]
;	maskbits NUM_DAYTIMES
;	ld bc, 8 palettes
;	call AddNTimes
;	ld de, wBGPals1
;	ld a, BANK(wBGPals1)
;	call FarCopyWRAM
;	scf
;	ret
.BlackThornGymBGPalettes:
	ld hl, BlackThornGymPals
	jp .next
.AgathasRoomBGPalettes:
	ld hl, AgathasRoomPals
	jp .next
;.KogasRoomBGPalettes:
;	ld hl, KogasRoomPals
;	jp .next
.LoreleisRoomBGPalettes:
	ld hl, LoreleisRoomPals
	jp .next
.PowerPlantIndoorPalettes:
	ld hl, PowerPlantIndoorPals
	jp .next
;.ViridianGymBGPalettes:
;	ld hl, ViridianGymPals
;	jp .next
.MahoganyGymBGPalettes:
	ld hl, AgathasRoomPals
	jp .next
;.MuseumBGPalettes
;	call LoadMuseumPalette
;	scf
;	ret

.next
	ld bc, 8 palettes
.next_TimeOfDay
	ld de, wBGPals1
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	scf
	ret

LoadSpecialMapOBPalette:
	ld hl, MapSpecificOBPalettes
	jp SearchPaletteRoutine

MapSpecificOBPalettes:
;kanto
	_use_palette_routine_for_map ROUTE_1, .GrayOverYellowOBPalette                  ;blk
	_use_palette_routine_for_map VIRIDIAN_FOREST, .PinkOverYellowOBPalette          ;pecha
	_use_palette_routine_for_map ROUTE_2_NORTH, .PinkOverYellowOBPalette            ;pnk
	_use_palette_routine_for_map PEWTER_CITY, .PinkOverYellowOBPalette              ;persim
	_use_palette_routine_for_map PEWTER_POKECENTER_1F, .PinkOverYellowOBPalette     ;jigglypuff
	_use_palette_routine_for_map CERULEAN_CITY, .PinkOverYellowOBPalette            ;slowbro
	_use_palette_routine_for_map VERMILION_CITY, .GrayOverYellowOBPalette           ;machop
	_use_palette_routine_for_map SS_ANNE_ROOMS_1F, .PinkOverYellowOBPalette         ;clefairy
	_use_palette_routine_for_map SS_ANNE_ROOMS_B1F, .GrayOverYellowOBPalette        ;machoke
	_use_palette_routine_for_map CELADON_MANSION_1F, .PinkOverYellowOBPalette       ;clefairy
	_use_palette_routine_for_map FUCHSIA_CITY, .PinkOverSilverOBPalette             ;chansey (aspear)
	_use_palette_routine_for_map SAFARI_ZONE_AREA_3, .RockOverTreeOBPalette         ;dry grass
	_use_palette_routine_for_map ROUTE_20, .GrayOverYellowOBPalette                 ;geodude
	_use_palette_routine_for_map FIGHTING_DOJO, .GrayOverSilverOBPalette            ;blackbelt
	_use_palette_routine_for_map COPYCATS_HOUSE_1F, .PinkOverYellowOBPalette        ;chansey
	_use_palette_routine_for_map COPYCATS_HOUSE_2F, .PinkOverYellowOBPalette        ;dolls
	_use_palette_routine_for_map MOUNT_MOON_SQUARE, .PinkOverYellowOBPalette        ;clefairy
;johto
	_use_palette_routine_for_map DANCE_THEATER, .GrayOverYellowOBPalette            ;rhyhorn
	_use_palette_routine_for_map ROUTE_37, .GrayOverYellowOBPalette                 ;blk
	_use_palette_routine_for_map GOLDENROD_DEPT_STORE_B1F, .GrayOverYellowOBPalette ;machoke
	_use_palette_routine_for_map AZALEA_TOWN, .PinkOverYellowOBPalette              ;slowpoke
	_use_palette_routine_for_map ROUTE_33, .GrayOverYellowOBPalette                 ;blk
	_use_palette_routine_for_map ROUTE_30, .PinkOverYellowOBPalette                 ;pecha, pnk
	_use_palette_routine_for_map ROUTE_42, .PinkOverSilverOBPalette                 ;pnk
	_use_palette_routine_for_map ROUTE_43, .PinkOverYellowOBPalette                 ;persim
	db -1 ; terminator

.PinkOverYellowOBPalette:
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	ld bc, 8 palettes
	ld hl, PinkOverYellow
	jr .finish

.GrayOverYellowOBPalette:
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	ld bc, 8 palettes
	ld hl, GrayOverYellow
	jr .finish

.PinkOverSilverOBPalette:
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	ld bc, 8 palettes
	ld hl, PinkOverSilver
	jr .finish

.GrayOverSilverOBPalette:
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	ld bc, 8 palettes
	ld hl, GrayOverSilver
	jr .finish

.RockOverTreeOBPalette:
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	ld bc, 8 palettes
	ld hl, RockOverTree
	jr .finish

.finish
	call AddNTimes
	ld de, wOBPals1
	ld bc, 8 palettes
	ld a, BANK(wOBPals1)
	call FarCopyWRAM
	scf
	ret

;LoadMuseumPalette:
;	ld a, BANK(wBGPals1)
;	ld de, wBGPals1
;	ld hl, MuseumPalette
;	ld bc, 8 palettes
;	call FarCopyWRAM
;	ret
;
;MuseumPalette:
;INCLUDE "gfx/tilesets/museum.pal"

LoadDarknessPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DarknessPalette
	ld bc, 8 palettes
	jp FarCopyWRAM

DarknessPalette:
INCLUDE "gfx/tilesets/darkness.pal"

LoadPokeComPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadBattleTowerInsidePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

LoadRadioTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RadioTowerPalette:
INCLUDE "gfx/tilesets/radio_tower.pal"

MansionPalette1:
INCLUDE "gfx/tilesets/mansion_1.pal"

LoadMansionPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_YELLOW
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_WATER
	ld hl, MansionPalette1 palette 6
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_ROOF
	ld hl, MansionPalette1 palette 8
	ld bc, 1 palettes
	call FarCopyWRAM
	ret

MansionPalette2:
INCLUDE "gfx/tilesets/mansion_2.pal"

LoadSpecialNPCPalette:
	call GetMapTimeOfDay
	bit IN_DARKNESS_F, a
	jr z, .do_nothing
	ld a, [wStatusFlags]
	bit STATUSFLAGS_FLASH_F, a
	jr nz, .do_nothing

;darkness
	call LoadNPCDarknessPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadNPCDarknessPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, NPCDarknessPalette
	ld bc, 8 palettes
	jp FarCopyWRAM

NPCDarknessPalette:
INCLUDE "gfx/overworld/npc_sprites_darkness.pal"

INCLUDE "gfx/overworld/npc_sprites_special.pal"

INCLUDE "gfx/tilesets/bg_tiles_special_pals.pal"
