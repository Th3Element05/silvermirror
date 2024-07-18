MACRO momitem
; money to trigger, cost, kind, item
	dt \1
	dt \2
	db \3, \4
ENDM

MomItems_1:
	momitem      0, 0, MOM_ITEM, POKE_BALL
	momitem      0, 0, MOM_ITEM, REPEL
	momitem      0, 0, MOM_ITEM, ESCAPE_ROPE
	momitem      0, 0, MOM_ITEM, GREAT_BALL
	momitem      0, 0, MOM_ITEM, SUPER_POTION
.End

;When the player's savings reach certain amounts, 
;the player's mother may purchase one of the items below. 
;Each item can only be obtained once.
MomItems_2:
	momitem   1000, 0, MOM_ITEM, SUPER_POTION
	momitem   2000, 0, MOM_ITEM, REPEL
	momitem   5000, 0, MOM_DOLL, DECO_BULBASAUR_DOLL
	momitem   5000, 0, MOM_DOLL, DECO_CHARMANDER_DOLL
	momitem   5000, 0, MOM_DOLL, DECO_SQUIRTLE_DOLL
	momitem   7000, 0, MOM_ITEM, FULL_HEAL
	momitem   8000, 0, MOM_ITEM, HYPER_POTION
	momitem  10000, 0, MOM_ITEM, MOON_STONE
	momitem  11000, 0, MOM_DOLL, DECO_PIKACHU_DOLL
	momitem  12000, 0, MOM_DOLL, DECO_MAGIKARP_DOLL
	momitem  15000, 0, MOM_DOLL, DECO_BIG_SNORLAX_DOLL
	momitem  25000, 0, MOM_ITEM, PP_UP
	momitem  50000, 0, MOM_ITEM, HP_UP
	momitem  50000, 0, MOM_ITEM, PROTEIN
	momitem  50000, 0, MOM_ITEM, IRON
	momitem  50000, 0, MOM_ITEM, CALCIUM
	momitem  50000, 0, MOM_ITEM, CARBOS
.End

	dt 0 ; unused
;
;MomItems_1:
;	momitem      0,   600, MOM_ITEM, SUPER_POTION
;	momitem      0,    90, MOM_ITEM, ANTIDOTE
;	momitem      0,   180, MOM_ITEM, POKE_BALL
;	momitem      0,   450, MOM_ITEM, ESCAPE_ROPE
;	momitem      0,   500, MOM_ITEM, GREAT_BALL
;.End
;
;MomItems_2:
;	momitem    900,   600, MOM_ITEM, SUPER_POTION
;	momitem   4000,   270, MOM_ITEM, REPEL
;	momitem   7000,   600, MOM_ITEM, SUPER_POTION
;	momitem  10000,  1800, MOM_DOLL, DECO_CHARMANDER_DOLL
;	momitem  15000,  3000, MOM_ITEM, MOON_STONE
;	momitem  19000,   600, MOM_ITEM, SUPER_POTION
;	momitem  30000,  4800, MOM_DOLL, DECO_CLEFAIRY_DOLL
;	momitem  40000,   900, MOM_ITEM, HYPER_POTION
;	momitem  50000,  8000, MOM_DOLL, DECO_PIKACHU_DOLL
;	momitem 100000, 22800, MOM_DOLL, DECO_BIG_SNORLAX_DOLL
;.End
;
;	dt 0 ; unused