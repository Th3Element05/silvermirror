	object_const_def

MahoganyTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MahoganyTownFlypointCallback

MahoganyTownFlypointCallback:
	setflag ENGINE_FLYPOINT_MAHOGANY
	endcallback

MahoganyTownGrampsScript:
	jumptextfaceplayer MahoganyTownGrampsText
MahoganyTownGrampsText:
	text "A #MON with an"
	line "unusual color was"
	cont "spotted swimming"
	roll "in LAKE OF RAGE."

	para "All of the anglers"
	line "in the area have"
	cont "tried to hook it."

	para "But none of them"
	line "have had any luck."
	done

MahoganyTownFisherScript:
	jumptextfaceplayer MahoganyTownFisherText
MahoganyTownFisherText:
	text "Since you came"
	line "this far, take the"
	cont "time to do some"
	roll "sightseeing."

	para "You should head"
	line "north to check out"
	cont "LAKE OF RAGE."
	done

MahoganyTownLassScript:
	jumptextfaceplayer MahoganyTownLassText
MahoganyTownLassText:
	text "Visit my grandma's"
	line "shop, she sells"
	cont "stuff that nobody"
	roll "else has!"

	para "But she's only"
	line "here on weekdays."

	para "She runs a table"
	line "in GOLDENROD's"
	cont "UNDERGROUND on the"
	roll "weekend."
	done

MahoganyTownSign:
	jumptext MahoganyTownSignText
MahoganyTownSignText:
	text "MAHOGANY TOWN"

	para "Welcome to the"
	line "Home of the Ninja"
	done

MahoganyGymSign:
	jumptext MahoganyGymSignText
MahoganyGymSignText:
	text "MAHOGANY TOWN"
	line "#MON GYM"
	cont "LEADER: PRYCE"

	para "The Teacher of"
	line "Winter's Harshness"
	done

MahoganyTownPokecenterSign:
	jumpstd PokecenterSignScript

MahoganyTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  7, MAHOGANY_MART_1F, 1
	warp_event 17,  7, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, 1
	warp_event  6, 13, MAHOGANY_GYM, 1
	warp_event 15, 13, MAHOGANY_POKECENTER_1F, 1
	warp_event  9,  1, ROUTE_43_MAHOGANY_GATE, 3

	def_coord_events

	def_bg_events
	bg_event  9,  7, BGEVENT_READ, MahoganyTownSign
	bg_event  7, 13, BGEVENT_READ, MahoganyGymSign
	bg_event 16, 13, BGEVENT_READ, MahoganyTownPokecenterSign

	def_object_events
	object_event 11, 15, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyTownGrampsScript, -1
	object_event  5,  8, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MahoganyTownFisherScript, -1
	object_event 12,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyTownLassScript, -1
