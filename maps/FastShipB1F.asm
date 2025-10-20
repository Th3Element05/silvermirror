	object_const_def
	const FASTSHIPB1F_ROCKETGIRL
	const FASTSHIPB1F_ROCKET
	const FASTSHIPB1F_SAILOR_BLOCK

FastShipB1F_MapScripts:
	def_scene_scripts
	scene_script FastShipB1FNoop1Scene, SCENE_FASTSHIPB1F_ROCKETS
	scene_script FastShipB1FNoop2Scene, SCENE_FASTSHIPB1F_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, FastShipB1FMoveSailorCallback

FastShipB1FNoop1Scene:
FastShipB1FNoop2Scene:
	end

FastShipB1FMoveSailorCallback:
	checkevent EVENT_BEAT_EXECUTIVEM_3
	iftrue .Skip
	moveobject FASTSHIPB1F_SAILOR_BLOCK, 6, 7
.Skip
	endcallback

FastShipB1FRocketsScript:
	opentext
	writetext FastShipB1FHuhText
	promptbutton
	turnobject PLAYER, UP
	opentext
	writetext FastShipB1FRocketsText
	promptbutton
	closetext
	follow FASTSHIPB1F_ROCKETGIRL, FASTSHIPB1F_ROCKET
	applymovement FASTSHIPB1F_ROCKETGIRL, FastShipB1FRocketsMovement1
	stopfollow
	turnobject PLAYER, LEFT
	turnobject FASTSHIPB1F_ROCKET, RIGHT
	applymovement FASTSHIPB1F_ROCKETGIRL, FastShipB1FRocketsLeaveMovement
	disappear FASTSHIPB1F_ROCKETGIRL
;	opentext
;	writetext FastShipB1FStayOutOfTheWayText
;	waitbutton
;	closetext
	applymovement FASTSHIPB1F_ROCKET, FastShipB1FRocketShovesPlayerMovement
	playsound SFX_TACKLE
	applymovement PLAYER, FastShipB1FPlayerJumpsBackMovement
	opentext
	writetext FastShipB1FStayOutOfTheWayText
	waitbutton
	closetext
	applymovement FASTSHIPB1F_ROCKET, FastShipB1FRocketsLeaveMovement
	disappear FASTSHIPB1F_ROCKET
	setscene SCENE_FASTSHIPB1F_NOOP
	end

FastShipB1FHuhText:
	text "…?"
	done

FastShipB1FRocketsText:
	text "ROCKET: They have"
	line "the engine room"
	cont "under control."

	para "You come with me."

	para "We'll take care"
	line "of the captain."
	done

FastShipB1FStayOutOfTheWayText:
	text "You better stay"
	line "out of our way!"

	para "Or else!"
	done

FastShipB1FUnconsciousSailor:
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue .JustResting
	jumptext FastShipB1FUnconsciousSailorText

.JustResting
	jumptext FastShipB1FRestingSailorText

FastShipB1FUnconsciousSailorText:
	text "He's been knocked"
	line "unconscious!"
	done

FastShipB1FRestingSailorText:
	text "SAILOR: I'll be"
	line "alright."

	para "I'm just resting."
	done

FastShipB1FSleepingSailor:
	jumptext FastShipB1FSleepingSailorText
FastShipB1FSleepingSailorText:
	text "He's…!           "
	line "…just sleeping."
	done

FastShipB1FRocketsMovement1:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step_end

FastShipB1FRocketsLeaveMovement:
	step LEFT
	step LEFT
	step_end

FastShipB1FRocketShovesPlayerMovement:
	big_step RIGHT
	step_end

FastShipB1FPlayerJumpsBackMovement:
	turn_head LEFT
	fix_facing
	jump_step RIGHT
	remove_fixed_facing
	step_end

FastShipB1FTrashcan:
	jumpstd TrashCanScript

FastShipB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31,  7, FAST_SHIP_1F, 10
	warp_event  3,  7, FAST_SHIP_1F, 11
	warp_event  7,  3, FAST_SHIP_ENGINE_ROOM, 1

	def_coord_events
	coord_event 24, 12, SCENE_FASTSHIPB1F_ROCKETS, FastShipB1FRocketsScript

	def_bg_events
	bg_event 15,  3, BGEVENT_READ, FastShipB1FTrashcan

	def_object_events
	object_event 24,  9, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FAST_SHIP_B1F_ROCKETS
	object_event 25,  9, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FAST_SHIP_B1F_ROCKETS
	object_event  6,  8, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FUnconsciousSailor, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	object_event  5,  6, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FUnconsciousSailor, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	object_event 24, 13, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FUnconsciousSailor, EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
;
	object_event 31,  3, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FSleepingSailor, EVENT_FAST_SHIP_SAILORS
	object_event 10,  3, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, FastShipB1FUnconsciousSailor, EVENT_FAST_SHIP_SAILORS
	object_event 15,  8, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, FastShipB1FUnconsciousSailor, EVENT_FAST_SHIP_SAILORS
;
;	object_event 31,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FSailorScript, EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
;	object_event  9, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorJeff, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
;	object_event  6,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerDebra, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
;	object_event 26,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerJugglerFritz, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
;	object_event 17,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSailorGarrett, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
;	object_event 25,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherJonah, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
;	object_event 15, 11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltWai, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
;	object_event 23,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSailorKenneth, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
;	object_event  9, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTeacherShirley, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
;	object_event 14,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyNate, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
;	object_event 14, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyRicky, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
