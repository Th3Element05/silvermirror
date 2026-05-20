	object_const_def
;	const CERULEANTRADESPEECHHOUSE_GRANNY
;	const CERULEANTRADESPEECHHOUSE_GRAMPS
;	const CERULEANTRADESPEECHHOUSE_RHYDON
;	const CERULEANTRADESPEECHHOUSE_ZUBAT

CeruleanTradeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

TradeNPCMason:
	faceplayer
	opentext
	trade NPC_TRADE_MASON
	waitbutton
	closetext
	end

CeruleanTradeSpeechHouseGrannyScript:
	jumptextfaceplayer CeruleanTradeSpeechHouseGrannyText
CeruleanTradeSpeechHouseGrannyText:
	ntag "GRANNY:"
	text "My husband likes"
	line "trading #MON."

	para "If you are a"
	line "collector, would"
	cont "you please trade"
	roll "with him?"
	done

CeruleanTradeSpeechHouseKangaskhanScript:
	opentext
	writetext CeruleanTradeSpeechHouseKangaskhanText
	cry KANGASKHAN
	waitbutton
	closetext
	end

CeruleanTradeSpeechHouseKangaskhanText:
	ntag "KANGASKHAN:"
	text "Garu garuu."
	done

;CeruleanTradeSpeechHouseZubatScript:
;	opentext
;	writetext CeruleanTradeSpeechHouseZubatText
;	cry ZUBAT
;	waitbutton
;	closetext
;	end
;
;CeruleanTradeSpeechHouseZubatText:
;	text "ZUBAT: Zuba zubaa."
;	done

CeruleanTradeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 5
	warp_event  3,  7, CERULEAN_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrannyScript, -1
	object_event  1,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TradeNPCMason, -1
	object_event  5,  2, SPRITE_KANGASKHAN_MOVE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseKangaskhanScript, -1
;	object_event  3,  5, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseZubatScript, -1
