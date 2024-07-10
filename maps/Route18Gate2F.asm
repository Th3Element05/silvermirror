	object_const_def

Route18Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks



Route18Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, ROUTE_18_GATE, 1

	def_coord_events

	def_bg_events

	def_object_events
;	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route18GateOfficerScript, -1
