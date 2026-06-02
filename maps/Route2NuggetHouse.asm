	object_const_def
;	const ROUTE2NUGGETHOUSE_FISHER

Route2NuggetHouse_MapScripts:
	def_scene_scripts

	def_callbacks

TradeNPCMateo:
	faceplayer
	opentext
	trade NPC_TRADE_MATEO
	waitbutton
	closetext
	end

Route2TradeHousePokefanScript:
	jumptextfaceplayer Route2TradeHousePokefanText
Route2TradeHousePokefanText:
	ntag "MAN:"
	text "The PPS is great!"

	para "You can still use"
	line "techniques like"
	cont "CUT, even if your"
	roll "own #MON haven't"
	cont "learned them!"
	done

Route2NuggetHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_2, 1
	warp_event  3,  7, ROUTE_2, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TradeNPCMateo, -1
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2TradeHousePokefanScript, -1
