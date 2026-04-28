DerekPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, POKEFANM, DEREK1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_DEREK_HAS_NUGGET
	iftrue DerekRemindNugget

	random 2
	ifequal 0, .NoContest

	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, DerekContestToday
	ifequal THURSDAY, DerekContestToday
	ifequal SATURDAY, DerekContestToday

.NoContest:
	farsjump DerekHangUpScript


DerekPhoneCallerScript:
	gettrainername STRING_BUFFER_3, POKEFANM, DEREK1
	farscall PhoneScript_GreetPhone_Male

	random 2
	ifequal 0, .NoContest

	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, DerekContestToday
	ifequal THURSDAY, DerekContestToday
	ifequal SATURDAY, DerekContestToday

.NoContest:
	random 4
	ifequal 0, .Nugget

	farsjump Phone_GenericCall_Male

.Nugget:
	setflag ENGINE_DEREK_HAS_NUGGET
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_39
	farsjump PhoneScript_FoundItem_Male

DerekContestToday:
	farsjump PhoneScript_BugCatchingContest

DerekRemindNugget:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_39
	farsjump DerekComePickUpScript