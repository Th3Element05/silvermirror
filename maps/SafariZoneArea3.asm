	object_const_def

SafariZoneArea3_MapScripts:
	def_scene_scripts

	def_callbacks

;SafariZoneArea3Protein:
;	itemball PROTEIN

;SafariZoneArea3TMSkullBash:
;	itemball TM_SKULL_BASH

SafariZoneArea3RestHouseSign:
	jumptext SafariZoneArea3RestHouseSignText

SafariZoneArea3TrainerTipsSign1:
	jumptext SafariZoneArea3TrainerTipsSign1Text

SafariZoneArea3TrainerTipsSign2:
	jumptext SafariZoneArea3TrainerTipsSign2Text

SafariZoneArea3TrainerTipsSign3:
	jumptext SafariZoneArea3TrainerTipsSign3Text

SafariZoneArea3Sign:
	jumptext SafariZoneArea3SignText

SafariZoneArea3RestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneArea3TrainerTipsSign1Text:
	text "..."
	done

SafariZoneArea3TrainerTipsSign2Text:
	text "..."
	done

SafariZoneArea3TrainerTipsSign3Text:
	text "..."
	done

SafariZoneArea3SignText:
	text "NORTH AREA"
	done

SafariZoneArea3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 33, SAFARI_ZONE_AREA_4, 1       ; 1
	warp_event  3, 33, SAFARI_ZONE_AREA_4, 2       ; 2
	warp_event  8, 33, SAFARI_ZONE_AREA_4, 3       ; 3
	warp_event  9, 33, SAFARI_ZONE_AREA_4, 4       ; 4
	warp_event 20, 33, SAFARI_ZONE_AREA_1, 5       ; 5
	warp_event 21, 33, SAFARI_ZONE_AREA_1, 6       ; 6
	warp_event 35, 28, SAFARI_ZONE_AREA_2, 1       ; 5
	warp_event 35, 29, SAFARI_ZONE_AREA_2, 2       ; 6
	warp_event 33,  3, SAFARI_REST_HOUSE_AREA_3, 1 ; 7

	def_coord_events

	def_bg_events
	bg_event 34,  4, BGEVENT_READ, SafariZoneArea3RestHouseSign
	bg_event  4, 23, BGEVENT_READ, SafariZoneArea3TrainerTipsSign1
	bg_event 19, 31, BGEVENT_READ, SafariZoneArea3TrainerTipsSign2
	bg_event 26, 26, BGEVENT_READ, SafariZoneArea3TrainerTipsSign3
	bg_event 13, 29, BGEVENT_READ, SafariZoneArea3Sign

	def_object_events
;	object_event 24,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea3Protein, EVENT_SAFARI_ZONE_AREA_3_PROTEIN
;	object_event 19,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea3TMSkullBash, EVENT_SAFARI_ZONE_AREA_3_TM_SKULL_BASH
