	object_const_def
	const ROUTE26GATE_OFFICER

Route26Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route26GateGuardScript:
	end

Route26Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_22, 2
	warp_event  4,  0, ROUTE_22, 3
	warp_event  3,  7, ROUTE_26, 1
	warp_event  4,  7, ROUTE_26, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route26GateGuardScript, -1
