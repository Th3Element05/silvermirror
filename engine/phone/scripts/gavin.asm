GavinPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVIN1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_GAVIN_READY_FOR_REMATCH
	iftrue GavinWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal THURSDAY, GavinWantsRematch

	random 2
	ifequal 0, GavinWantsRematch

;NotThursday:
	farsjump GavinHangUpNotThursdayScript


GavinPhoneCallerScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVIN1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_GAVIN_READY_FOR_REMATCH
	iftrue GavinWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal THURSDAY, GavinWantsRematch

	random 3
	ifequal 0, GavinWantsRematch

;WaitingForBattle:
	random 3
	ifequal 0, GavinFoundRare
	farsjump Phone_GenericCall_Male

GavinWantsRematch:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	setflag ENGINE_GAVIN_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

GavinWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	farsjump GavinReminderScript

GavinFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male
