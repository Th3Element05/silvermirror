JamiePhoneCalleeScript: ; You call Jamie
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JAMIE1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_JAMIE_READY_FOR_REMATCH
	iftrue JamieWaitingForBattle

	checkflag ENGINE_JAMIE_HAS_MOON_STONE
	iftrue JamieRemindMoonStone

	checkcode VAR_WEEKDAY
	ifequal TUESDAY, JamieWantsBattle

	random 2
	ifequal 0, JamieWantsBattle

;Generic:
	farjump JamieSneezing


JamiePhoneCallerScript:  ; Calls you
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JAMIE1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_JAMIE_READY_FOR_REMATCH
	iftrue JamieWaitingForBattle

	checkflag ENGINE_JAMIE_HAS_MOON_STONE
	iftrue JamieRemindMoonStone

	checkcode VAR_WEEKDAY
	ifequal TUESDAY, JamieWantsBattle

	random 4
	ifequal 0, JamieWantsBattle

	checkevent EVENT_JAMIE_GAVE_MOON_STONE
	iftrue .MoonStoneChance

	random 2
	ifequal 0, JamieHasMoonStone

.MoonStoneChance
	random 10
	ifequal 0, JamieHasMoonStone

;GenericJamieCall:
	farjump Phone_GenericCall_Male

JamieWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_13
	setflag ENGINE_JAMIE_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

JamieWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_13
	farjump JamieReminderScript

JamieHasMoonStone:
	setflag ENGINE_JAMIE_HAS_MOON_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_13
	farjump PhoneScript_FoundItem_Male

JamieRemindMoonStone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_13
	farjump JamieGiftReminderScript
