VancePhoneCalleeScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_VANCE_READY_FOR_REMATCH
	iftrue VanceWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, VanceWantsRematch

	random 2
	ifequal 0, VanceWantsRematch

;NotWednesday:
	farsjump VanceLookingForwardScript


VancePhoneCallerScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_VANCE_READY_FOR_REMATCH
	iftrue VanceWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, VanceWantsRematch

	random 3
	ifequal 0, VanceWantsRematch

;WantsBattle:
	farsjump Phone_GenericCall_Male

VanceWantsRematch:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_20
	setflag ENGINE_VANCE_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

VanceWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_20
	farsjump VanceReminderScript
