	object_const_def

GoldenrodDeptStoreB1F_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_TILES, GoldenRodDeptStoreB1FClearBoxesCallback

;GoldenRodDeptStoreB1FClearBoxesCallback:
;	checkevent EVENT_first_thing
;	iffalse .SecondSet
;	changeblock 4, 10, $09 ; floor
;	changeblock 4, 12, $1a ; boxes
;.SecondSet
;	checkevent EVENT_second_thing
;	iffalse .ThirdSet
;	changeblock 10, 12, $09 ; floor
;	changeblock 8, 12, $1a ; boxes
;.ThirdSet
;	checkevent EVENT_third_thing
;	iffalse .End
;	changeblock 16, 2, $09 ; floor
;	changeblock 16, 0, $1a ; boxes
;.End
;	end

GoldenrodDeptStoreB1FBlackBelt1Script:
	jumptextfaceplayer GoldenrodDeptStoreB1FBlackBelt1Text
GoldenrodDeptStoreB1FBlackBelt1Text:
	text "Hey, kid! You're"
	line "holding us up!"

	para "We're not allowed"
	line "to work while a"
	cont "kid is down here."
	
	para "We'd be in deep"
	line "trouble if you"
	cont "got hurt!"
	done

GoldenrodDeptStoreB1FBlackBelt2Script:
	jumptextfaceplayer GoldenrodDeptStoreB1FBlackBelt2Text
GoldenrodDeptStoreB1FBlackBelt2Text:
	text "Why aren't I"
	line "working?"

	para "I'm on my break."
	done

GoldenrodDeptStoreB1FBlackBelt3Script:
	jumptextfaceplayer GoldenrodDeptStoreB1FBlackBelt3Text
GoldenrodDeptStoreB1FBlackBelt3Text:
	text "The stuff on the"
	line "ground's junk."

	para "Take it if you"
	line "want it!"
	done

GoldenrodDeptStoreB1FMachokeScript:
	opentext
	writetext GoldenrodDeptStoreB1FMachokeText
	cry MACHOKE
	waitbutton
	closetext
	end

GoldenrodDeptStoreB1FMachokeText:
	ntag "MACHOKE:"
	text "Maaaacho!"
	done

GoldenrodDeptStoreB1FEther:
	itemball ETHER

GoldenrodDeptStoreB1FBurnHeal:
	itemball BURN_HEAL

GoldenrodDeptStoreB1FUltraBall:
	itemball ULTRA_BALL

GoldenrodDeptStoreB1FAmuletCoin:
	itemball AMULET_COIN

GoldenrodDeptStoreB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  3, GOLDENROD_UNDERGROUND_WAREHOUSE, 3
	warp_event  9,  4, GOLDENROD_DEPT_STORE_ELEVATOR, 1
	warp_event 10,  4, GOLDENROD_DEPT_STORE_ELEVATOR, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreB1FBlackBelt1Script, -1
	object_event 15,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreB1FBlackBelt2Script, -1
	object_event  5,  7, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreB1FBlackBelt3Script, -1
	object_event  9,  8, SPRITE_MACHOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreB1FMachokeScript, -1
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FEther, EVENT_GOLDENROD_DEPT_STORE_B1F_ETHER
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FBurnHeal, EVENT_GOLDENROD_DEPT_STORE_B1F_BURN_HEAL
	object_event 15, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FUltraBall, EVENT_GOLDENROD_DEPT_STORE_B1F_ULTRA_BALL
	object_event 18,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FAmuletCoin, EVENT_GOLDENROD_DEPT_STORE_B1F_AMULET_COIN

;.GreyOverYellowOBPalette