TorinPhoneCalleeScript: ; You call Torin
	gettrainername STRING_BUFFER_3, SCHOOLBOY, TORIN1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_TORIN_READY_FOR_REMATCH
	iftrue TorinWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal WEDNESDAY, TorinWantsBattle

	random 2
	ifequal 0, TorinWantsBattle

;.NotWednesday:
	farjump TorinSchool


TorinPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, SCHOOLBOY, TORIN1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_TORIN_READY_FOR_REMATCH
	iftrue TorinWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal WEDNESDAY, TorinWantsBattle

	random 3
	ifequal 0, TorinWantsBattle

;.GenericTorinCall:
	farjump Phone_GenericCall_Male

TorinWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	setflag ENGINE_TORIN_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

TorinWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	farjump TorinReminderScript
