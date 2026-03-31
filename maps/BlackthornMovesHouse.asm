	object_const_def

BlackthornMovesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornMoveDeleter:
	faceplayer
	opentext
	special MoveDeletion
	waitbutton
	closetext
	giveitem SILVER_LEAF
	end

BlackthornMoveReminder:
	faceplayer
	opentext
	writetext BlackthornMovesHouse_MoveReminderIntroText
	yesorno
	iffalse .refused
	checkitem GOLD_LEAF
	iftrue .have_a_gold_leaf ;.have_a_big_mushroom
	checkitem SILVER_LEAF
	iftrue .have_a_silver_leaf ;.have_a_tiny_mushroom
	writetext BlackthornMovesHouse_MoveReminderNoLeavesText
	waitbutton
	closetext
	end

.have_a_gold_leaf:
	checkitem SILVER_LEAF
	iftrue .have_both_leaves ;.have_both_mushrooms
	writetext BlackthornMovesHouse_GiveMeWhatText
	loadmenu GoldLeafMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .GoldLeafChoice
	jump .refused

.have_a_silver_leaf
	writetext BlackthornMovesHouse_GiveMeWhatText
	loadmenu SilverLeafMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .SilverLeafChoice
	jump .refused

.have_both_leaves:
	writetext BlackthornMovesHouse_GiveMeWhatText
	loadmenu BothLeavesMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .GoldLeafChoice
	ifequal $2, .SilverLeafChoice
	jump .refused

.SilverLeafChoice:
	getitemname STRING_BUFFER_3, SILVER_LEAF
	callasm LoadSilverLeaf
	sjump .relearn_move

.GoldLeafChoice:
	getitemname STRING_BUFFER_3, GOLD_LEAF
	callasm LoadGoldLeaf
;fallthrough

.relearn_move:
	special MoveReminder
	waitbutton
	closetext
	end

.refused:
	writetext BlackthornMovesHouse_MoveReminderCancelText
	waitbutton
	closetext
	end

LoadSilverLeaf:
	ld a, SILVER_LEAF
	ld [wMoveReminderItem], a
	ret

LoadGoldLeaf:
	ld a, GOLD_LEAF
	ld [wMoveReminderItem], a
	ret

GoldLeafMenuDataHeader:
	db $40 ; flags
	db 06, 00 ; start coords
	db 11, 14 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $80 ; flags
	db 2 ; items
	db "GOLD LEAF@"
;	db "1× BIG MUSHROOM@"
	db "CANCEL@"

SilverLeafMenuDataHeader:
	db $40 ; flags
	db 06, 00 ; start coords
	db 11, 14 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $80 ; flags
	db 2 ; items
	db "SILVER LEAF@"
;	db "2× TINYMUSHROOMs@"
	db "CANCEL@"

BothLeavesMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 14 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $80 ; flags
	db 3 ; items
	db "GOLD LEAF@"
	db "SILVER LEAF@"
;	db "2× TINYMUSHROOMs@"
;	db "1× BIG MUSHROOM@"
	db "CANCEL@"

BlackthornMovesHouse_MoveReminderIntroText:
	text "Hi, I'm the"
	line "MOVE REMINDER!"

	para "But I'm also a"
	line "COLLECTOR."

	para "If you bring me"
	line "a GOLD LEAF…"

	para "Or, perhaps a"
	line "SILVER LEAF…"

	para "I can make your"
	line "#MON remember"
	cont "it's moves."

	para "I could help your"
	line "#MON remember"
	cont "its old moves."

	para "Are you"
	line "interested?"
	done

;	text "Hi, I'm the"
;	line "MOVE REMINDER!"
;
;	para "I also love"
;	line "mushrooms."
;
;	para "If you bring me"
;	line "a BIG MUSHROOM,"
;	
;	para "or perhaps two"
;	line "TINYMUSHROOMs,"
;
;	para "I can make your"
;	line "#MON remember"
;	cont "it's moves."
;
;	para "Are you"
;	line "interested?"
;	done

BlackthornMovesHouse_MoveReminderCancelText:
	text "Come visit me"
	line "again."
	done

BlackthornMovesHouse_MoveReminderNoLeavesText:
	text "You don't have any"
	line "GOLD LEAVES or"
	cont "SILVER LEAVES."

	para "Go find some, then"
	line "we can talk."
	done

;	text "You're low on"
;	line "mushrooms!"
;	
;	para "Bring me mushrooms"
;	line "then we can talk."
;	done

BlackthornMovesHouse_GiveMeWhatText:
	text "What are you going"
	line "to give me?"
	done

BlackthornMovesHouseBookshelf:
	jumpstd DifficultBookshelfScript

BlackthornMovesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 6
	warp_event  3,  7, BLACKTHORN_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BlackthornMovesHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, BlackthornMovesHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornMoveDeleter, -1
	object_event  5,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornMoveReminder, -1
