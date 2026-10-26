	object_const_def

CeladonChiefHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CeladonChiefHouseTilesCallback

CeladonChiefHouseTilesCallback:
	changeblock 0, 0, $03 ; blank wall
	changeblock 6, 0, $03 ; blank wall
	changeblock 0, 6, $06 ; left tree
	changeblock 6, 6, $07 ; right tree
	endcallback

CeladonChiefHouseChiefScript:
	jumptextfaceplayer CeladonChiefHouseChiefText
CeladonChiefHouseChiefText:
	ntag "CHIEF:"
	text "Hehehe! The slots"
	line "just reel in the"
	cont "dough, big time!"
	done

CeladonChiefHouseRocketScript:
	turnobject LAST_TALKED, RIGHT
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .ExRocket
	jumptext CeladonChiefHouseRocketText1

.ExRocket
	jumptext CeladonChiefHouseExRocketText1

CeladonChiefHouseRocketText1:
	ntag "ROCKET:"
	text "CHIEF!"

	para "We just shipped"
	line "2000 #MON as"
	cont "slot prizes!"
	done

CeladonChiefHouseExRocketText1:
	ntag "EX-ROCKET:"
	text "CHIEF!"

	para "We just shipped"
	line "2000 #MON as"
	cont "slot prizes!"
	done

CeladonChiefHouseSailorScript:
	jumptextfaceplayer CeladonChiefHouseSailorText
CeladonChiefHouseSailorText:
	ntag "ROCKET:"
	text "Don't touch the"
	line "poster at the"
	cont "GAME CORNER!"

	para "There's no secret"
	line "switch behind it!"
	done

CeladonChiefHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_CITY, 10
	warp_event  3,  7, CELADON_CITY, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouseChiefScript, -1
	object_event  2,  2, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouseRocketScript, -1
	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouseSailorScript, EVENT_BEAT_GIOVANNI_HIDEOUT
