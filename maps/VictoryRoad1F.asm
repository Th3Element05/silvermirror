	object_const_def
	const VICTORYROAD1F_BOULDER

VictoryRoad1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, VictoryRoad1FSetUpStoneTableCallback

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
	end

VictoryRoad1FPushedSwitchText:
	text "The heavy boulder"
	line "pushed the switch!"
	done

;VictoryRoadTMEarthquake:
;	itemball TM_EARTHQUAKE

;VictoryRoadHiddenMaxPotion:
;	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

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
;	bg_event  7,  5, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion

	def_object_events
	object_event  7, 19, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1FBoulder, -1
;	object_event 18, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
;	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
