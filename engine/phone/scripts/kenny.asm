KennyPhoneCalleeScript: ; You call Kenny
	gettrainername STRING_BUFFER_3, HIKER, KENNY1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_KENNY_READY_FOR_REMATCH
	iftrue KennyWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal SATURDAY, KennyWantsBattle

	random 2
	ifequal 0, KennyWantsBattle

;NotSaturday:
	farjump KennyBaths


KennyPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, HIKER, KENNY1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_KENNY_READY_FOR_REMATCH
	iftrue KennyWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal SATURDAY, KennyWantsBattle

	random 4
	ifequal 0, KennyWantsBattle

;GenericKennyCall:
	farjump Phone_GenericCall_Male

KennyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_10
	setflag ENGINE_KENNY_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

KennyWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_10
	farjump KennyReminderScript
