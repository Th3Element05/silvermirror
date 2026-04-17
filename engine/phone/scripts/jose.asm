JosePhoneCalleeScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JOSE1
	farscall PhoneScript_AnswerPhone_Male

	checkflag ENGINE_JOSE_READY_FOR_REMATCH
	iftrue JoseWaitingForBattle

	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue JoseRemindItem

	readvar VAR_WEEKDAY
	ifequal SATURDAY, JoseWantsBattle

	random 2
	ifequal 0, JoseWantsBattle

;NotSaturday:
	farsjump JoseHangUpScript


JosePhoneCallerScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JOSE1
	farscall PhoneScript_GreetPhone_Male

	checkflag ENGINE_JOSE_READY_FOR_REMATCH
	iftrue JoseWaitingForBattle

	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue JoseRemindItem

	readvar VAR_WEEKDAY
	ifequal SATURDAY, JoseWantsBattle

	random 4
	ifequal 0, JoseWantsBattle

	random 4
	ifequal 0, JoseHasStarPiece

;Generic:
	random 3
	ifequal 0, JoseFoundRare
	farsjump Phone_GenericCall_Male

JoseFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male

JoseWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_18
	setflag ENGINE_JOSE_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

JoseWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_18
	farsjump JoseReminderScript

JoseHasStarPiece:
	setflag ENGINE_JOSE_HAS_STAR_PIECE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_18
	farsjump PhoneScript_FoundItem_Male

JoseRemindItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_18
	farsjump JoseReminderScript
