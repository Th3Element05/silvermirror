	object_const_def

Route12Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route12Gate2FLassScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM39_SWIFT
	iftrue .GotSwift
	writetext Route12Gate2FLassGiveSwiftText
	promptbutton
	verbosegiveitem TM_SWIFT
	setevent EVENT_GOT_TM39_SWIFT
.GotSwift
	writetext Route12Gate2FLassExplainSwiftText
	waitbutton
	closetext
	end

Route12Gate2FLassGiveSwiftText:
	text "My #MON's"
	line "ashes are stored"
	cont "in #MON TOWER."

	para "You can have this"
	line "TM. I don't need"
	cont "it any more…"
	done

Route12Gate2FLassExplainSwiftText:
	text "TM39 is a move"
	line "called SWIFT."

	para "It's very accurate,"
	line "so use it when"
	cont "you can't afford"
	cont "to miss."
	done

Route12Gate2FBinocularsL:
	jumptext Route12Gate2FManFishingText
Route12Gate2FManFishingText:
	text "Looked into the"
	line "binoculars."

	para "A man fishing!"
	done

Route12Gate2FBinocularsR:
	jumptext Route12Gate2FPokemonTowerText
Route12Gate2FPokemonTowerText:
	text "Looked into the"
	line "binoculars."

	para "It's LAVENDER's"
	line "#MON TOWER!"
	done

Route12Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, ROUTE_12_GATE, 5

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_UP, Route12Gate2FBinocularsL
	bg_event  4,  2, BGEVENT_UP, Route12Gate2FBinocularsR

	def_object_events
	object_event  5,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route12Gate2FLassScript, -1
