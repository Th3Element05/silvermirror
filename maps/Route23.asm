Route23_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_NEWMAP, Route23FlypointCallback

;Route23FlypointCallback:
;	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
;	endcallback

IndigoPlateauSign:
	jumptext IndigoPlateauSignText
IndigoPlateauSignText:
	text "INDIGO PLATEAU"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#MON LEAGUE HQ"
	done

VictoryRoadSign:
	jumptext VictoryRoadSignText
VictoryRoadSignText:
	text "VICTORY ROAD"
	done

; hidden items
Route23HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_23_HIDDEN_MAX_ETHER

Route23HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_23_HIDDEN_ULTRA_BALL

Route23HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_23_HIDDEN_FULL_RESTORE

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, INDIGO_PLATEAU_POKECENTER_1F, 1 ;1
	warp_event 10,  5, INDIGO_PLATEAU_POKECENTER_1F, 2 ;2
	warp_event  9, 13, VICTORY_ROAD_3F, 1 ;3
	warp_event 10, 13, VICTORY_ROAD_3F, 1 ;4
	warp_event  6, 19, VICTORY_ROAD_1F, 1 ;5
	warp_event  9, 73, VICTORY_ROAD_GATE, 5 ;6
	warp_event 10, 73, VICTORY_ROAD_GATE, 6 ;7

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, IndigoPlateauSign
	bg_event  5, 21, BGEVENT_READ, VictoryRoadSign
	bg_event  8, 56, BGEVENT_ITEM, Route23HiddenMaxEther
	bg_event 17, 46, BGEVENT_ITEM, Route23HiddenUltraBall
	bg_event 11, 22, BGEVENT_ITEM, Route23HiddenFullRestore

	def_object_events
