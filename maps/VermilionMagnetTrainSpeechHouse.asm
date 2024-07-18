	object_const_def

VermilionMagnetTrainSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionTradeHouseElyssaScript:
	faceplayer
	opentext
	trade NPC_TRADE_ELYSSA
	waitbutton
	closetext
	end

VermilionMagnetTrainSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 4
	warp_event  3,  7, VERMILION_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionTradeHouseElyssaScript, -1
