	object_const_def
;	const ROUTE_42ECRUTEAKGATE_OFFICER

Route42EcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route42EcruteakGateGentlemanScript:
	checkevent EVENT_ROUTE_42_BOULDERS_CLEARED
	iftrue .BouldersCleared
	jumptextfaceplayer Route42EcruteakGateRouteBlockedText

.BouldersCleared
	jumptextfaceplayer Route42EcruteakGateRouteClearText

Route42EcruteakGateRouteBlockedText:
	text "There was a land-"
	line "slide on ROUTE 42!"

	para "Boulders fell from"
	line "MT.MORTAR and"
	cont "blocked ROUTE 42!"

	para "The GYM LEADER"
	line "from CIANWOOD is"
	cont "has come all this"
	cont "way to help!"
	done

Route42EcruteakGateRouteClearText:
	text "The boulders have"
	line "been cleared!"

	para "The road to"
	line "MAHOGANY TOWN is"
	cont "open again!"
	done

Route42EcruteakGateOfficerScript:
	jumptextfaceplayer Route42EcruteakGateOfficerText

Route42EcruteakGateOfficerText:
	text "MT.MORTAR is like"
	line "a maze inside."

	para "Be careful. Don't"
	line "get lost in there."
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  7,  4, ROUTE_42, 1
	warp_event  7,  5, ROUTE_42, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, -1
	object_event  3,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateGentlemanScript, -1
