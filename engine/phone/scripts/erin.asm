ErinPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, PICNICKER, ERIN1
	farscall PhoneScript_AnswerPhone_Female

	checkflag ENGINE_ERIN_READY_FOR_REMATCH
	iftrue ErinWaitinfForBattle

	readvar VAR_WEEKDAY
	ifequal SATURDAY, ErinWantsBattle

	random 2
	ifequal 0, ErinWantsBattle

;NotSaturday:
	farsjump ErinWorkingHardScript


ErinPhoneCallerScript:
	gettrainername STRING_BUFFER_3, PICNICKER, ERIN1
	farscall PhoneScript_GreetPhone_Female

	checkflag ENGINE_ERIN_READY_FOR_REMATCH
	iftrue ErinWaitinfForBattle

	readvar VAR_WEEKDAY
	ifequal SATURDAY, ErinWantsBattle

	random 3
	ifequal 0, ErinWantsBattle

;GenericCall:
	farsjump Phone_GenericCall_Female

ErinWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_10
	setflag ENGINE_ERIN_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Female

ErinWaitinfForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_10
	farsjump ErinReminderScript
