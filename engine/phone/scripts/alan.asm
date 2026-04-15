 ; You call Alan
AlanPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_ALAN_READY_FOR_REMATCH
	iftrue AlanRemindBattle

	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue AlanRemindFireStone

	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, AlanWantsBattle

	random 2
	ifequal 0, AlanWantsBattle

.NotWednesday:
	farsjump AlanHangUpScript ;Haven't picked anything up

;.RemindBattle:
;	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
;	farsjump AlanReminderScript

;.RemindFireStone:
;	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
;	farsjump AlanComePickUpScript


 ; Calls you
AlanPhoneCallerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_ALAN_READY_FOR_REMATCH
	iftrue AlanRemindBattle

	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue AlanRemindFireStone

	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, AlanWantsBattle

;	farscall PhoneScript_Random3
	random 4
	ifequal 0, AlanWantsBattle

	checkevent EVENT_ALAN_GAVE_FIRE_STONE
	iftrue .FireStoneChance

;	farscall PhoneScript_Random2
	random 2
	ifequal 0, AlanHasFireStone

.FireStoneChance:
;	farscall PhoneScript_Random11
	random 10
	ifequal 0, AlanHasFireStone

.GenericCall:
	farsjump Phone_GenericCall_Male

AlanWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
	setflag ENGINE_ALAN_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

AlanRemindBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
	farsjump AlanReminderScript

AlanHasFireStone:
	setflag ENGINE_ALAN_HAS_FIRE_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
	farsjump PhoneScript_FoundItem_Male

AlanRemindFireStone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
	farsjump AlanComePickUpScript


; ; You call Alan
;AlanPhoneCalleeScript:
;	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
;	checkflag ENGINE_ALAN_READY_FOR_REMATCH
;	iftrue .WantsBattle
;	farscall PhoneScript_AnswerPhone_Male
;	checkflag ENGINE_ALAN_WEDNESDAY_AFTERNOON
;	iftrue .NotWednesday
;	checkflag ENGINE_ALAN_HAS_FIRE_STONE
;	iftrue .FireStone
;	readvar VAR_WEEKDAY
;	ifnotequal WEDNESDAY, .NotWednesday
;	checktime DAY
;	iftrue AlanWantsBattle
;	checktime EVE
;	iftrue AlanWantsBattle
;
;.NotWednesday:
;	farsjump AlanHangUpScript
;
;.WantsBattle:
;	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
;	farsjump AlanReminderScript
;
;.FireStone:
;	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
;	farsjump AlanComePickUpScript
;
; ; Calls you
;AlanPhoneCallerScript:
;	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
;	farscall PhoneScript_GreetPhone_Male
;	checkflag ENGINE_ALAN_READY_FOR_REMATCH
;	iftrue .Generic
;	checkflag ENGINE_ALAN_WEDNESDAY_AFTERNOON
;	iftrue .Generic
;	checkflag ENGINE_ALAN_HAS_FIRE_STONE
;	iftrue .Generic
;	farscall PhoneScript_Random3
;	ifequal 0, AlanWantsBattle
;;	checkevent EVENT_ALAN_GAVE_FIRE_STONE
;;	iftrue .FireStone
;	farscall PhoneScript_Random2
;	ifequal 0, AlanHasFireStone
;
;.FireStone:
;	farscall PhoneScript_Random11
;	ifequal 0, AlanHasFireStone
;
;.Generic:
;	farsjump Phone_GenericCall_Male
;
;AlanWantsBattle:
;	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
;	setflag ENGINE_ALAN_READY_FOR_REMATCH
;	farsjump PhoneScript_WantsToBattle_Male
;
;AlanHasFireStone:
;	setflag ENGINE_ALAN_HAS_FIRE_STONE
;	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_11
;	farsjump PhoneScript_FoundItem_Male
