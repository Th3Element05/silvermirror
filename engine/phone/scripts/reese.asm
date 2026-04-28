ReesePhoneCalleeScript: ; You call Reese
	gettrainername STRING_BUFFER_3, BIKER, REESE1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_REESE_READY_FOR_REMATCH
	iftrue ReeseWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal SUNDAY, ReeseWantsBattle

	random 2
	ifequal 0, ReeseWantsBattle

;NotSunday:
	farjump ReeseBikers


ReesePhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, BIKER, REESE1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_REESE_READY_FOR_REMATCH
	iftrue ReeseWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal SUNDAY, ReeseWantsBattle

	random 3
	ifequal 0, ReeseWantsBattle

;GenericReeseCall:
	farjump Phone_GenericCall_Male

ReeseWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_14
	setflag ENGINE_REESE_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

ReeseWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_14
	farjump ReeseReminderScript
