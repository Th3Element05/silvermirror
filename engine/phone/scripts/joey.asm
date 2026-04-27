JoeyPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, YOUNGSTER, JOEY1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_JOEY_READY_FOR_REMATCH
	iftrue JoeyWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal MONDAY, JoeyWantsBattle

	random 2
	ifequal 0, JoeyWantsBattle

;.NotMonday:
	special RandomPhoneMon
	farsjump JoeyHangUpScript


JoeyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, YOUNGSTER, JOEY1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_JOEY_READY_FOR_REMATCH
	iftrue JoeyWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal MONDAY, JoeyWantsBattle

	random 4
	ifequal 0, JoeyWantsBattle

;.Generic:
	farsjump Phone_GenericCall_Male

JoeyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_30
	setflag ENGINE_JOEY_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

JoeyWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_30
	farsjump JoeyReminderScript