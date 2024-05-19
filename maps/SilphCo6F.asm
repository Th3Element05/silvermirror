	object_const_def
;	const SILPHCO1F_RECEPTIONIST

SilphCo6F_MapScripts:
	def_scene_scripts

	def_callbacks

;SilphCoReceptionistScript:
;	jumptextfaceplayer SilphCoReceptionistText

;SilphCoReceptionistText:
;	text "Welcome. This is"
;	line "SILPH CO.'s HEAD"
;	cont "OFFICE BUILDING."
;	done

SilphCo6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 17, SAFFRON_CITY, 7
	warp_event 11, 17, SAFFRON_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
