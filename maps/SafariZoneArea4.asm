	object_const_def

SafariZoneArea4_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneArea4HiddenRevive:
	hiddenitem REVIVE, EVENT_SAFARI_ZONE_WEST_HIDDEN_REVIVE

;SafariZoneArea4TMDoubleTeam:
;	itemball TM_DOUBLE_TEAM

;SafariZoneArea4GoldTeeth:
;	itemball GOLD_TEETH

;SafariZoneArea4MaxRevive:
;	itemball MAX_REVIVE

;SafariZoneArea4MaxPotion:
;	itemball MAX_POTION

SafariZoneArea4WardensTeethSign:
	jumptext SafariZoneArea4WardensTeethSignText

SafariZoneArea4RestHouseSign:
	jumptext SafariZoneArea4RestHouseSignText

SafariZoneArea4Sign:
	jumptext SafariZoneArea4SignText

SafariZoneArea4TrainerTipsSign:
	jumptext SafariZoneArea4TrainerTipsText

SafariZoneArea4WardensTeethSignText:
	text "..."
	done

SafariZoneArea4RestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneArea4SignText:
	text "SAFARI ZONE"
	line "WEST AREA"
	done

SafariZoneArea4TrainerTipsText:
	text "TRAINER TIPS"
	
	para "The remaining time"
	line "declines only"
	cont "while you walk!"
	done

SafariZoneArea4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  4, SAFARI_ZONE_AREA_3, 1       ; 1
	warp_event 21,  4, SAFARI_ZONE_AREA_3, 2       ; 2
	warp_event 26,  4, SAFARI_ZONE_AREA_3, 3       ; 3
	warp_event 27,  4, SAFARI_ZONE_AREA_3, 4       ; 4
	warp_event 29, 26, SAFARI_ZONE_AREA_1, 3       ; 5
	warp_event 29, 27, SAFARI_ZONE_AREA_1, 4       ; 6
	warp_event 11, 15, SAFARI_REST_HOUSE_AREA_4, 1 ; 7
;	warp_event  3,  7, SAFARI_SECRET_HOUSE, 1      ; 8

	def_coord_events

	def_bg_events
	bg_event  6,  9, BGEVENT_ITEM, SafariZoneArea4HiddenRevive
	bg_event 17,  7, BGEVENT_READ, SafariZoneArea4WardensTeethSign
	bg_event 26,  8, BGEVENT_READ, SafariZoneArea4TrainerTipsSign
	bg_event 12, 16, BGEVENT_READ, SafariZoneArea4RestHouseSign
	bg_event 24, 26, BGEVENT_READ, SafariZoneArea4Sign

	def_object_events
;	object_event  9, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4TMDoubleTeam, EVENT_SAFARI_ZONE_AREA_4_TM_DOUBLE_TEAM
;	object_event 19, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4GoldTeeth, EVENT_SAFARI_ZONE_AREA_4_GOLD_TEETH
;	object_event 18, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4MaxRevive, EVENT_SAFARI_ZONE_AREA_4_MAX_REVIVE
;	object_event  9, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4MaxPotion, EVENT_SAFARI_ZONE_AREA_4_MAX_POTION
