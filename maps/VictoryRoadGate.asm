	object_const_def
	const VICTORYROADGATE_OFFICER
	const VICTORYROADGATE_BLACK_BELT1
	const VICTORYROADGATE_BLACK_BELT2

VictoryRoadGate_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadGateNoop1Scene, SCENE_VICTORYROADGATE_BADGE_CHECK
	scene_script VictoryRoadGateNoop2Scene, SCENE_VICTORYROADGATE_NOOP

	def_callbacks

VictoryRoadGateNoop1Scene:
	end

VictoryRoadGateNoop2Scene:
	end

VictoryRoadGateBadgeCheckScript:
	turnobject PLAYER, LEFT
	sjump _VictoryRoadGateBadgeCheckScript

VictoryRoadGateOfficerScript:
	faceplayer
_VictoryRoadGateBadgeCheckScript:
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

VictoryRoadGateLeftBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateLeftBlackBeltText

VictoryRoadGateRightBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateRightBlackBeltText

VictoryRoadGateStepDownMovement:
	step DOWN
	step_end

VictoryRoadGateOfficerText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves may pass."
	done

VictoryRoadGateNotEnoughBadgesText:
	text "You don't have"
	line "enough GYM BADGES."

	para "I'm sorry, but I"
	line "can't let you pass"
	cont "without at least"
	cont "eight GYM BADGES."
	done

VictoryRoadGateEightBadgesText:
	text "Oh! The eight"
	line "BADGES of KANTO!"

	para "Please, go right"
	line "on through!"
	done

VictoryRoadGateLeftBlackBeltText:
	text "This way leads to"
	line "MT.SILVER."

	para "You'll see scary-"
	line "strong #MON out"
	cont "there."
	done

VictoryRoadGateRightBlackBeltText:
	text "Off to the #MON"
	line "LEAGUE, are you?"

	para "The ELITE FOUR are"
	line "so strong it's"

	para "scary, and they're"
	line "ready for you!"
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
;	warp_event 17,  7, ROUTE_22, 1
;	warp_event 18,  7, ROUTE_22, 1
;	warp_event  9, 17, ROUTE_26, 1
;	warp_event 10, 17, ROUTE_26, 1
;	warp_event  9,  0, VICTORY_ROAD, 1
;	warp_event 10,  0, VICTORY_ROAD, 1
;	warp_event  1,  7, ROUTE_28, 2
;	warp_event  2,  7, ROUTE_28, 2
;
	warp_event 14, 15, ROUTE_22, 1
	warp_event 15, 15, ROUTE_22, 1
	warp_event  2,  7, ROUTE_28, 2
	warp_event  3,  7, ROUTE_28, 2
	warp_event 14,  0, ROUTE_23, 6
	warp_event 15,  0, ROUTE_23, 7

	def_coord_events
;	coord_event 10, 11, SCENE_VICTORYROADGATE_BADGE_CHECK, VictoryRoadGateBadgeCheckScript
;
	coord_event 14,  9, SCENE_VICTORYROADGATE_BADGE_CHECK, VictoryRoadGateBadgeCheckScript

	def_bg_events
	bg_event 16, 0, BGEVENT_READ, VictoryRoadGateVictoryRoadSign

	def_object_events
;	object_event  8, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
;	object_event  4,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
;	object_event 12,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightBlackBeltScript, EVENT_FOUGHT_SNORLAX
;
	object_event 12,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
	object_event  8,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
	object_event 17, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightBlackBeltScript, -1 ;EVENT_FOUGHT_SNORLAX
