	object_const_def

SafariRestHouseArea2_MapScripts:
	def_scene_scripts

	def_callbacks

SafariRestHouseArea2Scientist:
	jumptextfaceplayer SafariRestHouseArea2ScientistText
SafariRestHouseArea2ScientistText:
	text "How many did you"
	line "catch? I'm bushed"
	cont "from the work!"
	done

SafariRestHouseArea2PokefanM:
	jumptextfaceplayer SafariRestHouseArea2PokefanMText
SafariRestHouseArea2PokefanMText:
	text "I caught a"
	line "CHANSEY!"

	para "That makes this"
	line "all worthwhile!"
	done

SafariRestHouseArea2Twin:
	jumptextfaceplayer SafariRestHouseArea2TwinText
SafariRestHouseArea2TwinText:
	text "Whew! I'm tired"
	line "from all the fun!"
	done

SafariRestHouseArea2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_AREA_2, 5
	warp_event  3,  7, SAFARI_ZONE_AREA_2, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea2Scientist, 0
	object_event  5,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea2PokefanM, 0
	object_event  6,  2, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea2Twin, 0
