DougPhoneCalleeScript: ; You call Doug
	gettrainername STRING_BUFFER_3, BUG_CATCHER, DOUG1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_DOUG_READY_FOR_REMATCH
	iftrue DougWaitingForBattle

	checkflag ENGINE_DOUG_HAS_BERRY
	iftrue DougRemindBerry

	checkcode VAR_WEEKDAY
	ifequal WEDNESDAY, DougWantsBattle

	random 2
	ifequal 0, DougWantsBattle

;Generic:
	farjump DougStory


DougPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, BUG_CATCHER, DOUG1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_DOUG_READY_FOR_REMATCH
	iftrue DougWaitingForBattle

	checkflag ENGINE_DOUG_HAS_BERRY
	iftrue DougRemindBerry

	checkcode VAR_WEEKDAY
	ifequal WEDNESDAY, DougWantsBattle

	random 4
	ifequal 0, DougWantsBattle
	ifequal 1, DougHasBerry

;GenericDougCall:
	farjump Phone_GenericCall_Male

DougWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	setflag ENGINE_DOUG_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

DougWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	farjump DougReminderScript

DougHasBerry:
	setflag ENGINE_DOUG_HAS_BERRY
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	farjump PhoneScript_FoundItem_Male

DougRemindBerry:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	farjump DougBerryReminderScript
