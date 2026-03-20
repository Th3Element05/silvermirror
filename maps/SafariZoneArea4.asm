	object_const_def

SafariZoneArea4_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneArea4Resting:
	jumptextfaceplayer SafariZoneArea4RestingText
SafariZoneArea4RestingText:
	text "Catching #MON"
	line "is hard work!"

	para "I'm resting here"
	line "for a moment."
	done

SafariZoneArea4Lass:
	jumptextfaceplayer SafariZoneArea4LassText
SafariZoneArea4LassText:
	text "I feel like I've"
	line "looked everywhere"
	cont "for the SECRET"
	roll "HOUSE!"

	para "Do you know"
	line "where it is?"
	done

SafariZoneArea4Fisher:
	faceplayer
	opentext
	writetext SafariZoneArea4FisherText
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

SafariZoneArea4FisherText:
	text "I've heard you can"
	line "even hook DRATINI"
	cont "with a rod in the"
	roll "SAFARI ZONE!"
	done

SafariZoneArea4Cooltrainers:
	jumptextfaceplayer SafariZoneArea4CooltrainersText
SafariZoneArea4CooltrainersText:
	text "This is really"
	line "far into the"
	cont "SAFARI ZONE!"

	para "There must be"
	line "rare #MON around"
	cont "here!"
	done

SafariZoneArea4WardensTeethSign:
	jumptext SafariZoneArea4WardensTeethSignText
SafariZoneArea4WardensTeethSignText:
	text "  REQUEST NOTICE"

	para "Please find the"
	line "SAFARI WARDEN's"
	cont "lost GOLD TEETH."

	para "They're around"
	line "here somewhere."

	para "Reward offered!"
	line "Contact: WARDEN"
	done

SafariZoneArea4RestHouseSign:
	jumptext SafariZoneArea4RestHouseSignText
SafariZoneArea4RestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneArea4Sign:
	jumptext SafariZoneArea4SignText
SafariZoneArea4SignText:
	text "WEST AREA"
	done

;SafariZoneArea4TrainerTipsSign:
;	jumptext SafariZoneArea4TrainerTipsText
;SafariZoneArea4TrainerTipsText:
;	text "SAFARI ZONE"
;
;	para "Zone Exploration"
;	line "Campaign!"
;
;	para "The Search for"
;	line "the SECRET HOUSE!"
;	done

; itemballs
SafariZoneArea4TMRoost:
	itemball TM_ROOST

SafariZoneArea4GoldTeeth:
	itemball GOLD_TEETH

SafariZoneArea4MaxRevive:
	itemball MAX_REVIVE

SafariZoneArea4MaxPotion:
	itemball MAX_POTION

SafariZoneArea4HiddenRevive:
	hiddenitem REVIVE, EVENT_SAFARI_ZONE_WEST_HIDDEN_REVIVE

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
	warp_event  3,  7, SAFARI_SECRET_HOUSE, 1      ; 8

	def_coord_events

	def_bg_events
	bg_event  6,  9, BGEVENT_ITEM, SafariZoneArea4HiddenRevive
	bg_event 18,  6, BGEVENT_READ, SafariZoneArea4WardensTeethSign
;	bg_event 26,  8, BGEVENT_READ, SafariZoneArea4TrainerTipsSign
	bg_event 12, 16, BGEVENT_READ, SafariZoneArea4RestHouseSign
	bg_event 24, 26, BGEVENT_READ, SafariZoneArea4Sign

	def_object_events
	object_event 25, 24, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea4Lass, EVENT_SAFARI_ZONE_AREA_4_NPC1
	object_event  6, 18, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea4Fisher, EVENT_SAFARI_ZONE_AREA_4_NPC1
	object_event 10, 16, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea4Resting, EVENT_SAFARI_ZONE_AREA_4_NPC1
;
	object_event 20, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea4Cooltrainers, EVENT_SAFARI_ZONE_AREA_4_NPC2
	object_event 22, 25, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea4Lass, EVENT_SAFARI_ZONE_AREA_4_NPC2
	object_event 15, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea4Cooltrainers, EVENT_SAFARI_ZONE_AREA_4_NPC2
;
	object_event  9, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4TMRoost, EVENT_SAFARI_ZONE_AREA_4_TM_ROOST
	object_event 19, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4GoldTeeth, EVENT_SAFARI_ZONE_AREA_4_GOLD_TEETH
	object_event 18, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4MaxRevive, EVENT_SAFARI_ZONE_AREA_4_MAX_REVIVE
	object_event  8, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea4MaxPotion, EVENT_SAFARI_ZONE_AREA_4_MAX_POTION
