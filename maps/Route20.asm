	object_const_def

Route20_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerfNicole:
	trainer SWIMMERF, SUSIE, EVENT_BEAT_SWIMMERF_SUSIE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNicoleAfterBattleText
	waitbutton
	closetext
	end

SwimmerfNicoleSeenText:
	done

SwimmerfNicoleBeatenText:
	done

SwimmerfNicoleAfterBattleText:
	done

SeafoamIslandsWestSign:
	jumptext SeafoamIslandsWestSignText
SeafoamIslandsWestSignText:
	done

SeafoamIslandsEastSign:
	jumptext SeafoamIslandsEastSignText
SeafoamIslandsEastSignText:
	done

;SeafoamIslandsRock:
;	jumpstd SmashRockScript

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 44,  5, SEAFOAM_ISLANDS, 1 ; 1
	warp_event 54,  9, SEAFOAM_ISLANDS, 2 ; 2

	def_coord_events

	def_bg_events
	bg_event 47,  7, BGEVENT_READ, SeafoamIslandsWestSign
	bg_event 53, 11, BGEVENT_READ, SeafoamIslandsEastSign

	def_object_events
	object_event  8,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfNicole, -1
	object_event 20,  7, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 19, 11, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 30, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerfNicole, -1
	object_event 34, 12, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 51, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 65,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 77,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 78, 12, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfNicole, -1
;
;	object_event 51,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsRock, -1
