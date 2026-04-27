IrwinPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	farscall PhoneScript_AnswerPhone_Male
;	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
;	iftrue IrwinRockets
	farsjump IrwinRandomTextScript

IrwinPhoneCallerScript:
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	farscall PhoneScript_GreetPhone_Male
;	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
;	iftrue IrwinRockets
	farsjump IrwinRumorScript

;IrwinRockets:
;	farsjump IrwinRocketRumorScript
