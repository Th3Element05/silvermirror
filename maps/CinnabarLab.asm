	object_const_def

CinnabarLab_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabScientist:
	jumptextfaceplayer CinnabarLabScientistText
CinnabarLabScientistText:
	text "We study #MON"
	line "extensively here."

	para "People often bring"
	line "us rare #MON"
	cont "for examination."
	done

CinnabarLabCliftonScript:
	faceplayer
	opentext
	trade NPC_TRADE_CLIFTON
	waitbutton
	closetext
	end

CinnabarLabNormaScript:
	faceplayer
	opentext
	trade NPC_TRADE_NORMA
	waitbutton
	closetext
	end

CinnabarLabResearchRoomSign:
	jumptext CinnabarLabResearchRoomSignText
CinnabarLabResearchRoomSignText:
	text "Research and"
	line "Development"
	done

CinnabarLabTestingRoomSign:
	jumptext CinnabarLabTestingRoomSignText
CinnabarLabTestingRoomSignText:
	text "#MON LAB"
	line "Testing Room"
	done

CinnabarLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 5
	warp_event  3,  7, CINNABAR_ISLAND, 5
	warp_event  8,  4, CINNABAR_LAB_RESEARCH_ROOM, 1
	warp_event 12,  4, CINNABAR_LAB_FOSSIL_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  9,  4, BGEVENT_READ, CinnabarLabResearchRoomSign
	bg_event 13,  4, BGEVENT_READ, CinnabarLabTestingRoomSign

	def_object_events
	object_event  4,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabScientist, -1
	object_event  0,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabCliftonScript, -1
	object_event  3,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabNormaScript, -1
