	object_const_def
	const VICTORYROAD3F_BOULDER1
	const VICTORYROAD3F_BOULDER2

VictoryRoad3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, VictoryRoad3FGateCallback
	callback MAPCALLBACK_STONETABLE, VictoryRoad3FSetUpStoneTableCallback

VictoryRoad3FGateCallback:
	checkevent EVENT_VICTORY_ROAD_3F_GATE_OPEN
	iffalse .End
	changeblock 2, 12, $4e ; rock
	changeblock 10, 12, $4d ; gate open
;	disappear VICTORYROAD3F_BOULDER1
.End
	endcallback

VictoryRoad3FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 6, VICTORYROAD2F_BOULDER1, .Boulder1
	stonetable 5, VICTORYROAD2F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1
;	pause 20
	playsound SFX_PUSH_BUTTON
	disappear VICTORYROAD1F_BOULDER
	changeblock 2, 12, $4e ; rock
;	reloadmappart
;	waitsfx
	opentext
	writetext VictoryRoad3FPushedSwitchText
	waitbutton
	closetext
	playsound SFX_WALL_OPEN
	changeblock 10, 12, $4d ; gate open
;	reloadmappart
	setevent EVENT_VICTORY_ROAD_3F_GATE_OPEN
	end

.Boulder2:
	disappear VICTORYROAD3F_BOULDER2
	clearevent EVENT_VICTORY_ROAD_2F_BOULDER2
	setevent EVENT_VICTORY_ROAD_BOULDER_FELL_THROUGH
	pause 30
	playsound SFX_STRENGTH
	earthquake 60
	opentext
	writetext VictoryRoad3FBoulderFellText
	waitbutton
	closetext
	end

VictoryRoad3FPushedSwitchText:
	text "The heavy boulder"
	line "pushed the switch!"
	done

VictoryRoad3FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

TrainerCooltrainerFBeth:
	trainer COOLTRAINERF, BETH1, EVENT_BEAT_COOLTRAINERF_BETH, CooltrainerFBethSeenText, CooltrainerFBethBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFBethAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFBethSeenText:
	text "Trainers live to"
	line "seek stronger"
	cont "opponents!"
	done

CooltrainerFBethBeatenText:
	text "Oh!"
	line "So strong!"
	done

CooltrainerFBethAfterBattleText:
	text "By fighting tough"
	line "battles, you get"
	cont "stronger!"
	done

TrainerCooltrainerMGaven:
	trainer COOLTRAINERM, GAVEN1, EVENT_BEAT_COOLTRAINERM_GAVEN, CooltrainerMGavinSeenText, CooltrainerMGavinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMGavinAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMGavinSeenText:
	text "I heard rumors of"
	line "a child prodigy!"
	done

CooltrainerMGavinBeatenText:
	text "The rumors"
	line "were true!"
	done

CooltrainerMGavinAfterBattleText:
	text "You beat GIOVANNI"
	line "of TEAM ROCKET?"
	done

TrainerCooltrainerFFran:
	trainer COOLTRAINERF, FRAN, EVENT_BEAT_COOLTRAINERF_FRAN, CooltrainerFFranSeenText, CooltrainerFFranBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFFranAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFFranSeenText:
	text "I'll show you just"
	line "how good you are!"
	done

CooltrainerFFranBeatenText:
	text "I'm furious!"
	done

CooltrainerFFranAfterBattleText:
	text "You showed me just"
	line "how good I was!"
	done

TrainerCooltrainerMRyan:
	trainer COOLTRAINERM, RYAN, EVENT_BEAT_COOLTRAINERM_RYAN, CooltrainerMRyanSeenText, CooltrainerMRyanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMRyanAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMRyanSeenText:
	text "Only the chosen"
	line "can pass here!"
	done

CooltrainerMRyanBeatenText:
	text "I don't"
	line "believe it!"
	done

CooltrainerMRyanAfterBattleText:
	text "All trainers here"
	line "are headed to the"
	cont "#MON LEAGUE!"
	roll "Be careful!"
	done

VictoryRoad3FGateSign:
	jumptext VictoryRoad3FGateSignText
VictoryRoad3FGateSignText:
	text "Prove your"
	line "STRENGTH and the"
	cont "path shall open."
	done

VictoryRoad3FButtonSign:
	jumptext VictoryRoad3FButtonSignText
VictoryRoad3FButtonSignText:
	text "Show me your"
	line "STRENGTH!"
	done

VictoryRoad3FBoulder:
	jumpstd StrengthBoulderScript

; itemballs
VictoryRoad3FTMSludgeBomb:
	itemball TM_SLUDGE_BOMB

VictoryRoad3FMaxRevive:
	itemball MAX_REVIVE

; hidden items
VictoryRoad3FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VICTORY_ROAD_3F_HIDDEN_FULL_RESTORE

VictoryRoad3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  5, ROUTE_23, 3 ;1
	warp_event  5,  5, VICTORY_ROAD_2F, 2 ;2
	warp_event 21, 11, VICTORY_ROAD_2F, 3 ;3
	warp_event 27, 17, VICTORY_ROAD_2F, 4 ;4
	warp_event 22, 21, VICTORY_ROAD_2F, 5 ;5 pit
	warp_event  3, 13, VICTORY_ROAD_3F, 6 ;6 button

	def_coord_events

	def_bg_events
	bg_event  9, 13, BGEVENT_UP, VictoryRoad3FGateSign
	bg_event 12, 13, BGEVENT_UP, VictoryRoad3FGateSign
	bg_event  4, 13, BGEVENT_RIGHT, VictoryRoad3FButtonSign
	bg_event 28, 17, BGEVENT_ITEM, VictoryRoad3FHiddenFullRestore

	def_object_events
	object_event 15,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, EVENT_VICTORY_ROAD_3F_BOULDER1
	object_event 21, 21, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, EVENT_VICTORY_ROAD_3F_BOULDER2
	object_event 15, 18, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, -1
	object_event 12, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFBeth, -1
	object_event 24, 17, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMGaven, -1
	object_event  6, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerFFran, -1
	object_event  5, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerMRyan, -1
	object_event  7, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VictoryRoad3FTMSludgeBomb, EVENT_VICTORY_ROAD_3F_TM_SLUDGE_BOMB
	object_event 21, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad3FMaxRevive, EVENT_VICTORY_ROAD_3F_MAX_REVIVE
