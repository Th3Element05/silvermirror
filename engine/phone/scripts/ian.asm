IanPhoneCalleeScript: ; You call Ian
	gettrainername STRING_BUFFER_3, YOUNGSTER, IAN1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_IAN_READY_FOR_REMATCH
	iftrue IanWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal SATURDAY, IanWantsBattle

	random 2
	ifequal 0, IanWantsBattle

;NotSaturday:
	farjump IanBattleAgainScript


IanPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, YOUNGSTER, IAN1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_IAN_READY_FOR_REMATCH
	iftrue IanWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal SATURDAY, IanWantsBattle

	random 3
	ifequal 0, IanWantsBattle

.GenericIanCall:
	farjump Phone_GenericCall_Male

IanWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
	setflag ENGINE_IAN_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

IanWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
	farjump IanReminderScript
