ArniePhoneCalleeScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	farscall PhoneScript_AnswerPhone_Male
	
	checkflag ENGINE_ARNIE_READY_FOR_REMATCH
	iftrue ArnieWaitingForBattle

	checktime MORN
	iftrue ArnieWantsBattle

	random 2
	ifequal 0, ArnieWantsBattle

	farsjump ArnieHangUpScript


ArniePhoneCallerScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	farscall PhoneScript_GreetPhone_Male

	checktime MORN
	iftrue ArnieWantsBattle

	random 4
	ifequal 0, ArnieWantsBattle

	farsjump Phone_GenericCall_Male

ArnieWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ILEX_FOREST
	setflag ENGINE_ARNIE_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

ArnieWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ILEX_FOREST
	farsjump ArnieReminderScript
