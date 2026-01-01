; YOU CALL OAK
OakPhoneCalleeScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_OAK_REMIND_ABOUT_WATERFALL
	iftrue .RemindWaterfall
	checkevent EVENT_OAK_CALLED_ABOUT_RADIO_TOWER
	iftrue .RemindRadioTower
	checkevent EVENT_RADIO_TOWER_4F_OAK
	iftrue .OakBusy
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

.default
	random 3
;	ifequal 0, ;fallthrough
	ifequal 1, .Pokedex
	ifequal 2, .Badges
	farwritetext OakPhoneHealYourMonText
	end

.Pokedex
	farwritetext OakPhoneEvaluatePokedexText
	end

.Badges
	farwritetext OakPhoneHowManyBadgesText
	end

.RemindWaterfall
	; cleared upon reaching route 45
	farwritetext OakPhoneRemindWaterfallText
	end

.RemindRadioTower
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .default
	farwritetext OakPhoneRemindRadioTowerText
	end

.OakBusy
	farwritetext OakPhoneNoAnswerText
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

; OAK CALLS YOU
OakPhoneCallerScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_SSANNE, .ssanne
	ifequal SPECIALCALL_FLASH, .flash
	ifequal SPECIALCALL_SILPHCO, .silphco
	ifequal SPECIALCALL_VIRIDIANGYM, .viridiangym
	ifequal SPECIALCALL_SSTICKET, .gift
	ifequal SPECIALCALL_RADIOTOWER, .radiotower
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

.radiotower
	farwritetext OakPhoneRadioTowerText
	specialphonecall SPECIALCALL_NONE
	setmapscene RADIO_TOWER_4F, SCENE_RADIOTOWER4F_FANATIC
	setmapscene ELMS_LAB, SCENE_ELMSLAB_ELM_OVERHEARS_PHONE_CALL
	setflag ENGINE_ROCKETS_IN_RADIO_TOWER
	setevent EVENT_OAK_CALLED_ABOUT_RADIO_TOWER
	setevent EVENT_RADIO_TOWER_4F_OAK
	setevent EVENT_RADIO_TOWER_CIVILIANS
	clearevent EVENT_RADIO_TOWER_3F_BLUE
	clearevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	end

.gift
	farwritetext OakPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end

;.neat ; unreferenced
;	farwritetext ElmPhoneGotAholdOfSomethingNeatText
;	specialphonecall SPECIALCALL_NONE
;	end
