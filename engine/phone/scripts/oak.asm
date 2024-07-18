; YOU CALL OAK
OakPhoneCalleeScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_OAK_CALLED_ABOUT_VIRIDIAN_GYM
	iftrue .RemindViridianGym
	checkevent EVENT_OAK_CALLED_ABOUT_SILPHCO
	iftrue .RemindSilphCo
	checkevent EVENT_OAK_CALLED_ABOUT_FLASH
	iftrue .RemindFlash
	checkevent EVENT_OAK_CALLED_ABOUT_SSANNE
	iftrue .RemindSSAnne
	; else
	farwritetext OakPhoneHealYourMonText
	end

.RemindViridianGym
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .default
	farwritetext OakPhoneRemindViridianGymText
	end

.RemindSilphCo
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .default
	farwritetext OakPhoneRemindSilphCoText
	end

.RemindFlash
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .default
	farwritetext OakPhoneRemindFlashText
	end

.RemindSSAnne
	checkevent EVENT_GOT_HM01_CUT
	iftrue .default
	farwritetext OakPhoneRemindSSAnneText
	end

.pokerus
	farwritetext OakPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
	end

.default
	farwritetext OakPhoneHowManyBadgesText
	end

; OAK CALLS YOU
OakPhoneCallerScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_SSANNE, .ssanne
	ifequal SPECIALCALL_FLASH, .flash
	ifequal SPECIALCALL_SILPHCO, .silphco
	ifequal SPECIALCALL_VIRIDIANGYM, .viridiangym
	ifequal SPECIALCALL_SSTICKET, .gift
	ifequal SPECIALCALL_MASTERBALL, .gift
	farwritetext OakPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
	end

.ssanne
	farwritetext OakPhoneSSAnneText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_OAK_CALLED_ABOUT_SSANNE
	end

.flash
	farwritetext OakPhoneGetFlashText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_OAK_CALLED_ABOUT_FLASH
	end

.silphco
	farwritetext OakPhoneSilphCoText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_OAK_CALLED_ABOUT_SILPHCO
	end

.viridiangym
	farwritetext OakPhoneViridianGymText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_OAK_CALLED_ABOUT_VIRIDIAN_GYM
	end

.gift
	farwritetext OakPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end

;.neat ; unreferenced
;	farwritetext ElmPhoneGotAholdOfSomethingNeatText
;	specialphonecall SPECIALCALL_NONE
;	end
