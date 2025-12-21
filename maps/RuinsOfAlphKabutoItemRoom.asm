	object_const_def

RuinsOfAlphKabutoItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphKabutoItemRoomOranBerry:
	itemball ORAN_BERRY

RuinsOfAlphKabutoItemRoomPechaBerry:
	itemball PECHA_BERRY

RuinsOfAlphKabutoItemRoomHealPowder:
	itemball HEAL_POWDER

RuinsOfAlphKabutoItemRoomEnergypowder:
	itemball ENERGYPOWDER

RuinsOfAlphKabutoItemRoomAncientReplica:
	jumptext RuinsOfAlphInnerChamber_StatueText
;RuinsOfAlphKabutoItemRoom_StatueText:
;	text "It's a replica of"
;	line "an ancient #-"
;	cont "MON."
;	done

RuinsOfAlphKabutoItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_KABUTO_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_KABUTO_CHAMBER, 5
;	warp_event  3,  1, RUINS_OF_ALPH_KABUTO_WORD_ROOM, 1
;	warp_event  4,  1, RUINS_OF_ALPH_KABUTO_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphKabutoItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphKabutoItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphKabutoItemRoomOranBerry, EVENT_KABUTO_ITEM_ROOM_ORAN_BERRY
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphKabutoItemRoomPechaBerry, EVENT_KABUTO_ITEM_ROOM_PECHA_BERRY
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphKabutoItemRoomHealPowder, EVENT_KABUTO_ITEM_ROOM_HEAL_POWDER
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphKabutoItemRoomEnergypowder, EVENT_KABUTO_ITEM_ROOM_ENERGYPOWDER
