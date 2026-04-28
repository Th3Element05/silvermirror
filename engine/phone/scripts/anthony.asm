AnthonyPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, HIKER, ANTHONY1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_ANTHONY_READY_FOR_REMATCH
	iftrue AnthonyWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal SUNDAY, AnthonyWantsBattle

	random 2
	ifequal 0, AnthonyWantsBattle

	farsjump AnthonyHangUpScript


AnthonyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, HIKER, ANTHONY1
	farscall PhoneScript_GreetPhone_Male

	readvar VAR_WEEKDAY
	ifequal SUNDAY, AnthonyWantsBattle

	random 3
	ifequal 0, AnthonyWantsBattle

	farsjump Phone_GenericCall_Male

AnthonyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_42
	setflag ENGINE_ANTHONY_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

AnthonyWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_42
	farsjump AnthonyReminderScript
