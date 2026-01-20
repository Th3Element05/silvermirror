; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4
DEF NUM_ROOFS EQU const_value

MapGroupRoofs:
; entries correspond to MAPGROUP_* constants
; values are indexes for Roofs (see below)
	table_width 1, MapGroupRoofs
	db ROOF_AZALEA             ;  0 (Routes)
	db ROOF_AZALEA             ;  1 (Pallet)
	db ROOF_AZALEA             ;  2 (Viridian)
	db ROOF_AZALEA             ;  3 (Pewter)
	db ROOF_AZALEA             ;  4 (Cerulean)
	db ROOF_AZALEA             ;  5 (Vermilion)
	db ROOF_AZALEA             ;  6 (SS Anne)
	db ROOF_AZALEA             ;  7 (Lavender)
	db ROOF_AZALEA             ;  8 (Celadon)
	db ROOF_AZALEA             ;  9 (Fuchsia)
	db ROOF_AZALEA             ; 10 (Safari Zone)
	db ROOF_AZALEA             ; 11 (Saffron)
	db ROOF_AZALEA             ; 12 (Cinnabar)
	db ROOF_AZALEA             ; 13 (Indigo)
	db ROOF_NEW_BARK  ; 14 (New Bark)
	db ROOF_NEW_BARK  ; 15 (Cherrygrove)
	db ROOF_VIOLET    ; 16 (Violet)
	db ROOF_AZALEA    ; 17 (Azalea)
	db ROOF_GOLDENROD ; 18 (Goldenrod)
	db ROOF_VIOLET    ; 19 (Ecruteak)
	db ROOF_OLIVINE   ; 20 (Olivine)
	db ROOF_OLIVINE   ; 21 (Cianwood)
	db ROOF_AZALEA    ; 22 (Mahogany)
	db ROOF_AZALEA    ; 23 (Lake of Rage)
	db ROOF_AZALEA    ; 24 (Blackthorn)
	db ROOF_NEW_BARK  ; 25 (Silver Cave)
	db ROOF_AZALEA             ; 26 (Dungeons)
	db ROOF_AZALEA             ; 27 unused (Cable Club)
	db ROOF_AZALEA             ; 28 unused (Safari Zone Gate)
	assert_table_length NUM_MAP_GROUPS + 1

Roofs:
; entries correspond to ROOF_* constants
	table_width ROOF_LENGTH * LEN_2BPP_TILE, Roofs
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
	assert_table_length NUM_ROOFS
