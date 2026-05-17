	object_const_def

RuinsOfAlphHoOhItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphHoOhItemRoomSacredAsh:
	itemball SACRED_ASH

RuinsOfAlphHoOhItemRoomNugget:
	itemball NUGGET

RuinsOfAlphHoOhItemRoomStarPiece:
	itemball STAR_PIECE

RuinsOfAlphHoOhItemRoomLumBerry:
	itemball LUM_BERRY

RuinsOfAlphHoOhItemRoomAncientReplica:
	jumptext RuinsOfAlphInnerChamber_StatueText
;RuinsOfAlphHoOhItemRoom_StatueText:
;	text "It's a replica of"
;	line "an ancient #-"
;	cont "MON."
;	done

RuinsOfAlphHoOhItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_HO_OH_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_HO_OH_CHAMBER, 5
;	warp_event  3,  1, RUINS_OF_ALPH_HO_OH_WORD_ROOM, 1
;	warp_event  4,  1, RUINS_OF_ALPH_HO_OH_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphHoOhItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphHoOhItemRoomAncientReplica

	def_object_events
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphHoOhItemRoomSacredAsh, EVENT_HO_OH_ITEM_ROOM_SACRED_ASH
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphHoOhItemRoomNugget, EVENT_HO_OH_ITEM_ROOM_NUGGET
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphHoOhItemRoomStarPiece, EVENT_HO_OH_ITEM_ROOM_STAR_PIECE
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphHoOhItemRoomLumBerry, EVENT_HO_OH_ITEM_ROOM_LUM_BERRY
