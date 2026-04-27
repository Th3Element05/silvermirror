JackPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_JACK_READY_FOR_REMATCH
	iftrue JackWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal MONDAY, JackWantsToBattle

	random 2
	ifequal 0, JackWantsToBattle

;.NotMonday:
	farsjump JackPhoneTipsScript


JackPhoneCallerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	farscall PhoneScript_GreetPhone_Male

	readvar VAR_WEEKDAY
	ifnotequal MONDAY, JackWantsToBattle

	random 4
	ifequal 0, JackWantsToBattle
	ifequal 1, JackFindsRare
	ifequal 2, JackBattleTrivia
	farsjump Phone_GenericCall_Male

JackWantsToBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_NATIONAL_PARK
	setflag ENGINE_JACK_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

JackWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_NATIONAL_PARK
	farsjump JackReminderScript

JackFindsRare:
	farsjump Phone_CheckIfUnseenRare_Male

JackBattleTrivia:
	farsjump JackTriviaScript
