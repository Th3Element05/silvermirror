AidenPhoneCalleeScript: ; You call Aiden
	gettrainername STRING_BUFFER_3, BIKER, AIDEN1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_AIDEN_READY_FOR_REMATCH
	iftrue AidenWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal MONDAY, AidenWantsBattle

	random 2
	ifequal 0, AidenWantsBattle

;NotMonday:
	farwritetext AidenTalkOnBikeText
	promptbutton
	sjump PhoneScript_HangUpText_Male


AidenPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, BIKER, AIDEN1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_AIDEN_READY_FOR_REMATCH
	iftrue AidenWaitingForBattle

	checkcode VAR_WEEKDAY
	ifequal MONDAY, AidenWantsBattle

	random 3
	ifequal 0, AidenWantsBattle

;GenericAidenCall:
	farjump Phone_GenericCall_Male

AidenWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_16
	setflag ENGINE_AIDEN_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

AidenWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_16
	farjump AidenReminderScript
