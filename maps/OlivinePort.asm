	object_const_def
	const OLIVINEPORT_SAILOR

OlivinePort_MapScripts:
	def_scene_scripts
	scene_script OlivinePortNoop1Scene, SCENE_OLIVINEPORT_NO_SHIP
	scene_script OlivinePortNoop2Scene, SCENE_OLIVINEPORT_SS_AQUA

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OlivinePortFlypointCallback
	callback MAPCALLBACK_TILES, OlivinePortTilesCallback

OlivinePortFlypointCallback:
	setflag ENGINE_FLYPOINT_OLIVINE
	endcallback

OlivinePortTilesCallback:
	checkscene
	ifequal SCENE_OLIVINEPORT_SS_AQUA, .SSAquaTiles
	endcallback

.SSAquaTiles
	changeblock 2, 8, $18
	changeblock 4, 8, $19
	changeblock 6, 8, $1a
	changeblock 8, 8, $1b
	changeblock 2, 10, $1c
	changeblock 4, 10, $1d
	changeblock 6, 10, $1e
	changeblock 8, 10, $1f
	endcallback

OlivinePortNoop1Scene:
OlivinePortNoop2Scene:
	end

OlivinePortTicketSailorScript:
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iftrue .AlreadyRodeToday
	faceplayer
	opentext
	writetext OlivinePortWelcomeToSSAquaText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext OlivinePortFlashTicketText
	yesorno
	iffalse .Declined
	writetext OlivinePortSailorGetOnBoardText
	waitbutton
	closetext
	turnobject OLIVINEPORT_SAILOR, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear OLIVINEPORT_SAILOR
	waitsfx
	applymovement PLAYER, OlivinePortEnterFastShipMovement
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	scall ResetAndRerollFastShipTrainers
	clearevent EVENT_FAST_SHIP_DESTINATION_OLIVINE   ;clear / to vermilion
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 17, 7
	end

.AlreadyRodeToday
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal WEDNESDAY, .NextShipFriday
	ifequal THURSDAY, .NextShipFriday
;	ifequal FRIDAY, .NextShipMonday
;	ifequal SATURDAY, .NextShipMonday
;	ifequal SUNDAY, .NextShipMonday
;	; else
;	end
;.NextShipMonday
	jumptextfaceplayer OlivinePortNextShipMondayText

.NextShipWednesday
	jumptextfaceplayer OlivinePortNextShipWednesdayText

.NextShipFriday
	jumptextfaceplayer OlivinePortNextShipFridayText

.Declined
	writetext OlivinePortSSAquaScheduleText
	waitbutton
	closetext
	end

.NoTicket
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	end

;OlivinePortNoTicketText:
;	text "<PLAYER> doesn't"
;	line "have a ticket."
;
;	para "SAILOR: Sorry. I"
;	line "can't let you on"
;	cont "the ship without"
;	roll "an S.S.TICKET."
;	done

OlivinePortSSAquaScheduleText:
	text "S.S.AQUA sails to"
	line "VERMILION CITY on"
	cont "MONDAY, WEDNESDAY,"
	roll "and FRIDAY."
	done

OlivinePortWelcomeToSSAquaText:
	text "SAILOR: Welcome to"
	line "S.S.AQUA! Do you"
	cont "have a ticket?"
	done

OlivinePortFlashTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "SAILOR: Would you"
	line "like to sail to"
	cont "VERMILION CITY"
	roll "with us today?"
	done

OlivinePortSailorGetOnBoardText:
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

OlivinePortNextShipMondayText:
	text "The S.S.AQUA will"
	line "sail to VERMILION"
	cont "again on MONDAY."
	done

OlivinePortNextShipWednesdayText:
	text "S.S.AQUA's next"
	line "trip to VERMILION"
	cont "is on WEDNESDAY."
	done

OlivinePortNextShipFridayText:
	text "The S.S.AQUA will"
	line "sail to VERMILION"
	cont "again on FRIDAY."
	done

OlivinePortEnterFastShipMovement:
	step DOWN
	step_end


OlivinePort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  4, OLIVINE_CITY, 4
;	warp_event  7, 23, FAST_SHIP_1F, 1

	def_coord_events
;	coord_event  7, 15, SCENE_OLIVINEPORT_ASK_ENTER_SHIP, OlivinePortWalkUpToShipScript

	def_bg_events
;	bg_event  1, 22, BGEVENT_ITEM, OlivinePortHiddenProtein

	def_object_events
	object_event  5,  8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortTicketSailorScript, EVENT_OLIVINE_PORT_TICKET_SAILOR
