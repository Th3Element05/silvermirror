	object_const_def

SSAnne1F_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnne1FSailor1Script:
	jumptextfaceplayer SSAnne1FSailor1Text
SSAnne1FSailor1Text:
	text "The passengers"
	line "are restless!"

	para "You might be"
	line "challenged by the"
	cont "more bored ones!"
	done

SSAnne1FWaiterScript:
	jumptextfaceplayer SSAnne1FWaiterText
SSAnne1FWaiterText:
	text "Bonjour!"
	line "I am le waiter on"
	cont "this ship!"

	para "I will be happy"
	line "to serve you any-"
	cont "thing you please!"

	para "Ah! Le strong"
	line "silent type!"
	done

SSAnne1FSailor2Script:
	jumptextfaceplayer SSAnne1FSailor2Text
SSAnne1FSailor2Text:
	text "Our CAPTAIN is a"
	line "sword master!"

	para "He even teaches"
	line "CUT to #MON!"
	done

SSAnne1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  1, VERMILION_PORT, 2    ; 1
	warp_event  2,  4, SS_ANNE_2F, 1        ; 2
	warp_event  2, 12, SS_ANNE_KITCHEN, 1   ; 3
	warp_event  9,  6, SS_ANNE_ROOMS_1F, 1  ; 4
	warp_event 13,  6, SS_ANNE_ROOMS_1F, 2  ; 5
	warp_event 17,  6, SS_ANNE_ROOMS_1F, 3  ; 6
	warp_event 21,  6, SS_ANNE_ROOMS_1F, 4  ; 7
	warp_event 25,  6, SS_ANNE_ROOMS_1F, 5  ; 8
	warp_event 29,  6, SS_ANNE_ROOMS_1F, 6  ; 9
	warp_event 11, 11, SS_ANNE_ROOMS_B1F, 1 ; 10
; skip B1F room 2
	warp_event 15, 11, SS_ANNE_ROOMS_B1F, 3 ; 11
	warp_event 19, 11, SS_ANNE_ROOMS_B1F, 5 ; 12
	warp_event 23, 11, SS_ANNE_ROOMS_B1F, 7 ; 13
	warp_event 27, 11, SS_ANNE_ROOMS_B1F, 9 ; 14

	def_coord_events

	def_bg_events

	def_object_events
	object_event 24,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FSailor1Script, -1
	object_event 14,  4, SPRITE_CHEF, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FWaiterScript, -1
	object_event 21, 13, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FSailor2Script, -1
	