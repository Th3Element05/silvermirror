	object_const_def

Route5UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route5UndergroundPathEntranceGirlScript:
	faceplayer
	opentext
	trade NPC_TRADE_MIA
	waitbutton
	closetext
	end

Route5UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_5, 1
	warp_event  4,  7, ROUTE_5, 1
	warp_event  4,  3, UNDERGROUND_PATH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route5UndergroundPathEntranceGirlScript, -1
