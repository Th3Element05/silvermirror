	object_const_def

Route12Gate_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route12GateTilesCallback

Route12GateTilesCallback:
	changeblock 6, 2, $10 ; open counter
	changeblock 6, 4, $38 ; stairs
	endcallback

Route12GateGuardScript:
	checkevent EVENT_ROUTE_12_SNORLAX
	iftrue .AfterSnorlax
	jumptext Route12GateGuardBeforeSnorlaxText
.AfterSnorlax
	jumptext Route12GateGuardAfterSnorlaxText

Route12GateGuardBeforeSnorlaxText:
	text "There have been"
	line "fewer people pass-"
	cont "ing through here"
	roll "lately."

	para "I wonder why?"
	done

Route12GateGuardAfterSnorlaxText:
	text "A big #MON was"
	line "asleep on a road!"

	para "More people are"
	line "coming through now"
	cont "that it's gone!"
	done

;Route12GateLassScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_TM39_SWIFT
;	iftrue .GotSwift
;	writetext Route12GateLassGiveSwiftText
;	promptbutton
;	verbosegiveitem TM_SWIFT
;	setevent EVENT_GOT_TM39_SWIFT
;.GotSwift
;	writetext Route12GateLassExplainSwiftText
;	waitbutton
;	closetext
;	end
;
;Route12GateLassGiveSwiftText:
;	text "My #MON's"
;	line "ashes are stored"
;	cont "in #MON TOWER."
;
;	para "You can have this"
;	line "TM. I don't need"
;	cont "it any more…"
;	done
;
;Route12GateLassExplainSwiftText:
;	text "TM39 is a move"
;	line "called SWIFT."
;
;	para "It's very accurate,"
;	line "so use it when"
;	cont "you can't afford"
;	roll "to miss."
;	done

Route12Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_12, 4
	warp_event  4,  0, ROUTE_12, 5
	warp_event  3,  7, ROUTE_12, 6
	warp_event  4,  7, ROUTE_12, 6
	warp_event  7,  5, ROUTE_12_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route12GateGuardScript, -1
;	object_event  5,  2, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route12GateLassScript, -1
