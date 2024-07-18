MomPhoneCalleeScript:
	checkevent EVENT_TALKED_TO_MOM_AFTER_GETTING_POKEDEX
	iftrue .started_quest
	checkevent EVENT_GOT_MAP_CARD
	iftrue MomPhoneLectureScript
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue MomPhoneNoGymQuestScript
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue MomPhoneNoPokedexScript
	sjump MomPhoneNoPokemonScript

.started_quest
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue MomPhoneHangUpScript
	farwritetext MomPhoneGreetingText
	promptbutton
	getcurlandmarkname STRING_BUFFER_3
	readvar VAR_ENVIRONMENT
	ifequal TOWN, MomPhoneInTown
	ifequal ROUTE, MomPhoneOnRoute
	sjump MomPhoneOther

MomPhoneLandmark:
	farwritetext MomPhoneLandmarkText
	promptbutton
	sjump MomSavingMoney

MomPhoneInTown:
	readvar VAR_MAPGROUP
;	ifequal GROUP_NEW_BARK_TOWN, .newbark
;	ifequal GROUP_CHERRYGROVE_CITY, .cherrygrove
;	ifequal GROUP_VIOLET_CITY, .violet
;	ifequal GROUP_AZALEA_TOWN, .azalea
;	ifequal GROUP_GOLDENROD_CITY, .goldenrod
;	farwritetext MomPhoneGenericAreaText
	ifequal GROUP_PALLET_TOWN, .pallet
	ifequal GROUP_VIRIDIAN_CITY, .viridian
	ifequal GROUP_LAVENDER_TOWN, .lavender
	ifequal GROUP_FUCHSIA_CITY, .fuchsia
	ifequal GROUP_SAFFRON_CITY, .saffron
	farwritetext MomPhoneGenericAreaText
	promptbutton
	sjump MomSavingMoney

.pallet ;.newbark
	farwritetext MomPhonePalletText
	promptbutton
	sjump MomSavingMoney

.viridian ;.cherrygrove
	farwritetext MomPhoneViridianText
	promptbutton
	sjump MomSavingMoney

.lavender ;.violet
	getlandmarkname STRING_BUFFER_4, LANDMARK_POKEMON_TOWER ;LANDMARK_SPROUT_TOWER
	sjump MomPhoneLandmark
.fuchsia ;.azalea
	getlandmarkname STRING_BUFFER_4, LANDMARK_SAFARI_ZONE ;LANDMARK_SLOWPOKE_WELL
	sjump MomPhoneLandmark
.saffron ;.goldenrod
	getlandmarkname STRING_BUFFER_4, LANDMARK_SILPH_CO ;LANDMARK_RADIO_TOWER
	sjump MomPhoneLandmark

MomPhoneOnRoute:
	farwritetext MomOtherAreaText
	promptbutton
	sjump MomSavingMoney

MomPhoneOther:
	farwritetext MomDeterminedText
	promptbutton
	sjump MomSavingMoney

MomSavingMoney:
	checkflag ENGINE_MOM_SAVING_MONEY
	iffalse .NotSaving
	checkmoney MOMS_MONEY, 0
	ifequal HAVE_MORE, .SavingHasMoney
	sjump .SavingNoMoney

.NotSaving:
	checkmoney MOMS_MONEY, 0
	ifequal HAVE_MORE, .HasMoney
	sjump .NoMoney

.SavingHasMoney:
	getmoney STRING_BUFFER_3, MOMS_MONEY
	farwritetext MomCheckBalanceText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

.SavingNoMoney:
	farwritetext MomImportantToSaveText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

.NoMoney:
	farwritetext MomYoureNotSavingText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

.HasMoney:
	getmoney STRING_BUFFER_3, MOMS_MONEY
	farwritetext MomYouveSavedText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

MomPhoneSaveMoneyScript:
	setflag ENGINE_MOM_SAVING_MONEY
	farwritetext MomOKIllSaveText
	promptbutton
	sjump MomPhoneHangUpScript

MomPhoneWontSaveMoneyScript:
	clearflag ENGINE_MOM_SAVING_MONEY
	farwritetext MomPhoneWontSaveMoneyText
	promptbutton
	sjump MomPhoneHangUpScript

MomPhoneHangUpScript:
	farwritetext MomPhoneHangUpText
	end

MomPhoneNoPokemonScript:
	farwritetext MomPhoneNoPokemonText
	end

MomPhoneNoPokedexScript:
	farwritetext MomPhoneNoPokedexText
	end

;MomPhoneNoGymQuestScript:
;	farwritetext MomPhoneNoGymQuestText
;	end

MomPhoneLectureScript:
	setevent EVENT_TALKED_TO_MOM_AFTER_GETTING_POKEDEX
	setflag ENGINE_MOM_ACTIVE
	specialphonecall SPECIALCALL_NONE
	farwritetext MomPhoneLectureText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript
