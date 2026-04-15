TullyPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, FISHER, TULLY1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_TULLY_READY_FOR_REMATCH
	iftrue TullyWaitingForBattle

	checkflag ENGINE_TULLY_HAS_WATER_STONE
	iftrue TullyRemindWaterStone

	readvar VAR_WEEKDAY
	ifequal SUNDAY, TullyWantsBattle

	random 2
	ifequal 0, TullyWantsBattle

;NotSunday:
	farsjump TullyNoItemScript


TullyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, FISHER, TULLY1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_TULLY_READY_FOR_REMATCH
	iftrue TullyWaitingForBattle

	checkflag ENGINE_TULLY_HAS_WATER_STONE
	iftrue TullyRemindWaterStone

	readvar VAR_WEEKDAY
	ifequal SUNDAY, TullyWantsBattle

	random 4
	ifequal 0, TullyWantsBattle

	checkevent EVENT_TULLY_GAVE_WATER_STONE
	iftrue .WaterStoneChance

	random 2
	ifequal 0, TullyFoundWaterStone

.WaterStoneChance:
	random 10
	ifequal 0, TullyFoundWaterStone

;Generic:
	farsjump Phone_GenericCall_Male

TullyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_42
	setflag ENGINE_TULLY_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

TullyWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_42
	farsjump TullyReminderScript

TullyFoundWaterStone:
	setflag ENGINE_TULLY_HAS_WATER_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_42
	farsjump PhoneScript_FoundItem_Male

TullyRemindWaterStone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_42
	farsjump TullyHurryScript
