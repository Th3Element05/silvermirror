	object_const_def
;	const OLIVINELIGHTHOUSE1F_SAILOR
;	const OLIVINELIGHTHOUSE1F_POKEFAN_F

OlivineLighthouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineLighthouse1FSailorScript:
	jumptextfaceplayer OlivineLighthouse1FSailorText

OlivineLighthouse1FPokefanFScript:
	jumptextfaceplayer OlivineLighthouse1FPokefanFText

OlivineLighthouse1FSailorText:
;	text "People train at"
;	line "this LIGHTHOUSE."
;
;	para "It's not easy to"
;	line "climb because of"
;	cont "all the trainers."
;	done
;
	text "Please use the"
	line "elevator if you"
	cont "want to visit the"
	roll "lantern room."
	done

OlivineLighthouse1FPokefanFText:
	text "In the past, #-"
	line "MON used to light"
	cont "the sea around"
	roll "OLIVINE at night."

	para "The LIGHTHOUSE was"
	line "made in honor of"
	cont "those #MON."
	done

; bg text
OlivineLighthouseElevatorSign:
	jumptext OlivineLighthouseElevatorSignText
OlivineLighthouseElevatorSignText:
	text "ELEVATOR"
	done


OlivineLighthouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, OLIVINE_CITY, 9
	warp_event  9, 17, OLIVINE_CITY, 9
	warp_event  2,  7, OLIVINE_LIGHTHOUSE_2F, 1
	warp_event 16, 13, OLIVINE_LIGHTHOUSE_2F, 3
	warp_event 17, 13, OLIVINE_LIGHTHOUSE_2F, 4
	warp_event  8,  9, OLIVINE_LIGHTHOUSE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event  9,  9, BGEVENT_READ, OlivineLighthouseElevatorSign

	def_object_events
	object_event  5,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineLighthouse1FSailorScript, -1
	object_event 12, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineLighthouse1FPokefanFScript, -1
