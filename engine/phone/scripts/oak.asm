OakPhoneCalleeScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_POKERUS, .pokerus
;	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
;	iftrue .discovery
;	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
;	iffalse .next
;	checkevent EVENT_TOGEPI_HATCHED
;	iftrue .egghatched
;.next
;	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
;	iftrue .eggunhatched
;	checkevent EVENT_ELMS_AIDE_IN_LAB
;	iftrue .assistant
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue .checkingegg
	checkevent EVENT_OAK_CALLED_ABOUT_VIRIDIAN_GYM
	iftrue .RemindViridianGym
	checkevent EVENT_OAK_CALLED_ABOUT_SILPHCO
	iftrue .RemindSilphCo
	checkevent EVENT_OAK_CALLED_ABOUT_FLASH
	iftrue .RemindFlash
;	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
;	iftrue .sawmrpokemon
	farwritetext OakPhoneHealYourMonText
	end

;.sawmrpokemon
;	farwritetext ElmPhoneSawMrPokemonText
;	end

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

;.checkingegg
;	farwritetext ElmPhoneCheckingTheEggText
;	end

;.assistant
;	farwritetext ElmPhoneAssistantText
;	end

;.eggunhatched
;	farwritetext ElmPhoneHowIsTheEggText
;	end

;.egghatched
;	farwritetext ElmPhoneEggHatchedText
;	setevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
;	end

;.discovery
;	random 2
;	ifequal 0, .nextdiscovery
;	farwritetext ElmPhoneDiscoveredHatchTimeText
;	end

;.nextdiscovery
;	farwritetext ElmPhoneInvestigatingEggMovesText
;	end

.pokerus
	farwritetext ElmPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
	end

.default
	farwritetext OakPhoneHowManyBadgesText
	end

OakPhoneCallerScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_FLASH, .flash
	ifequal SPECIALCALL_SILPHCO, .silphco
	ifequal SPECIALCALL_VIRIDIANGYM, .viridiangym
	ifequal SPECIALCALL_SSTICKET, .gift
	ifequal SPECIALCALL_MASTERBALL, .gift
	farwritetext ElmPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
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
	farwritetext ElmPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end

.neat ; unreferenced
	farwritetext ElmPhoneGotAholdOfSomethingNeatText
	specialphonecall SPECIALCALL_NONE
	end
