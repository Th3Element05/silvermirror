RedsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RedsHouse2FHouseTilesCallback

RedsHouse2FHouseTilesCallback:
	changeblock 0, 4, $1b ; white bed
	changeblock 4, 2, $32 ; n64
	endcallback

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

RedsHouse2FPCScript:
	jumptext RedsHouse2FPCText

RedsHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done

RedsHouse2FPCText:
	text "It looks like it"
	line "hasn't been used"
	cont "in a long time…"
	done

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  2, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  2,  1, BGEVENT_READ, RedsHouse2FPCScript

	def_object_events
