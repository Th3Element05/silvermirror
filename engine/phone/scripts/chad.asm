ChadPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue ChadWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal FRIDAY, ChadWantsBattle

	random 2
	ifequal 0, ChadWantsBattle

;.NotFriday:
	farsjump ChadHangUpScript


ChadPhoneCallerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	farscall PhoneScript_GreetPhone_Male

	random 2
	ifequal 0, ChadOakGossip

	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue ChadWaitingForBattle

	readvar VAR_WEEKDAY
	ifequal FRIDAY, ChadWantsBattle

	random 3
	ifequal 0, ChadWantsBattle
	ifequal 1, ChadFoundRare
	farsjump Phone_GenericCall_Male

ChadWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	setflag ENGINE_CHAD_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

ChadWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	farsjump ChadReminderScript

ChadFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male

ChadOakGossip:
	farsjump ChadOakGossipScript
