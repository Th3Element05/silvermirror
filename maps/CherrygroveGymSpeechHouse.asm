	object_const_def

CherrygroveGymSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveGymSpeechHousePokefanMScript:
	jumptextfaceplayer CherrygroveGymSpeechHousePokefanMText
CherrygroveGymSpeechHousePokefanMText:
	text "You have a lot of"
	line "GYM BADGES."

	para "Have you visited"
	line "all of the GYMS"
	cont "around JOHTO yet?"
	done
;	text "You're trying to"
;	line "see how good you"
;	cont "are as a #MON"
;	cont "trainer?"
;
;	para "You better visit"
;	line "the #MON GYMS"
;	cont "all over JOHTO and"
;	cont "collect BADGES."
;	done

CherrygroveGymSpeechHouseBugCatcherScript:
	jumptextfaceplayer CherrygroveGymSpeechHouseBugCatcherText
CherrygroveGymSpeechHouseBugCatcherText:
	text "When I get older,"
	line "I'm going to be a"
	cont "GYM LEADER!"

	para "I make my #MON"
	line "battle with my"
	cont "friend's to make"
	cont "them tougher!"
	done

CherrygroveGymSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CherrygroveGymSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 3
	warp_event  3,  7, CHERRYGROVE_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHousePokefanMScript, -1
	object_event  5,  5, SPRITE_BOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHouseBugCatcherScript, -1
