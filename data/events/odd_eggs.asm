DEF NUM_ODD_EGGS EQU 26

MACRO prob
	DEF prob_total += \1
	dw prob_total * $ffff / 100
ENDM

;Male Egg DVs: 9/10/10/10
;Female Egg DVs: 5/10/10/10
;Male Shiny Egg DVs: 10/10/10/10
;Female Shiny Egg DVs: 7/10/10/10
OddEggProbabilities:
; entries correspond to OddEggs (below)
	table_width 2, OddEggProbabilities
DEF prob_total = 0
; Bulbasaur (petal_dance)
	prob 6
	prob 5
	prob 3
	prob 2
; Charmander (outrage, bite)
	prob 6
	prob 5
	prob 3
	prob 2
; Squirtle (confusion)
	prob 6
	prob 5
	prob 3
	prob 2
; Chikorita (ancientpower, leech_seed)
	prob 6
	prob 5
	prob 3
	prob 2
; Cyndaquil (extrasensory) ;reversal
	prob 6
	prob 5
	prob 3
	prob 2
; Totodile (crunch, thrash)
	prob 6
	prob 5
	prob 3
	prob 2
; Eevee (always shiny)
	prob 2
	prob 2
; Togepi (shiny) (peck, heal_bell)
;	prob 2
;	prob 2

	assert_table_length NUM_ODD_EGGS
	assert prob_total == 100, "OddEggProbabilities do not sum to 100%!"

OddEggs:
	table_width NICKNAMED_MON_STRUCT_LENGTH, OddEggs

; male
	db BULBASAUR
	db NO_ITEM
	db TACKLE, GROWL, PETAL_DANCE, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 9, 10, 10, 10 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female
	db BULBASAUR
	db NO_ITEM
	db TACKLE, GROWL, PETAL_DANCE, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 5, 10, 10, 10 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male shiny
	db BULBASAUR
	db NO_ITEM
	db TACKLE, GROWL, PETAL_DANCE, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female shiny
	db BULBASAUR
	db NO_ITEM
	db TACKLE, GROWL, PETAL_DANCE, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 35, 40, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male
	db CHARMANDER
	db NO_ITEM
	db SCRATCH, GROWL, BITE, OUTRAGE
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 9, 10, 10, 10 ; DVs
	db 35, 40, 25, 15 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female
	db CHARMANDER
	db NO_ITEM
	db SCRATCH, GROWL, BITE, OUTRAGE
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 5, 10, 10, 10 ; DVs
	db 35, 40, 25, 15 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male shiny
	db CHARMANDER
	db NO_ITEM
	db SCRATCH, GROWL, BITE, OUTRAGE
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 35, 40, 25, 15 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female shiny
	db CHARMANDER
	db NO_ITEM
	db SCRATCH, GROWL, BITE, OUTRAGE
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 35, 40, 25, 15 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male
	db SQUIRTLE
	db NO_ITEM
	db TACKLE, LEER, CONFUSION, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 9, 10, 10, 10 ; DVs
	db 35, 30, 25, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female
	db SQUIRTLE
	db NO_ITEM
	db TACKLE, LEER, CONFUSION, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 5, 10, 10, 10 ; DVs
	db 35, 30, 25, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male shiny
	db SQUIRTLE
	db NO_ITEM
	db TACKLE, LEER, CONFUSION, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 35, 30, 25, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female shiny
	db SQUIRTLE
	db NO_ITEM
	db TACKLE, LEER, CONFUSION, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 35, 30, 25, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male
	db CHIKORITA
	db NO_ITEM
	db TACKLE, GROWL, ANCIENTPOWER, LEECH_SEED
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 9, 10, 10, 10 ; DVs
	db 35, 40, 5, 10 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female
	db CHIKORITA
	db NO_ITEM
	db TACKLE, GROWL, ANCIENTPOWER, LEECH_SEED
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 5, 10, 10, 10 ; DVs
	db 35, 40, 5, 10 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male shiny
	db CHIKORITA
	db NO_ITEM
	db TACKLE, GROWL, ANCIENTPOWER, LEECH_SEED
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 35, 40, 5, 10 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female shiny
	db CHIKORITA
	db NO_ITEM
	db TACKLE, GROWL, ANCIENTPOWER, LEECH_SEED
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 35, 40, 5, 10 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male
	db CYNDAQUIL
	db NO_ITEM
	db TACKLE, LEER, 0, 0 ;EXTRASENSORY
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 9, 10, 10, 10 ; DVs
	db 35, 30, 15, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female
	db CYNDAQUIL
	db NO_ITEM
	db TACKLE, LEER, 0, 0 ;EXTRASENSORY
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 5, 10, 10, 10 ; DVs
	db 35, 30, 15, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male shiny
	db CYNDAQUIL
	db NO_ITEM
	db TACKLE, LEER, 0, 0 ;EXTRASENSORY
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 35, 30, 15, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female shiny
	db CYNDAQUIL
	db NO_ITEM
	db TACKLE, LEER, 0, 0 ;EXTRASENSORY
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 35, 30, 15, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male
	db TOTODILE
	db NO_ITEM
	db SCRATCH, LEER, CRUNCH, THRASH
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 9, 10, 10, 10 ; DVs
	db 35, 30, 15, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female
	db TOTODILE
	db NO_ITEM
	db SCRATCH, LEER, CRUNCH, THRASH
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 5, 10, 10, 10 ; DVs
	db 35, 30, 15, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male shiny
	db TOTODILE
	db NO_ITEM
	db SCRATCH, LEER, CRUNCH, THRASH
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 35, 30, 15, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female shiny
	db TOTODILE
	db NO_ITEM
	db SCRATCH, LEER, CRUNCH, THRASH
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 35, 30, 15, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; male shiny
	db EEVEE
	db NO_ITEM
	db TACKLE, LEER, 0, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 40, 20, 35, 15 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 5 ; Atk
	bigdw 6 ; Def
	bigdw 5 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

; female shiny
	db EEVEE
	db NO_ITEM
	db TACKLE, LEER, 0, 0
	dw 02048 ; OT ID
	dt 1 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 40, 20, 35, 15 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 5 ; Atk
	bigdw 6 ; Def
	bigdw 5 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "RARE EGG@@@"

	assert_table_length NUM_ODD_EGGS

;; male shiny
;	db TOGEPI
;	db NO_ITEM
;	db GROWL, CHARM, PECK, HEAL_BELL
;	dw 02048 ; OT ID
;	dt 1 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 10, 10, 10, 10 ; DVs
;	db 40, 20, 35, 15 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 1 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 12 ; Max HP
;	bigdw 5 ; Atk
;	bigdw 6 ; Def
;	bigdw 5 ; Spd
;	bigdw 6 ; SAtk
;	bigdw 6 ; SDef
;	db "ODD EGG@@@@"

;; female shiny
;	db TOGEPI
;	db NO_ITEM
;	db GROWL, CHARM, PECK, HEAL_BELL
;	dw 02048 ; OT ID
;	dt 1 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 7, 10, 10, 10 ; DVs
;	db 40, 20, 35, 15 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 1 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 12 ; Max HP
;	bigdw 5 ; Atk
;	bigdw 6 ; Def
;	bigdw 5 ; Spd
;	bigdw 6 ; SAtk
;	bigdw 6 ; SDef
;	db "ODD EGG@@@@"

; OG

;	db PICHU
;	db NO_ITEM
;	db THUNDERSHOCK, CHARM, DIZZY_PUNCH, 0
;	dw 02048 ; OT ID
;	dt 125 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 9, 10, 10, 10 ; DVs
;	db 30, 20, 10, 0 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 5 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 17 ; Max HP
;	bigdw 9 ; Atk
;	bigdw 7 ; Def
;	bigdw 12 ; Spd
;	bigdw 9 ; SAtk
;	bigdw 9 ; SDef
;	db "ODD EGG@@@@"
;
;	db CLEFFA
;	db NO_ITEM
;	db POUND, CHARM, DIZZY_PUNCH, 0
;	dw 04096 ; OT ID
;	dt 125 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 9, 10, 10, 10 ; DVs
;	db 35, 20, 10, 0 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 5 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 20 ; Max HP
;	bigdw 8 ; Atk
;	bigdw 8 ; Def
;	bigdw 7 ; Spd
;	bigdw 10 ; SAtk
;	bigdw 10 ; SDef
;	db "ODD EGG@@@@"
;
;	db IGGLYBUFF
;	db NO_ITEM
;	db SING, CHARM, DIZZY_PUNCH, 0
;	dw 04096 ; OT ID
;	dt 125 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 9, 10, 10, 10 ; DVs
;	db 15, 20, 10, 0 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 5 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 24 ; Max HP
;	bigdw 8 ; Atk
;	bigdw 7 ; Def
;	bigdw 7 ; Spd
;	bigdw 10 ; SAtk
;	bigdw 8 ; SDef
;	db "ODD EGG@@@@"
;
;	db SMOOCHUM
;	db NO_ITEM
;	db POUND, LICK, DIZZY_PUNCH, 0
;	dw 03584 ; OT ID
;	dt 125 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 5, 10, 10, 10 ; DVs
;	db 35, 30, 10, 0 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 5 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 20 ; Max HP
;	bigdw 8 ; Atk
;	bigdw 7 ; Def
;	bigdw 12 ; Spd
;	bigdw 14 ; SAtk
;	bigdw 12 ; SDef
;	db "ODD EGG@@@@"
;
;	db MAGBY
;	db NO_ITEM
;	db SMOG, LEER, DIZZY_PUNCH, 0
;	dw 02560 ; OT ID
;	dt 125 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 9, 10, 10, 10 ; DVs
;	db 20, 30, 10, 0 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 5 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 20 ; Max HP
;	bigdw 13 ; Atk
;	bigdw 8 ; Def
;	bigdw 14 ; Spd
;	bigdw 13 ; SAtk
;	bigdw 11 ; SDef
;	db "ODD EGG@@@@"
;
;	db ELEKID
;	db NO_ITEM
;	db QUICK_ATTACK, LEER, DIZZY_PUNCH, 0
;	dw 03072 ; OT ID
;	dt 125 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 9, 10, 10, 10 ; DVs
;	db 30, 30, 10, 0 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 5 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 19 ; Max HP
;	bigdw 12 ; Atk
;	bigdw 9 ; Def
;	bigdw 15 ; Spd
;	bigdw 12 ; SAtk
;	bigdw 11 ; SDef
;	db "ODD EGG@@@@"
;
;	db TYROGUE
;	db NO_ITEM
;	db PURSUIT, FOCUS_ENERGY, FORESIGHT, DIZZY_PUNCH
;	dw 02560 ; OT ID
;	dt 125 ; Exp
;	; Stat exp
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	bigdw 0
;	dn 9, 10, 10, 10 ; DVs
;	db 20, 30, 40, 10 ; PP
;	db 20 ; Step cycles to hatch
;	db 0, 0, 0 ; Pokerus, Caught data
;	db 5 ; Level
;	db 0, 0 ; Status
;	bigdw 0 ; HP
;	bigdw 19 ; Max HP
;	bigdw 9 ; Atk
;	bigdw 9 ; Def
;	bigdw 9 ; Spd
;	bigdw 9 ; SAtk
;	bigdw 9 ; SDef
;	db "ODD EGG@@@@"
;
;	assert_table_length NUM_ODD_EGGS
;