	object_const_def

RedsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

RedsMom:
	checkevent EVENT_MET_PROF_ELM
	iffalse .GoMeetElm
	jumptextfaceplayer RedsMomWhenBoyGrowsUpText

.GoMeetElm:
	jumptextfaceplayer RedsMomHaveYouMetElmText

RedsMomHaveYouMetElmText:
	text "Hello."

	para "You look like a"
	line "#MON trainer."

	para "Have you met PROF."
	line "ELM?"

	para "His lab is next"
	line "door."
	done

RedsMomWhenBoyGrowsUpText:
	text "Hello."

	para "My boy wants to be"
	line "a #MON trainer"
	cont "when he grows up."

	para "He'd be excited to"
	line "meet your #MON."
	done

;RedsMomText1:
;	text "Hi!"
;
;	para "RED's been away"
;	line "for a long time."
;
;	para "He hasn't called"
;	line "either, so I have"
;	cont "no idea where he"
;	cont "is or what he's"
;	cont "been doing."
;
;	para "They say that no"
;	line "word is proof that"
;	cont "he's doing fine,"
;	cont "but I do worry"
;	cont "about him."
;	done

;RedsMomText2:
;	text "I worry about RED"
;	line "getting hurt or"
;	cont "sick.

;	para "But I'm proud that"
;	line "he is doing what"
;	cont "he wants to do."
;	done

RedsHouse1FStoveScript:
	jumptext RedsHouse1FStoveText
RedsHouse1FStoveText:
	text "There's something"
	line "in the oven."

	para "Whatever it is it"
	line "smells delicious!"
	done

RedsHouse1FSinkScript:
	jumptext RedsHouse1FSinkText
RedsHouse1FSinkText:
	text "The sink is nice"
	line "and clean."
	done

RedsHouse1FFridgeScript:
	jumptext RedsHouse1FFridgeText
RedsHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and"
	line "SODA POP!"
	done

RedsHouse1FTV:
	jumptext RedsHouse1FTVText
RedsHouse1FTVText:
	text "They have programs"
	line "that aren't shown"
	cont "in KANTO…"
	done

RedsHouse1FBookshelf:
	jumpstd PictureBookshelfScript

RedsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, NEW_BARK_TOWN, 1
	warp_event  5,  7, NEW_BARK_TOWN, 1
	warp_event  9,  0, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, RedsHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, RedsHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, RedsHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, RedsHouse1FTV
	bg_event  6,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  7,  1, BGEVENT_READ, RedsHouse1FBookshelf

	def_object_events
	object_event  4,  4, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, DAY | NITE, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
	object_event  7,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
	object_event  0,  2, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, EVE, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1

; MORN | DAY | EVE | NITE