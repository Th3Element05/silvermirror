	object_const_def
;	const OLIVINECITY_SAILOR

OlivineCity_MapScripts:
	def_scene_scripts
	scene_script OlivineCityNoop1Scene, SCENE_OLIVINECITY_CHECK_ENTER_PORT

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OlivineCityFlypointCallback

OlivineCityFlypointCallback:
	setflag ENGINE_FLYPOINT_OLIVINE
	readvar VAR_FACING
	ifnotequal UP, .NotExitingPort
	applymovement PLAYER, OlivineCityPlayerExitsPortMovement
.NotExitingPort
	endcallback

OlivineCityNoop1Scene:
	end

OlivineCityCheckEnterPortScript:
	setmapscene OLIVINE_PORT, SCENE_OLIVINEPORT_NO_SHIP
	setevent EVENT_OLIVINE_PORT_TICKET_SAILOR
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .SSAquaAtVermilion
	ifequal MONDAY, .SSAquaAtOlivine
	ifequal TUESDAY, .SSAquaAtVermilion
	ifequal WEDNESDAY, .SSAquaAtOlivine
	ifequal THURSDAY, .SSAquaAtVermilion
	ifequal FRIDAY, .SSAquaAtOlivine
	end

.SSAquaAtOlivine
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iftrue .SailedToVermilion
	setmapscene OLIVINE_PORT, SCENE_OLIVINEPORT_SS_AQUA
	clearevent EVENT_OLIVINE_PORT_TICKET_SAILOR
.SailedToVermilion
	end

.SSAquaAtVermilion
	checkflag ENGINE_RODE_SSAQUA_TODAY
	iffalse .StillAtVermilion
	setmapscene OLIVINE_PORT, SCENE_OLIVINEPORT_SS_AQUA
	clearevent EVENT_OLIVINE_PORT_TICKET_SAILOR
.StillAtVermilion
	end

OlivineCityPortSailor1Script:
	jumptextfaceplayer OlivineCityPortSailorText
OlivineCityPortSailorText:
;	text "S.S.AQUA sails to"
;	line "VERMILION CITY in"
;	cont "KANTO on MONDAY"
;	roll "and FRIDAY."
;	done
	text "The S.S.AQUA"
	line "sails to KANTO on "
	cont "MONDAY, WEDNESDAY,"
	roll "and FRIDAY."
	done

OlivineCitySailor1Script:
	jumptextfaceplayer OlivineCitySailor1Text
OlivineCitySailor1Text:
	text "Dark roads are"
	line "dangerous at"
	cont "night."

	para "But in the pitch-"
	line "black of night,"
	cont "the sea is even"
	roll "more treacherous!"

	para "Without the beacon"
	line "of the LIGHTHOUSE"
	cont "to guide it, no"
	roll "ship can sail."
	done

OlivineCitySailor2Script:
	jumptextfaceplayer OlivineCitySailor2Text
OlivineCitySailor2Text:
	text "The sea is sweet!"

	para "Sunsets on the sea"
	line "are marvelous!"

	para "Sing with me! "
	line "Yo-ho! Blow the"
	cont "man down!…"
	done

OlivineCityStandingYoungsterScript:
	faceplayer
	opentext
	random 2
	ifequal 0, .FiftyFifty
	writetext OlivineCityStandingYoungsterPokegearText
	waitbutton
	closetext
	end

.FiftyFifty:
	writetext OlivineCityStandingYoungsterPokedexText
	waitbutton
	closetext
	end

OlivineCityStandingYoungsterPokegearText:
	text "That thing you"
	line "have--it's a #-"
	cont "GEAR, right? Wow,"
	roll "that's cool."
	done

OlivineCityStandingYoungsterPokedexText:
	text "Wow, you have a"
	line "#DEX!"

	para "That is just so"
	line "awesome."
	done

; movements
OlivineCityPlayerExitsPortMovement:
	step UP
	step UP
	step_end

; signs
OlivineCitySign:
	jumptext OlivineCitySignText
OlivineCitySignText:
	text "OLIVINE CITY"

	para "The Port Closest"
	line "to Foreign Lands"
	done

OlivineCityPortSign:
	jumptext OlivineCityPortSignText
OlivineCityPortSignText:
	text "OLIVINE PORT"
	line "FAST SHIP PIER"
	done

OlivineGymSign:
	jumptext OlivineGymSignText
OlivineGymSignText:
	text "OLIVINE CITY"
	line "#MON GYM"
	cont "LEADER: JASMINE"

	para "The Steel-Clad"
	line "Defense Girl"
	done

OlivineLighthouseSign:
	jumptext OlivineLighthouseSignText
OlivineLighthouseSignText:
	text "OLIVINE LIGHTHOUSE"
	line "Also known as the"
	cont "GLITTER LIGHTHOUSE"
	done

OlivineCityBattleTowerSign:
	jumptext OlivineCityBattleTowerSignText
OlivineCityBattleTowerSignText:
	text "BATTLE TOWER AHEAD"
	line "Opening Now!"
	done

OlivineCityPokecenterSign:
	jumpstd PokecenterSignScript

OlivineCityMartSign:
	jumpstd MartSignScript

OlivineCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 21, OLIVINE_POKECENTER_1F, 1
	warp_event 10, 11, OLIVINE_GYM, 1
	warp_event 25, 11, OLIVINE_TIMS_HOUSE, 1
	warp_event 18, 33, OLIVINE_PORT, 1
	warp_event 29, 11, OLIVINE_PUNISHMENT_SPEECH_HOUSE, 1
	warp_event 13, 15, OLIVINE_GOOD_ROD_HOUSE, 1
	warp_event  7, 21, OLIVINE_CAFE, 1
	warp_event 19, 17, OLIVINE_MART, 2
	warp_event 29, 27, OLIVINE_LIGHTHOUSE_1F, 1
	warp_event 19, 33, OLIVINE_PORT, 1

	def_coord_events
	coord_event 18, 32, SCENE_OLIVINECITY_CHECK_ENTER_PORT, OlivineCityCheckEnterPortScript

	def_bg_events
	bg_event 17, 11, BGEVENT_READ, OlivineCitySign
	bg_event 20, 22, BGEVENT_READ, OlivineCityPortSign
	bg_event 11, 11, BGEVENT_READ, OlivineGymSign
	bg_event 30, 28, BGEVENT_READ, OlivineLighthouseSign
	bg_event  3, 23, BGEVENT_READ, OlivineCityBattleTowerSign
	bg_event 14, 21, BGEVENT_READ, OlivineCityPokecenterSign
	bg_event 20, 17, BGEVENT_READ, OlivineCityMartSign

	def_object_events
	object_event 19, 32, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCityPortSailor1Script, -1
	object_event 29, 28, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor1Script, -1
	object_event 20, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityStandingYoungsterScript, -1
	object_event 17, 21, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor2Script, -1
