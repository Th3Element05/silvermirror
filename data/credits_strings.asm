CreditsStringsPointers:
; entries correspond to constants/credits_constants.asm
	table_width 2, CreditsStringsPointers

	dw .PokemonTitle
	dw .SilverMirror
;	dw .SourCrystal
	dw .Programmers
	dw .GameDesign
	dw .GraphicsDesign
	dw .PokemonAnimation
	dw .MapDesign
	dw .Coding
	dw .ProductTesting
	dw .Thanks
	dw .SpecialThanks
	dw .Copyright
	dw .SourShoutOut
	dw .PretShoutOut
	dw .Th3Element05
	dw .SourApple
	dw .Rangi42
	dw .Narishma
	dw .GrateOracleLewot
	dw .RaJa239
	dw .Ardorin
	dw .Exkzol
	dw .BleeperWagon
	dw .Geometry13
	dw .Greg
	dw .Ssenrah
	dw .KnightOwl
	dw .TigerBlood
	dw .Guardian1691
	assert_table_length NUM_CREDITS_STRINGS

.PokemonTitle:        db "      #MON@"
.SilverMirror:        db "   SILVER MIRROR@"
;.SourCrystal:         db "    SOUR CRYSTAL@"
.Programmers:         db "    PROGRAMMING@"
.GameDesign:          db "   & GAME DESIGN@"
.GraphicsDesign:      db "  GRAPHICS DESIGN@"
.PokemonAnimation:    db " #MON ANIMATION@"
.MapDesign:           db "     MAP DESIGN@"
.Coding:              db " CODE CONTRIBUTORS@"
.ProductTesting:      db "  PRODUCT TESTING@"
.Thanks:              db "       THANKS@"
.SpecialThanks:       db "   SPECIAL THANKS@"
.SourShoutOut:        db "    To SourApple"
                    next "     Creator of"
                    next "    SOUR CRYSTAL@"
.PretShoutOut:        db " To the entire PRET"
                    next " community, without"
					next " which this would"
					next " have been hopeless.@"
.Th3Element05:        db "    Th3Element05@"
.SourApple:           db "     SourApple@"
.Rangi42:             db "      Rangi42@"
.Narishma:            db "    Narishma-gb@"
.GrateOracleLewot     db " Grate Oracle Lewot@"
.RaJa239:             db "      RaJa239@"
.Ardorin:             db "       Ardorin@"
.Exkzol:              db "     Exkzol@"
.BleeperWagon:        db "    BleeperWagon@"
.Geometry13:          db "     Geometry13@"
.Greg:                db "    Greg@"
.Ssenrah:             db "     Ssenrah@"
.KnightOwl:           db "    Knight Owl@"
.TigerBlood:          db "     TigerBlood@"
;.Guardian1691:        db "    Guardian1691@"
;                      ; "12345678901234567890@" max length (screen width)
;                      ; up to 5 lines per page
;"12345678901234567890@"

.Copyright:
	;    (C) 1  9  9  5 - 2  0  0  1     N  i  n  t  e  n  d  o
	db   $60,$61,$62,$63,$64,$65,$66,$67,$68,$69,$6a,$6b,$6c
	;    (C) 1  9  9  5 - 2  0  0  1    C  r  e  a  t  u  r  e  s     i  n  c .
	next $60,$61,$62,$63,$64,$65,$66,$6d,$6e,$6f,$70,$71,$72,  $7a,$7b,$7c
	;    (C) 1  9  9  5 - 2  0  0  1  G  A  M  E  F  R  E  A  K     i  n  c .
	next $60,$61,$62,$63,$64,$65,$66,$73,$74,$75,$76,$77,$78,$79,  $7a,$7b,$7c
	db "@"
