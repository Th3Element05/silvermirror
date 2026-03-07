	object_const_def

SafariZoneArea1_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneArea1Resting:
	jumptextfaceplayer SafariZoneArea1RestingText
SafariZoneArea1RestingText:
	text "Catching #MON"
	line "is hard work!"

	para "I'm resting here"
	line "for a moment."
	done

SafariZoneArea1Youngster:
	jumptextfaceplayer SafariZoneArea1YoungsterText
SafariZoneArea1YoungsterText:
	text "Even in the"
	line "SAFARI ZONE,"
	cont "certain #MON"
	roll "are still rare!"
	done

SafariZoneArea1Lass:
	jumptextfaceplayer SafariZoneArea1LassText
SafariZoneArea1LassText:
	text "Many kinds of"
	line "#MON are found"
	cont "in SAFARI ZONE!"

	para "I'm trying to"
	line "catch cute ones!"
	done

SafariZoneArea1Cooltrainers:
	jumptextfaceplayer SafariZoneArea1CooltrainersText
SafariZoneArea1CooltrainersText:
	text "SAFARI ZONE has"
	line "rare #MON that"
	cont "can't normally be"
	roll "found in KANTO!"
	done

SafariZoneArea1Officer:
	jumptextfaceplayer SafariZoneArea1OfficerText
SafariZoneArea1OfficerText:
	text "Welcome to the"
	line "SAFARI ZONE!"

	para "Press the START"
	line "button to check"
	cont "remaining time!"
	done

SafariZoneArea1RestHouseSign:
	jumptext SafariZoneArea1RestHouseSignText
SafariZoneArea1RestHouseSignText:
	text "REST HOUSE"
	done

;SafariZoneArea1TrainerTipsSign:
;	jumptext SafariZoneArea1TrainerTipsText
;SafariZoneArea1TrainerTipsText:
;	text "TRAINER TIPS"
;	
;	para "Press the START"
;	line "button to check"
;	cont "remaining time!"
;	done

SafariZoneArea1Nugget:
	itemball NUGGET

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
;	bg_event 18, 24, BGEVENT_READ, SafariZoneArea1TrainerTipsSign
	bg_event 22, 22, BGEVENT_READ, SafariZoneArea1RestHouseSign

	def_object_events
	object_event 19, 24, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Officer, -1
;
	object_event 19, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Resting, EVENT_SAFARI_ZONE_AREA_1_NPC1
	object_event 11, 22, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Cooltrainers, EVENT_SAFARI_ZONE_AREA_1_NPC1
	object_event 13, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Youngster, EVENT_SAFARI_ZONE_AREA_1_NPC1
;
	object_event 29, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Cooltrainers, EVENT_SAFARI_ZONE_AREA_1_NPC2
	object_event 19, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Resting, EVENT_SAFARI_ZONE_AREA_1_NPC2
	object_event 28, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Cooltrainers, EVENT_SAFARI_ZONE_AREA_1_NPC2
;
	object_event 10,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Youngster, EVENT_SAFARI_ZONE_AREA_1_NPC3
	object_event 24,  9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Lass, EVENT_SAFARI_ZONE_AREA_1_NPC3
	object_event 23, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea1Resting, EVENT_SAFARI_ZONE_AREA_1_NPC3
;
	object_event 18, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneArea1Nugget, EVENT_SAFARI_ZONE_AREA_1_NUGGET
