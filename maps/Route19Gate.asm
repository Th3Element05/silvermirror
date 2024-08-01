	object_const_def
	const ROUTE_19FUCHSIAGATE_OFFICER

Route19Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route19FuchsiaGateOfficerScript:
	jumptextfaceplayer Route19FuchsiaGateOfficerText
Route19FuchsiaGateOfficerText:
	text "SEAFOAM ISLANDS"
	line "are south-west"
	cont "from here."

	para "Farther west is"
	line "CINNABAR ISLAND."
	done

Route19Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, FUCHSIA_CITY, 12
	warp_event  4,  0, FUCHSIA_CITY, 13
	warp_event  3,  7, ROUTE_19, 1
	warp_event  4,  7, ROUTE_19, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route19FuchsiaGateOfficerScript, -1
