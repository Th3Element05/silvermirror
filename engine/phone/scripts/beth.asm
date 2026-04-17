BethPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERF, BETH1
	farscall PhoneScript_AnswerPhone_Female

	checkflag ENGINE_BETH_READY_FOR_REMATCH
	iftrue BethWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal FRIDAY, BethWantsBattle

	random 2
	ifequal 0, BethWantsBattle

;NotFriday:
	farsjump BethHangUpScript


BethPhoneCallerScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERF, BETH1
	farscall PhoneScript_GreetPhone_Female

	checkflag ENGINE_BETH_READY_FOR_REMATCH
	iftrue BethWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal FRIDAY, BethWantsBattle

	random 3
	ifequal 0, BethWantsBattle

;Generic:
	farsjump Phone_GenericCall_Female

BethWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	setflag ENGINE_BETH_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Female

BethWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	farsjump BethReminderScript
