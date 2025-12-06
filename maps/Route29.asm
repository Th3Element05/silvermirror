	object_const_def
	const ROUTE29_ORAN_BERRY
	const ROUTE29_TUSCANY
;	const ROUTE_29_COOLTRAINER_M1
;	const ROUTE_29_YOUNGSTER
;	const ROUTE_29_TEACHER1
;	const ROUTE_29_FISHER
;	const ROUTE_29_COOLTRAINER_M2
;	const ROUTE_29_POKE_BALL

Route29_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route29FruittreesandTuscany

Route29FruittreesandTuscany:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_29_FRUIT
	iftrue .Tuscany
	appear ROUTE29_ORAN_BERRY
	; fallthrough
.Tuscany:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .TuscanyAppears
	disappear ROUTE29_TUSCANY
	endcallback

.TuscanyAppears:
	appear ROUTE29_TUSCANY
	endcallback

; fruit
Route29_OranBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, ORAN_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem ORAN_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE29_ORAN_BERRY
	setflag ENGINE_DAILY_ROUTE_29_FRUIT
.NoRoomInBag
	closetext
	end

Route29_NoFruit:
	farsjump Std_NoFruitScript



;Route29YoungsterScript:
;	jumptextfaceplayer Route29YoungsterText

;Route29TeacherScript:
;	jumptextfaceplayer Route29TeacherText

;Route29FisherScript:
;	jumptextfaceplayer Route29FisherText

;Route29CooltrainerMScript:
;	faceplayer
;	opentext
;	checktime DAY
;	iftrue .day_morn
;	checktime NITE
;	iftrue .nite
;.day_morn
;	writetext Route29CooltrainerMText_WaitingForNight
;	waitbutton
;	closetext
;	end
;
;.nite
;	writetext Route29CooltrainerMText_WaitingForMorning
;	waitbutton
;	closetext
;	end

;Route29Sign1:
;	jumptext Route29Sign1Text

;Route29Sign2:
;	jumptext Route29Sign2Text

;Route29Potion:
;	itemball POTION



;Route29YoungsterText:
;	text "Yo. How are your"
;	line "#MON?"
;
;	para "If they're weak"
;	line "and not ready for"
;
;	para "battle, keep out"
;	line "of the grass."
;	done

;Route29TeacherText:
;	text "See those ledges?"
;	line "It's scary to jump"
;	cont "off them."
;
;	para "But you can go to"
;	line "NEW BARK without"
;
;	para "walking through"
;	line "the grass."
;	done

;Route29FisherText:
;	text "I wanted to take a"
;	line "break, so I saved"
;
;	para "to record my"
;	line "progress."
;	done

;Route29CooltrainerMText_WaitingForDay: ; unreferenced
;	text "I'm waiting for"
;	line "#MON that"
;
;	para "appear only in the"
;	line "daytime."
;	done

;Route29CooltrainerMText_WaitingForNight:
;	text "I'm waiting for"
;	line "#MON that"
;
;	para "appear only at"
;	line "night."
;	done

;Route29CooltrainerMText_WaitingForMorning:
;	text "I'm waiting for"
;	line "#MON that"
;
;	para "appear only in the"
;	line "morning."
;	done

;Route29Sign1Text:
;	text "ROUTE 29"
;
;	para "CHERRYGROVE CITY -"
;	line "NEW BARK TOWN"
;	done

;Route29Sign2Text:
;	text "ROUTE 29"
;
;	para "CHERRYGROVE CITY -"
;	line "NEW BARK TOWN"
;	done

TuscanyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SILK_SCARF_FROM_TUSCANY
	iftrue TuscanyTuesdayScript
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, TuscanyNotTuesdayScript
	checkevent EVENT_MET_TUSCANY_OF_TUESDAY
	iftrue .MetTuscany
	writetext MeetTuscanyText
	promptbutton
	setevent EVENT_MET_TUSCANY_OF_TUESDAY
.MetTuscany:
	writetext TuscanyGivesGiftText
	promptbutton
	verbosegiveitem SILK_SCARF
	iffalse TuscanyDoneScript
	setevent EVENT_GOT_SILK_SCARF_FROM_TUSCANY
	writetext TuscanyGaveGiftText
	waitbutton
	closetext
	end

TuscanyTuesdayScript:
	writetext TuscanyTuesdayText
	waitbutton
TuscanyDoneScript:
	closetext
	end

TuscanyNotTuesdayScript:
	writetext TuscanyNotTuesdayText
	waitbutton
	closetext
	end

MeetTuscanyText:
	text "TUSCANY: I do be-"
	line "lieve that this is"

	para "the first time"
	line "we've met?"

	para "Please allow me to"
	line "introduce myself."

	para "I am TUSCANY of"
	line "Tuesday."
	done

TuscanyGivesGiftText:
	text "By way of intro-"
	line "duction, please"

	para "accept this gift,"
	line "a PINK BOW."
	done

TuscanyGaveGiftText:
	text "TUSCANY: Wouldn't"
	line "you agree that it"
	cont "is most adorable?"

	para "It strengthens"
	line "normal-type moves."

	para "I am certain it"
	line "will be of use."
	done

TuscanyTuesdayText:
	text "TUSCANY: Have you"
	line "met MONICA, my"
	cont "older sister?"

	para "Or my younger"
	line "brother, WESLEY?"

	para "I am the second of"
	line "seven children."
	done

TuscanyNotTuesdayText:
	text "TUSCANY: Today is"
	line "not Tuesday. That"
	cont "is unfortunate…"
	done

Route29_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  1, ROUTE_29_ROUTE_46_GATE, 3

	def_coord_events
;	coord_event 53,  8, SCENE_ROUTE_29_CATCH_TUTORIAL, Route29Tutorial1
;	coord_event 53,  9, SCENE_ROUTE_29_CATCH_TUTORIAL, Route29Tutorial2

	def_bg_events
	bg_event 12,  2, BGEVENT_READ, Route29_NoFruit
;	bg_event 51,  7, BGEVENT_READ, Route29Sign1
;	bg_event  3,  5, BGEVENT_READ, Route29Sign2

	def_object_events
	object_event 12,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route29_OranBerry, EVENT_ROUTE_29_ORAN_BERRY
	object_event 29, 12, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TuscanyScript, EVENT_ROUTE_29_TUSCANY_OF_TUESDAY
;	object_event 50, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CatchingTutorialDudeScript, -1
;	object_event 27, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29YoungsterScript, -1
;	object_event 15, 11, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29TeacherScript, -1
;	object_event 25,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route29FisherScript, -1
;	object_event 13,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29CooltrainerMScript, -1
;	object_event 48,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route29Potion, EVENT_ROUTE_29_POTION
