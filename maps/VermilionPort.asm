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
	scall ResetAndRerollFastShipTrainers
.FirstTime:
	; first trip trainer config are hidden by initevents
	setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE     ;set / to olivine
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 17, 7
	end

.AlreadyRodeToday
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .NextShipTuesday
	ifequal MONDAY, .NextShipTuesday
	ifequal TUESDAY, .NextShipThursday
	ifequal WEDNESDAY, .NextShipThursday
;	ifequal THURSDAY, .NextShipSunday
;	ifequal FRIDAY, .NextShipSunday
;	ifequal SATURDAY, .NextShipSunday
;	; else
;	end
;.NextShipSunday
	jumptextfaceplayer VermilionPortNextShipSundayText

.NextShipTuesday
	jumptextfaceplayer VermilionPortNextShipTuesdayText

.NextShipThursday
	jumptextfaceplayer VermilionPortNextShipThursdayText

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
	line "have a ticket.@"

	text_promptbutton
	ntag "SAILOR:"
	text "I'm sorry. I can't"
	line "let you board the"
	cont "ship without an"
	roll "S.S.TICKET."
	done

VermilionPortSSAquaScheduleText:
	ntag "SAILOR:"
	text "S.S.AQUA sails to"
	line "OLIVINE CITY on"
	cont "SUNDAY, TUESDAY,"
	roll "and THURSDAY."
	done

VermilionPortWelcomeToSSAquaText:
	ntag "SAILOR:"
	text "Welcome to the"
	line "S.S.AQUA! Do you"
	cont "have a ticket?"
	done

VermilionPortFlashTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET.@"

	text_promptbutton
	ntag "SAILOR:"
	text "Our destination is"
	line "OLIVINE CITY."

	para "Would you like to"
	line "come aboard?"
	done

VermilionPortSailorGetOnBoardText:
	ntag "SAILOR:"
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

VermilionPortNextShipTuesdayText:
	ntag "SAILOR:"
	text "The S.S.AQUA will"
	line "sail to OLIVINE"
	cont "again on TUESDAY."
	done

VermilionPortNextShipThursdayText:
	ntag "SAILOR:"
	text "The S.S.AQUA will"
	line "sail to OLIVINE"
	cont "again on THURSDAY."
	done

VermilionPortNextShipSundayText:
	ntag "SAILOR:"
	text "The S.S.AQUA will"
	line "sail to OLIVINE"
	cont "again on SUNDAY."
	done

VermilionPortEnterFastShipMovement:
	step DOWN
	step_end

VermilionPortTruck:
	checkevent EVENT_FOUGHT_MEW
	iftrue .NoCry
	cry MEW
	waitsfx
	jumptext VermilionPortTruckText

.NoCry
	jumptext VermilionPortTruckNothingText

VermilionPortTruckText:
	text "There's something"
	line "under this truck…"

	para "Better leave it"
	line "alone."
	done

VermilionPortTruckNothingText:
	text "<PLAYER> looked"
	line "under the truck."

	para "…"

	para "There's nothing"
	line "here."
	done

ResetAndRerollFastShipTrainers:
;Hide Trainers
	setevent EVENT_FAST_SHIP_TRAINERS_1A
	setevent EVENT_FAST_SHIP_TRAINERS_2A
	setevent EVENT_FAST_SHIP_TRAINERS_3A
	setevent EVENT_FAST_SHIP_TRAINERS_1B
	setevent EVENT_FAST_SHIP_TRAINERS_2B
	setevent EVENT_FAST_SHIP_TRAINERS_3B
	setevent EVENT_FAST_SHIP_TRAINERS_4B
	setevent EVENT_FAST_SHIP_B1F_FIELD_TRIP
	setevent EVENT_FAST_SHIP_B1F_SAILOR_A
	setevent EVENT_FAST_SHIP_B1F_SAILOR_B
;Reset Battles
	clearevent EVENT_BEAT_GENTLEMAN_RICHARD
	clearevent EVENT_BEAT_TWINS_JOANDZOE
	clearevent EVENT_BEAT_PICNICKER_ROBIN
	clearevent EVENT_BEAT_COOL_DUO_ELANANDIDA
	clearevent EVENT_BEAT_COOLTRAINERM_ADAM
	clearevent EVENT_BEAT_GUITARIST_EDGAR
	clearevent EVENT_BEAT_JUGGLER_RODNEY
	clearevent EVENT_BEAT_GENTLEMAN_VICTOR
	clearevent EVENT_BEAT_BURGLAR_JERRY
	clearevent EVENT_BEAT_TEACHER_IRENE
	clearevent EVENT_BEAT_SCHOOLBOY_BRAD
	clearevent EVENT_BEAT_SAILOR_ENZO
	clearevent EVENT_BEAT_SAILOR_LOUIS
	clearevent EVENT_BEAT_SAILOR_PEDRO
;Reroll Trainers
	random 3
	ifequal 1, .Next0
	clearevent EVENT_FAST_SHIP_TRAINERS_1A
.Next0
	random 3
	ifequal 1, .Next1
	clearevent EVENT_FAST_SHIP_TRAINERS_2A
.Next1
	random 3
	ifequal 1, .Next2
	clearevent EVENT_FAST_SHIP_TRAINERS_3A
.Next2
	random 3
	ifequal 1, .Next3
	clearevent EVENT_FAST_SHIP_TRAINERS_1B
.Next3
	random 3
	ifequal 1, .Next4
	clearevent EVENT_FAST_SHIP_TRAINERS_2B
.Next4
	random 3
	ifequal 1, .Next5
	clearevent EVENT_FAST_SHIP_TRAINERS_3B
.Next5
	random 3
	ifequal 1, .Next6
	clearevent EVENT_FAST_SHIP_TRAINERS_4B
.Next6
	random 3
	ifequal 1, .Next7
	clearevent EVENT_FAST_SHIP_B1F_FIELD_TRIP
.Next7
	random 3
	ifequal 1, .Next8
	clearevent EVENT_FAST_SHIP_B1F_SAILOR_A
.Next8
	random 3
	ifequal 1, .End
	clearevent EVENT_FAST_SHIP_B1F_SAILOR_B
.End
	end


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
