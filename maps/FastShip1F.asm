	object_const_def
	const FASTSHIP1F_EXITSAILOR
	const FASTSHIP1F_ROCKETGIRL
	const FASTSHIP1F_ROCKET

FastShip1F_MapScripts:
	def_scene_scripts
	scene_script FastShip1FNoop1Scene,      SCENE_FASTSHIP1F_NOOP
	scene_script FastShip1FEnterShipScene,  SCENE_FASTSHIP1F_ENTER_SHIP
	scene_script FastShip1FSeeRocketsScene, SCENE_FASTSHIP1F_ROCKETS

	def_callbacks

FastShip1FNoop1Scene:
	end

FastShip1FEnterShipScene:
	sdefer FastShip1FEnterShipScript
	end

FastShip1FSeeRocketsScene:
	sdefer FastShip1FSeeRocketsScript
	end

FastShip1FEnterShipScript:
	applymovement FASTSHIP1F_EXITSAILOR, FastShip1F_SailorStepAsideMovement
	applymovement PLAYER, FastShip1F_PlayerEntersShipMovement
	applymovement FASTSHIP1F_EXITSAILOR, FastShip1F_SailorBlocksDoorMovement
	pause 30
	playsound SFX_BOAT
	earthquake 30
	clearevent EVENT_FAST_SHIP_HAS_ARRIVED
	checkevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	iffalse .DoRockets
	blackoutmod FAST_SHIP_CABINS_NORTH
	setscene SCENE_FASTSHIP1F_NOOP
	end

.DoRockets:
	setscene SCENE_FASTSHIP1F_ROCKETS
	blackoutmod VERMILION_CITY
	end

FastShip1FSeeRocketsScript:
	pause 30
	follow FASTSHIP1F_ROCKETGIRL, FASTSHIP1F_ROCKET
	applymovement FASTSHIP1F_ROCKETGIRL, FastShip1FRocketsMovement
	playsound SFX_ENTER_DOOR
	disappear FASTSHIP1F_ROCKETGIRL
	disappear FASTSHIP1F_ROCKET
	waitsfx
	setscene SCENE_FASTSHIP1F_NOOP
	end

FastShip1FExitSailorScript:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue .Arrived
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue .Olivine
	writetext FastShip1FSailor1Text_ToVermilion
	waitbutton
	writetext FastShip1FSailor1Text_Bed
	waitbutton
	closetext
	end

.Olivine:
	writetext FastShip1FSailor1Text_ToOlivine
	waitbutton
	checkevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	iffalse .FirstTripInProgress
	writetext FastShip1FSailor1Text_Bed
	waitbutton
.FirstTripInProgress
	closetext
	end

.Arrived:
	setflag ENGINE_RODE_SSAQUA_TODAY
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue ._Olivine
	writetext FastShip1FSailor1Text_InVermilion
	waitbutton
	closetext
	scall .LetThePlayerOut
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	clearevent EVENT_VERMILION_PORT_TICKET_SAILOR
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_SS_AQUA
	warpfacing UP, VERMILION_PORT, 5, 7
	end

._Olivine:
	writetext FastShip1FSailor1Text_InOlivine
	waitbutton
	closetext
	scall .LetThePlayerOut
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	clearevent EVENT_OLIVINE_PORT_TICKET_SAILOR
	setmapscene OLIVINE_PORT, SCENE_OLIVINEPORT_SS_AQUA
	setevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	clearevent EVENT_FAST_SHIP_SAILORS
	warpfacing UP, OLIVINE_PORT, 5, 7
	end

.LetThePlayerOut:
	readvar VAR_FACING
	ifequal RIGHT, .YouAreFacingRight
	applymovement FASTSHIP1F_EXITSAILOR, FastShip1F_SailorStepAsideMovement
	applymovement PLAYER, FastShip1F_PlayerLeavesShipMovement
	end

.YouAreFacingRight:
	applymovement FASTSHIP1F_EXITSAILOR, FastShip1F_SailorStepAsideDownMovement
	applymovement PLAYER, FastShip1F_PlayerLeavesShipRightMovement
	end

FastShip1FSailor1Text_ToVermilion:
	text "FAST SHIP S.S.AQUA"
	line "is en route to"
	cont "VERMILION CITY."

	para "We will make an"
	line "announcement when"
	cont "we arrive."
	done

FastShip1FSailor1Text_ToOlivine:
	text "FAST SHIP S.S.AQUA"
	line "is en route to"
	cont "OLIVINE CITY."

	para "We will make an"
	line "announcement when"
	cont "we arrive."
	done

FastShip1FSailor1Text_Bed:
	text "You can use the"
	line "bed in your cabin"
	cont "to pass the time"
	roll "until we arrive."
	done

FastShip1FSailor1Text_InOlivine:
	text "FAST SHIP S.S.AQUA"
	line "has arrived in"
	cont "OLIVINE CITY."
	done

FastShip1FSailor1Text_InVermilion:
	text "FAST SHIP S.S.AQUA"
	line "has arrived in"
	cont "VERMILION CITY."
	done

FastShip1FGuideSailorScript:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	iffalse .FirstTrip
	writetext FastShip1FRoomSailorText
	waitbutton
	closetext
	end

.FirstTrip
	writetext FastShip1FRoomSailorText_FirstTrip
	waitbutton
	closetext
	end

FastShip1FRoomSailorText:
	text "Here's your cabin."

	para "You can heal your"
	line "#MON by taking"
	cont "a nap in the bed."

	para "The ship will"
	line "arrive while"
	cont "you're sleeping."
	done

FastShip1FRoomSailorText_FirstTrip:
	text "Here's your cabin."

	para "If your #MON"
	line "are hurt, take a"
	cont "nap in the bed."

	para "That will heal"
	line "them."
	done

FastShip1FSailor3Script:
	jumptextfaceplayer FastShip1FSailor3Text

FastShip1FSailor3Text:
	text "Most of the other"
	line "passengers are"
	cont "trainers."
	done

;	text "The passengers are"
;	line "all trainers."
;
;	para "They're all itch-"
;	line "ing to battle in"
;	cont "their cabins."
;	done

FastShip1F_SailorStepAsideMovement:
	slow_step LEFT
	turn_head RIGHT
	step_end

FastShip1F_SailorBlocksDoorMovement:
	slow_step RIGHT
	turn_head DOWN
	step_end

FastShip1F_SailorStepAsideDownMovement:
	slow_step DOWN
	turn_head UP
	step_end

FastShip1F_PlayerEntersShipMovement:
	step DOWN
	step DOWN
	turn_head DOWN
	step_end

FastShip1FRocketsMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step UP
	step_end

FastShip1F_PlayerLeavesShipMovement:
	step UP
	step UP
	step_end

FastShip1F_PlayerLeavesShipRightMovement:
	step RIGHT
	step UP
	step_end

FastShip1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  7, FAST_SHIP_1F, -1
	warp_event  7, 12, FAST_SHIP_CABINS_NORTH, 1
	warp_event 11, 12, FAST_SHIP_CABINS_NORTH, 2
	warp_event 15, 12, FAST_SHIP_CABINS_NORTH, 3
	warp_event 19, 12, FAST_SHIP_CABINS_NORTH, 4
	warp_event  7, 17, FAST_SHIP_CABINS_SOUTH, 1
	warp_event 11, 17, FAST_SHIP_CABINS_SOUTH, 2
	warp_event 15, 17, FAST_SHIP_CABINS_SOUTH, 3
	warp_event 19, 17, FAST_SHIP_CABINS_SOUTH, 4
	warp_event 24, 14, FAST_SHIP_B1F, 1
	warp_event  2,  2, FAST_SHIP_B1F, 2
	warp_event  5,  1, FAST_SHIP_CAPTAINS_CABIN, 1

	def_coord_events
;	coord_event 24,  4, SCENE_FASTSHIP1F_ROCKETS, FastShip1FSeeRocketsSceneLeft
;	coord_event 25,  4, SCENE_FASTSHIP1F_ROCKETS, FastShip1FSeeRocketsSceneRight

	def_bg_events

	def_object_events
	object_event 17,  8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShip1FExitSailorScript, -1
	object_event 12, 11, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FAST_SHIP_1F_ROCKETS
	object_event 12, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FAST_SHIP_1F_ROCKETS
	object_event  6, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShip1FGuideSailorScript, -1
	object_event 13, 19, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShip1FSailor3Script, -1
