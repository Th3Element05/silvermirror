	object_const_def
	const ROUTE_36RUINSOFALPHGATE_OFFICER
	const ROUTE_36RUINSOFALPHGATE_GRAMPS

Route36RuinsOfAlphGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route36RuinsOfAlphGateOfficerScript:
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .RuinsUnearthed
	jumptext Route32RuinsOfAlphGateOfficerText ;in Route32RuinsOfAlphGate.asm
.RuinsUnearthed
	jumptext Route36RuinsOfAlphGateOfficerText

;Route36RuinsOfAlphGateOfficerText:
;	text "They found an old"
;	cont "structure inside a"
;	line "cave here."
;
;	para "The site was named"
;	line "the RUINS OF ALPH."
;	done

Route36RuinsOfAlphGateOfficerText:
	text "More RUINS were"
	line "unearthed?"

	text "Don't you wonder"
	line "who'd make some-"
	cont "thing like this?"
	cont "And why?"
	done

Route36RuinsOfAlphGateGrampsScript:
	jumptextfaceplayer Route36RuinsOfAlphGateGrampsText
Route36RuinsOfAlphGateGrampsText:
	text "I don't like walk-"
	line "ing on ROUTE 36."

	para "I always feel like"
	line "I see something"
	cont "moving."

	para "But when I turn"
	line "to look, there are"
	cont "only trees."
	done

Route36RuinsOfAlphGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_36, 3
	warp_event  4,  0, ROUTE_36, 4
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 8
	warp_event  4,  7, RUINS_OF_ALPH_OUTSIDE, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route36RuinsOfAlphGateOfficerScript, -1
	object_event  5,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route36RuinsOfAlphGateGrampsScript, -1
