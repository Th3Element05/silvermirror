PagerCardNames:
	db "HM01 CUT@" ;silvermirror -"SCYTHER CHOP@"
	db "HM02 FLY@" ;silvermirror -"PIDGEOT FLY@"
	db "HM03 SURF@" ;silvermirror -"LAPRAS SURF@"
	db "HM04 STRENGTH@" ;silvermirror -"MACHOKE PUSH@"
	db "HM05 FLASH@" ;silvermirror -"MAREEP SHINE@"
	db "HM06 WHIRLPOOL@" ;silvermirror -"REMORAID WHIRL@"
	db "TM58 ROCKSMASH@" ;silvermirror -"CUBONE SMASH@"

PagerMissingName:
	db "----------@"

PagerCardIconSpecies:
	db SCYTHER
	db PIDGEOT
	db LAPRAS
	db MACHOKE
	db PIKACHU ;silvermirror -MAREEP
	db POLIWRATH ;silvermirror -REMORAID ;+POLIWRATH
	db GEODUDE ;silvermirror -CUBONE
	db 0 ; end

PagerCardSprites:
	; sprite anim index, pager flag bit
	db SPRITE_ANIM_OBJ_PAGER_MON_GREEN, PAGER_CUT_F
	db SPRITE_ANIM_OBJ_PAGER_MON_RED,   PAGER_FLY_F
	db SPRITE_ANIM_OBJ_PAGER_MON_BLUE,  PAGER_SURF_F
	db SPRITE_ANIM_OBJ_PAGER_MON_GREY,  PAGER_STRENGTH_F
	db SPRITE_ANIM_OBJ_PAGER_MON_RED,   PAGER_FLASH_F
	db SPRITE_ANIM_OBJ_PAGER_MON_BLUE,  PAGER_WHIRLPOOL_F
	db SPRITE_ANIM_OBJ_PAGER_MON_GREY,  PAGER_ROCK_SMASH_F ;_BROWN
	db 0 ; end
