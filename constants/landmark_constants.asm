; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const LANDMARK_SPECIAL           ; 00
; Johto landmarks
	const LANDMARK_OLIVINE_CITY      ; 01
;	const LANDMARK_LIGHTHOUSE        ; 02
	const LANDMARK_BATTLE_TOWER      ; 03
	const LANDMARK_ROUTE_40          ; 04
	const LANDMARK_WHIRL_ISLANDS     ; 05
	const LANDMARK_ROUTE_41          ; 06
	const LANDMARK_CIANWOOD_CITY     ; 07
	const LANDMARK_ROUTE_39          ; 08
	const LANDMARK_ROUTE_38          ; 09
	const LANDMARK_ECRUTEAK_CITY     ; 0a
	const LANDMARK_BURNED_TOWER      ; 0b
	const LANDMARK_TIN_TOWER         ; 0c
	const LANDMARK_ROUTE_37          ; 0d
	const LANDMARK_ROUTE_36          ; 0e
	const LANDMARK_NATIONAL_PARK     ; 0f
	const LANDMARK_ROUTE_35          ; 10
	const LANDMARK_GOLDENROD_CITY    ; 11
	const LANDMARK_RADIO_TOWER       ; 12
	const LANDMARK_ROUTE_34          ; 13
	const LANDMARK_ILEX_FOREST       ; 14
	const LANDMARK_AZALEA_TOWN       ; 15
	const LANDMARK_SLOWPOKE_WELL     ; 16
	const LANDMARK_ROUTE_33          ; 17
	const LANDMARK_UNION_CAVE        ; 18
	const LANDMARK_ROUTE_32          ; 19
	const LANDMARK_RUINS_OF_ALPH     ; 1a
	const LANDMARK_VIOLET_CITY       ; 1b
	const LANDMARK_SPROUT_TOWER      ; 1c
	const LANDMARK_ROUTE_31          ; 1d
	const LANDMARK_ROUTE_30          ; 1e
	const LANDMARK_CHERRYGROVE_CITY  ; 1f
	const LANDMARK_ROUTE_29          ; 20
	const LANDMARK_NEW_BARK_TOWN     ; 21
	const LANDMARK_ROUTE_27_WEST     ; 22
	const LANDMARK_DARK_CAVE_31      ; 23
	const LANDMARK_DARK_CAVE_45      ; 24
	const LANDMARK_DARK_CAVE_46      ; 25
	const LANDMARK_ROUTE_46          ; 26
	const LANDMARK_ROUTE_45          ; 27
	const LANDMARK_BLACKTHORN_CITY   ; 28
	const LANDMARK_DRAGONS_DEN       ; 29
	const LANDMARK_ICE_PATH          ; 2a
	const LANDMARK_ROUTE_44          ; 2b
	const LANDMARK_MAHOGANY_TOWN     ; 2c
	const LANDMARK_ROUTE_43          ; 2d
	const LANDMARK_LAKE_OF_RAGE      ; 2e
	const LANDMARK_ROUTE_42          ; 2f
	const LANDMARK_MT_MORTAR         ; 30
	const LANDMARK_SILVER_CAVE       ; 31
; PokegearMap_JohtoMap: (johto region town map landmark limits)
	const LANDMARK_FAST_SHIP         ; 32
;	const LANDMARK_DARK_CAVE         ; 33
;	const LANDMARK_NINJA_DEN         ; 34

DEF KANTO_LANDMARK EQU const_value	
	const LANDMARK_ROUTE_10_NORTH    ; 
; Route 10 North is outside of the loop
	const LANDMARK_PALLET_TOWN       ; 33
	const LANDMARK_ROUTE_1           ; 34
	const LANDMARK_VIRIDIAN_CITY     ; 35
	const LANDMARK_ROUTE_2           ; 36
	const LANDMARK_VIRIDIAN_FOREST   ; 37
	const LANDMARK_PEWTER_CITY       ; 38
	const LANDMARK_ROUTE_3           ; 39
	const LANDMARK_MT_MOON           ; 3a
	const LANDMARK_ROUTE_4           ; 3b
	const LANDMARK_CERULEAN_CITY     ; 3c
	const LANDMARK_CERULEAN_CAVE     ; 6d
	const LANDMARK_ROUTE_24          ; 3e
	const LANDMARK_ROUTE_25          ; 3f
	const LANDMARK_BILLS_HOUSE       ; 40
	const LANDMARK_ROUTE_5           ; 41
	const LANDMARK_ROUTE_6           ; 42
	const LANDMARK_VERMILION_CITY    ; 43
	const LANDMARK_DIGLETTS_CAVE     ; 44 ; route 11
	const LANDMARK_DIGLETTS_CAVE_2   ; 45 ; route 2
	const LANDMARK_ROUTE_9           ; 46
	const LANDMARK_ROUTE_10          ; 47
	const LANDMARK_ROCK_TUNNEL       ; 48
	const LANDMARK_POWER_PLANT       ; 49
	const LANDMARK_LAVENDER_TOWN     ; 4a
	const LANDMARK_POKEMON_TOWER     ; 4b
	const LANDMARK_ROUTE_8           ; 4c
	const LANDMARK_ROUTE_7           ; 4d
	const LANDMARK_CELADON_CITY      ; 4e
	const LANDMARK_SAFFRON_CITY      ; 4f
	const LANDMARK_SILPH_CO          ; 50
	const LANDMARK_UNDERGROUND_PATH  ; 51
	const LANDMARK_ROUTE_11          ; 52
	const LANDMARK_ROUTE_12          ; 53
	const LANDMARK_ROUTE_13          ; 54
	const LANDMARK_ROUTE_14          ; 55
	const LANDMARK_ROUTE_15          ; 56
	const LANDMARK_ROUTE_16          ; 57
	const LANDMARK_ROUTE_17          ; 58
	const LANDMARK_ROUTE_18          ; 59
	const LANDMARK_FUCHSIA_CITY      ; 5a
	const LANDMARK_SAFARI_ZONE       ; 5b
	const LANDMARK_ROUTE_19          ; 5c
	const LANDMARK_SEAFOAM_ISLANDS   ; 5d
	const LANDMARK_ROUTE_20          ; 5e
	const LANDMARK_CINNABAR_ISLAND   ; 5f
	const LANDMARK_POKEMON_MANSION   ; 60
	const LANDMARK_ROUTE_21          ; 61
	const LANDMARK_ROUTE_22          ; 62
	const LANDMARK_ROUTE_23          ; 63
	const LANDMARK_VICTORY_ROAD      ; 64
	const LANDMARK_INDIGO_PLATEAU    ; 65
	const LANDMARK_ROUTE_26          ; 66
	const LANDMARK_ROUTE_27          ; 67
	const LANDMARK_TOHJO_FALLS       ; 68
; hof \engine\pokegear\pokegear.asm > TownMap_GetKantoLandmarkLimits:	
	const LANDMARK_ROUTE_28          ; 69
; end
	const LANDMARK_SS_ANNE           ; 6a
;	const LANDMARK_ROCKET_HIDEOUT    ; 6c

DEF NUM_LANDMARKS EQU const_value

; used in CaughtData
	const_def $7f, -1
	const LANDMARK_EVENT             ; $7f
	const LANDMARK_GIFT              ; $7e

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
DEF NUM_REGIONS EQU const_value
