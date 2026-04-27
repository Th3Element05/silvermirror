WaltPhoneCalleeScript: ; You call Walt
	gettrainername STRING_BUFFER_3, FIREBREATHER, WALT1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_WALT_READY_FOR_REMATCH
	iftrue WaltWaitingForBattle

	random 2
	ifequal 0, WaltWantsToBattle

	readvar VAR_WEEKDAY
	ifequal MONDAY, WaltWantsToBattle

;.NotMonday:
	ifequal TUESDAY, WaltContestToday
	ifequal THURSDAY, WaltContestToday
	ifequal SATURDAY, WaltContestToday
	farjump WaltTypesOfPokemon


WaltPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, FIREBREATHER, WALT1
	farscall PhoneScript_GreetPhone_Male

	random 4
	ifequal 0, WaltWantsToBattle

	readvar VAR_WEEKDAY
	ifequal MONDAY, WaltWantsToBattle

;.NotMonday:
	ifequal TUESDAY, WaltContestToday
	ifequal THURSDAY, WaltContestToday
	ifequal SATURDAY, WaltContestToday

	random 3
	ifequal 0, WaltFoundRare

	farjump WaltNewTechnique

WaltWantsToBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	setflag ENGINE_WALT_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

WaltWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farjump WaltReminderScript

WaltFoundRare:
	farjump Phone_CheckIfUnseenRare_Male

WaltContestToday:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farjump PhoneScript_BugCatchingContest
