	object_const_def

VictoryRoadGate_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadGateNoop1Scene, SCENE_VICTORYROADGATE_BADGE_CHECK
	scene_script VictoryRoadGateNoop2Scene, SCENE_VICTORYROADGATE_NOOP

	def_callbacks

VictoryRoadGateNoop1Scene:
VictoryRoadGateNoop2Scene:
	end

VictoryRoadGateBadgeCheckScript:
	turnobject PLAYER, LEFT
	opentext
	writetext VictoryRoadGateOfficerText
	promptbutton
	readvar VAR_BADGES
	ifgreater NUM_KANTO_BADGES - 1, .AllEightBadges
	writetext VictoryRoadGateNotEnoughBadgesText
	waitbutton
	closetext
	applymovement PLAYER, VictoryRoadGateStepDownMovement
	end

.AllEightBadges:
	writetext VictoryRoadGateEightBadgesText
	waitbutton
	closetext
	setscene SCENE_VICTORYROADGATE_NOOP
	end

VictoryRoadGateBadgeCheckText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves may pass."
	done

VictoryRoadGateNotEnoughBadgesText:
	text "You don't have"
	line "enough GYM BADGEs."

	para "I'm sorry, but I"
	line "can't let you pass"
	cont "without at least"
	cont "eight GYM BADGEs."
	done

VictoryRoadGateEightBadgesText:
	text "Oh! The eight"
	line "BADGEs of KANTO!"

	para "Please, go right"
	line "on through!"
	done

VictoryRoadGateStepDownMovement:
	step DOWN
	step_end

VictoryRoadGateBadgeOfficerScript:
	jumptextfaceplayer VictoryRoadGateOfficerText
VictoryRoadGateOfficerText:
	text "VICTORY ROAD is"
	line "full of tough"
	cont "trainers."

	para "They're all eager"
	line "to battle as a"
	cont "warm-up for the"
	cont "ELITE FOUR."
	done

VictoryRoadGateRightOfficerScript:
	jumptextfaceplayer VictoryRoadGateRightOfficerText
VictoryRoadGateRightOfficerText:
	text "Off to the #MON"
	line "LEAGUE, are you?"

	para "The ELITE FOUR are"
	line "so strong it's"
	cont "scary, and they're"
	cont "ready for you!"
	done

VictoryRoadGateBlackBeltScript1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Champion
	jumptext VictoryRoadGateLeftBlackBeltFirstText
.Champion
	jumptext VictoryRoadGateLeftBlackBeltChampionText

VictoryRoadGateLeftBlackBeltFirstText:
	text "This way leads to"
	line "MT.SILVER."

	para "You'll see scary-"
	line "strong #MON out"
	cont "there."
	done

VictoryRoadGateLeftBlackBeltChampionText:
	text "This way leads to"
	line "MT.SILVER."

	para "Only trainers who"
	line "are permitted by"
	cont "#MON LEAGUE are"
	cont "allowed through."
	done

VictoryRoadGateBlackBeltScript2:
	jumptextfaceplayer VictoryRoadGateLeftBlackBeltAllowedText
VictoryRoadGateLeftBlackBeltAllowedText:
	text "LANCE has granted"
	line "you permission to"
	cont "enter MT.SILVER."

	para "Be careful."
	done

VictoryRoadGateVictoryRoadSign:
	jumptext VictoryRoadGateVictoryRoadSignText
VictoryRoadGateVictoryRoadSignText:
	text "VICTORY ROAD to"
	line "#MON LEAGUE"
	done

VictoryRoadGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 15, ROUTE_22, 1
	warp_event 15, 15, ROUTE_22, 1
	warp_event  2,  7, ROUTE_28, 1
	warp_event  3,  7, ROUTE_28, 1
	warp_event 14,  0, ROUTE_23, 6
	warp_event 15,  0, ROUTE_23, 7

	def_coord_events
	coord_event 14,  9, SCENE_VICTORYROADGATE_BADGE_CHECK, VictoryRoadGateBadgeCheckScript

	def_bg_events
	bg_event 16, 0, BGEVENT_READ, VictoryRoadGateVictoryRoadSign

	def_object_events
	object_event 12,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateBadgeOfficerScript, -1
	object_event 16,  7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightOfficerScript, -1
	object_event  8,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateBlackBeltScript1, EVENT_OPENED_MT_SILVER
	object_event  8,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateBlackBeltScript2, EVENT_VICTORY_ROAD_GATE_BLACKBELT
;	object_event  8, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
;	object_event  4,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
;	object_event 12,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightBlackBeltScript, EVENT_FOUGHT_SNORLAX
