	object_const_def

SilphCo1F_MapScripts:
	def_scene_scripts

	def_callbacks


SilphCoElevatorButton:
	jumpstd ElevatorButtonScript


SilphCoPCOffScript:
	jumptext SilphCoPCOffText
SilphCoPCOffText:
	text "The PC isn't on."
	done

SilphCoMatrixPCScript:
	jumptext SilphCoMatrixPCText
SilphCoMatrixPCText:
	text "The screensaver"
	line "is raining code"
	cont "like The Matrix."
	done

SilphCoGenericPCScript:
	jumptext SilphCoGenericPCText
SilphCoGenericPCText:
	text "TPS Reports."
	done

SilphCoCopierScript:
	jumptext SilphCoPCLoadLetterText
SilphCoPCLoadLetterText:
	text "PC Load Letter"
	done


SilphCo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  2, SILPH_CO_ELEVATOR, 1
	warp_event 24,  2, SILPH_CO_2F, 3
	warp_event 10, 17, SAFFRON_CITY, 6
	warp_event 11, 17, SAFFRON_CITY, 6

	def_coord_events

	def_bg_events
	bg_event 18,  2, BGEVENT_READ, SilphCoElevatorButton
;	bg_event  0,  0, BGEVENT_UP, SilphCoPCOffScript
;	bg_event  1,  0, BGEVENT_UP, SilphCoPCOffScript
;	bg_event  0,  0, BGEVENT_UP, SilphCoMatrixPCScript
;	bg_event  1,  0, BGEVENT_UP, SilphCoMatrixPCScript
;	bg_event  0,  0, BGEVENT_UP, SilphCoGenericPCScript
;	bg_event  1,  0, BGEVENT_UP, SilphCoGenericPCScript
;	bg_event  0,  0, BGEVENT_READ, SilphCoCopierScript

	def_object_events
