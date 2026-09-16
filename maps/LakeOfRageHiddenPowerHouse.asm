	object_const_def
;	const LAKEOFRAGEHIDDENPOWERHOUSE_FISHER

LakeOfRageHiddenPowerHouse_MapScripts:
	def_scene_scripts

	def_callbacks

HiddenPowerGuy:
	faceplayer
	opentext
	writetext HiddenPowerGuyAskMeditateText
	yesorno
	iffalse .declined
	special RevealHiddenPower
	waitbutton
	closetext
;	setevent EVENT_LEARNED_HIDDEN_POWERS
	end

.declined
	farwritetext _ComeMeditateAgainText
	waitbutton
	closetext
	end

HiddenPowerGuyAskMeditateText:
	ntag "MAN:"
	text "I am meditating…"

	para "Would you like to"
	line "meditate with me?"
	done

;HiddenPowerGuyText1:
;	text "…You have strayed"
;	line "far…"
;
;	para "Here I have medi-"
;	line "tated. Inside me,"
;
;	para "a new power has"
;	line "been awakened."
;
;	para "Let me share my"
;	line "power with your"
;
;	para "#MON."
;	line "Take this, child."
;	done

;HiddenPowerGuyText2:
;	text "Do you see it? It"
;	line "is HIDDEN POWER!"
;
;	para "It draws out the"
;	line "power of #MON"
;	cont "for attacking."
;
;	para "Remember this: its"
;	line "type and power de-"
;	cont "pend on the #-"
;	roll "MON using it."
;	done

HiddenPowerHouseBookshelf:
	jumpstd DifficultBookshelfScript

LakeOfRageHiddenPowerHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, HiddenPowerHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, HiddenPowerHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HiddenPowerGuy, -1
