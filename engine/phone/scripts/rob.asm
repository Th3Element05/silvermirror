RobPhoneCalleeScript: ; You call Rob
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ROB1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_ROB_READY_FOR_REMATCH
	iftrue RobWaitingForBattle

	checkflag ENGINE_ROB_HAS_BERRY
	iftrue RobRemindBerry

	checkcode VAR_WEEKDAY
	ifequal FRIDAY, RobWantsBattle

	random 2
	ifequal 0, RobWantsBattle

.NotFriday:
	farjump RobStory


RobPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ROB1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_ROB_READY_FOR_REMATCH
	iftrue RobWaitingForBattle

	checkflag ENGINE_ROB_HAS_BERRY
	iftrue RobRemindBerry

	checkcode VAR_WEEKDAY
	ifequal FRIDAY, RobWantsBattle

	random 4
	ifequal 0, RobWantsBattle
	ifequal 1, RobHasBerry

;.GenericCall:
	farjump Phone_GenericCall_Male

RobWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_VIRIDIAN_FOREST
	setflag ENGINE_ROB_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

RobWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_VIRIDIAN_FOREST
	farjump RobReminderScript

RobHasBerry:
	setflag ENGINE_ROB_HAS_BERRY
	getlandmarkname STRING_BUFFER_5, LANDMARK_VIRIDIAN_FOREST
	farjump PhoneScript_FoundItem_Male

RobRemindBerry:
	getlandmarkname STRING_BUFFER_5, LANDMARK_VIRIDIAN_FOREST
	farjump RobBerryReminderScript
