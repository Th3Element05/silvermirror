	object_const_def

SafariZoneArea3_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneArea3Officer:
	jumptextfaceplayer SafariZoneArea3OfficerText
SafariZoneArea3OfficerText:
	text "Win an HM03 for"
	line "finding the"
	cont "SECRET HOUSE!"
	done

SafariZoneArea3Resting:
	jumptextfaceplayer SafariZoneArea3RestingText
SafariZoneArea3RestingText:
	text "Catching #MON"
	line "is hard work!"

	para "I'm resting here"
	line "for a moment."
	done

SafariZoneArea3Cooltrainers:
	jumptextfaceplayer SafariZoneArea3CooltrainersText
SafariZoneArea3CooltrainersText:
	text "Shhh!"

	para "You'll scare away"
	line "all the #MON!"
	done

SafariZoneArea3Youngster:
	jumptextfaceplayer SafariZoneArea3YoungsterText
SafariZoneArea3YoungsterText:
	text "Catching #MON"
	line "is so much fun!"
	done

SafariZoneArea3Scientist:
	jumptextfaceplayer SafariZoneArea3ScientistText
SafariZoneArea3ScientistText:
	text "I come to the"
	line "SAFARI ZONE just"
	cont "to observe rare"
	cont "#MON for study!"
	done

SafariZoneArea3Sign:
	jumptext SafariZoneArea3SignText
SafariZoneArea3SignText:
	text "NORTH AREA"
	done

SafariZoneArea3RestHouseSign:
	jumptext SafariZoneArea3RestHouseSignText
SafariZoneArea3RestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneArea3TrainerTipsSign1:
	jumptext SafariZoneArea3TrainerTipsSign1Text
SafariZoneArea3TrainerTipsSign1Text:
	text "TRAINER TIPS"

	para "The SECRET HOUSE"
	line "is still ahead!"
	done

;SafariZoneArea3TrainerTipsSign2:
;	jumptext SafariZoneArea3TrainerTipsSign2Text
;SafariZoneArea3TrainerTipsSign2Text:
;	text "TRAINER TIPS"
;
;	para "#MON hide in"
;	line "tall grass!"
;	done

;SafariZoneArea3TrainerTipsSign3:
;	jumptext SafariZoneArea3TrainerTipsSign3Text
;SafariZoneArea3TrainerTipsSign3Text:
;	text "TRAINER TIPS"
;
;	para "Win an HM for"
;	line "finding the"
;	cont "SECRET HOUSE!"
;	done

SafariZoneArea3Protein:
	itemball PROTEIN

;SafariZoneArea3TMSkullBash:
;	itemball TM_SKULL_BASH

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
	bg_event 13, 29, BGEVENT_READ, SafariZoneArea3Sign
	bg_event 34,  4, BGEVENT_READ, SafariZoneArea3RestHouseSign
	bg_event  4, 23, BGEVENT_READ, SafariZoneArea3TrainerTipsSign1
;	bg_event 19, 31, BGEVENT_READ, SafariZoneArea3TrainerTipsSign2
;	bg_event 26, 26, BGEVENT_READ, SafariZoneArea3TrainerTipsSign3

	def_object_events
	object_event 30, 27, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Officer, -1
;
	object_event 35,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Resting, EVENT_SAFARI_ZONE_AREA_3_NPC1
	object_event  5,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Scientist, EVENT_SAFARI_ZONE_AREA_3_NPC1
	object_event 12, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Cooltrainers, EVENT_SAFARI_ZONE_AREA_3_NPC1
;
	object_event 22, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Youngster, EVENT_SAFARI_ZONE_AREA_3_NPC2
	object_event 31,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Resting, EVENT_SAFARI_ZONE_AREA_3_NPC2
	object_event 27, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Cooltrainers, EVENT_SAFARI_ZONE_AREA_3_NPC2
;
	object_event 28,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Cooltrainers, EVENT_SAFARI_ZONE_AREA_3_NPC3
	object_event 29,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Scientist, EVENT_SAFARI_ZONE_AREA_3_NPC3
	object_event 31,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea3Resting, EVENT_SAFARI_ZONE_AREA_3_NPC3
;
	object_event 23,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea3Protein, EVENT_SAFARI_ZONE_AREA_3_PROTEIN
;	object_event 19,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea3TMSkullBash, EVENT_SAFARI_ZONE_AREA_3_TM_SKULL_BASH

;.RockOverTreeOBPalette