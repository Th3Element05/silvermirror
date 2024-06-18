	object_const_def
	const VICTORYROAD3F_BOULDER1
	const VICTORYROAD3F_BOULDER2

VictoryRoad3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, VictoryRoad3FSetUpStoneTableCallback

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

;VictoryRoadTMEarthquake:
;	itemball TM_EARTHQUAKE

;VictoryRoadHiddenMaxPotion:
;	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

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
;	bg_event  7,  5, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion

	def_object_events
	object_event 15,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, -1
	object_event 21, 21, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, EVENT_VICTORY_ROAD_3F_BOULDER2
	object_event 15, 18, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, -1
;	object_event 18, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
;	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
