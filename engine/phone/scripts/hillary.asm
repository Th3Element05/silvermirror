HillaryPhoneCalleeScript: ; You call Hillary
;	gettrainername STRING_BUFFER_3, TEACHER, HILLARY1
	gettrainername STRING_BUFFER_3, LASS, HILLARY1
	farscall PhoneScript_AnswerPhone_Female

	checkflag ENGINE_HILLARY_READY_FOR_REMATCH
	iftrue HillaryWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal THURSDAY, HillaryWantsBattle

	random 2
	ifequal 0, HillaryWantsBattle

.NotThursday:
	farjump HillaryCutestThing


HillaryPhoneCallerScript: ; Calls you
;	gettrainername STRING_BUFFER_3, TEACHER, HILLARY1
	gettrainername STRING_BUFFER_3, LASS, HILLARY1
	farscall PhoneScript_GreetPhone_Female

	checkflag ENGINE_HILLARY_READY_FOR_REMATCH
	iftrue HillaryWaitingForBattle

	checkcode VAR_WEEKDAY
	ifnotequal THURSDAY, HillaryWantsBattle

	random 3
	ifequal 0, HillaryWantsBattle

.GenericHillaryCall:
	farjump Phone_GenericCall_Female

HillaryWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_25
	setflag ENGINE_HILLARY_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Female

HillaryWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_25
	farjump HillaryReminderScript
