	object_const_def

VermilionCity_MapScripts:
	def_scene_scripts
	scene_script VermilionCityNoop1Scene,        SCENE_VERMILIONCITY_BEFORE_HOF
	scene_script VermilionCityNoop2Scene,        SCENE_VERMILIONCITY_SSAQUA_FIRST_TIME
	scene_script VermilionCityNoop3Scene,        SCENE_VERMILIONCITY_CHECK_ENTER_PORT
	scene_script VermilionCitySSAnneLeavesScene, SCENE_VERMILIONCITY_SSANNE_LEAVES

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlypointCallback

VermilionCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	readvar VAR_FACING
	ifnotequal UP, .NotExitingVermilionPort
	applymovement PLAYER, VermilionCityPlayerExitsPortMovement
.NotExitingVermilionPort
	endcallback

VermilionCityNoop1Scene:
VermilionCityNoop2Scene:
VermilionCityNoop3Scene:
	end

VermilionCitySSAnneLeavesScene:
	applymovement PLAYER, VermilionPortSSAnneLeavesMovement
	pause 30
	playsound SFX_BOAT
	earthquake 30
	opentext
	writetext VermilionCitySSAnneLeavesText
	waitbutton
	closetext
	setscene SCENE_VERMILIONCITY_BEFORE_HOF
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_NO_SHIP
	setevent EVENT_SS_ANNE_SET_SAIL
.Skip
	end

VermilionCitySSAnneLeavesText:
	text "The S.S.ANNE is"
	line "departing!"
	done

VermilionCitySSAnneStoryBeatScript:
	checkevent EVENT_SS_ANNE_SET_SAIL
	iftrue .NoSSAnne
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_SS_ANNE
.NoSSAnne
	setevent EVENT_VERMILION_PORT_TICKET_SAILOR
	end

VermilionCitySSAquaStoryBeatScript:
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_SS_AQUA
	clearevent EVENT_VERMILION_PORT_TICKET_SAILOR
	end

VermilionCityCheckEnterPortScript:
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_NO_SHIP
	setevent EVENT_VERMILION_PORT_TICKET_SAILOR ;disappear
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .SSAquaAtVermilion
	ifequal MONDAY, .SSAquaAtOlivine
	ifequal TUESDAY, .SSAquaAtVermilion
	ifequal WEDNESDAY, .SSAquaAtOlivine
	ifequal THURSDAY, .SSAquaAtVermilion
	ifequal FRIDAY, .SSAquaAtOlivine
	ifequal SATURDAY, .SSAnneAtVermilion
	end

.SSAquaAtVermilion
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iftrue .SailedToOlivine
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_SS_AQUA
	clearevent EVENT_VERMILION_PORT_TICKET_SAILOR ;appear
.SailedToOlivine
	end

.SSAquaAtOlivine
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iffalse .StillAtOlivine
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_SS_AQUA
	clearevent EVENT_VERMILION_PORT_TICKET_SAILOR ;appear
.StillAtOlivine
	end

.SSAnneAtVermilion
	setmapscene VERMILION_PORT, SCENE_VERMILIONPORT_SS_ANNE
	setevent EVENT_VERMILION_PORT_TICKET_SAILOR
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iftrue .DontResetSSAnneTrainers
; hide all variable trainers
	setevent EVENT_SSANNE_FIRST_VISIT_NPCS ;disappear
	setevent EVENT_SSANNE_TRAINERS_1A
	setevent EVENT_SSANNE_TRAINERS_2A
	setevent EVENT_SSANNE_TRAINERS_3A
	setevent EVENT_SSANNE_TRAINERS_4A
	setevent EVENT_SSANNE_TRAINERS_5A
	setevent EVENT_SSANNE_TRAINERS_1B
	setevent EVENT_SSANNE_TRAINERS_2B
	setevent EVENT_SSANNE_TRAINERS_3B
	setevent EVENT_SSANNE_TRAINERS_4B
	setevent EVENT_SSANNE_TRAINERS_5B
	setevent EVENT_SSANNE_TRAINERS_1C
	setevent EVENT_SSANNE_TRAINERS_2C
	setevent EVENT_SSANNE_TRAINERS_3C
	setevent EVENT_SSANNE_TRAINERS_4C
	setevent EVENT_SSANNE_TRAINERS_5C
; reset all battles
	clearevent EVENT_BEAT_COOLTRAINERM_ANDRE
	clearevent EVENT_BEAT_GENTLEMAN_BLAKE
	clearevent EVENT_BEAT_BURGLAR_BARRY
	clearevent EVENT_BEAT_LASS_ELENA
	clearevent EVENT_BEAT_POKEFANF_AUDREY
	clearevent EVENT_BEAT_MEDIUM_CHEL
	clearevent EVENT_BEAT_COOLTRAINERF_MIA
	clearevent EVENT_BEAT_POKEMANIAC_HORTON
	clearevent EVENT_BEAT_TEACHER_KATE
	clearevent EVENT_BEAT_POKEFANM_AUSTIN
	clearevent EVENT_BEAT_COUPLE_VICANDTARA
	clearevent EVENT_BEAT_COOLTRAINERF_ELLA
	clearevent EVENT_BEAT_GENTLEMAN_ALFRED
	clearevent EVENT_BEAT_BEAUTY_ADELINE
	clearevent EVENT_BEAT_SUPER_NERD_EMMETT
	clearevent EVENT_BEAT_COOL_DUO_ZACANDJEN
	clearevent EVENT_BEAT_FISHER_NELSON
	clearevent EVENT_BEAT_SAILOR_JARED

; reroll variable trainers
	random 3
	ifequal 1, .Trainers1AB
	ifequal 2, .Trainers1BC
;.Trainers1CA
	clearevent EVENT_SSANNE_TRAINERS_1C
	clearevent EVENT_SSANNE_TRAINERS_1A
	sjump .Roll2
.Trainers1AB
	clearevent EVENT_SSANNE_TRAINERS_1A
	clearevent EVENT_SSANNE_TRAINERS_1B
	sjump .Roll2
.Trainers1BC
	clearevent EVENT_SSANNE_TRAINERS_1B
	clearevent EVENT_SSANNE_TRAINERS_1C
	; fallthrough

.Roll2
	random 3
	ifequal 1, .Trainers2AB
	ifequal 2, .Trainers2BC
;.Trainers2CA
	clearevent EVENT_SSANNE_TRAINERS_2C
	clearevent EVENT_SSANNE_TRAINERS_2A
	sjump .Roll3
.Trainers2AB
	clearevent EVENT_SSANNE_TRAINERS_2A
	clearevent EVENT_SSANNE_TRAINERS_2B
	sjump .Roll3
.Trainers2BC
	clearevent EVENT_SSANNE_TRAINERS_2B
	clearevent EVENT_SSANNE_TRAINERS_2C
	; fallthrough

.Roll3
	random 3
	ifequal 1, .Trainers3AB
	ifequal 2, .Trainers3BC
;.Trainers3CA
	clearevent EVENT_SSANNE_TRAINERS_3C
	clearevent EVENT_SSANNE_TRAINERS_3A
	sjump .Roll4
.Trainers3AB
	clearevent EVENT_SSANNE_TRAINERS_3A
	clearevent EVENT_SSANNE_TRAINERS_3B
	sjump .Roll4
.Trainers3BC
	clearevent EVENT_SSANNE_TRAINERS_3B
	clearevent EVENT_SSANNE_TRAINERS_3C
	; fallthrough

.Roll4
	random 3
	ifequal 1, .Trainers4AB
	ifequal 2, .Trainers4BC
;.Trainers4CA
	clearevent EVENT_SSANNE_TRAINERS_4C
	clearevent EVENT_SSANNE_TRAINERS_4A
	sjump .Roll5
.Trainers4AB
	clearevent EVENT_SSANNE_TRAINERS_4A
	clearevent EVENT_SSANNE_TRAINERS_4B
	sjump .Roll5
.Trainers4BC
	clearevent EVENT_SSANNE_TRAINERS_4B
	clearevent EVENT_SSANNE_TRAINERS_4C
	; fallthrough

.Roll5
	random 3
	ifequal 1, .Trainers5AB
	ifequal 2, .Trainers5BC
;.Trainers5CA
	clearevent EVENT_SSANNE_TRAINERS_5C
	clearevent EVENT_SSANNE_TRAINERS_5A
	sjump .Finished
.Trainers5AB
	clearevent EVENT_SSANNE_TRAINERS_5A
	clearevent EVENT_SSANNE_TRAINERS_5B
	sjump .Finished
.Trainers5BC
	clearevent EVENT_SSANNE_TRAINERS_5B
	clearevent EVENT_SSANNE_TRAINERS_5C
	; fallthrough

.Finished
	setflag ENGINE_RODE_SSAQUA_TODAY
.DontResetSSAnneTrainers
	end


VermilionCityPortSailorScript:
;	checkevent EVENT_GOT_HM01_CUT
;	iffalse .SSAnneWelcomeText
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .AfterHOF
	checkevent EVENT_SS_ANNE_SET_SAIL
	iftrue .SSAnneSetSail
	; else
	jumptextfaceplayer VermilionCityPortSailorWelcomeText

.SSAnneSetSail
	jumptextfaceplayer VermilionCityPortSailorSetSailText

.AfterHOF
	checkevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	iffalse .SSAquaFirstTrip
	jumptextfaceplayer VermilionCityPortSailorScheduleText

.SSAquaFirstTrip
	jumptextfaceplayer VermilionCityPortSailorSSAquaText

VermilionCityPortSailorWelcomeText:
	text "Welcome to the"
	line "S.S.ANNE!"

	para "All trainers are"
	line "welcome on board"
	cont "until its time to"
	roll "set sail again!"
	done

VermilionCityPortSailorSetSailText:
	text "The S.S.ANNE has"
	line "set sail!"
	done

VermilionCityPortSailorSSAquaText:
	text "Welcome! S.S.AQUA"
	line "is docked, but you"
	cont "will need a ticket"
	roll "to go aboard."
	done

VermilionCityPortSailorScheduleText:
	text "S.S.AQUA sails to"
	line "OLIVINE CITY on"
	cont "SUNDAY, TUESDAY,"
	roll "and WEDNESDAY."

	para "S.S.ANNE docks"
	line "here on SATURDAY."
	done

VermilionCityGamblerScript:
	checkscene
	ifequal SCENE_VERMILIONCITY_CHECK_ENTER_PORT, .CheckDay
	checkevent EVENT_SS_ANNE_SET_SAIL
	iffalse .SSAnneDocked
	jumptextfaceplayer VermilionCityGamblerSSAnneDepartedText

.CheckDay
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .SSAquaDocked
	ifequal TUESDAY, .SSAquaDocked
	ifequal THURSDAY, .SSAquaDocked
	ifequal SATURDAY, .SSAnneDocked
	; else
	jumptextfaceplayer VermilionCityGamblerRelaxingText
	end

.SSAquaDocked
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iftrue .SSAquaLeft
	jumptextfaceplayer VermilionCityGamblerSSAquaText

.SSAquaLeft
	jumptextfaceplayer VermilionCityGamblerSSAquaDepartedText

.SSAnneDocked
	jumptextfaceplayer VermilionCityGamblerSSAnneText

VermilionCityGamblerSSAquaText:
	text "Did you see the"
	line "S.S.AQUA moored"
	cont "in the harbor?"
	done

VermilionCityGamblerSSAquaDepartedText:
	text "The S.S.AQUA has"
	line "already sailed to"
	cont "OLIVINE today."
	done

VermilionCityGamblerSSAnneText:
	text "Did you see the"
	line "S.S.ANNE moored"
	cont "in the harbor?"
	done

VermilionCityGamblerSSAnneDepartedText:
	text "The S.S.ANNE has"
	line "departed!"

	para "She'll return here"
	line "after her voyage."
	done

VermilionCityGamblerRelaxingText:
	text "Watching ships"
	line "coming and going"
	cont "is very relaxing!"
	done

VermilionCityBeautyScript:
	jumptextfaceplayer VermilionCityBeautyText
VermilionCityBeautyText:
	text "We're careful"
	line "about pollution!"

	para "We've heard GRIMER"
	line "multiplies in"
	cont "toxic sludge!"
	done

VermilionMachopOwner:
	jumptextfaceplayer VermilionMachopOwnerText
VermilionMachopOwnerText:
	text "I'm putting up a"
	line "building on this"
	cont "plot of land."

	para "My #MON is"
	line "tamping the land."
	done

VermilionMachop:
	opentext
	writetext VermilionMachopText1
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionMachopText2
	waitbutton
	closetext
	end

VermilionMachopText1:
	ntag "MACHOP:"
	text "Guoh!"
	line "Gogogoh!"
	done

VermilionMachopText2:
	text "A MACHOP is"
	line "stomping the land"
	cont "flat."
	done

VermilionCitySailorScript:
	jumptextfaceplayer VermilionCitySailorText
VermilionCitySailorText:
	text "S.S.ANNE is a"
	line "famous luxury"
	cont "cruise ship."
	done

; movement
VermilionPortSSAnneLeavesMovement:
	step UP
	step UP
	turn_head DOWN
	step_end

VermilionCityPlayerExitsPortMovement:
	step UP
	step UP
	step_end

; signs
VermilionCitySign:
	jumptext VermilionCitySignText
VermilionCitySignText:
	text "VERMILION CITY"

	para "The Port of"
	line "Exquisite Sunsets"
	done

VermilionGymSign:
	jumptext VermilionGymSignText
VermilionGymSignText:
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning"
	line "Warrior!"
	done

PokemonFanClubSign:
	jumptext PokemonFanClubSignText
PokemonFanClubSignText:
	text "#MON FAN CLUB"

	para "All #MON fans"
	line "welcome!"
	done

VermilionCityPortSign:
	jumptext VermilionCityPortSignText
VermilionCityPortSignText:
	text "VERMILION PORT"
	done

VermilionCityNoticeSign:
	jumptext VermilionCityNoticeSignText
VermilionCityNoticeSignText:
	text "     NOTICE!"

	para "ROUTE 12 may be"
	line "blocked off by a"
	cont "sleeping #MON."

	para "Detour through"
	line "ROCK TUNNEL to"
	cont "LAVENDER TOWN."

	para "-VERMILION POLICE"
	done

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

; hidden items
VermilionCityHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_VERMILION_CITY_HIDDEN_MAX_ETHER

;;debug items
;VermilionCityDebugSSTicket:
;	hiddenitem S_S_TICKET, EVENT_VERMILION_CITY_HIDDEN_MAX_ETHER
;
;VermilionCityDebugPokeFlute:
;	hiddenitem POKE_FLUTE, EVENT_ROUTE_12_HIDDEN_HYPER_POTION
;
;VermilionCityDebugSetScene:
;	opentext
;	writetext DebugSetSceneText
;	waitbutton
;	setscene SCENE_VERMILIONCITY_CHECK_ENTER_PORT
;	closetext
;	end
;
;DebugSetSceneText:
;	text "check enter port"
;	done

;VermilionCitySetTwoDayTimer:
;	ld a, 2
;	ld hl, wUnusedTwoDayTimer
;	ld [hl], a
;	call UpdateTime
;	ld hl, wUnusedTwoDayTimerStartDate
;	call CopyDayToHL
;	ret

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, VERMILION_FISHING_SPEECH_HOUSE, 1
	warp_event 11,  3, VERMILION_POKECENTER_1F, 1
	warp_event  9, 13, POKEMON_FAN_CLUB, 1
	warp_event 15, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 23, 13, VERMILION_MART, 1
	warp_event 23, 19, VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 12, 19, VERMILION_GYM, 1
	warp_event 18, 31, VERMILION_PORT, 1
	warp_event 19, 31, VERMILION_PORT, 1

	def_coord_events
	coord_event 18, 30, SCENE_VERMILIONCITY_BEFORE_HOF, VermilionCitySSAnneStoryBeatScript
	coord_event 18, 30, SCENE_VERMILIONCITY_SSAQUA_FIRST_TIME, VermilionCitySSAquaStoryBeatScript
	coord_event 18, 30, SCENE_VERMILIONCITY_CHECK_ENTER_PORT, VermilionCityCheckEnterPortScript

	def_bg_events
	bg_event 27,  3, BGEVENT_READ, VermilionCitySign
	bg_event 11, 19, BGEVENT_READ, VermilionGymSign
	bg_event  7, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 29, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 37, 13, BGEVENT_READ, VermilionCityNoticeSign
	bg_event 12,  3, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 24, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 14, 11, BGEVENT_ITEM, VermilionCityHiddenMaxEther
;	bg_event 35,  2, BGEVENT_ITEM, VermilionCityDebugSSTicket
;	bg_event 35,  3, BGEVENT_ITEM, VermilionCityDebugPokeFlute
;	bg_event 35,  4, BGEVENT_READ, VermilionCityDebugSetScene

	def_object_events
	object_event 19, 30, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityPortSailorScript, -1
	object_event 25, 27, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCitySailorScript, -1
	object_event 27,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1
	object_event 29,  8, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, VermilionMachop, -1
	object_event 14,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionCityGamblerScript, -1
	object_event 19,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionCityBeautyScript, -1

;.GrayOverYellowOBPalette