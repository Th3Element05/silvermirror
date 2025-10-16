	object_const_def
	const VERMILIONPORT_SAILOR

VermilionPort_MapScripts:
	def_scene_scripts
	scene_script VermilionPortNoop1Scene, SCENE_VERMILIONPORT_NO_SHIP
	scene_script VermilionPortNoop2Scene, SCENE_VERMILIONPORT_SS_AQUA
	scene_script VermilionPortNoop3Scene, SCENE_VERMILIONPORT_SS_ANNE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionPortFlypointCallback
	callback MAPCALLBACK_TILES, VermilionPortTilesCallback

VermilionPortFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionPortTilesCallback:
	checkscene
	ifequal SCENE_VERMILIONPORT_SS_AQUA, .SSAquaTiles
	ifequal SCENE_VERMILIONPORT_SS_ANNE, .SSAnneTiles
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

.SSAnneTiles
	changeblock 2, 8, $40
	changeblock 4, 8, $41
	changeblock 6, 8, $42
	changeblock 8, 8, $43
	changeblock 2, 10, $44
	changeblock 4, 10, $45
	changeblock 6, 10, $46
	changeblock 8, 10, $47
	endcallback

VermilionPortNoop1Scene:
VermilionPortNoop2Scene:
VermilionPortNoop3Scene:
	end

VermilionPortTicketSailorScript:
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iftrue .AlreadyRodeToday
	faceplayer
	opentext
	writetext VermilionPortWelcomeToSSAquaText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortFlashTicketText
	yesorno
	iffalse .Declined
	writetext VermilionPortSailorGetOnBoardText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	checkevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	iffalse .FirstTime
	setevent EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
;	clearevent EVENT_BEAT_COOLTRAINERM_SEAN
;	clearevent EVENT_BEAT_COOLTRAINERF_CAROL
;	clearevent EVENT_BEAT_GENTLEMAN_EDWARD
;	clearevent EVENT_BEAT_BEAUTY_CASSIE
;	clearevent EVENT_BEAT_PSYCHIC_RODNEY
;	clearevent EVENT_BEAT_SUPER_NERD_SHAWN
;	clearevent EVENT_BEAT_SAILOR_GARRETT
;	clearevent EVENT_BEAT_FISHER_JONAH
;	clearevent EVENT_BEAT_BLACKBELT_WAI
.FirstTime:
	clearevent EVENT_FAST_SHIP_PASSENGERS_JOHTOBOUND ;show
	setevent EVENT_FAST_SHIP_PASSENGERS_KANTOBOUND   ;hide
	setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE     ;set / to olivine
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 25, 1
	end

.AlreadyRodeToday
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .NextShipWednesday
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal WEDNESDAY, .NextShipSunday
	ifequal THURSDAY, .NextShipSunday
	ifequal FRIDAY, .NextShipSunday
	ifequal SATURDAY, .NextShipSunday
	; else
	end

.NextShipWednesday
	jumptextfaceplayer VermilionPortNextShipWednesdayText

.NextShipSunday
	jumptextfaceplayer VermilionPortNextShipSundayText

.Declined
	writetext VermilionPortSSAquaScheduleText
	waitbutton
	closetext
	end

.NoTicket
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	end

VermilionPortNoTicketText:
	text "<PLAYER> doesn't"
	line "have a ticket."

	para "SAILOR: Sorry. I"
	line "can't let you on"
	cont "the ship without"
	cont "an S.S.TICKET."
	done

VermilionPortSSAquaScheduleText:
	text "S.S.AQUA sails to"
	line "OLIVINE CITY in"
	cont "JOHTO on SUNDAY"
	cont "and WEDNESDAY."
	done

VermilionPortWelcomeToSSAquaText:
	text "SAILOR: Welcome to"
	line "S.S.AQUA! Do you"
	cont "have a ticket?"
	done

VermilionPortFlashTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "SAILOR: Would you"
	line "like to sail to"
	cont "OLIVINE CITY with"
	cont "us today?"
	done

VermilionPortSailorGetOnBoardText:
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

VermilionPortNextShipWednesdayText:
	text "S.S.AQUA's next"
	line "trip to OLIVINE"
	cont "is on WEDNESDAY."
	done

VermilionPortNextShipSundayText:
	text "S.S.AQUA's next"
	line "trip to OLIVINE"
	cont "is on SUNDAY."
	done

VermilionPortEnterFastShipMovement:
	step DOWN
	step_end

VermilionPortTruck:
	jumptext VermilionPortTruckText
VermilionPortTruckText:
	text "There's something"
	line "under this truck."

	para "Better leave it"
	line "alone."
	done

VermilionPort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  4, VERMILION_CITY, 8
	warp_event  5,  8, SS_ANNE_1F, 1

	def_coord_events

	def_bg_events
	bg_event 15,  6, BGEVENT_READ, VermilionPortTruck

	def_object_events
	object_event  5,  8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortTicketSailorScript, EVENT_VERMILION_PORT_TICKET_SAILOR
