EoinPhoneCalleeScript: ; You call Eoin
	gettrainername STRING_BUFFER_3, BIKER, EOIN1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_EOIN_READY_FOR_REMATCH
	iftrue EoinWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal SUNDAY, EoinWantsBattle

	random 2
	ifequal 0, EoinWantsBattle

;NotSunday:
	farjump EoinBikerMons


EoinPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, BIKER, EOIN1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_EOIN_READY_FOR_REMATCH
	iftrue EoinWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal SUNDAY, EoinWantsBattle

	random 4
	ifequal 0, EoinWantsBattle

;GenericEoinCall:
	farjump Phone_GenericCall_Male

EoinWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_17
	setflag ENGINE_EOIN_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

EoinWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_17
	farjump EoinReminderScript
