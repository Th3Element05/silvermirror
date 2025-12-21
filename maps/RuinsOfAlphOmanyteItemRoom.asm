	object_const_def

RuinsOfAlphOmanyteItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphOmanyteItemRoomLeppaBerry:
	itemball LEPPA_BERRY

RuinsOfAlphOmanyteItemRoomMysticWater:
	itemball MYSTIC_WATER

RuinsOfAlphOmanyteItemRoomStardust:
	itemball STARDUST

RuinsOfAlphOmanyteItemRoomStarPiece:
	itemball STAR_PIECE

RuinsOfAlphOmanyteItemRoomAncientReplica:
	jumptext RuinsOfAlphInnerChamber_StatueText
;RuinsOfAlphOmanyteItemRoom_StatueText:
;	text "It's a replica of"
;	line "an ancient #-"
;	cont "MON."
;	done

RuinsOfAlphOmanyteItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OMANYTE_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_OMANYTE_CHAMBER, 5
;	warp_event  3,  1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM, 1
;	warp_event  4,  1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphOmanyteItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphOmanyteItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphOmanyteItemRoomLeppaBerry, EVENT_OMANYTE_ITEM_ROOM_LEPPA_BERRY
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphOmanyteItemRoomMysticWater, EVENT_OMANYTE_ITEM_ROOM_MYSTIC_WATER
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphOmanyteItemRoomStardust, EVENT_OMANYTE_ITEM_ROOM_STARDUST
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphOmanyteItemRoomStarPiece, EVENT_OMANYTE_ITEM_ROOM_STAR_PIECE
