	object_const_def
	const FASTSHIPENGINEROOM_EXECUTIVE
	const FASTSHIPENGINEROOM_ROCKET

FastShipEngineRoom_MapScripts:
	def_scene_scripts
	scene_script FastShipEngineRoomNoop1Scene, SCENE_FASTSHIPENGINEROOM_ROCKETS
	scene_script FastShipEngineRoomNoop2Scene, SCENE_FASTSHIPENGINEROOM_NOOP

	def_callbacks

FastShipEngineRoomNoop1Scene:
FastShipEngineRoomNoop2Scene:
	end

FastShipRngineRoomRocketsSpeech:
	opentext
	writetext FastShipEngineRoomRocketSpeechText
	waitbutton
	closetext
	setscene SCENE_FASTSHIPENGINEROOM_NOOP
	end

FastShipEngineRoomRocketSpeechText:
	text "ROCKET: Just do"
	line "as I say, and no"
	cont "one else needs to"
	roll "get hurt!"
	done

TrainerRocketGruntM29:
	trainer GRUNTM, GRUNTM_29, EVENT_BEAT_GRUNTM_29, GruntM29SeenText, GruntM29BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM29AfterBattleText
	waitbutton
	closetext
	end

GruntM29SeenText:
	text "Its not safe for"
	line "kids down here!"
	done

GruntM29BeatenText:
	text "You're strong"
	line "for a kid!"
	done

GruntM29AfterBattleText:
	text "You won't beat"
	line "all of us!"
	done

TrainerRocketExecutiveM3:
	trainer EXECUTIVEM, EXECUTIVEM_3, EVENT_BEAT_EXECUTIVEM_3, ExecutiveM3SeenText, ExecutiveM3BeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext ExecutiveM3AfterBattleText
	waitbutton
	closetext
	disappear FASTSHIPENGINEROOM_ROCKET
	readvar VAR_FACING
	ifnotequal RIGHT, .DontGoAround
	applymovement FASTSHIPENGINEROOM_EXECUTIVE, FastShipEngineRoomRocketGoesAroundMovement
	disappear FASTSHIPENGINEROOM_EXECUTIVE
	end
.DontGoAround
	applymovement FASTSHIPENGINEROOM_EXECUTIVE, FastShipEngineRoomRocketLeavesMovement
	disappear FASTSHIPENGINEROOM_EXECUTIVE
	end

ExecutiveM3SeenText:
	text "Who are you?"

	para "I'll show you what"
	line "happens to people"
	cont "who stand up to"
	roll "TEAM ROCKET!"
	done

ExecutiveM3BeatenText:
	text "Guh!"
	done

ExecutiveM3AfterBattleText:
	text "Oh no."
	line "This isn't good!"
	done

FastShipEngineRoomRocketLeavesMovement:
	big_step LEFT
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	remove_object
	step_end

FastShipEngineRoomRocketGoesAroundMovement:
	big_step UP
	big_step LEFT
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	remove_object
	step_end

FastShipEngineRoomSailor_FirstTrip:
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue .Thanks
	jumptextfaceplayer FastShipEngineRoomHelpText
.Thanks
	jumptextfaceplayer FastShipEngineRoomThanksText

FastShipEngineRoomHelpText:
	text "TEAM ROCKET is"
	line "trying to take"
	cont "control of the"
	roll "the ship!"

	para "Please, help us!"
	done

FastShipEngineRoomThanksText:
	text "Thank you!"
	line "You saved us!"
	done

FastShipEngineRoomUnconsciousSailor:
	jumptext FastShipEngineRoomUnconsciousSailorText
FastShipEngineRoomUnconsciousSailorText:
	text "He's been knocked"
	line "unconscious!"
	done

TrainerSailorPedro:
	trainer SAILOR, PEDRO, EVENT_BEAT_SAILOR_PEDRO, SailorPedroSeenText, SailorPedroBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorPedroAfterBattleText
	waitbutton
	closetext
	end

SailorPedroSeenText:
	text "It'll be smooth"
	line "sailing until we"
	cont "get closer to our"
	roll "destination!"

	para "I've got time for"
	line "a battle!"
	done

SailorPedroBeatenText:
	text "That was rough."
	done

SailorPedroAfterBattleText:
	text "Good thing I'm"
	line "better at sailing"
	cont "than I am at #-"
	roll "MON battles!"
	done

FastShipEngineRoomSailor:
	jumptextfaceplayer FastShipEngineRoomSailorText
FastShipEngineRoomSailorText:
	text "It's important to"
	line "keep any ship's"
	cont "engine well"
	roll "maintained."

	para "But especially so"
	line "for a FAST SHIP"
	cont "like S.S.AQUA!"
	done

FastShipEngineRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, FAST_SHIP_B1F, 3

	def_coord_events
	coord_event 17,  7, SCENE_FASTSHIPENGINEROOM_ROCKETS, FastShipRngineRoomRocketsSpeech
;	coord_event 18,  9, SCENE_FASTSHIPENGINEROOM_ROCKETS, FastShipRngineRoomRocketsSpeech
;	coord_event 17,  7, SCENE_FASTSHIPENGINEROOM_ROCKETS, FastShipRngineRoomRocketsSouth

	def_bg_events

	def_object_events
	object_event 19,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketExecutiveM3, EVENT_FAST_SHIP_ENGINE_ROOM_ROCKETS
	object_event  9, 11, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM29, EVENT_FAST_SHIP_ENGINE_ROOM_ROCKETS
	object_event 16,  6, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomUnconsciousSailor, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	object_event 17,  5, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomUnconsciousSailor, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	object_event 11,  7, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor_FirstTrip, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	object_event 21,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor_FirstTrip, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	object_event 21,  7, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor_FirstTrip, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
; after first trip
	object_event  4,  5, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor, EVENT_FAST_SHIP_SAILORS
	object_event 11,  7, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor, EVENT_FAST_SHIP_SAILORS
	object_event  4,  9, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor, EVENT_FAST_SHIP_SAILORS
	object_event 16,  3, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor, EVENT_FAST_SHIP_SAILORS
	object_event 17, 10, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipEngineRoomSailor, EVENT_FAST_SHIP_SAILORS
; rematch trainers
	object_event  8, 10, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorPedro, EVENT_FAST_SHIP_SAILORS
