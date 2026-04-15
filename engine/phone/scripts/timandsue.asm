TimAndSuePhoneCalleeScript: ; You call Tim & Sue
	gettrainername STRING_BUFFER_3, COUPLE, TIMANDSUE1
	farscall PhoneScript_AnswerPhone_Female

	checkflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	iftrue TimAndSueWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal FRIDAY, TimAndSueWantsBattle

	random 2
	ifequal 0, TimAndSueWantsBattle

;NotFriday:
	farjump TimAndSueWildMon

.WaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_6
	farjump TimAndSueReminderScript


TimAndSuePhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, COUPLE, TIMANDSUE1
	farscall PhoneScript_GreetPhone_Female

	checkflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	iftrue TimAndSueWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal FRIDAY, TimAndSueWantsBattle

	random 4
	ifequal 0, TimAndSueWantsBattle

;GenericTimAndSueCall:
	farjump Phone_GenericCall_Female

TimAndSueWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_6
	setflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Female

TimAndSueWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_6
	farjump TimAndSueReminderScript
