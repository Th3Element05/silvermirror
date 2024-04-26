	object_const_def
	const ROUTE12GATE_OFFICER

Route12Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route12GuardScript:
	end

Route12Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_12, 4
	warp_event  4,  0, ROUTE_12, 5
	warp_event  3,  7, ROUTE_12, 6
	warp_event  4,  7, ROUTE_12, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route12GuardScript, -1
