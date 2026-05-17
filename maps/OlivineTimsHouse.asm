	object_const_def
;	const OLIVINETIMSHOUSE_TIM

OlivineTimsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

TradeNPCMindy:
	faceplayer
	opentext
	trade NPC_TRADE_MINDY
	waitbutton
	closetext
	end

TimsHouseBookshelf:
	jumpstd MagazineBookshelfScript

OlivineTimsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 3
	warp_event  3,  7, OLIVINE_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, TimsHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, TimsHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TradeNPCMindy, -1
