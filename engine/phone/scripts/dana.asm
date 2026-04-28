DanaPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, LASS, DANA1
	farscall PhoneScript_AnswerPhone_Female

	checkflag ENGINE_DANA_READY_FOR_REMATCH
	iftrue DanaWaitingForBattle

	checkflag ENGINE_DANA_HAS_THUNDERSTONE
	iftrue DanaRemindThunderstone

	readvar VAR_WEEKDAY
	ifequal THURSDAY, DanaWantsBattle

	random 2
	ifequal 0, DanaWantsBattle

;NotThursday:
	farsjump DanaHangUpScript


DanaPhoneCallerScript:
	gettrainername STRING_BUFFER_3, LASS, DANA1
	farscall PhoneScript_GreetPhone_Female

	checkflag ENGINE_DANA_READY_FOR_REMATCH
	iftrue DanaWaitingForBattle

	checkflag ENGINE_DANA_HAS_THUNDERSTONE
	iftrue DanaRemindThunderstone

	readvar VAR_WEEKDAY
	ifequal THURSDAY, DanaWantsBattle

	random 4
	ifequal 0, DanaWantsBattle

	checkevent EVENT_DANA_GAVE_THUNDERSTONE
	iftrue .ThunderstoneChance

	random 2
	ifequal 0, DanaHasThunderstone

.ThunderstoneChance:
	random 10
	ifequal 0, DanaHasThunderstone

;Generic:
;	random 4
;	ifequal 0, DanaFoundRare
	farsjump Phone_GenericCall_Female

DanaWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_8
	setflag ENGINE_DANA_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Female

DanaWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_8
	farsjump DanaReminderScript

DanaHasThunderstone:
	setflag ENGINE_DANA_HAS_THUNDERSTONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_8
	farsjump PhoneScript_FoundItem_Female

DanaRemindThunderstone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_8
	farsjump DanaComePickUpScript

;DanaFoundRare:
;	farsjump Phone_CheckIfUnseenRare_Female
