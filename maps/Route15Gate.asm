	object_const_def

Route15Gate_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route15GateTilesCallback

Route15GateTilesCallback:
	changeblock 2, 6, $12 ; open counter
	changeblock 4, 6, $1b ; open counter
	changeblock 4, 8, $19 ; stairs
	endcallback

Route15GateOfficerScript:
	jumptextfaceplayer Route15GateOfficerText
Route15GateOfficerText:
	text "You're working on"
	line "a #DEX? That's"
	cont "really something."

	para "Don't give up!"
	done

Route15Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, FUCHSIA_CITY, 4
	warp_event  0,  5, FUCHSIA_CITY, 5
	warp_event  7,  4, ROUTE_15, 1
	warp_event  7,  5, ROUTE_15, 2
	warp_event  4,  8, ROUTE_15_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route15GateOfficerScript, -1
