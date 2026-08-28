	object_const_def

BlackthornMovesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

;BlackthornMoveDeleter: ;  uses FuchsiaMoveDeleter in same bank
;	faceplayer
;	opentext
;	special MoveDeletion
;	waitbutton
;	closetext
;	end

;BlackthornMoveReminder: ; uses FuchsiaMoveReminder in same bank
;	faceplayer
;	opentext
;	writetext BlackthornMovesHouse_MoveReminderIntroText
;	yesorno
;	iffalse .refused
;	writetext BlackthornMovesHouse_GiveMeWhatText
;	loadmenu PaymentMenuDataHeader
;	verticalmenu
;	closewindow
;	ifequal $1, .GoldLeafChoice
;	ifequal $2, .SilverLeafChoice
;	ifequal $3, .HeartScaleChoice
;;	jump .refused
;.refused:
;	writetext BlackthornMovesHouse_MoveReminderCancelText
;	waitbutton
;	closetext
;	end
;
;.GoldLeafChoice:
;	getitemname STRING_BUFFER_3, GOLD_LEAF
;	checkitem GOLD_LEAF
;	iffalse .DontHaveThatItem
;	callasm LoadGoldLeaf
;	sjump .relearn_move
;
;.SilverLeafChoice:
;	getitemname STRING_BUFFER_3, SILVER_LEAF
;	checkitem SILVER_LEAF
;	iffalse .DontHaveThatItem
;	callasm LoadSilverLeaf
;	sjump .relearn_move
;
;.HeartScaleChoice:
;	getitemname STRING_BUFFER_3, HEART_SCALE
;	checkitem HEART_SCALE
;	iffalse .DontHaveThatItem
;	callasm LoadHeartScale
;;	sjump .relearn_move
;; fallthrough
;
;.relearn_move:
;	special MoveReminder
;	waitbutton
;	closetext
;	end
;
;.DontHaveThatItem:
;	writetext BlackthornMovesHouse_MoveReminderNoItemText
;	waitbutton
;	closetext
;	end

;LoadGoldLeaf:
;	ld a, GOLD_LEAF
;	ld [wMoveReminderItem], a
;	ret

;LoadSilverLeaf:
;	ld a, SILVER_LEAF
;	ld [wMoveReminderItem], a
;	ret

;LoadHeartScale:
;	ld a, HEART_SCALE
;	ld [wMoveReminderItem], a
;	ret

;PaymentMenuDataHeader:
;	db $40 ; flags
;	db 02, 00 ; start coords
;	db 11, 14 ; end coords
;	dw .MenuData
;	db 1 ; default option
;
;.MenuData:
;	db $80 ; flags
;	db 4 ; items
;	db "GOLD LEAF@"
;	db "SILVER LEAF@"
;	db "HEART SCALE@"
;;	db "2× TINYMUSHROOMs@"
;;	db "1× BIG MUSHROOM@"
;	db "CANCEL@"

;BlackthornMovesHouse_MoveReminderIntroText:
;	ntag "COLLECTOR:"
;	text "Hi, I'm the"
;	line "MOVE REMINDER!"
;
;	para "But I'm also a"
;	line "COLLECTOR."
;
;	para "If you bring me"
;	line "something neat,"
;	cont "I could help your"
;	roll "#MON remember"
;	cont "some moves."
;
;	para "Are you"
;	line "interested?"
;	done

;BlackthornMovesHouse_MoveReminderCancelText:
;	ntag "COLLECTOR:"
;	text "Come visit me"
;	line "again."
;	done

;BlackthornMovesHouse_MoveReminderNoItemText:
;	ntag "COLLECTOR:"
;	text "You don't have a"
;	line "@"
;	text_ram wStringBuffer3
;	text "!"
;
;	para "Go find some, then"
;	line "we can talk."
;
;	para "Sometimes you can"
;	line "find things under"
;	cont "rocks or in trees."
;	done

;;	ntag "COLLECTOR:"
;;	text "You don't have any"
;;	line "SILVER LEAVES or"
;;	cont "GOLD LEAVES."
;;
;;	para "Sometimes they'll"
;;	line "fall out of trees"
;;	cont "if you shake them."
;;
;;	para "Go find some, then"
;;	line "we can talk."
;;	done

;BlackthornMovesHouse_GiveMeWhatText:
;	ntag "COLLECTOR:"
;	text "What are you going"
;	line "to give me?"
;	done

;BlackthornMovesHouseBookshelf:
;	jumpstd DifficultBookshelfScript

BlackthornMovesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 6
	warp_event  3,  7, BLACKTHORN_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, FuchsiaMovesHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, FuchsiaMovesHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaMoveDeleter, -1
	object_event  5,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaMoveReminder, -1
