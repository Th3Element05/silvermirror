	object_const_def

FuchsiaMovesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaMoveDeleter:
	faceplayer
	opentext
	special MoveDeletion
	waitbutton
	closetext
	end

FuchsiaMoveReminder:
	faceplayer
	opentext
	writetext FuchsiaMovesHouse_MoveReminderIntroText
	yesorno
	iffalse .refused
	checkitem HEART_SCALE
	iftrue .have_a_heart_scale
	writetext FuchsiaMovesHouse_MoveReminderNoScaleText
	waitbutton
	closetext
	end

.have_a_heart_scale:
;	writetext FuchsiaMovesHouse_GiveMeWhatText
;	loadmenu HeartScaleMenuDataHeader
;	verticalmenu
;	closewindow
;	ifequal $1, .HeartScaleChoice
;	jump .refused
;
;.HeartScaleChoice:
	getitemname STRING_BUFFER_3, HEART_SCALE
	callasm LoadHeartScale
	special MoveReminder
	waitbutton
	closetext
	end

.refused:
	writetext FuchsiaMovesHouse_MoveReminderCancelText
	waitbutton
	closetext
	end

LoadHeartScale:
	ld a, HEART_SCALE
	ld [wMoveReminderItem], a
	ret

;HeartScaleMenuDataHeader:
;	db $40 ; flags
;	db 05, 00 ; start coords
;	db 11, 18 ; end coords
;	dw .MenuData
;	db 1 ; default option
;
;.MenuData:
;	db $80 ; flags
;	db 2 ; items
;	db "HEART SCALE@"
;;	db "1× BIG MUSHROOM@"
;	db "CANCEL@"

FuchsiaMovesHouse_MoveReminderIntroText:
	text "Hi, I'm the"
	line "MOVE REMINDER!"

	para "But I'm also a"
	line "COLLECTOR."

;	para "If you bring me"
;	line "a HEART SCALE,"
;	cont "I can help your"
;	roll "#MON remember"
;	cont "old moves."

	para "If you give me a"
	line "HEART SCALE, I can"
	cont "help your #MON"
	roll "relearn old moves."

	para "Are you"
	line "interested?"
	done

FuchsiaMovesHouse_MoveReminderCancelText:
	text "Come visit me"
	line "again."
	done

FuchsiaMovesHouse_MoveReminderNoScaleText:
	text "You don't have any"
	line "HEART SCALEs."

	para "Sometimes you'll"
	line "find them when"
	cont "smashing rocks."

	para "Go find some, then"
	line "we can talk."
	done

;FuchsiaMovesHouse_GiveMeWhatText:
;	text "What are you going"
;	line "to give me?"
;	done

FuchsiaMovesHouseBookshelf:
	jumpstd DifficultBookshelfScript

FuchsiaMovesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 7
	warp_event  3,  7, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BlackthornMovesHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, BlackthornMovesHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaMoveDeleter, -1
	object_event  4,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaMoveReminder, -1
