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
	ntag "ROCKET:"
	text "The others have"
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
	text "I'll be alright."

	para "I'm just resting."
	done

FastShipB1FSleepingSailor:
	jumptext FastShipB1FSleepingSailorText
FastShipB1FSleepingSailorText:
	text "He's…!"

	para "…just sleeping."
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


TrainerSailorEnzo:
	trainer SAILOR, ENZO, EVENT_BEAT_SAILOR_ENZO, SailorEnzoSeenText, SailorEnzoBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorEnzoAfterBattleText
	waitbutton
	closetext
	end

SailorEnzoSeenText:
	text "I'm on my break,"
	line "but I'm always up"
	cont "for a battle!"
	done

SailorEnzoBeatenText:
	text "Guh!"
	done

SailorEnzoAfterBattleText:
	text "I need to get back"
	line "to work soon."
	done

TrainerSailorLouis:
	trainer SAILOR, LOUIS, EVENT_BEAT_SAILOR_LOUIS, SailorLouisSeenText, SailorLouisBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorLouisAfterBattleText
	waitbutton
	closetext
	end

SailorLouisSeenText:
	text "Hey! Only crew are"
	line "allowed down here!"
	done

SailorLouisBeatenText:
	text "So that's how it"
	line "is?"
	done

SailorLouisAfterBattleText:
	text "When you're that"
	line "strong, I guess"
	cont "you can go where-"
	roll "ever you want."
	done

TrainerTeacherIrene:
	trainer TEACHER, IRENE, EVENT_BEAT_TEACHER_IRENE, TeacherIreneSeenText, TeacherIreneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TeacherIreneAfterBattleText
	waitbutton
	closetext
	end

TeacherIreneSeenText:
	text "We're on a field"
	line "trip to learn all"
	cont "about ships!"
	done

TeacherIreneBeatenText:
	text "Your #MON are"
	line "very well behaved!"
	done

TeacherIreneAfterBattleText:
	text "Having a battle"
	line "during the field"
	cont "trip probably sets"
	roll "a bad example."
	done

TrainerSchoolboyBrad:
	trainer SCHOOLBOY, BRAD, EVENT_BEAT_SCHOOLBOY_BRAD, SchoolboyBradSeenText, SchoolboyBradBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SchoolboyBradAfterBattleText
	waitbutton
	closetext
	end

SchoolboyBradSeenText:
	text "I'm not allowed to"
	line "bring my #MON"
	cont "to school."

	para "But this is a"
	line "field trip!"
	done

SchoolboyBradBeatenText:
	text "I'm going to get"
	line "in trouble!"
	done

SchoolboyBradAfterBattleText:
	text "I should have been"
	line "paying attention"
	cont "instead of having"
	roll "a battle."

	para "Teacher said there"
	line "is going to be a"
	cont "quiz later."
	done


FastShipB1FFieldTripSailor:
	faceplayer
	opentext
	writetext FastShipB1FFieldTripSailorText1
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	opentext
	writetext FastShipB1FFieldTripSailorText2
	waitbutton
	closetext
	end

FastShipB1FFieldTripSailorText1:
	text "I can't chat right"
	line "now."

	para "I'm busy telling"
	line "these kids all"
	cont "about the ship."
	done

FastShipB1FFieldTripSailorText2:
	text "This is the mess"
	line "hall where sailors"
	cont "gather to eat!"

	para "Keeping a big ship"
	line "like this running"
	cont "smoothly is hard"
	roll "work!"

	para "Hearty meals are"
	line "important for"
	cont "staying energized!"
	done

FastShipB1FFieldTripBoy:
	jumptextfaceplayer FastShipB1FFieldTripBoyText
FastShipB1FFieldTripBoyText:
	text "Ships are so cool!"

	para "I want to be a"
	line "sailor and travel"
	cont "the world when I"
	roll "grow up!"
	done

FastShipB1FFieldTripGirl:
	jumptextfaceplayer FastShipB1FFieldTripGirlText
FastShipB1FFieldTripGirlText:
	text "These sailors are"
	line "all a little bit"
	cont "smelly…"

	para "Don't tell them I"
	line "said that!"
	done

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
	object_event 10,  3, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorEnzo, EVENT_FAST_SHIP_B1F_SAILOR_A
	object_event 15,  8, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorLouis, EVENT_FAST_SHIP_B1F_SAILOR_B
	object_event 24,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerTeacherIrene, EVENT_FAST_SHIP_B1F_FIELD_TRIP
	object_event 24,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipB1FFieldTripSailor, EVENT_FAST_SHIP_B1F_FIELD_TRIP
	object_event 26,  6, SPRITE_BOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyBrad, EVENT_FAST_SHIP_B1F_FIELD_TRIP
	object_event 26,  3, SPRITE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FastShipB1FFieldTripBoy, EVENT_FAST_SHIP_B1F_FIELD_TRIP
	object_event 26,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FastShipB1FFieldTripGirl, EVENT_FAST_SHIP_B1F_FIELD_TRIP
