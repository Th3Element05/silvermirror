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
	db -1             ;  0 (Routes)
	db -1             ;  1 (Pallet)
	db -1             ;  2 (Viridian)
	db -1             ;  3 (Pewter)
	db -1             ;  4 (Cerulean)
	db -1             ;  5 (Vermilion)
	db -1             ;  6 (SS Anne)
	db -1             ;  7 (Lavender)
	db -1             ;  8 (Celadon)
	db -1             ;  9 (Fuchsia)
	db -1             ; 10 (Safari Zone)
	db -1             ; 11 (Saffron)
	db -1             ; 12 (Cinnabar)
	db -1             ; 13 (Indigo)
	db -1             ; 14 (Dungeons)
	db ROOF_NEW_BARK  ; 15 (New Bark)
	db ROOF_NEW_BARK  ; 16 (Cherrygrove)
	db ROOF_VIOLET    ; 17 (Violet)
	db ROOF_AZALEA    ; 18 (Azalea)
	db ROOF_GOLDENROD ; 19 (Goldenrod)
	db ROOF_VIOLET    ; 20 (Ecruteak)
	db ROOF_OLIVINE   ; 21 (Olivine)
	db ROOF_OLIVINE   ; 22 (Cianwood)
	db ROOF_AZALEA    ; 23 (Mahogany)
	db ROOF_AZALEA    ; 24 (Lake of Rage)
	db ROOF_AZALEA    ; 25 (Blackthorn)
	db ROOF_NEW_BARK  ; 26 (Silver Cave)
	db -1             ; 27 unused (Cable Club)
	db -1             ; 28 unused (Safari Zone Gate)
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
