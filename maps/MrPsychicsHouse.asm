	object_const_def
	const MRPSYCHICSHOUSE_FISHING_GURU

MrPsychicsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrPsychicScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM04_CALM_MIND
	iftrue .AlreadyGotCalmMind
	writetext MrPsychicTMText1
	promptbutton
	verbosegiveitem TM_CALM_MIND
	iffalse .declined
	setevent EVENT_GOT_TM04_CALM_MIND
	writetext MrPsychicTMText2
	sjump .skip_welcome

.AlreadyGotCalmMind
	writetext MrPsychicIntroText
.skip_welcome
	yesorno
	iffalse .declined
	special MrPsychic
	waitbutton
	closetext
	end

.declined
	farwritetext _MrPsychicComeAgainText
	waitbutton
	closetext
	end

MrPsychicsHouseBookshelf:
	jumpstd DifficultBookshelfScript

MrPsychicTMText1:
	ntag "MR.PSYCHIC:"
	text "…Wait! Don't say"
	line "a word!"

	para "<……>"

	para "…I got it!"

	para "You wanted this!"
	done

MrPsychicTMText2:
	ntag "MR.PSYCHIC:"
	text "TM04 is CALM MIND."
	line "By focusing their"
	cont "mind, #MON can"
	roll "raise both their"
	cont "SPECIAL ATTACK and"
	roll "SPECIAL DEFENSE!"

	para "By calming your"
	line "mind, even people"
	cont "can access their"
	roll "own psychic power!"

	para "I can read the"
	line "potential of your"
	cont "#MON with my"
	roll "psychic power."

	para "Shall I read one"
	line "of your #MON?"
	done

MrPsychicIntroText:
	ntag "MR.PSYCHIC:"
	text "Hello, <PLAYER>!"
	line "I was expecting"
	cont "you!"

	para "I can read the"
	line "potential of your"
	cont "#MON with my"
	roll "psychic power."

	para "Shall I read one"
	line "of your #MON?"
	done

; itemballs
MrPsychicsHouseTwistedSpoon:
	itemball TWISTEDSPOON

MrPsychicsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 5
	warp_event  3,  7, SAFFRON_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrPsychicsHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MrPsychicsHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MrPsychicScript, -1
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MrPsychicsHouseTwistedSpoon, EVENT_MR_PSYCHICS_HOUSE_TWISTED_SPOON
