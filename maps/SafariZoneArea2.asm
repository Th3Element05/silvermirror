	object_const_def

SafariZoneArea2_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneArea2Officer:
	jumptextfaceplayer SafariZoneArea2OfficerText
SafariZoneArea2OfficerText:
	ntag "RANGER:"
	text "Here's a tip for"
	line "the SAFARI ZONE:"

	para "The remaining time"
	line "declines only"
	cont "while you walk!"
	done

SafariZoneArea2Resting:
	jumptextfaceplayer SafariZoneArea2RestingText
SafariZoneArea2RestingText:
	text "Catching #MON"
	line "is hard work!"

	para "I'm resting here"
	line "for a moment."
	done

SafariZoneArea2Fisher:
	faceplayer
	opentext
	writetext SafariZoneArea2FisherText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

SafariZoneArea2FisherText:
	text "There are even"
	line "rare #MON in"
	cont "the water at the"
	roll "SAFARI ZONE!"

	para "Try using a"
	line "fishing rod!"
	done

SafariZoneArea2Youngster:
	jumptextfaceplayer SafariZoneArea2YoungsterText
SafariZoneArea2YoungsterText:
	text "Certain BUG-type"
	line "#MON are more"
	cont "active at night!"
	done

SafariZoneArea2SuperLass:
	jumptextfaceplayer SafariZoneArea2SuperLassText
SafariZoneArea2SuperLassText:
	text "If I spend all"
	line "my time looking"
	cont "for #MON, I'll"
	roll "never find the"
	cont "SECRET HOUSE!"
	done

SafariZoneArea2Cooltrainers:
	jumptextfaceplayer SafariZoneArea2CooltrainersText
SafariZoneArea2CooltrainersText:
	text "I'm saving my"
	line "SAFARI BALLs for"
	cont "strong looking"
	roll "#MON!"
	done

SafariZoneArea2Sign:
	jumptext SafariZoneArea2SignText
SafariZoneArea2SignText:
	text "EAST AREA"
	done

SafariZoneArea2RestHouseSign:
	jumptext SafariZoneArea2RestHouseSignText
SafariZoneArea2RestHouseSignText:
	text "REST HOUSE"
	done

;SafariZoneArea2TrainerTips:
;	jumptext SafariZoneArea2TrainerTipsText
;SafariZoneArea2TrainerTipsText:
;	text "TRAINER TIPS"
;
;	para "The remaining time"
;	line "declines only"
;	cont "while you walk!"
;	done

; itemballs
SafariZoneArea2MaxPotion:
	itemball MAX_POTION

SafariZoneArea2FullRestore:
	itemball FULL_RESTORE

;SafariZoneArea2TMEggBomb:
;	itemball TM_EGG_BOMB
SafariZoneArea2TMBulletSeed:
	itemball TM_BULLET_SEED

SafariZoneArea2Carbos:
	itemball CARBOS

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
	bg_event  9, 23, BGEVENT_READ, SafariZoneArea2Sign
	bg_event 30, 10, BGEVENT_READ, SafariZoneArea2RestHouseSign
;	bg_event 10,  2, BGEVENT_READ, SafariZoneArea2TrainerTips

	def_object_events
	object_event 10,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2Officer, -1
;
	object_event 10, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2Cooltrainers, EVENT_SAFARI_ZONE_AREA_2_NPC1
	object_event  9, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2Cooltrainers, EVENT_SAFARI_ZONE_AREA_2_NPC1
	object_event  9, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2Youngster, EVENT_SAFARI_ZONE_AREA_2_NPC1
;
	object_event 14, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2Fisher, EVENT_SAFARI_ZONE_AREA_2_NPC2
	object_event 27, 23, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2SuperLass, EVENT_SAFARI_ZONE_AREA_2_NPC2
	object_event 29, 22, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2SuperLass, EVENT_SAFARI_ZONE_AREA_2_NPC2
;
	object_event 19,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2SuperLass, EVENT_SAFARI_ZONE_AREA_2_NPC3
	object_event 27,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2Resting, EVENT_SAFARI_ZONE_AREA_2_NPC3
	object_event 28,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneArea2Youngster, EVENT_SAFARI_ZONE_AREA_2_NPC3
;
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2MaxPotion, EVENT_SAFARI_ZONE_AREA_2_MAX_POTION
	object_event 25, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2FullRestore, EVENT_SAFARI_ZONE_AREA_2_FULL_RESTORE
;	object_event 19, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2TMEggBomb, EVENT_SAFARI_ZONE_AREA_2_TM_EGG_BOMB
	object_event 19, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2TMBulletSeed, EVENT_SAFARI_ZONE_AREA_2_TM_BULLET_SEED
	object_event 24, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SafariZoneArea2Carbos, EVENT_SAFARI_ZONE_AREA_2_CARBOS
