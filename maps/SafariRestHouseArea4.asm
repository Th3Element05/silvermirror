	object_const_def

SafariRestHouseArea4_MapScripts:
	def_scene_scripts

	def_callbacks

SafariRestHouseArea4CooltrainerM:
	jumptextfaceplayer SafariRestHouseArea4CooltrainerMText
SafariRestHouseArea4CooltrainerMText:
	text "Using BAIT will"
	line "make #MON less"
	cont "likely to flee."
	done

SafariRestHouseArea4SuperNerd:
	jumptextfaceplayer SafariRestHouseArea4SuperNerdText
SafariRestHouseArea4SuperNerdText:
	text "I hiked a lot, but"
	line "I didn't see any"
	cont "#MON I wanted."
	done

SafariRestHouseArea4Scientist:
	jumptextfaceplayer SafariRestHouseArea4ScientistText
SafariRestHouseArea4ScientistText:
	text "Tossing ROCKs at"
	line "#MON makes them"
	cont "easier to catch,"
	roll "but they might"
	cont "run away!"
	done

SafariRestHouseArea4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_AREA_4, 7
	warp_event  3,  7, SAFARI_ZONE_AREA_4, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea4CooltrainerM, 0
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea4SuperNerd, 0
	object_event  5,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea4Scientist, 0
