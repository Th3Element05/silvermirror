	object_const_def

Route43MahoganyGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route43MahoganyGateOfficer:
	jumptext Route43MahoganyGateOfficerText
Route43MahoganyGateOfficerText:
	text "Only people headed"
	line "up to LAKE OF RAGE"
	cont "pass through here."
	done

Route43MahoganyGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_43, 1
	warp_event  4,  0, ROUTE_43, 2
	warp_event  3,  7, MAHOGANY_TOWN, 5
	warp_event  4,  7, MAHOGANY_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route43MahoganyGateOfficer, -1
