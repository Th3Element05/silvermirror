	object_const_def

SafariRestHouseArea1_MapScripts:
	def_scene_scripts

	def_callbacks

SafariRestHouseArea1Lass:
	jumptextfaceplayer SafariRestHouseArea1LassText
SafariRestHouseArea1LassText:
	text "SARA: Where did"
	line "my boy friend,"
	cont "ERIK, go?"
	done

SafariRestHouseArea1Scientist:
	jumptextfaceplayer SafariRestHouseArea1ScientistText
SafariRestHouseArea1ScientistText:
	text "I'm catching"
	line "#MON to take"
	cont "home as gifts!"
	done

SafariRestHouseArea1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_AREA_1, 9
	warp_event  3,  7, SAFARI_ZONE_AREA_1, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea1Lass, 0
	object_event  5,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea1Scientist, 0
