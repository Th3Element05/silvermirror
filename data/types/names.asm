TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 2, TypeNames

	dw Normal
	dw Fighting
	dw Flying
	dw Poison
	dw Ground
	dw Rock
;	dw BirdType
	dw Bug
	dw Ghost
	dw Steel
;	assert_table_length UNUSED_TYPES
;
;rept UNUSED_TYPES_END - UNUSED_TYPES - 1 ; discount CURSE_TYPE
;	dw Normal
;endr
;	dw CurseType
;	assert_table_length UNUSED_TYPES_END

	dw Fire
	dw Water
	dw Grass
	dw Electric
	dw Psychic
	dw Ice
	dw Dragon
	dw Dark
	dw CurseType
	assert_table_length TYPES_END

Normal:    db "NORMAL@"
Fighting:  db "FIGHTING@"
Flying:    db "FLYING@"
Poison:    db "POISON@"
Ground:    db "GROUND@"
Rock:      db "ROCK@"
;BirdType:  db "BIRD@"
Bug:       db "BUG@"
Ghost:     db "GHOST@"
Steel:     db "STEEL@"
Fire:      db "FIRE@"
Water:     db "WATER@"
Grass:     db "GRASS@"
Electric:  db "ELECTRIC@"
Psychic:   db "PSYCHIC@"
Ice:       db "ICE@"
Dragon:    db "DRAGON@"
Dark:      db "DARK@"
CurseType: db "???@"