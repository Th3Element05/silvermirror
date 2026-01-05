MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE, SpecialPhoneCallList
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK, OakPhoneCallerScript ;POKERUS
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_MOM, MomPhoneLectureScript ;WORRIED
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK, OakPhoneCallerScript ;SS ANNE
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK, OakPhoneCallerScript ;FLASH
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK, OakPhoneCallerScript ;SILPHCO
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK, OakPhoneCallerScript ;VIRIDIANGYM
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK, OakPhoneCallerScript ;SSTICKET
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_OAK, OakPhoneCallerScript ;RADIOTOWER
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK, OakPhoneCallerScript ;elm masterball
	assert_table_length NUM_SPECIALCALLS
