MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE, SpecialPhoneCallList
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK,      ElmPhoneCallerScript ;pokerus
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_OAK,      ElmPhoneCallerScript ;oak flash
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript ;elm assistant
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript ;odd broadcast
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_ELM,      ElmPhoneCallerScript ;elm ss ticket
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_BIKESHOP, BikeShopPhoneCallerScript ;bikeshop
;	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_MOM,      MomPhoneLectureScript ;mom worried
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_MOM,      MomPhoneLectureScript ;mom worried outside
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript ;elm masterball
	assert_table_length NUM_SPECIALCALLS
