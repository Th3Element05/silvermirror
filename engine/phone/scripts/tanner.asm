TannerPhoneCalleeScript: ; You call Tanner
	gettrainername STRING_BUFFER_3, CAMPER, TANNER1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_TANNER_READY_FOR_REMATCH
	iftrue TannerWaitingForBattle

	checkflag ENGINE_TANNER_HAS_SUN_STONE
	iftrue TannerRemindSunStone

	checkcode VAR_WEEKDAY
	ifequal MONDAY, TannerWantsBattle

	random 2
	ifequal 0, TannerWantsBattle

;GenericTanner:
	farjump TannerCamping


TannerPhoneCallerScript:  ; Calls you
	gettrainername STRING_BUFFER_3, CAMPER, TANNER1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_TANNER_READY_FOR_REMATCH
	iftrue TannerWaitingForBattle

	checkflag ENGINE_TANNER_HAS_SUN_STONE
	iftrue TannerRemindSunStone

	checkcode VAR_WEEKDAY
	ifequal MONDAY, TannerWantsBattle

	random 4
	ifequal 0, TannerWantsBattle

	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .CheckSunStone
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iffalse .NoSunStone

.CheckSunStone
	checkevent EVENT_TANNER_GAVE_SUN_STONE
	iftrue .SunStoneChance

	random 2
	ifequal 0, TannerHasSunStone

.SunStoneChance:
	random 10
	ifequal 0, TannerHasSunStone

.NoSunStone:
	farjump Phone_GenericCall_Male

TannerWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_24
	setflag ENGINE_TANNER_READY_FOR_REMATCH
	farjump PhoneScript_WantsToBattle_Male

TannerWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_24
	farjump TannerReminderScript

TannerHasSunStone:
	setflag ENGINE_TANNER_HAS_SUN_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_24
	farjump PhoneScript_FoundItem_Male

TannerRemindSunStone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_24
	farjump TannerGiftReminderScript
