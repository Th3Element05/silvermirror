	object_const_def

Route32RuinsOfAlphGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route32RuinsOfAlphGateOfficerScript:
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .RuinsUnearthed
	jumptext Route32RuinsOfAlphGateOfficerText
.RuinsUnearthed
	jumptext Route32RuinsOfAlphGateOfficer_AfterText

Route32RuinsOfAlphGateOfficerText:
	text "They found an old"
	cont "structure inside a"
	line "cave here."

	para "The site was named"
	line "the RUINS OF ALPH."
	done

Route32RuinsOfAlphGateOfficer_AfterText:
	text "All that shaking"
	line "unearthed more of"
	cont "the RUINS?"
	done

Route32RuinsOfAlphGatePokefanMScript:
	jumptextfaceplayer Route32RuinsOfAlphGatePokefanMText
Route32RuinsOfAlphGatePokefanMText:
	text "You're studying"
	line "the RUINS?"

	para "I see a scientist"
	line "in the making."
	done

;Route32RuinsOfAlphGateYoungsterScript:
;	jumptextfaceplayer Route32RuinsOfAlphGateYoungsterText
;Route32RuinsOfAlphGateYoungsterText:
;	text "There are drawings"
;	line "on stone panels."
;
;	para "I tried moving"
;	line "them. I wonder"
;	cont "what they are."
;	done

Route32RuinsOfAlphGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, RUINS_OF_ALPH_OUTSIDE, 9
	warp_event  0,  5, RUINS_OF_ALPH_OUTSIDE, 10
	warp_event  7,  4, ROUTE_32, 2
	warp_event  7,  5, ROUTE_32, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32RuinsOfAlphGateOfficerScript, -1
	object_event  6,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route32RuinsOfAlphGatePokefanMScript, EVENT_RUINS_OF_ALPH_OUTSIDE_SCIENTIST
;	object_event  1,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route32RuinsOfAlphGateYoungsterScript, -1
