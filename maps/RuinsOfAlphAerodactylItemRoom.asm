	object_const_def

RuinsOfAlphAerodactylItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphAerodactylItemRoomHoleCallback

RuinsOfAlphAerodactylItemRoomHoleCallback:
	changeblock 2, 0, $26 ; left hole
	changeblock 4, 0, $27 ; right hole
	endcallback

RuinsOfAlphAerodactylItemRoomCharcoal:
	itemball CHARCOAL

RuinsOfAlphAerodactylItemRoomOldAmber:
	itemball OLD_AMBER

RuinsOfAlphAerodactylItemRoomStardust:
	itemball STARDUST

RuinsOfAlphAerodactylItemRoomRevivalHerb:
	itemball REVIVAL_HERB

RuinsOfAlphAerodactylItemRoomAncientReplica:
	jumptext RuinsOfAlphInnerChamber_StatueText
;RuinsOfAlphAerodactylItemRoom_StatueText: ;from RuinsOfAlphInnerChamber
;	text "It's a replica of"
;	line "an ancient #-"
;	cont "MON."
;	done

RuinsOfAlphAerodactylItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphAerodactylItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphAerodactylItemRoomAncientReplica

	def_object_events
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomCharcoal, EVENT_AERODACTYL_ITEM_ROOM_CHARCOAL
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomOldAmber, EVENT_AERODACTYL_ITEM_ROOM_OLD_AMBER
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomStardust, EVENT_AERODACTYL_ITEM_ROOM_STARDUST
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomRevivalHerb, EVENT_AERODACTYL_ITEM_ROOM_REVIVAL_HERB
