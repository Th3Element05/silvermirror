ParryPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue ParryWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal FRIDAY, ParryWantsBattle

	random 2
	ifequal 0, ParryWantsBattle

;.WantsRematch:
	farsjump ParryBattleWithMeScript


ParryPhoneCallerScript:
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue ParryWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal FRIDAY, ParryWantsBattle

	random 3
	ifequal 0, ParryWantsBattle

;.GenericCall:
	farsjump Phone_GenericCall_Male

ParryWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	setflag ENGINE_PARRY_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

ParryWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	farsjump ParryReminderScript
