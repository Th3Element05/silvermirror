GinaPhoneCalleeScript: ; You call Gina
	gettrainername STRING_BUFFER_3, PICNICKER, GINA1
	farscall PhoneScript_AnswerPhone_Female

	checkflag ENGINE_GINA_READY_FOR_REMATCH
	iftrue GinaWaitingForBattle

	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue GinaRemindLeafStone

	readvar VAR_WEEKDAY
	ifequal SUNDAY, GinaWantsBattle

	random 2
	ifequal 0, GinaWantsBattle

;NotSunday:
;	checkevent EVENT_SAFFRON_CITY_ROCKET_SLEEP
;	iffalse GinaRockets
	farsjump GinaHangUpScript


GinaPhoneCallerScript: ; Calls you
	gettrainername STRING_BUFFER_3, PICNICKER, GINA1
	farscall PhoneScript_GreetPhone_Female

	checkflag ENGINE_GINA_READY_FOR_REMATCH
	iftrue GinaWaitingForBattle

	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue GinaRemindLeafStone

	readvar VAR_WEEKDAY
	ifequal SUNDAY, GinaWantsBattle

	random 4
	ifequal 0, GinaWantsBattle

	checkevent EVENT_GINA_GAVE_LEAF_STONE
	iftrue .LeafStoneChance

	random 2
	ifequal 0, GinaHasLeafStone

.LeafStoneChance
	random 10
	ifequal 0, GinaHasLeafStone

;Generic:
;	checkevent EVENT_SAFFRON_CITY_ROCKET_SLEEP
;	iffalse GinaRockets
	farsjump Phone_GenericCall_Female

GinaWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	setflag ENGINE_GINA_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Female

GinaWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	farsjump GinaReminderScript

GinaHasLeafStone:
	setflag ENGINE_GINA_HAS_LEAF_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	farsjump PhoneScript_FoundItem_Female

GinaRemindLeafStone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_9
	farsjump GinaComePickUpScript

;GinaRockets:
;	farsjump GinaRocketRumorScript
