	object_const_def

EcruteakLugiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakLugiaSpeechHouseGrampsScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseGrampsText
EcruteakLugiaSpeechHouseGrampsText:
	text "This happened when"
	line "I was young."

	para "The sky suddenly"
	line "turned black."

	para "A giant flying"
	line "#MON was block-"
	cont "ing out the sun!"

	para "I wonder what that"
	line "#MON was?"

	para "It was like a bird"
	line "and a dragon."
	done

EcruteakLugiaSpeechHouseYoungsterScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseYoungsterText
EcruteakLugiaSpeechHouseYoungsterText:
	text "Is there really a"
	line "#MON that big?"

	para "If it exists, it"
	line "must be powerful."
	done

LugiaSpeechHouseRadio:
	jumpstd Radio2Script

EcruteakLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ECRUTEAK_CITY, 7
	warp_event  3,  7, ECRUTEAK_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, LugiaSpeechHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseGrampsScript, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseYoungsterScript, -1
