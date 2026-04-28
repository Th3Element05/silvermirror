HueyPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, SAILOR, HUEY1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_HUEY_READY_FOR_REMATCH
	iftrue HueyWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, HueyWantsBattle

	random 2
	ifequal 0, HueyWantsBattle

;.NotWednesday:
	special RandomPhoneMon
	farsjump HueyHangUpScript


HueyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, SAILOR, HUEY1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_HUEY_READY_FOR_REMATCH
	iftrue HueyWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, HueyWantsBattle

	random 3
	ifequal 0, HueyWantsBattle

;.Flavor:
	farsjump PhoneScript_MonFlavorText

HueyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	setflag ENGINE_HUEY_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

HueyWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump HueyReminderScript