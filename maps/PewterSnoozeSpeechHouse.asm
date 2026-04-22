	object_const_def
	const PEWTERSNOOZESPEECHHOUSE_GRAMPS

PewterSnoozeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterSnoozeSpeechHouseGamblerScript:
	jumptextfaceplayer PewterSnoozeSpeechHouseGrampsText
PewterSnoozeSpeechHouseGrampsText:
	text "#MON learn new"
	line "techniques as"
	cont "they grow!"

	para "But, some moves"
	line "must be taught by"
	cont "the trainer!"
	done

PewterSnoozeSpeechHouseYoungsterScript:
	jumptextfaceplayer PewterSnoozeSpeechHouseYoungsterText
PewterSnoozeSpeechHouseYoungsterText:
	text "#MON become"
	line "easier to catch"
	cont "when they are"
	roll "hurt or asleep!"

	para "But, it's never"
	line "a sure thing!"
	done

PewterSnoozeSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

PewterSnoozeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 5
	warp_event  3,  7, PEWTER_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterSnoozeSpeechHouseGamblerScript, -1
	object_event  4,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterSnoozeSpeechHouseYoungsterScript, -1
