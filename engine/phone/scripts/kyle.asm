KylePhoneCalleeScript: ; You call Kyle
	gettrainername STRING_BUFFER_3, FISHER, KYLE1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_KYLE_READY_FOR_REMATCH
	iftrue KyleWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal TUESDAY, KyleWantsBattle

	random 2
	ifequal 0, KyleWantsBattle

;NotWednesday:
	farjump KyleFishingTips


KylePhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, FISHER, KYLE1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_KYLE_READY_FOR_REMATCH
	iftrue KyleWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal TUESDAY, KyleWantsBattle

	random 3
	ifequal 0, KyleWantsBattle

;GenericKyleCall:
	farjump Phone_GenericCall_Male

KyleWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_21
	setflag ENGINE_KYLE_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

KyleWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_21
	farjump KyleReminderScript
