	object_const_def
	const VICTORYROAD1F_BOULDER

VictoryRoad1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VictoryRoad1FGateCallback
	callback MAPCALLBACK_STONETABLE, VictoryRoad1FSetUpStoneTableCallback

VictoryRoad1FGateCallback:
	checkevent EVENT_VICTORY_ROAD_1F_GATE_OPEN
	iffalse .End
	changeblock 20, 16, $4e ; rock
	changeblock 14, 12, $4d ; gate open
;	disappear VICTORYROAD1F_BOULDER
.End
	endcallback

VictoryRoad1FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 3, VICTORYROAD1F_BOULDER, .Boulder1
	db -1 ; end

.Boulder1
;	pause 20
	playsound SFX_PUSH_BUTTON
	disappear VICTORYROAD1F_BOULDER
	changeblock 20, 16, $4e ; rock
;	reloadmappart
;	waitsfx
	opentext
	writetext VictoryRoad1FPushedSwitchText
	waitbutton
	closetext
	playsound SFX_WALL_OPEN
	changeblock 14, 12, $4d ; gate open
;	reloadmappart
	setevent EVENT_VICTORY_ROAD_1F_GATE_OPEN
	end

VictoryRoad1FPushedSwitchText:
	text "The heavy boulder"
	line "pushed the switch!"
	done

TrainerCooltrainerMSean:
	trainer COOLTRAINERM, SEAN, EVENT_BEAT_COOLTRAINERM_SEAN, CooltrainerMSeanSeenText, CooltrainerMSeanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMSeanAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMSeanSeenText:
	text "I can see you're"
	line "good! Let me see"
	cont "exactly how good!"
	done

CooltrainerMSeanBeatenText:
	text "I had a"
	line "chance..."
	done

CooltrainerMSeanAfterBattleText:
	text "I concede, you're"
	line "better than me!"
	done

TrainerCooltrainerFLois:
	trainer COOLTRAINERF, LOIS, EVENT_BEAT_COOLTRAINERF_LOIS, CooltrainerFLoisSeenText, CooltrainerFLoisBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFLoisAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFLoisSeenText:
	text "I wonder if you"
	line "are good enough"
	cont "for me!"
	done

CooltrainerFLoisBeatenText:
	text "I lost out!"
	done

CooltrainerFLoisAfterBattleText:
	text "I never wanted to"
	line "lose to anybody!"
	done

VictoryRoad1FGateSign:
	jumptext VictoryRoad1FGateSignText
VictoryRoad1FGateSignText:
	text "Prove your"
	line "STRENGTH and the"
	cont "path shall open."
	done

VictoryRoad1FButtonSign:
	jumptext VictoryRoad1FButtonSignText
VictoryRoad1FButtonSignText:
	text "Show me your"
	line "STRENGTH!"
	done

VictoryRoad1FBoulder:
	jumpstd StrengthBoulderScript

; itemballs
VictoryRoad1FTMSkyAttack:
	itemball TM_SKY_ATTACK

VictoryRoad1FRareCandy:
	itemball RARE_CANDY

VictoryRoad1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 21, ROUTE_23, 5 ;1
	warp_event  5,  5, VICTORY_ROAD_2F, 1 ;2
	warp_event 21, 17, VICTORY_ROAD_1F, 3 ;3 button

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_UP, VictoryRoad1FGateSign
	bg_event 16, 13, BGEVENT_UP, VictoryRoad1FGateSign
	bg_event 22, 17, BGEVENT_READ, VictoryRoad1FButtonSign

	def_object_events
	object_event  7, 19, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1FBoulder, EVENT_VICTORY_ROAD_1F_BOULDER
	object_event 19,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1FBoulder, -1
	object_event  7,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerMSean, -1
	object_event 11,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFLois, -1
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VictoryRoad1FTMSkyAttack, EVENT_VICTORY_ROAD_1F_TM_SKY_ATTACK
	object_event 14,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad1FRareCandy, EVENT_VICTORY_ROAD_1F_RARE_CANDY
