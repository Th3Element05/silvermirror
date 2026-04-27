WadePhoneCalleeScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue WadeWaitingForBattle

	checkflag ENGINE_WADE_HAS_BERRY
	iftrue WadeRemindItem

	readvar VAR_WEEKDAY
	ifequal TUESDAY, WadeWantsBattle

	random 2
	ifequal 0, WadeWantsBattle

;.NotTuesday:
	random 2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, WadeRemindContestToday
	ifequal THURSDAY, WadeRemindContestToday
	ifequal SATURDAY, WadeRemindContestToday

.NoContest:
	farsjump WadeNoBerriesScript


WadePhoneCallerScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	farscall PhoneScript_GreetPhone_Male

	random 2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, WadeRemindContestToday
	ifequal THURSDAY, WadeRemindContestToday
	ifequal SATURDAY, WadeRemindContestToday

.NoContest:
	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue WadeWaitingForBattle

	checkflag ENGINE_WADE_HAS_BERRY
	iftrue WadeRemindItem

	random 3
	ifequal 0, WadeWantsBattle
	ifequal 1, WadeHasItem

	random 3
	ifequal 0, WadeFoundRare
	farsjump Phone_GenericCall_Male

WadeWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	setflag ENGINE_WADE_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

WadeWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	farsjump WadeReminderScript

WadeHasItem:
	setflag ENGINE_WADE_HAS_BERRY
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	farsjump PhoneScript_FoundItem_Male

WadeRemindItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	farsjump WadeComeQuickScript

WadeRemindContestToday:
	farsjump PhoneScript_BugCatchingContest

WadeFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male