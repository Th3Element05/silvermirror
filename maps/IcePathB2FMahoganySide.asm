	object_const_def

IcePathB2FMahoganySide_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathB2FMahoganySideBoulder:
	jumptext IcePathB2FMahoganySideBoulderText
IcePathB2FMahoganySideBoulderText:
	text "It's immovably"
	line "imbedded in ice."
	done

IcePathB2FMahoganySideFullHeal:
	itemball FULL_HEAL

IcePathB2FMahoganySideMaxPotion:
	itemball MAX_POTION

IcePathB2FMahoganySideHiddenCarbos:
	hiddenitem CARBOS, EVENT_ICE_PATH_B2F_MAHOGANY_SIDE_HIDDEN_CARBOS


IcePathB2FMahoganySide_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  1, ICE_PATH_B1F, 2 ;1
	warp_event  9, 11, ICE_PATH_B3F, 1 ;2
	warp_event 10,  3, ICE_PATH_B1F, 3 ;3
	warp_event  4,  6, ICE_PATH_B1F, 4 ;4
	warp_event  6, 11, ICE_PATH_B1F, 5 ;5
	warp_event 11, 14, ICE_PATH_B1F, 6 ;6
	warp_event  1, 15, ICE_PATH_B1F, 9 ;7

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
