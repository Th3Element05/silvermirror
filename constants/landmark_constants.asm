; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const LANDMARK_SPECIAL           ; 00
; Johto landmarks		
	const LANDMARK_OLIVINE_CITY      ; 01
	const LANDMARK_LIGHTHOUSE        ; 02
	const LANDMARK_ROUTE_39          ; 03
	const LANDMARK_ROUTE_38          ; 04
	const LANDMARK_ECRUTEAK_CITY     ; 05
	const LANDMARK_TIN_TOWER         ; 06
	const LANDMARK_BURNED_TOWER      ; 07
	const LANDMARK_ROUTE_42          ; 08
	const LANDMARK_MT_MORTAR         ; 09
	const LANDMARK_ROUTE_37          ; 0a
	const LANDMARK_ROUTE_36          ; 0b
	const LANDMARK_NATIONAL_PARK     ; 0c
	const LANDMARK_ROUTE_35          ; 0d
	const LANDMARK_GOLDENROD_CITY    ; 0e
	const LANDMARK_RADIO_TOWER       ; 0f
	const LANDMARK_ROUTE_34          ; 10
	const LANDMARK_ILEX_FOREST       ; 11
	const LANDMARK_AZALEA_TOWN       ; 12
	const LANDMARK_SLOWPOKE_WELL     ; 13
	const LANDMARK_ROUTE_33          ; 14
	const LANDMARK_UNION_CAVE        ; 15
	const LANDMARK_ROUTE_32          ; 16
	const LANDMARK_RUINS_OF_ALPH     ; 17
	const LANDMARK_VIOLET_CITY       ; 18
	const LANDMARK_SPROUT_TOWER      ; 19
	const LANDMARK_ROUTE_31          ; 1a
	const LANDMARK_DARK_CAVE         ; 1b
	const LANDMARK_ROUTE_30          ; 1c
	const LANDMARK_CHERRYGROVE_CITY  ; 1d
	const LANDMARK_ROUTE_29          ; 1e
	const LANDMARK_NEW_BARK_TOWN     ; 1f
	const LANDMARK_ROUTE_27_WEST     ; 20
	const LANDMARK_ROUTE_46          ; 21
	const LANDMARK_ROUTE_45          ; 22
	const LANDMARK_BLACKTHORN_CITY   ; 23
	const LANDMARK_DRAGONS_DEN       ; 24
	const LANDMARK_ICE_PATH          ; 25
	const LANDMARK_ROUTE_44          ; 26
	const LANDMARK_MAHOGANY_TOWN     ; 27
	const LANDMARK_ROUTE_43          ; 28
	const LANDMARK_LAKE_OF_RAGE      ; 29
	const LANDMARK_ROUTE_40          ; 2a
	const LANDMARK_BATTLE_TOWER      ; 2b
	const LANDMARK_ROUTE_41          ; 2c
	const LANDMARK_WHIRL_ISLANDS     ; 2d
	const LANDMARK_CIANWOOD_CITY     ; 2e
	const LANDMARK_SILVER_CAVE       ; 2f
DEF KANTO_LANDMARK EQU const_value
	const LANDMARK_PALLET_TOWN       ; 30
	const LANDMARK_ROUTE_1           ; 31
	const LANDMARK_VIRIDIAN_CITY     ; 32
	const LANDMARK_ROUTE_2           ; 33
	const LANDMARK_VIRIDIAN_FOREST   ; 34
	const LANDMARK_DIGLETTS_CAVE     ; 35
	const LANDMARK_PEWTER_CITY       ; 36
	const LANDMARK_ROUTE_3           ; 37
	const LANDMARK_MT_MOON           ; 38
	const LANDMARK_ROUTE_4           ; 39
	const LANDMARK_CERULEAN_CITY     ; 3a
	const LANDMARK_CERULEAN_CAVE     ; 3b
	const LANDMARK_ROUTE_24          ; 3c
	const LANDMARK_ROUTE_25          ; 3d
	const LANDMARK_ROUTE_5           ; 3e
	const LANDMARK_ROUTE_6           ; 3f
	const LANDMARK_VERMILION_CITY    ; 40
	const LANDMARK_ROUTE_11          ; 41
	const LANDMARK_ROUTE_9           ; 42
	const LANDMARK_ROUTE_10          ; 43
	const LANDMARK_ROCK_TUNNEL       ; 44
	const LANDMARK_POWER_PLANT       ; 45
	const LANDMARK_LAVENDER_TOWN     ; 46
	const LANDMARK_POKEMON_TOWER     ; 47
	const LANDMARK_ROUTE_8           ; 48
	const LANDMARK_ROUTE_7           ; 49
	const LANDMARK_CELADON_CITY      ; 4a
	const LANDMARK_ROUTE_12          ; 4b
	const LANDMARK_ROUTE_13          ; 4c
	const LANDMARK_ROUTE_14          ; 4d
	const LANDMARK_ROUTE_15          ; 4e
	const LANDMARK_ROUTE_16          ; 4f
	const LANDMARK_ROUTE_17          ; 50
	const LANDMARK_ROUTE_18          ; 51
	const LANDMARK_FUCHSIA_CITY      ; 52
	const LANDMARK_SAFARI_ZONE       ; 53
	const LANDMARK_SAFFRON_CITY      ; 54
	const LANDMARK_SILPH_CO          ; 55
	const LANDMARK_ROUTE_19          ; 56
	const LANDMARK_SEAFOAM_ISLANDS   ; 57
	const LANDMARK_ROUTE_20          ; 58
	const LANDMARK_CINNABAR_ISLAND   ; 59
	const LANDMARK_POKEMON_MANSION   ; 5a
	const LANDMARK_ROUTE_21          ; 5b
	const LANDMARK_ROUTE_22          ; 5c
	const LANDMARK_ROUTE_23          ; 5d
	const LANDMARK_VICTORY_ROAD      ; 5e
	const LANDMARK_INDIGO_PLATEAU    ; 5f
; hof \engine\pokegear\pokegear.asm > TownMap_GetKantoLandmarkLimits:
	const LANDMARK_ROUTE_26          ; 60
	const LANDMARK_ROUTE_27          ; 61
	const LANDMARK_TOHJO_FALLS       ; 62
	const LANDMARK_ROUTE_28          ; 63
; end
	const LANDMARK_BILLS_BACK_YARD   ; 64
	const LANDMARK_UNDERGROUND_PATH  ; 65
	const LANDMARK_SS_ANNE           ; 66
	const LANDMARK_ROCKET_HIDEOUT    ; 67
	const LANDMARK_FAST_SHIP         ; 68
	const LANDMARK_NINJA_DEN         ; 69
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

;; Johto landmarks
;	const LANDMARK_NEW_BARK_TOWN     ; 01
;	const LANDMARK_ROUTE_29          ; 02
;	const LANDMARK_CHERRYGROVE_CITY  ; 03
;	const LANDMARK_ROUTE_30          ; 04
;	const LANDMARK_ROUTE_31          ; 05
;	const LANDMARK_VIOLET_CITY       ; 06
;	const LANDMARK_SPROUT_TOWER      ; 07
;	const LANDMARK_ROUTE_32          ; 08
;	const LANDMARK_RUINS_OF_ALPH     ; 09
;	const LANDMARK_UNION_CAVE        ; 0a
;	const LANDMARK_ROUTE_33          ; 0b
;	const LANDMARK_AZALEA_TOWN       ; 0c
;	const LANDMARK_SLOWPOKE_WELL     ; 0d
;	const LANDMARK_ILEX_FOREST       ; 0e
;	const LANDMARK_ROUTE_34          ; 0f
;	const LANDMARK_GOLDENROD_CITY    ; 10
;	const LANDMARK_RADIO_TOWER       ; 11
;	const LANDMARK_ROUTE_35          ; 12
;	const LANDMARK_NATIONAL_PARK     ; 13
;	const LANDMARK_ROUTE_36          ; 14
;	const LANDMARK_ROUTE_37          ; 15
;	const LANDMARK_ECRUTEAK_CITY     ; 16
;	const LANDMARK_TIN_TOWER         ; 17
;	const LANDMARK_BURNED_TOWER      ; 18
;	const LANDMARK_ROUTE_38          ; 19
;	const LANDMARK_ROUTE_39          ; 1a
;	const LANDMARK_OLIVINE_CITY      ; 1b
;	const LANDMARK_LIGHTHOUSE        ; 1c
;	const LANDMARK_BATTLE_TOWER      ; 1d
;	const LANDMARK_ROUTE_40          ; 1e
;	const LANDMARK_WHIRL_ISLANDS     ; 1f
;	const LANDMARK_ROUTE_41          ; 20
;	const LANDMARK_CIANWOOD_CITY     ; 21
;;	const LANDMARK_CLIFF_EDGE_GATE   ; 22 removed from silvermirror
;;	const LANDMARK_ROUTE_47          ; 23 removed from silvermirror
;;	const LANDMARK_CLIFF_CAVE        ; 24 removed from silvermirror
;;	const LANDMARK_ROUTE_48          ; 25 removed from silvermirror
;;	const LANDMARK_SAFARI_ZONE_GATE  ; 26 removed from silvermirror
;;	const LANDMARK_SAFARI_ZONE       ; 27 moved to kanto
;	const LANDMARK_ROUTE_42          ; 28
;	const LANDMARK_MT_MORTAR         ; 29
;	const LANDMARK_MAHOGANY_TOWN     ; 2a
;	const LANDMARK_ROUTE_43          ; 2b
;	const LANDMARK_LAKE_OF_RAGE      ; 2c
;	const LANDMARK_ROUTE_44          ; 2d
;	const LANDMARK_ICE_PATH          ; 2e
;	const LANDMARK_BLACKTHORN_CITY   ; 2f
;	const LANDMARK_DRAGONS_DEN       ; 30
;	const LANDMARK_ROUTE_45          ; 31
;	const LANDMARK_DARK_CAVE         ; 32
;	const LANDMARK_ROUTE_46          ; 33
;	const LANDMARK_ROUTE_27_WEST     ; silvermirror+
;	const LANDMARK_SILVER_CAVE       ; 34