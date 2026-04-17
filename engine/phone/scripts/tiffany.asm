TiffanyPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, PICNICKER, TIFFANY1
	farscall PhoneScript_AnswerPhone_Female

	checkflag ENGINE_TIFFANY_READY_FOR_REMATCH
	iftrue TiffanyWaitingForBattle

	checkflag ENGINE_TIFFANY_HAS_DUSK_STONE
	iftrue TiffanyRemindItem

	readvar VAR_WEEKDAY
	ifequal TUESDAY, TiffanyWantsBattle

	random 2
	ifequal 0, TiffanyWantsBattle

;NotTuesday:
	farsjump TiffanyNoItemScript


TiffanyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, PICNICKER, TIFFANY1

	random 4
	ifequal 0, TiffanysFamilyMembers
	farscall PhoneScript_GreetPhone_Female

	checkflag ENGINE_TIFFANY_READY_FOR_REMATCH
	iftrue TiffanyWaitingForBattle

	checkflag ENGINE_TIFFANY_HAS_DUSK_STONE
	iftrue TiffanyRemindItem

	readvar VAR_WEEKDAY
	ifequal TUESDAY, TiffanyWantsBattle

	random 4
	ifequal 0, TiffanyWantsBattle

	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .CheckDuskStone
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iffalse .NoDuskStone

.CheckDuskStone
	checkevent EVENT_TIFFANY_GAVE_DUSK_STONE
	iftrue .DuskStoneChance

	random 2
	ifequal 0, TiffanyHasDuskStone

.DuskStoneChance:
	random 10
	ifequal 0, TiffanyHasDuskStone

.NoDuskStone
	farsjump Phone_GenericCall_Female

TiffanyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_15
	setflag ENGINE_TIFFANY_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Female

TiffanyWaitingForBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_15
	farsjump TiffanyReminderScript

TiffanyHasDuskStone:
	setflag ENGINE_TIFFANY_HAS_DUSK_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_15
	farsjump PhoneScript_FoundItem_Female

TiffanyRemindItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_15
	farsjump TiffanyHurryScript

TiffanysFamilyMembers:
	random 6
	ifequal 0, .Grandma
	ifequal 1, .Grandpa
	ifequal 2, .Mom
	ifequal 3, .Dad
	ifequal 4, .Sister
	ifequal 5, .Brother

.Grandma:
	getstring STRING_BUFFER_4, GrandmaString
	sjump .PoorClefairy

.Grandpa:
	getstring STRING_BUFFER_4, GrandpaString
	sjump .PoorClefairy

.Mom:
	getstring STRING_BUFFER_4, MomString
	sjump .PoorClefairy

.Dad:
	getstring STRING_BUFFER_4, DadString
	sjump .PoorClefairy

.Sister:
	getstring STRING_BUFFER_4, SisterString
	sjump .PoorClefairy

.Brother:
	getstring STRING_BUFFER_4, BrotherString
	sjump .PoorClefairy

.PoorClefairy:
	farsjump TiffanyItsAwful
