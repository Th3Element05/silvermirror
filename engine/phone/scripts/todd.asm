ToddPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, CAMPER, TODD1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleOn

	checkflag ENGINE_TODD_READY_FOR_REMATCH
	iftrue ToddWaitingForBattle

	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, ToddWantsBattle

	random 2
	ifequal 0, ToddWantsBattle

	farsjump ToddNoItemScript

.SaleOn:
	farsjump ToddHurryScript


ToddPhoneCallerScript:
	gettrainername STRING_BUFFER_3, CAMPER, TODD1
	farscall PhoneScript_GreetPhone_Male

	random 3
	ifequal 0, ToddDeptStoreSale

;	checkflag ENGINE_TODD_READY_FOR_REMATCH
;	iftrue ToddWaitingForBattle

	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, ToddWantsBattle

	random 4
	ifequal 0, ToddWantsBattle
	ifequal 1, ToddDeptStoreSale
	ifequal 2, ToddFoundRare

	farsjump Phone_GenericCall_Male

ToddWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	setflag ENGINE_TODD_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

ToddWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	farsjump ToddReminderScript

ToddDeptStoreSale:
	setflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	farsjump ToddItemScript

ToddFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male
