	object_const_def

CeladonMansionRoof_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofGraffiti:
	checkevent EVENT_CELADON_MANSION_ROOF_GRAFFITI
	iftrue .AlreadyGraffiti
	setevent EVENT_CELADON_MANSION_ROOF_GRAFFITI
	jumptext CeladonMansionRoofDrawGraffitiText
.AlreadyGraffiti
	jumptext CeladonMansionRoofGraffitiText

CeladonMansionRoofDrawGraffitiText:
	text "<PLAYER> drew a"
	line "funny face on"
	cont "the wall!"
	done

CeladonMansionRoofGraffitiText:
	text "Haha! Its the"
	line "funny face that"
	cont "<PLAYER> drew!"
	done

CeladonMansionRoofSign:
	jumptext CeladonMansionRoofSignText
CeladonMansionRoofSignText:
	text "PENTHOUSE"
	line "APARTMENT"
	done

CeladonMansionRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  1, CELADON_MANSION_3F, 1
	warp_event  6,  1, CELADON_MANSION_3F, 4
	warp_event  1,  5, CELADON_MANSION_ROOF_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_READ, CeladonMansionRoofSign
	bg_event  6,  1, BGEVENT_LEFT, CeladonMansionRoofGraffiti

	def_object_events
