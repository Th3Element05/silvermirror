RalphPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, FISHER, RALPH1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_RALPH_READY_FOR_REMATCH
	iftrue RalphWaitingForRematch

	readvar VAR_WEEKDAY
	ifequal SATURDAY, RalphWantsBattle

	random 2
	ifequal 0, RalphWantsBattle

	farsjump RalphNoItemScript


RalphPhoneCallerScript:
	gettrainername STRING_BUFFER_3, FISHER, RALPH1
	farscall PhoneScript_GreetPhone_Male

	readvar VAR_WEEKDAY
	ifequal SATURDAY, RalphWantsBattle

	random 3
	ifequal 0, RalphWantsBattle

	farsjump Phone_GenericCall_Male

RalphWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	setflag ENGINE_RALPH_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

RalphWaitingForRematch:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	farsjump RalphReminderScript