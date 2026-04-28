BrentPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_BRENT_READY_FOR_REMATCH
	iftrue BrentWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal MONDAY, BrentWantsBattle

	random 2
	ifequal 0, BrentWantsBattle

;NotMonday:
	farsjump BrentHangUpScript


BrentPhoneCallerScript:
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	farscall PhoneScript_GreetPhone_Male

	random 2
	ifequal 0, BrentBillTrivia

	checkflag ENGINE_BRENT_READY_FOR_REMATCH
	iftrue BrentWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal MONDAY, BrentWantsBattle

	random 3
	ifequal 0, BrentWantsBattle

;Generic:
	farsjump Phone_GenericCall_Male

BrentWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_10
	setflag ENGINE_BRENT_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

BrentWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_10
	farsjump BrentReminderScript

BrentBillTrivia:
	farsjump BrentBillTriviaScript
