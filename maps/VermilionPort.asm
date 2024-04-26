	object_const_def

VermilionPort_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionPortFlypointCallback

VermilionPortFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionPortTruck:
	jumptext VermilionPortTruckText

VermilionPortTruckText:
	text "There's something"
	line "under this truck."

	para "Better leave it"
	line "alone."
	done

VermilionPort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  4, VERMILION_CITY, 8 ;VERMILION_PORT_PASSAGE, 5
	warp_event  5,  8, SS_ANNE_1F, 1 ;FAST_SHIP_1F, 1

	def_coord_events

	def_bg_events
	bg_event 15,  6, BGEVENT_READ, VermilionPortTruck

	def_object_events
