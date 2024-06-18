	object_const_def
	const VICTORYROAD2F_BOULDER1
	const VICTORYROAD2F_BOULDER2

VictoryRoad2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VictoryRoad2FBoulderCallback
	callback MAPCALLBACK_STONETABLE, VictoryRoad2FSetUpStoneTableCallback

VictoryRoad2FBoulderCallback:
	checkevent EVENT_VICTORY_ROAD_BOULDER_FELL_THROUGH
	iffalse .End
	appear VICTORYROAD2F_BOULDER2
.End
	endcallback

VictoryRoad2FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 6, VICTORYROAD2F_BOULDER1, .Boulder1
	stonetable 7, VICTORYROAD2F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1
;	pause 20
	playsound SFX_PUSH_BUTTON
	disappear VICTORYROAD2F_BOULDER1
	changeblock 0, 20, $4f ; statue rock
;	reloadmappart
;	waitsfx
	opentext
	writetext VictoryRoad2FPushedSwitchText
	waitbutton
	closetext
	playsound SFX_WALL_OPEN
	changeblock 8, 10, $4d ; gate open
;	reloadmappart
	end

.Boulder2
;	pause 20
	playsound SFX_PUSH_BUTTON
	disappear VICTORYROAD2F_BOULDER2
	changeblock 0, 20, $4f ; statue rock
;	reloadmappart
;	waitsfx
	opentext
	writetext VictoryRoad2FPushedSwitchText
	waitbutton
	closetext
	playsound SFX_WALL_OPEN
	changeblock 22, 16, $4d ; gate open
;	reloadmappart
	end

VictoryRoad2FPushedSwitchText:
	text "The heavy boulder"
	line "pushed the switch!"
	done

;VictoryRoadTMEarthquake:
;	itemball TM_EARTHQUAKE

;VictoryRoadHiddenMaxPotion:
;	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

VictoryRoad2FGateSign:
	jumptext VictoryRoad2FGateSignText
VictoryRoad2FGateSignText:
	text "Prove your"
	line "STRENGTH and the"
	cont "path shall open."
	done

VictoryRoad2FButtonSign:
	jumptext VictoryRoad2FButtonSignText
VictoryRoad2FButtonSignText:
	text "Show me your"
	line "STRENGTH!"
	done

VictoryRoad2FBoulder:
	jumpstd StrengthBoulderScript

VictoryRoad2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1, 13, VICTORY_ROAD_1F, 2 ;1
	warp_event  1,  3, VICTORY_ROAD_3F, 2 ;2
	warp_event 23,  7, VICTORY_ROAD_3F, 3 ;3
	warp_event 23, 13, VICTORY_ROAD_3F, 4 ;4
	warp_event 21, 22, VICTORY_ROAD_3F, 5 ;5 fall
	warp_event  1, 21, VICTORY_ROAD_2F, 6 ;6 button
	warp_event  9, 23, VICTORY_ROAD_2F, 7 ;7 button

	def_coord_events

	def_bg_events
	bg_event  7, 11, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event 10, 11, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event 21, 17, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event 24, 17, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event  0, 21, BGEVENT_READ, VictoryRoad2FButtonSign
	bg_event  8, 23, BGEVENT_READ, VictoryRoad2FButtonSign
;	bg_event  7,  5, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion

	def_object_events
	object_event  2, 17, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, -1
	object_event 20, 22, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, EVENT_VICTORY_ROAD_2F_BOULDER2

;	object_event 18, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
;	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
