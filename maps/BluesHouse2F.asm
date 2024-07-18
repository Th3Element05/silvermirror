	object_const_def

BluesHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BluesHouse2FHouseTilesCallback

BluesHouse2FHouseTilesCallback:
	changeblock 0, 0, $2c ; bookshelves
	changeblock 0, 4, $33 ; blue bed
	endcallback

BluesHouse2FDoll:
	jumptext BluesHouse2FDollText
BluesHouse2FDollText:
	text "<RIVAL>'s"
	line "#MON!"

	para "Huh?"
	line "It's only a doll…"
	done

BluesHouse2FPC:
	jumptext BluesHouse2FPCText
BluesHouse2FPCText:
	text "<RIVAL>'s PC"
	line "isn't on."
	done

BluesHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, BLUES_HOUSE, 3

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, BluesHouse2FPC

	def_object_events
	object_event  4,  4, SPRITE_BULBASAUR, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BluesHouse2FDoll, EVENT_BLUES_ROOM_BULBASAUR
	object_event  4,  4, SPRITE_CHARMANDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BluesHouse2FDoll, EVENT_BLUES_ROOM_CHARMANDER
	object_event  4,  4, SPRITE_SQUIRTLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BluesHouse2FDoll, EVENT_BLUES_ROOM_SQUIRTLE
