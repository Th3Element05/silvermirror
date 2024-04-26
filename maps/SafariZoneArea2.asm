	object_const_def

SafariZoneArea2_MapScripts:
	def_scene_scripts

	def_callbacks

;SafariZoneArea2MaxPotion:
;	itemball MAX_POTION

;SafariZoneArea2FullRestore:
;	itemball FULL_RESTORE

;SafariZoneArea2TMEggBomb:
;	itemball TM_EGG_BOMB

;SafariZoneArea2Carbos:
;	itemball CARBOS

SafariZoneArea2TrainerTips:
	jumptext SafariZoneArea2TrainerTipsText

SafariZoneArea2RestHouseSign:
	jumptext SafariZoneArea2RestHouseSignText

SafariZoneArea2Sign:
	jumptext SafariZoneArea2SignText



SafariZoneArea2TrainerTipsText:
	text "..."
	done

SafariZoneArea2RestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneArea2SignText:
	text "EAST AREA"
	done

SafariZoneArea2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  4, SAFARI_ZONE_AREA_3, 7       ; 1
	warp_event  4,  5, SAFARI_ZONE_AREA_3, 8       ; 2
	warp_event  4, 22, SAFARI_ZONE_AREA_1, 7       ; 3
	warp_event  4, 23, SAFARI_ZONE_AREA_1, 8       ; 4
	warp_event 29,  9, SAFARI_REST_HOUSE_AREA_2, 1 ; 5

	def_coord_events

	def_bg_events
	bg_event 10,  2, BGEVENT_READ, SafariZoneArea2TrainerTips
	bg_event 30, 10, BGEVENT_READ, SafariZoneArea2RestHouseSign
	bg_event  9, 23, BGEVENT_READ, SafariZoneArea2Sign

	def_object_events
;	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2MaxPotion, EVENT_SAFARI_ZONE_AREA_2_MAX_POTION
;	object_event 25, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2FullRestore, EVENT_SAFARI_ZONE_AREA_2_FULL_RESTORE
;	object_event 19, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2TMEggBomb, EVENT_SAFARI_ZONE_AREA_2_TM_EGG_BOMB
;	object_event 24, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2Carbos, EVENT_SAFARI_ZONE_AREA_2_CARBOS
