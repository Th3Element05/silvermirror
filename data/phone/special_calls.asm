MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE, SpecialPhoneCallList
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK,      OakPhoneCallerScript ;POKERUS
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK,      OakPhoneCallerScript ;OAK FLASH
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK,      OakPhoneCallerScript ;SILPHCO
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK,      OakPhoneCallerScript ;VIRIDIANGYM
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_OAK,      OakPhoneCallerScript ;elm ss ticket
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_BIKESHOP, BikeShopPhoneCallerScript ;bikeshop
;	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_MOM,      MomPhoneLectureScript ;mom worried
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_MOM,      MomPhoneLectureScript ;MOM WORRIED
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK,      OakPhoneCallerScript ;elm masterball
	assert_table_length NUM_SPECIALCALLS
