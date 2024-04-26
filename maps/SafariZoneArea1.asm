	object_const_def

SafariZoneArea1_MapScripts:
	def_scene_scripts

	def_callbacks

;SafariZoneArea1Nugget:
;	itemball NUGGET

SafariZoneArea1RestHouseSign:
	jumptext SafariZoneArea1RestHouseSignText

SafariZoneArea1TrainerTipsSign:
	jumptext SafariZoneArea1TrainerTipsText

SafariZoneArea1RestHouseSignText:
	line "REST HOUSE"
	done

SafariZoneArea1TrainerTipsText:
	text "TRAINER TIPS"
	
	para "Press the START"
	line "button to check"
	cont "remaining time!"
	done

SafariZoneArea1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 27, SAFARI_ZONE_ENTRANCE, 1     ; 1
	warp_event 19, 27, SAFARI_ZONE_ENTRANCE, 1     ; 2
	warp_event  4, 15, SAFARI_ZONE_AREA_4, 5       ; 3
	warp_event  4, 14, SAFARI_ZONE_AREA_4, 6       ; 4
	warp_event 18,  4, SAFARI_ZONE_AREA_3, 5       ; 5
	warp_event 19,  4, SAFARI_ZONE_AREA_3, 6       ; 6
	warp_event 33, 14, SAFARI_ZONE_AREA_2, 3       ; 7
	warp_event 33, 15, SAFARI_ZONE_AREA_2, 4       ; 8
	warp_event 21, 21, SAFARI_REST_HOUSE_AREA_1, 1 ; 9

	def_coord_events

	def_bg_events
	bg_event 18, 24, BGEVENT_READ, SafariZoneArea1TrainerTipsSign
	bg_event 22, 22, BGEVENT_READ, SafariZoneArea1RestHouseSign

	def_object_events
;	object_event 18, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea1Nugget, EVENT_SAFARI_ZONE_AREA_1_NUGGET
