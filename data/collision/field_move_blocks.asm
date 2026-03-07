; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_JOHTO,        .johto
	dbw TILESET_JOHTO_MODERN, .johto_modern
	dbw TILESET_KANTO,        .kanto
	dbw TILESET_PARK,         .park
	dbw TILESET_FOREST,       .forest
	dbw TILESET_TRAIN_STATION, .train_station
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $5b, $3c, 0 ; tree
	db $5f, $3d, 0 ; tree
	db $63, $3f, 0 ; tree
	db $67, $3e, 0 ; tree
	db -1 ; end

.johto_modern:
; facing block, replacement block, animation
	db $03, $02, $01 ; grass
	db -1 ; end

.kanto:
; facing block, replacement block, animation
	db $0b, $0a, 1 ; grass
	db $32, $6d, 0 ; tree
	db $33, $6c, 0 ; tree
	db $34, $6f, 0 ; tree
	db $35, $4c, 0 ; tree
	db $60, $6e, 0 ; tree
	db -1 ; end

.park:
; facing block, replacement block, animation
;	db $13, $03, 1 ; grass
	db $03, $04, 1 ; grass
	db $07, $04, 1 ; grass
	db $24, $8c, 1 ; grass
	db $21, $8d, 1 ; grass
	db $22, $8e, 1 ; grass
	db $27, $8f, 1 ; grass
	db $20, $1c, 1 ; grass
	db $25, $1d, 1 ; grass
	db $26, $1e, 1 ; grass
	db $23, $1f, 1 ; grass
	db -1 ; end

.forest:
; facing block, replacement block, animation
;	db $0f, $17, 0 ; tree
	db $2f, $2b, 0 ; tree
	db $07, $01, 1 ; grass
	db $18, $01, 1 ; grass
	db $19, $01, 1 ; grass
	db $1a, $01, 1 ; grass
	db $1b, $01, 1 ; grass
	db $0c, $0b, 1 ; grass
	db $0e, $09, 1 ; grass
	db $1c, $24, 1 ; grass
	db $1d, $21, 1 ; grass
	db $1e, $26, 1 ; grass
	db -1 ; end

.train_station:
; facing block, replacement block, animation
	db $21, $4c, 0 ; tree
	db $22, $4c, 0 ; tree
	db $23, $4d, 0 ; tree
	db -1 ; end


; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	dbw TILESET_JOHTO, .johto
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $07, $36, 0
	db -1 ; end
