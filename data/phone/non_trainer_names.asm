NonTrainerCallerNames:
; entries correspond to PHONECONTACT_* constants (see constants/trainer_constants.asm)
	table_width 2, NonTrainerCallerNames
	dw .none
	dw .mom
	dw .oak
	dw .bill
;	dw .bikeshop
	dw .buena
	assert_table_length NUM_NONTRAINER_PHONECONTACTS + 1

.none:     db "----------@"
.mom:      db "MOM:@"
.oak:      db "PROF.OAK:@"
.bill:     db "BILL:@"
;.bikeshop: db "BIKE SHOP:@"
.buena:    db "BUENA:<LF>   DISC JOCKEY@"
