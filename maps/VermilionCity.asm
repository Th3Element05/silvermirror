	object_const_def
	const VERMILIONCITY_PORT_SAILOR
	const VERMILIONCITY_SAILOR

VermilionCity_MapScripts:
	def_scene_scripts
	scene_script VermilionCityNoop1Scene, SCENE_VERMILIONCITY_ASK_ENTER_DOCK
	scene_script VermilionCityNoop2Scene, SCENE_VERMILIONCITY_CAN_ENTER_DOCK

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlypointCallback

VermilionCityNoop1Scene:
VermilionCityNoop2Scene:
	end

VermilionCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionCityAskEnterDockScript:
	turnobject VERMILIONCITY_PORT_SAILOR, LEFT
	turnobject PLAYER, RIGHT
	opentext
	checkevent EVENT_SS_ANNE_SET_SAIL
	iftrue .NotHere
	writetext VermilionPortSailorWelcomeText
	promptbutton
	writetext VermilionPortSailorAskTicketText
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortShowTicketText
	waitbutton
	closetext
;	turnobject VERMILIONCITY_PORT_SAILOR, UP
	setscene SCENE_VERMILIONCITY_CAN_ENTER_DOCK
	end

.NotHere
	writetext VermilionPortSailorSetSailText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortNoEntryMovement
	end

.NoTicket
	writetext VermilionPortSailorNoTicketText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortNoEntryMovement
	end

VermilionPortShowTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET!"

	para "Great! Welcome to"
	line "S.S.ANNE!"
	done

VermilionPortSailorNoTicketText:
	text "<PLAYER> doesn't"
	line "have the needed"
	cont "S.S.TICKET."

	para "Sorry!"		

	para "You need a ticket"
	line "to get aboard."
	done

VermilionPortSailorAskTicketText:
	text "Excuse me, do you"
	line "have a ticket?"
	prompt

VermilionCitySSAnneLeavesScript:
	checkevent EVENT_GOT_HM01_CUT
	iffalse .Skip
	turnobject PLAYER, DOWN
	pause 30
	playsound SFX_BOAT
	earthquake 30
	opentext
	writetext VermilionCitySSAnneLeavesText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortNoEntryMovement
	setscene SCENE_VERMILIONCITY_ASK_ENTER_DOCK
	setevent EVENT_SS_ANNE_SET_SAIL
;	disappear VERMILIONCITY_SAILOR
	;fallthrough
.Skip
	end

VermilionCitySSAnneLeavesText:
	text "The S.S.ANNE is"
	line "departing!"
	done

VermilionPortSailorScript:
	checkevent EVENT_SS_ANNE_SET_SAIL
	iftrue .SetSail
	jumptextfaceplayer VermilionPortSailorWelcomeText

.SetSail
	jumptextfaceplayer VermilionPortSailorSetSailText

VermilionPortSailorWelcomeText:
	text "Welcome to the"
	line "S.S.ANNE!"
	done

VermilionPortSailorSetSailText:
	text "The ship set sail."
	done

VermilionCityGamblerScript:
	checkevent EVENT_SS_ANNE_SET_SAIL
	iftrue .Departed
	jumptextfaceplayer VermilionCityGamblerHarborText

.Departed
	jumptextfaceplayer VermilionCityGamblerDepartedText
	
VermilionCityGamblerHarborText:
	text "Did you see S.S."
	line "ANNE moored in"
	cont "the harbor?"
	done

VermilionCityGamblerDepartedText:
	text "The S.S.ANNE has"
	line "departed!"

	para "She'll return here"
	line "after her voyage."
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
	text "MACHOP: Guoh!"
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
VermilionPortNoEntryMovement:
	step UP
	step_end

; signs
VermilionCitySign:
	jumptext VermilionCitySignText
VermilionCitySignText:
	text "VERMILION CITY"
	line "The Port of"
	cont "Exquisite Sunsets"
	done

VermilionGymSign:
	jumptext VermilionGymSignText
VermilionGymSignText:
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning "
	line "American!"
	done

PokemonFanClubSign:
	jumptext PokemonFanClubSignText
PokemonFanClubSignText:
	text "#MON FAN CLUB"
	line "All #MON fans"
	cont "welcome!"
	done

VermilionCityPortSign:
	jumptext VermilionCityPortSignText
VermilionCityPortSignText:
	text "VERMILION PORT"
	done

VermilionCityNoticeSign:
	jumptext VermilionCityNoticeSignText
VermilionCityNoticeSignText:
	text "NOTICE!"

	para "ROUTE 12 may be"
	line "blocked off by a"
	cont "sleeping #MON."

	para "Detour through"
	line "ROCK TUNNEL to"
	cont "LAVENDER TOWN."

	para "VERMILION POLICE"
	done

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

; hidden items
VermilionCityHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_VERMILION_CITY_HIDDEN_MAX_ETHER

;debug items
VermilionCityDebugSSTicket:
	hiddenitem S_S_TICKET, EVENT_VERMILION_CITY_HIDDEN_MAX_ETHER

VermilionCityDebugPokeFlute:
	hiddenitem POKE_FLUTE, EVENT_ROUTE_12_HIDDEN_HYPER_POTION

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
	warp_event 18, 31, VERMILION_PORT, 1 ;VERMILION_PORT_PASSAGE, 1
	warp_event 19, 31, VERMILION_PORT, 1 ;VERMILION_PORT_PASSAGE, 2

	def_coord_events
	coord_event 18, 30, SCENE_VERMILIONCITY_ASK_ENTER_DOCK, VermilionCityAskEnterDockScript
	coord_event 18, 30, SCENE_VERMILIONCITY_CAN_ENTER_DOCK, VermilionCitySSAnneLeavesScript

	def_bg_events
	bg_event 27,  3, BGEVENT_READ, VermilionCitySign
	bg_event  7, 19, BGEVENT_READ, VermilionGymSign
	bg_event  7, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 29, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 37, 13, BGEVENT_READ, VermilionCityNoticeSign
	bg_event 12,  3, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 24, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 14, 11, BGEVENT_ITEM, VermilionCityHiddenMaxEther
	bg_event 35,  2, BGEVENT_ITEM, VermilionCityDebugSSTicket
	bg_event 35,  3, BGEVENT_ITEM, VermilionCityDebugPokeFlute

	def_object_events
	object_event 19, 30, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorScript, -1
	object_event 25, 27, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionCitySailorScript, EVENT_SS_ANNE_SET_SAIL
	object_event 27,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1
	object_event 30,  7, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, VermilionMachop, -1
	object_event 14,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCityGamblerScript, -1
	object_event 19,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionCityBeautyScript, -1
	