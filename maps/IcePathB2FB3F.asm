	object_const_def

IcePathB2FB3F_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathB2FMahoganySideBoulder:
	jumptext IcePathB2FMahoganySideBoulderText
IcePathB2FMahoganySideBoulderText:
	text "It's immovably"
	line "imbedded in ice."
	done

; hidden items
IcePathB2FMahoganySideHiddenCarbos:
	hiddenitem CARBOS, EVENT_ICE_PATH_B2F_MAHOGANY_SIDE_HIDDEN_CARBOS

; itemballs
IcePathB2FMahoganySideFullHeal:
	itemball FULL_HEAL

IcePathB2FMahoganySideMaxPotion:
	itemball MAX_POTION

IcePathB2FBlackthornSideTMFlashCannon:
	itemball TM_FLASH_CANNON

IcePathB2FB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;b2f_mahogany
	warp_event 17,  1, ICE_PATH_B1F, 2 ;1m
	warp_event  9, 11, ICE_PATH_B2F_B3F, 10 ;2m ;ICE_PATH_B3F, 1
	warp_event 10,  3, ICE_PATH_B1F, 3 ;3m
	warp_event  4,  6, ICE_PATH_B1F, 4 ;4m
	warp_event  6, 11, ICE_PATH_B1F, 5 ;5m
	warp_event 11, 14, ICE_PATH_B1F, 6 ;6m
	warp_event  1, 15, ICE_PATH_B1F, 9 ;7m
;b2f_blackthorn
	warp_event 25, 15, ICE_PATH_B1F, 8 ;8b
	warp_event 25,  3, ICE_PATH_B2F_B3F, 11 ;9b ;ICE_PATH_B3F, 2
;b3f
	warp_event  3, 27, ICE_PATH_B2F_B3F, 2 ;10 ;ICE_PATH_B2F_MAHOGANY_SIDE, 2
	warp_event 15, 27, ICE_PATH_B2F_B3F, 9 ;11 ;ICE_PATH_B2F_BLACKTHORN_SIDE, 2

	def_coord_events

	def_bg_events
	bg_event 19,  2, BGEVENT_ITEM, IcePathB2FMahoganySideHiddenCarbos

	def_object_events
	object_event 10,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_1A
	object_event  4,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_2A
	object_event  5, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_3A
	object_event 11, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_4A
	object_event  2, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB2FMahoganySideFullHeal, EVENT_ICE_PATH_B2F_MAHOGANY_SIDE_FULL_HEAL
	object_event  0,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB2FMahoganySideMaxPotion, EVENT_ICE_PATH_B2F_MAHOGANY_SIDE_MAX_POTION
	object_event 31, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, IcePathB2FBlackthornSideTMFlashCannon, EVENT_ICE_PATH_B2F_BLACKTHORN_SIDE_TM_FLASH_CANNON
