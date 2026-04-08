	object_const_def

SafariRestHouseArea3_MapScripts:
	def_scene_scripts

	def_callbacks

SafariRestHouseArea3Gentleman:
	jumptextfaceplayer SafariRestHouseArea3GentlemanText
SafariRestHouseArea3GentlemanText:
	text "You can keep any"
	line "item you find on"
	cont "the ground here."

	para "But, you'll run"
	line "out of time if"
	cont "you just search"
	roll "for items."
	done

SafariRestHouseArea3Scientist:
	jumptextfaceplayer SafariRestHouseArea3ScientistText
SafariRestHouseArea3ScientistText:
	text "My EEVEE evolved"
	line "into FLAREON!"

	para "But, a friend's"
	line "EEVEE turned into"
	cont "a VAPOREON!"
	roll "I wonder why?"
	done

SafariRestHouseArea3Officer:
	jumptextfaceplayer SafariRestHouseArea3OfficerText
SafariRestHouseArea3OfficerText:
	text "If you can make"
	line "it all the way to"
	cont "the SECRET HOUSE,"
	roll "you win a prize!"
	done

SafariRestHouseArea3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_AREA_3, 7
	warp_event  3,  7, SAFARI_ZONE_AREA_3, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea3Gentleman, 0
	object_event  1,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea3Scientist, 0
	object_event  7,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariRestHouseArea3Officer, 0
