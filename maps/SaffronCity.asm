	object_const_def
	const SAFFRONCITY_ROCKET_GUARD
	const SAFFRONCITY_ROCKET_SLEEP
	const SAFFRONCITY_KURTS_SON

SaffronCity_MapScripts:
	def_scene_scripts
	scene_script SaffronCityNoop1Scene, SCENE_SAFFRONCITY_NOOP
	scene_script SaffronCityNoop2Scene, SCENE_SAFFRONCITY_MEET_KURTS_SON

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SaffronCityFlypointCallback
;	callback MAPCALLBACK_OBJECTS, SaffronCityMoveRocketCallback

SaffronCityNoop1Scene:
SaffronCityNoop2Scene:
	end

SaffronCityFlypointCallback:
	setflag ENGINE_FLYPOINT_SAFFRON
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	endcallback

;SaffronCityMoveRocketCallback:
;	checkevent EVENT_POKEMON_TOWER_7F_MR_FUJI
;	iftrue .SavedFuji
;	moveobject SAFFRONCITY_SILPHROCKET, 18, 22
;	turnobject SAFFRONCITY_SILPHROCKET, UP
;.SavedFuji
;	endcallback


SaffronCityMeetKurtsSonScene:
	showemote EMOTE_SHOCK, SAFFRONCITY_KURTS_SON, 20
	applymovement SAFFRONCITY_KURTS_SON, SaffronCityKurtsSon_ApproachMovement
	turnobject PLAYER, RIGHT
	setlasttalked SAFFRONCITY_KURTS_SON
	;fallthrough

SaffronCityKurtsSonTalkScript:
	faceplayer
	opentext
	writetext SaffronCityKurtsSon_IntroText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifnotequal 23, .SkipStepDown
	applymovement PLAYER, SaffronCityPlayerStepsDownMovement
.SkipStepDown
	follow SAFFRONCITY_KURTS_SON, PLAYER
	readvar VAR_XCOORD
	ifnotequal 18, .NotExitSilph
	applymovement SAFFRONCITY_KURTS_SON, SaffromCityKurtsSon_FromSilphExitMovement
.NotExitSilph
	applymovement SAFFRONCITY_KURTS_SON, SaffronCityKurtsSon_GoToHomeMovement
	turnobject PLAYER, UP
	disappear SAFFRONCITY_KURTS_SON
	playsound SFX_ENTER_DOOR ;SFX_EXIT_BUILDING
	waitsfx
	setscene SCENE_SAFFRONCITY_NOOP
	setevent EVENT_SAFFRON_CITY_KURTS_SON
	clearevent EVENT_KURTS_SONS_HOUSE_1F_KURTS_SON
	applymovement PLAYER, SaffronCityPlayerStepsUpMovement
;	warp KURTS_SONS_HOUSE_1F, 4, 7
	warpfacing UP, KURTS_SONS_HOUSE_1F, 4, 7
	end

SaffronCityKurtsSon_IntroText:
	ntag "BURT:"
	text "Those ROCKETs all"
	line "ran off all of the"
	cont "sudden."

	para "<……><……>"

	para "Wow, you took down"
	line "their boss?"

	para "That must be what"
	line "scared them off!"

	para "I have to thank"
	line "you somehow!"

	para "You're a trainer,"
	line "so you must catch"
	cont "a lot of #MON?"

	para "I think I can help"
	line "you! Come with me!"
	done

SaffronCityKurtsSon_ApproachMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end

SaffronCityPlayerStepsDownMovement:
	step DOWN
	step LEFT
	step_end

SaffromCityKurtsSon_FromSilphExitMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

SaffronCityKurtsSon_GoToHomeMovement:
	step RIGHT
	step RIGHT
	step RIGHT
SaffronCityPlayerStepsUpMovement:
	step UP
	step_end



SaffronCityRocketGuard:
;	checkevent EVENT_POKEMON_TOWER_7F_MR_FUJI
;	iftrue .RocketAsleep
	jumptextfaceplayer SaffronRocketGuardText
;.RocketAsleep
;	showemote EMOTE_SLEEP, SAFFRONCITY_ROCKET_SLEEP, 40
;	jumptext SaffronRocketGuardSnoozeText
SaffronRocketGuardText:
	text "I'm a security"
	line "guard."

	para "Suspicious kids I"
	line "don't allow in!"
	done

SaffronCityRocketSleep:
	showemote EMOTE_SLEEP, SAFFRONCITY_ROCKET_SLEEP, 40
	jumptext SaffronRocketGuardSnoozeText
SaffronRocketGuardSnoozeText:
	text "…"
	line "Snore…"

	para "Hah! He's taking"
	line "a snooze!"
	done

SaffronCityRocketScript:
	random 7
	ifequal 1, .SaffronRocket1
	ifequal 2, .SaffronRocket2
	ifequal 3, .SaffronRocket3
	ifequal 4, .SaffronRocket4
	ifequal 5, .SaffronRocket5
	ifequal 6, .SaffronRocket6
	ifequal 0, .SaffronRocket7
.SaffronRocket1
	jumptextfaceplayer SaffronRocketText1
.SaffronRocket2
	jumptextfaceplayer SaffronRocketText2
.SaffronRocket3
	jumptextfaceplayer SaffronRocketText3
.SaffronRocket4
	jumptextfaceplayer SaffronRocketText4
.SaffronRocket5
	jumptextfaceplayer SaffronRocketText5
.SaffronRocket6
	jumptextfaceplayer SaffronRocketText6
.SaffronRocket7
	jumptextfaceplayer SaffronRocketText7

SaffronRocketText1:
	text "What do you want?"
	line "Get lost!"
	done

SaffronRocketText2:
	text "BOSS said he'll"
	line "take this town!"
	done

SaffronRocketText3:
	text "Get out of the"
	line "way!"
	done

SaffronRocketText4:
	text "SAFFRON belongs"
	line "to TEAM ROCKET!"
	done

SaffronRocketText5:
	text "Being evil makes"
	line "me feel so alive!"
	done

SaffronRocketText6:
	text "Ow! Watch where"
	line "you're walking!"
	done

SaffronRocketText7:
	text "With SILPH under"
	line "control, we can"
	cont "exploit #MON"
	roll "around the world!"
	done

SaffronCityCivilianScript:
	random 4
	ifequal 1, .SaffronCivilian1
	ifequal 2, .SaffronCivilian2
	ifequal 3, .SaffronCivilian3
	ifequal 0, .SaffronCivilian4
.SaffronCivilian1
	jumptextfaceplayer SaffronCivilianText1
.SaffronCivilian2
	jumptextfaceplayer SaffronCivilianText2
.SaffronCivilian3
	jumptextfaceplayer SaffronCivilianText3
.SaffronCivilian4
	jumptextfaceplayer SaffronCivilianText4

SaffronCivilianText1:
	text "You beat TEAM"
	line "ROCKET all alone?"
	cont "That's amazing!"
	done

SaffronCivilianText2:
	text "Yeah! TEAM ROCKET"
	line "is gone!"
	cont "It's safe to go"
	roll "out again!"
	done

SaffronCivilianText3:
	text "People should be"
	line "flocking back to"
	cont "SAFFRON now."
	done

SaffronCivilianText4:
	text "I saw ROCKET's"
	line "BOSS escaping"
	cont "SILPH's building."
	done

SaffronCityGentleman:
	jumptextfaceplayer SaffronCityGentlemanText
SaffronCityGentlemanText:
;	text "I flew here on my"
;	line "PIDGEOT when I"
;	cont "read about SILPH."
;
	text "I came right away"
	line "when I read about"
	cont "ROCKETs at SILPH!"

	para "It's already over?"

	para "I missed all the"
	line "excitement!"
	done

;SaffronCityPidgeot:
;	opentext
;	writetext SaffronCityPidgeotText
;	cry PIDGEOT
;	waitbutton
;	closetext
;	end
;
;SaffronCityPidgeotText:
;	text "PIDGEOT: Bi bibii!"
;	done

; signs
SaffronCitySign:
	jumptext SaffronCitySignText
SaffronCitySignText:
	text "SAFFRON CITY"

	para "Shining, Golden"
	line "Land of Commerce"
	done

SaffronGymSign:
	jumptext SaffronGymSignText
SaffronGymSignText:
	text "SAFFRON CITY"
	line "#MON GYM"
	cont "LEADER: SABRINA"

	para "The Master of"
	line "Psychic #MON!"
	done

FightingDojoSign:
	jumptext FightingDojoSignText
FightingDojoSignText:
	text "FIGHTING DOJO"
	done

SilphCoSign:
	jumptext SilphCoSignText
SilphCoSignText:
	text "SILPH CO."
	line "OFFICE BUILDING"
	done

MrPsychicsHouseSign:
	jumptext MrPsychicsHouseSignText
MrPsychicsHouseSignText:
	text "MR.PSYCHIC's"
	line "HOUSE"
	done

SaffronCityMagnetTrainStationSign:
	jumptext SaffronCityMagnetTrainStationSignText
SaffronCityMagnetTrainStationSignText:
	text "SAFFRON CITY"
	line "MAGNET TRAIN"
	cont "STATION"
	done

SaffronCityPokecenterSign:
	jumpstd PokecenterSignScript

SaffronCityMartSign:
	jumpstd MartSignScript

; debug items
;DebugFreshWater:
;	hiddenitem FRESH_WATER, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_1

;DebugSodaPop:
;	hiddenitem SODA_POP, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_2

;DebugLemonade:
;	hiddenitem LEMONADE, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_3

SaffronCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  3, FIGHTING_DOJO, 1         ; 1
	warp_event 34,  3, SAFFRON_GYM, 1           ; 2
	warp_event 27, 13, SAFFRON_MART, 1          ; 3
	warp_event  9, 29, SAFFRON_POKECENTER_1F, 1 ; 4
	warp_event 29, 29, MR_PSYCHICS_HOUSE, 1     ; 5
	warp_event 18, 21, SILPH_CO_1F, 3           ; 6
	warp_event  7,  5, COPYCATS_HOUSE_1F, 1     ; 7
	warp_event 18,  1, ROUTE_5_SAFFRON_GATE, 3  ; 8
	warp_event  0, 22, ROUTE_7_SAFFRON_GATE, 3  ; 9
	warp_event  0, 23, ROUTE_7_SAFFRON_GATE, 4  ; 10
	warp_event 20, 33, ROUTE_6_SAFFRON_GATE, 1  ; 11
	warp_event 21, 33, ROUTE_6_SAFFRON_GATE, 2  ; 12
	warp_event 39, 22, ROUTE_8_SAFFRON_GATE, 1  ; 13
	warp_event 39, 23, ROUTE_8_SAFFRON_GATE, 2  ; 14
	warp_event  8, 11, SAFFRON_MAGNET_TRAIN_STATION, 2 ; 15
	warp_event 11,  5, SAFFRON_PIDGEY_HOUSE, 1  ; 16
	warp_event 25, 21, KURTS_SONS_HOUSE_1F, 1 ;17

	def_coord_events
	coord_event 18, 22, SCENE_SAFFRONCITY_MEET_KURTS_SON, SaffronCityMeetKurtsSonScene

	def_bg_events
	bg_event 17,  5, BGEVENT_READ, SaffronCitySign
	bg_event 33,  3, BGEVENT_READ, SaffronGymSign
	bg_event 25,  5, BGEVENT_READ, FightingDojoSign
	bg_event 15, 21, BGEVENT_READ, SilphCoSign
	bg_event 27, 29, BGEVENT_READ, MrPsychicsHouseSign
	bg_event  9, 13, BGEVENT_READ, SaffronCityMagnetTrainStationSign
	bg_event 10, 29, BGEVENT_READ, SaffronCityPokecenterSign
	bg_event 28, 13, BGEVENT_READ, SaffronCityMartSign
; debug items
;	bg_event 16, 10, BGEVENT_ITEM, DebugFreshWater
;	bg_event 17, 10, BGEVENT_ITEM, DebugSodaPop
;	bg_event 18, 10, BGEVENT_ITEM, DebugLemonade

	def_object_events
	object_event 18, 22, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketGuard, EVENT_SAFFRON_CITY_ROCKET_GUARD
	object_event 19, 22, SPRITE_VARIABLE_2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketSleep, EVENT_SAFFRON_CITY_ROCKET_SLEEP
;	object_event 19, 22, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketSleep, EVENT_SAFFRON_CITY_ROCKET_SLEEP
	object_event 22, 22, SPRITE_VARIABLE_2, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, SaffronCityKurtsSonTalkScript, EVENT_SAFFRON_CITY_KURTS_SON
	object_event  7,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketScript, EVENT_SAFFRON_CITY_ROCKETS
	object_event  8, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketScript, EVENT_SAFFRON_CITY_ROCKETS
	object_event 34,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketScript, EVENT_SAFFRON_CITY_ROCKETS
	object_event 31, 15, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketScript, EVENT_SAFFRON_CITY_ROCKETS
	object_event 11, 24, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketScript, EVENT_SAFFRON_CITY_ROCKETS
	object_event 23, 30, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketScript, EVENT_SAFFRON_CITY_ROCKETS
	object_event 19,  7, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityRocketScript, EVENT_SAFFRON_CITY_ROCKETS
	object_event 14, 30, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityCivilianScript, EVENT_SAFFRON_CITY_CIVILIANS
	object_event 13, 24, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityCivilianScript, EVENT_SAFFRON_CITY_CIVILIANS
	object_event 11, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityCivilianScript, EVENT_SAFFRON_CITY_CIVILIANS
	object_event 20,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityCivilianScript, EVENT_SAFFRON_CITY_CIVILIANS
	object_event 35, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCityGentleman, EVENT_SAFFRON_CITY_CIVILIANS
;	object_event 35, 13, SPRITE_PIDGEOT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityPidgeot, EVENT_SAFFRON_CITY_CIVILIANS
;
;	17 max map objects
