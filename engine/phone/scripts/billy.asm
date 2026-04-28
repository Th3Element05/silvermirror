 ; You call Billy
BillyPhoneCalleeScript: 
	gettrainername STRING_BUFFER_3, SCHOOLBOY, BILLY1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_BILLY_READY_FOR_REMATCH
	iftrue BillyWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal FRIDAY, BillyWantsBattle

	random 2
	ifequal 0, BillyWantsBattle

.NotFriday:
	farjump BillyResearch


 ; Calls you
BillyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, BILLY1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_BILLY_READY_FOR_REMATCH
	iftrue BillyWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal FRIDAY, BillyWantsBattle

	random 3
	ifequal 0, BillyWantsBattle

.GenericBillyCall:
	farjump Phone_GenericCall_Male

BillyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_3
	setflag ENGINE_BILLY_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

BillyWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_3
	farjump BillyReminderScript
