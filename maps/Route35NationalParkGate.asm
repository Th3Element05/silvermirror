	object_const_def
	const ROUTE_35NATIONALPARKGATE_OFFICER1
	const ROUTE_35NATIONALPARKGATE_YOUNGSTER
	const ROUTE_35NATIONALPARKGATE_OFFICER2

Route35NationalParkGate_MapScripts:
	def_scene_scripts
	scene_script Route35NationalParkGateNoop1Scene,             SCENE_ROUTE_35NATIONALPARKGATE_NOOP
	scene_script Route35NationalParkGateNoop2Scene,             SCENE_ROUTE_35NATIONALPARKGATE_UNUSED
	scene_script Route35NationalParkGateLeaveContestEarlyScene, SCENE_ROUTE_35NATIONALPARKGATE_LEAVE_CONTEST_EARLY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route35NationalParkGateCheckIfContestRunningCallback
	callback MAPCALLBACK_OBJECTS, Route35NationalParkGateCheckIfContestAvailableCallback

Route35NationalParkGateNoop1Scene:
	end

Route35NationalParkGateNoop2Scene:
	end

Route35NationalParkGateLeaveContestEarlyScene:
	sdefer Route35NationalParkGateLeavingContestEarlyScript
	end

Route35NationalParkGateCheckIfContestRunningCallback:
	checkflag ENGINE_BUG_CONTEST_TIMER
	iftrue Route35NationalParkBugContestIsRunningScript
	setscene SCENE_ROUTE_35NATIONALPARKGATE_NOOP
	endcallback

Route35NationalParkBugContestIsRunningScript:
	setscene SCENE_ROUTE_35NATIONALPARKGATE_LEAVE_CONTEST_EARLY
	endcallback

Route35NationalParkGateCheckIfContestAvailableCallback:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .SetContestOfficer
	ifequal THURSDAY, .SetContestOfficer
	ifequal SATURDAY, .SetContestOfficer
	checkflag ENGINE_BUG_CONTEST_TIMER
	iftrue Route35NationalParkBugContestIsRunningScript
	disappear ROUTE_35NATIONALPARKGATE_OFFICER1
	appear ROUTE_35NATIONALPARKGATE_YOUNGSTER
	appear ROUTE_35NATIONALPARKGATE_OFFICER2
	endcallback

.SetContestOfficer:
	appear ROUTE_35NATIONALPARKGATE_OFFICER1
	disappear ROUTE_35NATIONALPARKGATE_YOUNGSTER
	disappear ROUTE_35NATIONALPARKGATE_OFFICER2
	endcallback

Route35NationalParkGateLeavingContestEarlyScript:
	applymovement PLAYER, Route35NationalParkGatePlayerApproachOfficer1Movement
	turnobject ROUTE_35NATIONALPARKGATE_OFFICER1, RIGHT
	opentext
	readvar VAR_CONTESTMINUTES
	addval 1
	getnum STRING_BUFFER_3
	writetext Route36NationalParkGateOfficer1WantToFinishText
	yesorno
	iffalse .GoBackToContest
	writetext Route35NationalParkGateOfficer1WaitAtNorthGateText
	waitbutton
	closetext
	jumpstd BugContestResultsWarpScript

.GoBackToContest:
	writetext Route36NationalParkGateOfficer1OkGoFinishText
	waitbutton
	closetext
	scall Route35NationalParkGate_EnterContest
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	warpfacing UP, NATIONAL_PARK_BUG_CONTEST, 10, 47
	end

Route35OfficerScriptContest:
	readvar VAR_WEEKDAY
	ifequal SUNDAY, Route35NationalParkGate_NoContestToday
	ifequal MONDAY, Route35NationalParkGate_NoContestToday
	ifequal WEDNESDAY, Route35NationalParkGate_NoContestToday
	ifequal FRIDAY, Route35NationalParkGate_NoContestToday
	faceplayer
	opentext
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue Route35NationalParkGate_ContestIsOver
	scall Route35NationalParkGate_GetDayOfWeek
	writetext Route36NationalParkGateOfficer1AskToParticipateText
	yesorno
	iffalse Route35NationalParkGate_DeclinedToParticipate
	readvar VAR_PARTYCOUNT
	ifgreater 1, Route35NationalParkGate_LeaveTheRestBehind
	special ContestDropOffMons
	clearevent EVENT_LEFT_MONS_WITH_CONTEST_OFFICER
Route35NationalParkGate_OkayToProceed:
	setflag ENGINE_BUG_CONTEST_TIMER
	special PlayMapMusic
	writetext Route36NationalParkGateOfficer1GiveParkBallsText
	promptbutton
	writetext Route36NationalParkGatePlayerReceivedParkBallsText
	playsound SFX_ITEM
	waitsfx
	writetext Route36NationalParkGateOfficer1ExplainsRulesText
	waitbutton
	closetext
	special GiveParkBalls
	scall Route35NationalParkGate_EnterContest
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	special SelectRandomBugContestContestants
	warpfacing UP, NATIONAL_PARK_BUG_CONTEST, 10, 47
	end

Route35NationalParkGate_EnterContest:
	readvar VAR_FACING
	ifequal LEFT, Route35NationalParkGate_FacingLeft
	applymovement PLAYER, Route35NationalParkGatePlayerGoAroundOfficerAndEnterParkMovement
	end

Route35NationalParkGate_FacingLeft:
	applymovement PLAYER, Route35NationalParkGatePlayerEnterParkMovement
	end

Route35NationalParkGate_LeaveTheRestBehind:
	readvar VAR_PARTYCOUNT
	ifless PARTY_LENGTH, Route35NationalParkGate_LessThanFullParty
	readvar VAR_BOXSPACE
	ifequal 0, Route35NationalParkGate_NoRoomInBox

Route35NationalParkGate_LessThanFullParty:
	special CheckFirstMonIsEgg
	ifequal TRUE, Route35NationalParkGate_FirstMonIsEgg
	writetext Route36NationalParkGateOfficer1AskToUseFirstMonText
	yesorno
	iffalse Route35NationalParkGate_DeclinedToLeaveMonsBehind
	special ContestDropOffMons
	iftrue Route35NationalParkGate_FirstMonIsFainted
	setevent EVENT_LEFT_MONS_WITH_CONTEST_OFFICER
	writetext Route36NationalParkGateOfficer1WellHoldYourMonText
	promptbutton
	writetext Route36NationalParkGatePlayersMonLeftWithHelperText
	playsound SFX_GOT_SAFARI_BALLS
	waitsfx
	promptbutton
	sjump Route35NationalParkGate_OkayToProceed

Route35NationalParkGate_DeclinedToParticipate:
	writetext Route36NationalParkGateOfficer1TakePartInFutureText
	waitbutton
	closetext
	end

Route35NationalParkGate_DeclinedToLeaveMonsBehind:
	writetext Route36NationalParkGateOfficer1ChooseMonAndComeBackText
	waitbutton
	closetext
	end

Route35NationalParkGate_FirstMonIsFainted:
	writetext Route36NationalParkGateOfficer1FirstMonCantBattleText
	waitbutton
	closetext
	end

Route35NationalParkGate_NoRoomInBox:
	writetext Route36NationalParkGateOfficer1MakeRoomText
	waitbutton
	closetext
	end

Route35NationalParkGate_FirstMonIsEgg:
	writetext Route36NationalParkGateOfficer1EggAsFirstMonText
	waitbutton
	closetext
	end

Route35NationalParkGate_ContestIsOver:
	writetext Route36NationalParkGateOfficer1ContestIsOverText
	waitbutton
	closetext
	end

Route35NationalParkGate_NoContestToday:
	jumptextfaceplayer Route35NationalParkGateOfficer1WeHoldContestsText

Route35NationalParkGateOfficerScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue Route35NationalParkGate_ContestIsOver
	writetext Route35NationalParkGateOfficer1WeHoldContestsText
	waitbutton
	closetext
	end

Route35NationalParkGateYoungsterScript:
	jumptextfaceplayer Route35NationalParkGateYoungsterText

BugCatchingContestExplanationSign:
	jumptext BugCatchingContestExplanationText

Route35NationalParkGate_GetDayOfWeek:
	jumpstd DayToTextScript
	end

Route35NationalParkGatePlayerApproachOfficer1Movement:
	step DOWN
	turn_head LEFT
	step_end

Route35NationalParkGatePlayerGoAroundOfficerAndEnterParkMovement:
	step RIGHT
	step UP
	step UP
	step_end

Route35NationalParkGatePlayerEnterParkMovement:
	step UP
	step_end

;Route35NationalParkGateOfficer1AskToParticipateText:
;	text "Today's @"
;	text_ram wStringBuffer3
;	text "."
;	line "That means the"
;	cont "Bug-Catching Con-"
;	roll "test is on today."
;
;	para "The rules are sim-"
;	line "ple."
;
;	para "Using one of your"
;	line "#MON, catch a"
;	cont "bug #MON to be"
;	roll "judged."
;
;	para "Would you like to"
;	line "give it a try?"
;	done

;Route35NationalParkGateOfficer1GiveParkBallsText:
;	text "Here are the PARK"
;	line "BALLs for the"
;	cont "Contest."
;	done

;Route35NationalParkGatePlayerReceivedParkBallsText:
;	text "<PLAYER> received"
;	line "{d:BUG_CONTEST_BALLS} PARK BALLs."
;	done

;Route35NationalParkGateOfficer1ExplainsRulesText:
;	text "The person who"
;	line "gets the strong-"
;	cont "est bug #MON"
;	roll "is the winner."
;
;	para "You have {d:BUG_CONTEST_MINUTES}"
;	line "minutes."
;
;	para "If you run out of"
;	line "PARK BALLs, you're"
;	cont "done."
;
;	para "You can keep the"
;	line "last #MON you"
;	cont "catch as your own."
;
;	para "Go out and catch"
;	line "the strongest bug"
;	cont "#MON you can"
;	roll "find!"
;	done

;Route35NationalParkGateOfficer1AskToUseFirstMonText:
;	text "Uh-oh…"
;
;	para "You have more than"
;	line "one #MON."
;
;	para "You'll have to use"
;	line "@"
;	text_ram wStringBuffer3
;	text ", the"
;	cont "first #MON in"
;	roll "your party."
;
;	para "Is that OK with"
;	line "you?"
;	done

;Route35NationalParkGateOfficer1WellHoldYourMonText:
;	text "Fine, we'll hold"
;	line "your other #MON"
;	cont "while you compete."
;	done

;Route35NationalParkGatePlayersMonLeftWithHelperText:
;	text "<PLAYER>'s #MON"
;	line "were left with the"
;	cont "CONTEST HELPER."
;	done

;Route35NationalParkGateOfficer1ChooseMonAndComeBackText:
;	text "Please choose the"
;	line "#MON to be used"
;	cont "in the Contest,"
;	roll "then come see me."
;	done

;Route35NationalParkGateOfficer1TakePartInFutureText:
;	text "OK. We hope you'll"
;	line "take part in the"
;	cont "future."
;	done

;Route35NationalParkGateOfficer1FirstMonCantBattleText:
;	text "Uh-oh…"
;	line "The first #MON"
;	cont "in your party"
;	roll "can't battle."
;
;	para "Please switch it"
;	line "with the #MON"
;	cont "you want to use,"
;	roll "then come see me."
;	done

;Route35NationalParkGateOfficer1MakeRoomText:
;	text "Uh-oh…"
;	line "Both your party"
;	cont "and your PC BOX"
;	roll "are full."
;
;	para "You have no room"
;	line "to put the bug"
;	cont "#MON you catch."
;
;	para "Please make room"
;	line "in your party or"
;	cont "your PC BOX, then"
;	roll "come see me."
;	done

;Route35NationalParkGateOfficer1EggAsFirstMonText:
;	text "Uh-oh…"
;	line "You have an EGG as"
;	cont "the first #MON"
;	roll "in your party."
;
;	para "Please switch it"
;	line "with the #MON"
;	cont "you want to use,"
;	roll "then come see me."
;	done

;Route35NationalParkGateOfficer1WantToFinishText:
;	text "You still have @"
;	text_ram wStringBuffer3
;	text_start
;	line "minute(s) left."
;
;	para "Do you want to"
;	line "finish now?"
;	done

Route35NationalParkGateOfficer1WaitAtNorthGateText:
	text "OK. Please wait at"
	line "the North Gate for"
	cont "the announcement"
	roll "of the winners."
	done

;Route35NationalParkGateOfficer1OkGoFinishText:
;	text "OK. Please get"
;	line "back outside and"
;	cont "finish up."
;	done

;Route35NationalParkGateOfficer1ContestIsOverText:
;	text "Today's Contest is"
;	line "over. We hope you"
;	cont "will participate"
;	roll "in the future."
;	done

Route35NationalParkGateOfficer1WeHoldContestsText:
	text "We hold Contests"
	line "regularly in the"
	cont "PARK. You should"
	roll "give it a shot."
	done

Route35NationalParkGateYoungsterText:
	text "When is the next"
	line "Bug-Catching Con-"
	cont "test going to be?"
	done

BugCatchingContestExplanationText:
	text "The Bug-Catching"
	line "Contest is held on"
	cont "Tuesday, Thursday"
	roll "and Saturday."

	para "Not only do you"
	line "earn a prize just"
	cont "for participating,"
	roll "you also get to"
	cont "keep the last bug"
	roll "#MON you may have"
	cont "caught during the"
	roll "contest!"
	done

;	para "Not only do you"
;	line "earn a prize just"
;	cont "for participating,"
;	roll "you also get to"
;	cont "keep the bug"
;	roll "#MON you may"
;	cont "have at the end of"
;	roll "the contest."
;	done

Route35NationalParkGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, NATIONAL_PARK, 3
	warp_event  4,  0, NATIONAL_PARK, 4
	warp_event  3,  7, ROUTE_35, 3
	warp_event  4,  7, ROUTE_35, 3

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, BugCatchingContestExplanationSign

	def_object_events
	object_event  2,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35OfficerScriptContest, EVENT_ROUTE_35_NATIONAL_PARK_GATE_OFFICER_CONTEST_DAY
	object_event  6,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route35NationalParkGateYoungsterScript, EVENT_ROUTE_35_NATIONAL_PARK_GATE_YOUNGSTER
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35NationalParkGateOfficerScript, EVENT_ROUTE_35_NATIONAL_PARK_GATE_OFFICER_NOT_CONTEST_DAY
