	object_const_def

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherAbner:
	trainer BUG_CATCHER, ABNER, EVENT_BEAT_BUG_CATCHER_ABNER, BugCatcherAbnerSeenText, BugCatcherAbnerBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAbnerAfterBattleText
	waitbutton
	closetext
	end

BugCatcherAbnerSeenText:
	text "There aren't many"
	line "bugs out here."
	done

BugCatcherAbnerBeatenText:
	text "No!"
	line "You're kidding!"
	done

BugCatcherAbnerAfterBattleText:
	text "I like bugs, so"
	line "I'm going back to"
	cont "VIRIDIAN FOREST."
	done

TrainerCoupleTimAndSue_Sue:
	trainer COUPLE, TIMANDSUE1, EVENT_BEAT_COUPLE_TIMANDSUE, CoupleSueSeenText, CoupleTimAndSueBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	turnobject LAST_TALKED, LEFT
;	opentext
;	writetext CoupleTimAndSueAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_COUPLE_TIM_AND_SUE
	opentext
	checkflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	iftrue TimAndSueWantsBattle
	checkcellnum PHONE_COUPLE_TIM_AND_SUE
	iftrue TrainerCoupleTimAndSue_SueDefeated
	checkevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	iftrue TimAndSueAskedBefore
	writetext CoupleTimandSue_SueAfterBattleText
	waitbutton
	setevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	scall TimAndSueAskNumber1
	jump TimAndSueAskForNumber

TrainerCoupleTimAndSue_Tim:
	trainer COUPLE, TIMANDSUE1, EVENT_BEAT_COUPLE_TIMANDSUE, CoupleTimSeenText, CoupleTimandSueBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	turnobject LAST_TALKED, LEFT
;	opentext
;	writetext CoupleTimAndSueAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_COUPLE_TIM_AND_SUE
	opentext
	checkflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	iftrue TimAndSueWantsBattle
	checkcellnum PHONE_COUPLE_TIM_AND_SUE
	iftrue CoupleTimAndSue_TimDefeated
	checkevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	iftrue TimAndSueAskedBefore
	writetext CoupleTimAndSue_TimAfterBattleText
	waitbutton
	setevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	scall TimAndSueAskNumber1
	jump TimAndSueAskForNumber

TimAndSueAskedBefore:
	scall TimAndSueAskNumber2
TimAndSueAskForNumber:
	askforphonenumber PHONE_COUPLE_TIM_AND_SUE
	ifequal PHONE_CONTACTS_FULL, TimAndSuePhoneFull
	ifequal PHONE_CONTACT_REFUSED, TimAndSueNumberDeclined
	gettrainername STRING_BUFFER_3, COUPLE, TIMANDSUE1
	scall TimAndSueRegisteredNumber
	jump TimAndSueNumberAccepted

TimAndSueWantsBattle:
	scall TimAndSueRematch
	winlosstext CoupleTimandSueBeatenText, 0
	checkevent ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue TimAndSueLoadFight0
	checkevent ENGINE_FLYPOINT_LAVENDER
	iftrue TimAndSueLoadFight3
	loadtrainer COUPLE, TIMANDSUE_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	end

TimAndSueLoadFight3:
	loadtrainer COUPLE, TIMANDSUE_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	end

TimAndSueLoadFight0:
	loadtrainer COUPLE, TIMANDSUE_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	end

TrainerCoupleTimAndSue_SueDefeated:
	writetext CoupleTimandSue_SueAfterBattleText
	waitbutton
	closetext
	end

CoupleTimAndSue_TimDefeated:
	writetext CoupleTimAndSue_TimAfterBattleText
	waitbutton
	closetext
	end

TimAndSueAskNumber1:
	jumpstd AskNumber1FScript
	end

TimAndSueAskNumber2:
	jumpstd AskNumber2FScript
	end

TimAndSueRegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

TimAndSueNumberAccepted:
	jumpstd NumberAcceptedFScript
	end

TimAndSueNumberDeclined:
	jumpstd NumberDeclinedFScript
	end

TimAndSuePhoneFull:
	jumpstd PhoneFullFScript
	end

TimAndSueRematch:
	jumpstd RematchFScript
	end

CoupleSueSeenText:
	text "SUE: Excuse me!"
	line "This is a private"
	cont "conversation!"

	para "TIM: Stop eaves-"
	line "dropping!"
	done

CoupleTimSeenText:
	text "TIM: Who's there?"
	line "Quit listening in"
	cont "on us!"

	para "SUE: Excuse me!"
	line "This is a private"
	cont "conversation!"
	done

CoupleTimAndSueBeatenText:
	text "We just can't win!"
	done

;CoupleTimAndSueAfterBattleText:
;	text "Whisper…"
;	line "whisper…"
;	done

CoupleTimandSue_TimAfterBattleText:
	text "TIM: If you've"
	line "beaten her, you"
	cont "must be strong!"
	done

CoupleTimandSue_SueAfterBattleText:
	text "SUE: That strength"
	line "of yours…"

	para "I've got it!"
	line "Are you in love?"
	done

TrainerBugCatcherEllis:
	trainer BUG_CATCHER, ELLIS, EVENT_BEAT_BUG_CATCHER_ELLIS, BugCatcherEllisSeenText, BugCatcherEllisBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEllisAfterBattleText
	waitbutton
	closetext
	end

BugCatcherEllisSeenText:
	text "I've never seen"
	line "you around!"
	cont "Are you good?"
	done

BugCatcherEllisBeatenText:
	text "You"
	line "are too good!"
	done

BugCatcherEllisAfterBattleText:
	text "Are my #MON"
	line "weak? Or, am I"
	cont "just bad?"
	done

TrainerPicnickerEmily:
	trainer PICNICKER, EMILY, EVENT_BEAT_PICNICKER_EMILY, PicnickerEmilySeenText, PicnickerEmilyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerEmilyAfterBattleText
	waitbutton
	closetext
	end

PicnickerEmilySeenText:
	text "Me? Well, OK."
	line "I'll play!"
	done

PicnickerEmilyBeatenText:
	text "Just"
	line "didn't work!"
	done

PicnickerEmilyAfterBattleText:
	text "I want to get"
	line "stronger! What's"
	cont "your secret?"
	done

TrainerCamperLloyd:
	trainer CAMPER, LLOYD, EVENT_BEAT_CAMPER_LLOYD, CamperLloydSeenText, CamperLloydBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperLloydAfterBattleText
	waitbutton
	closetext
	end

CamperLloydSeenText:
	text "Huh? You want"
	line "to talk to me?"
	done

CamperLloydBeatenText:
	text "I"
	line "didn't start it!"
	done

CamperLloydAfterBattleText:
	text "I should carry"
	line "more #MON with"
	cont "me for safety."
	done

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  9, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event 10,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19, 11, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events
	object_event  0, 11, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherAbner, -1
	object_event 10, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCoupleTimAndSue_Tim, -1
	object_event 11, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCoupleTimAndSue_Sue, -1
	object_event 19, 22, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEllis, -1
	object_event 11, 26, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerEmily, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperLloyd, -1
