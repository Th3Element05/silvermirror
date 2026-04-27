WiltonPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue WiltonWaitingForBattle
	
	checkflag ENGINE_WILTON_HAS_BALL_ITEM
	iftrue WiltonRemindItem

	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, WiltonWantsBattle

	random 2
	ifequal 0, WiltonWantsBattle

;.NotThursday:
	farsjump WiltonHaventFoundAnythingScript


WiltonPhoneCallerScript:
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue WiltonWaitingForBattle

	checkflag ENGINE_WILTON_HAS_BALL_ITEM
	iftrue WiltonRemindItem

	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, WiltonWantsBattle

	random 4
	ifequal 0, WiltonWantsBattle
	ifequal 1, WiltonHasItem

;.GenericCall:
	farsjump Phone_GenericCall_Male

WiltonWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	setflag ENGINE_WILTON_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

WiltonWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	farsjump WiltonReminderScript

WiltonHasItem:
	setflag ENGINE_WILTON_HAS_BALL_ITEM
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	farsjump PhoneScript_FoundItem_Male
;	clearevent EVENT_WILTON_HAS_ULTRA_BALL
;	clearevent EVENT_WILTON_HAS_GREAT_BALL
;	clearevent EVENT_WILTON_HAS_POKE_BALL
;	random 5
;	ifequal 0, .PokeBall
;	random 4
;	ifequal 0, .GreatBall
;	sjump .UltraBall
;
;.UltraBall:
;	setevent EVENT_WILTON_HAS_ULTRA_BALL
;	sjump .FoundItem
;
;.GreatBall:
;	setevent EVENT_WILTON_HAS_GREAT_BALL
;	sjump .FoundItem
;
;.PokeBall:
;	setevent EVENT_WILTON_HAS_POKE_BALL
;
;.FoundItem:
;	farsjump PhoneScript_FoundItem_Male

WiltonRemindItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	farsjump WiltonWantThisScript


