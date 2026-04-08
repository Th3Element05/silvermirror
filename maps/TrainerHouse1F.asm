	object_const_def
	const TRAINERHOUSE1F_RECEPTIONIST
	const TRAINERHOUSE1F_COOLTRAINER_M
	const TRAINERHOUSE1F_COOLTRAINER_F
	const TRAINERHOUSE1F_YOUNGSTER
	const TRAINERHOUSE1F_GENTLEMAN

TrainerHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHouse1FReceptionistScript:
	jumptextfaceplayer TrainerHouse1FReceptionistText

TrainerHouse1FCooltrainerMScript:
	jumptextfaceplayer TrainerHouse1FCooltrainerMText

TrainerHouse1FCooltrainerFScript:
	jumptextfaceplayer TrainerHouse1FCooltrainerFText

TrainerHouse1FYoungsterScript:
	jumptextfaceplayer TrainerHouse1FYoungsterText

TrainerHouse1FGentlemanScript:
	jumptextfaceplayer TrainerHouse1FGentlemanText

TrainerHouseSign1:
	jumptext TrainerHouseSign1Text

TrainerHouseSign2:
	jumptext TrainerHouseSign2Text

TrainerHouseIllegibleBook:
	jumptext TrainerHouseIllegibleText

TrainerHouse1FReceptionistText:
	text "Welcome to TRAINER"
	line "HOUSE, the newest"
	cont "and most happening"
	roll "place in VIRIDIAN."

	para "We're open to"
	line "trainers only."

	para "You can battle"
	line "against the best"
	cont "of the best right"
	roll "downstairs."
	done

TrainerHouse1FCooltrainerMText:
	text "VIRIDIAN is the"
	line "town closest to"
	cont "INDIGO PLATEAU."

	para "They built this"
	line "place because so"
	cont "many trainers pass"
	roll "through on their"
	cont "way up to INDIGO"
	roll "PLATEAU."
	done

TrainerHouse1FCooltrainerFText:
	text "They hold practice"
	line "battles downstairs"
	cont "here."

	para "I would love to"
	line "see how well a"
	cont "trainer from JOHTO"
	roll "battles."
	done

TrainerHouse1FYoungsterText:
	text "I guess you can't"
	line "become the CHAMP"
	cont "unless you go all"
	roll "over the place and"
	cont "battle all kinds"
	roll "of people."

	para "The CHAMPION from"
	line "PALLET traveled to"
	cont "all the cities and"
	roll "towns in KANTO."
	done

TrainerHouse1FGentlemanText:
	text "Whew… I'm taking a"
	line "rest from #MON"
	cont "battles."
	done

TrainerHouseSign1Text:
	text "Practice battles"
	line "are held in the"
	cont "TRAINING HALL"
	roll "downstairs."

	para "Skilled trainers"
	line "are invited to"
	cont "participate."
	done

TrainerHouseSign2Text:
	text "There are no rules"
	line "or regulations for"
	cont "practice matches."
	roll "Just like in field"
	cont "battles, anything"
	roll "goes!"
	done

TrainerHouseIllegibleText:
	text "…What's this?"
	line "A strategy memo?"

	para "This writing looks"
	line "like ONIX tracks…"

	para "It's completely"
	line "illegible…"
	done

TrainerHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, VIOLET_CITY, 3
	warp_event  3, 13, VIOLET_CITY, 3
	warp_event  8,  2, TRAINER_HOUSE_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, TrainerHouseSign1
	bg_event  7,  0, BGEVENT_READ, TrainerHouseSign2
	bg_event  7, 10, BGEVENT_READ, TrainerHouseIllegibleBook

	def_object_events
	object_event  0, 11, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FReceptionistScript, -1
	object_event  7, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FCooltrainerMScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FCooltrainerFScript, -1
	object_event  4,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FYoungsterScript, -1
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FGentlemanScript, -1
