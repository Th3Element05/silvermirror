;TrainerBikerAiden:
;	trainer BIKER, AIDEN1, EVENT_BEAT_BIKER_AIDEN, BikerAidenSeenText, BikerAidenBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIKER_AIDEN
	opentext
	checkflag ENGINE_AIDEN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIKER_AIDEN
	iftrue .AidenDefeated
	checkevent EVENT_AIDEN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext BikerAidenAfterBattleText
	waitbutton
	setevent EVENT_AIDEN_ASKED_FOR_PHONE_NUMBER
	scall Route17AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route17AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BIKER_AIDEN
	ifequal PHONE_CONTACTS_FULL, Route17PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route17NumberDeclined
	gettrainername STRING_BUFFER_3, BIKER, AIDEN1
	scall Route17RegisteredNumber
	jump Route17NumberAccepted

.WantsBattle:
	scall Route17Rematch
	winlosstext BikerAidenBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer BIKER, AIDEN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_AIDEN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIKER, AIDEN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_AIDEN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIKER, AIDEN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_AIDEN_READY_FOR_REMATCH
	end

.AidenDefeated:
	writetext BikerAidenAfterBattleText
	waitbutton
	closetext
	end

Route17AskNumber1:
	jumpstd AskNumber1MScript
	end

Route17AskNumber2:
	jumpstd AskNumber2MScript
	end

Route17RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

Route17NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

Route17NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

Route17PhoneFull:
	jumpstd PhoneFullMScript
	end

Route17Rematch:
	jumpstd RematchMScript
	end


;TrainerSchoolboyAlan1:
;	trainer SCHOOLBOY, ALAN1, EVENT_BEAT_SCHOOLBOY_ALAN, SchoolboyAlan1SeenText, SchoolboyAlan1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_ALAN
	opentext
	checkflag ENGINE_ALAN_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue .GiveFireStone
	checkcellnum PHONE_SCHOOLBOY_ALAN
	iftrue .AlanDefeated
	checkevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext SchoolboyAlan1AfterBattleText
	promptbutton
	setevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .ContinueAskForPhoneNumber

.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SCHOOLBOY_ALAN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	scall .RegisteredNumber
	sjump .NumberAccepted

.ChooseRematch:
	scall .Rematch
	winlosstext SchoolboyAlan1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, ALAN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, ALAN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, ALAN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer SCHOOLBOY, ALAN4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer SCHOOLBOY, ALAN5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.GiveFireStone:
	scall .Gift
	verbosegiveitem FIRE_STONE
	iffalse .BagFull
	clearflag ENGINE_ALAN_HAS_FIRE_STONE
	setevent ENGINE_ALAN_GAVE_FIRE_STONE
	sjump .NumberAccepted

.BagFull:
	sjump .PackFull

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

.AlanDefeated:
	writetext SchoolboyAlan1AfterBattleText
	promptbutton
	closetext
	end


;TrainerGentlemanAlfred:
;	trainer GENTLEMAN, ALFRED1, EVENT_BEAT_GENTLEMAN_ALFRED, GentlemanAlfredSeenText, GentlemanAlfredBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_GENTLEMAN_ALFRED
	opentext
	checkflag ENGINE_ALFRED_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_GENTLEMAN_ALFRED
	iftrue .AlfredDefeated
	checkevent EVENT_ALFRED_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext GentlemanAlfredAfterBattleText
	promptbutton
	setevent EVENT_ALFRED_ASKED_FOR_PHONE_NUMBER
	scall OlivineLighthouse2FAskNumber1
	sjump .AskForNumber

.AskedBefore:
	scall OlivineLighthouse2FAskNumber2
.AskForNumber:
	askforphonenumber PHONE_GENTLEMAN_ALFRED
	ifequal PHONE_CONTACTS_FULL, OlivineLighthouse2FPhoneFull
	ifequal PHONE_CONTACT_REFUSED, OlivineLighthouse2FNumberDeclined
	gettrainername STRING_BUFFER_3, GENTLEMAN, ALFRED1
	scall OlivineLighthouse2FRegisteredNumber
	sjump OlivineLighthouse2FNumberAccepted

.WantsBattle:
	scall OlivineLighthouse2FRematch
	winlosstext GentlemanAlfredBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight1
	loadtrainer GENTLEMAN, ALFRED1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALFRED_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer GENTLEMAN, ALFRED2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALFRED_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer GENTLEMAN, ALFRED3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALFRED_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer GENTLEMAN, ALFRED4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALFRED_READY_FOR_REMATCH
	end

.AlfredDefeated:
	writetext GentlemanAlfredAfterBattleText
	promptbutton
	closetext
	end


;TrainerHikerAnthony:
;	trainer HIKER, ANTHONY2, EVENT_BEAT_HIKER_ANTHONY, HikerAnthony2SeenText, HikerAnthony2BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_HIKER_ANTHONY
	opentext
	checkflag ENGINE_ANTHONY_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_HIKER_ANTHONY
	iftrue .AnthonyDefeated
	checkevent EVENT_ANTHONY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext HikerAnthony2AfterText
	promptbutton
	setevent EVENT_ANTHONY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .AskForPhoneNumber

.AskAgain:
	scall .AskNumber2
.AskForPhoneNumber:
	askforphonenumber PHONE_HIKER_ANTHONY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, HIKER, ANTHONY2
	scall .RegisteredNumber
	jump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext HikerAnthony2BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer HIKER, ANTHONY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer HIKER, ANTHONY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer HIKER, ANTHONY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer HIKER, ANTHONY4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer HIKER, ANTHONY5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end
	
.AnthonyDefeated:
	writetext HikerAnthony2AfterText
	promptbutton
	closetext
	end


;TrainerBugCatcherArnie:
;	trainer BUG_CATCHER, ARNIE1, EVENT_BEAT_BUG_CATCHER_ARNIE, BugCatcherArnieSeenText, BugCatcherArnieBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BUG_CATCHER_ARNIE
	opentext
	checkflag ENGINE_ARNIE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BUG_CATCHER_ARNIE
	iftrue .ArnieDefeated
	checkevent EVENT_ARNIE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BugCatcherArnieAfterBattleText
	promptbutton
	setevent EVENT_ARNIE_ASKED_FOR_PHONE_NUMBER
	scall Route35AskNumber1M
	jump .AskForNumber

.AskedAlready:
	scall Route35AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BUG_CATCHER_ARNIE
	ifequal PHONE_CONTACTS_FULL, Route35PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route35NumberDeclinedM
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	scall Route35RegisteredNumberM
	jump Route35NumberAcceptedM

.WantsBattle:
	scall Route35RematchM
	winlosstext BugCatcherArnieBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	iftrue .LoadFight1
	loadtrainer BUG_CATCHER, ARNIE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARNIE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, ARNIE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARNIE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, ARNIE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARNIE_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer BUG_CATCHER, ARNIE4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARNIE_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer BUG_CATCHER, ARNIE5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARNIE_READY_FOR_REMATCH
	end

.ArnieDefeated:
	writetext BugCatcherArnieAfterBattleText
	promptbutton
	closetext
	end


;TrainerCooltrainerfBeth1:
;	trainer COOLTRAINERF, BETH1, EVENT_BEAT_COOLTRAINERF_BETH, CooltrainerfBeth1SeenText, CooltrainerfBeth1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_COOLTRAINERF_BETH
	opentext
	checkflag ENGINE_BETH_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERF_BETH
	iftrue .BethDefeated
	checkevent EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainerfBethAfterText
	promptbutton
	setevent EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERF_BETH
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERF, BETH1
	scall .RegisteredNumber
	jump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainerfBeth1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer COOLTRAINERF, BETH1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BETH_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer COOLTRAINERF, BETH2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BETH_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer COOLTRAINERF, BETH3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BETH_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.Rematch:
	jumpstd RematchFScript
	end

.BethDefeated:
	writetext CooltrainerfBethAfterText
	promptbutton
	closetext
	end


;TrainerPokefanfBeverly:
;	trainer POKEFANF, BEVERLY, EVENT_BEAT_POKEFANF_BEVERLY, PokefanfBeverlySeenText, PokefanfBeverlyBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_POKEFAN_BEVERLY
	opentext
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue .GiveNugget
	checkcellnum PHONE_POKEFAN_BEVERLY
	iftrue .BeverlyDefeated
	checkevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PokefanBeverlyCuteMonText
	promptbutton
	setevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	scall NationalParkAskNumber1F
	sjump .RequestNumber

.AskAgain:
	scall NationalParkAskNumber2F
.RequestNumber:
	askforphonenumber PHONE_POKEFAN_BEVERLY
	ifequal PHONE_CONTACTS_FULL, NationalParkPhoneFullF
	ifequal PHONE_CONTACT_REFUSED, NationalParkNumberDeclinedF
	gettrainername STRING_BUFFER_3, POKEFANF, BEVERLY
	scall NationalParkRegisteredNumberF
	sjump NationalParkNumberAcceptedF

.GiveNugget:
	scall NationalParkGiftF
	verbosegiveitem NUGGET
	iffalse .NoRoom
	clearflag ENGINE_BEVERLY_HAS_NUGGET
	sjump NationalParkNumberAcceptedF

.NoRoom:
	sjump NationalParkPackFullF

.BeverlyDefeated:
	writetext PokefanBeverlyCuteMonText
	promptbutton
	closetext
	end


;TrainerSchoolboyBilly:
;	trainer SCHOOLBOY, BILLY1, EVENT_BEAT_SCHOOLBOY_BILLY, SchoolboyBillySeenText, SchoolboyBillyBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_BILLY
	opentext
	checkflag ENGINE_BILLY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_SCHOOLBOY_BILLY
	iftrue .BillyDefeated
	checkevent EVENT_BILLY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext SchoolboyBillyAfterBattleText
	waitbutton
	setevent EVENT_BILLY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_SCHOOLBOY_BILLY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, BILLY1
	scall .RegisteredNumber
	jump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext SchoolboyBillyBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, BILLY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BILLY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, BILLY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BILLY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, BILLY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BILLY_READY_FOR_REMATCH
	end

.BillyDefeated:
	writetext SchoolboyBillyAfterBattleText
	waitbutton
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end


;TrainerPokemaniacBrent:
;	trainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, PokemaniacBrentSeenText, PokemaniacBrentBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_POKEMANIAC_BRENT
	opentext
	checkflag ENGINE_BRENT_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_POKEMANIAC_BRENT
	iftrue .BrentDefeated
	checkevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PokemaniacBrentAfterBattleText
	promptbutton
	setevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_POKEMANIAC_BRENT
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext PokemaniacBrentBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight1
	loadtrainer POKEMANIAC, BRENT1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer POKEMANIAC, BRENT2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer POKEMANIAC, BRENT3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer POKEMANIAC, BRENT4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.BrentDefeated:
	writetext PokemaniacBrentAfterBattleText
	promptbutton
	closetext
	end


;TrainerSchoolboyChad1:
;	trainer SCHOOLBOY, CHAD1, EVENT_BEAT_SCHOOLBOY_CHAD, SchoolboyChad1SeenText, SchoolboyChad1BeatenText, 0, .Script

.Script
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_CHAD
	opentext
	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue .ChadRematch
	checkcellnum PHONE_SCHOOLBOY_CHAD
	iftrue .ChadDefeated
	checkevent EVENT_CHAD_ASKED_FOR_PHONE_NUMBER
	iftrue .SecondTimeAsking
	writetext SchoolboyChad1AfterBattleText
	promptbutton
	setevent EVENT_CHAD_ASKED_FOR_PHONE_NUMBER
	scall .AskPhoneNumber1
	sjump .AskToRegisterNumber

.SecondTimeAsking:
	scall .AskPhoneNumber2
.AskToRegisterNumber:
	askforphonenumber PHONE_SCHOOLBOY_CHAD
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .SaidNo
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	scall .RegisteredChad
	sjump .HaveChadsNumber

.ChadRematch:
	scall .Rematch
	winlosstext SchoolboyChad1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, CHAD1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CHAD_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, CHAD2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CHAD_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, CHAD3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CHAD_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer SCHOOLBOY, CHAD4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CHAD_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer SCHOOLBOY, CHAD5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CHAD_READY_FOR_REMATCH
	end

.AskPhoneNumber1:
	jumpstd AskNumber1MScript
	end

.AskPhoneNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredChad:
	jumpstd RegisteredNumberMScript
	end

.HaveChadsNumber:
	jumpstd NumberAcceptedMScript
	end

.SaidNo:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.ChadDefeated:
	writetext SchoolboyChad1AfterBattleText
	promptbutton
	closetext
	end


;TrainerLassDana1:
;	trainer LASS, DANA1, EVENT_BEAT_LASS_DANA, LassDana1SeenText, LassDana1BeatenText, 0, .Script

.Script
	loadvar VAR_CALLERID, PHONE_LASS_DANA
	opentext
	checkflag ENGINE_DANA_READY_FOR_REMATCH
	iftrue .DanaRematch
	checkflag ENGINE_DANA_HAS_THUNDERSTONE
	iftrue .TryGiveThunderstone
	checkcellnum PHONE_LASS_DANA
	iftrue .DanaDefeated
	checkevent EVENT_DANA_ASKED_FOR_PHONE_NUMBER
	iftrue .SecondTimeAsking
	writetext LassDana1AfterBattleText
	promptbutton
	setevent EVENT_DANA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1F
	sjump .AskForPhoneNumber

.SecondTimeAsking:
	scall .AskNumber2F
.AskForPhoneNumber:
	askforphonenumber PHONE_LASS_DANA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .DeclinedPhoneNumber
	gettrainername STRING_BUFFER_3, LASS, DANA1
	scall .RegisteredPhoneNumber
	sjump .NumberAccepted

.DanaRematch:
	scall .Rematch
	winlosstext LassDana1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_CIANWOOD
	iftrue .LoadFight1
	loadtrainer LASS, DANA1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DANA_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer LASS, DANA2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DANA_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer LASS, DANA3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DANA_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer LASS, DANA4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DANA_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer LASS, DANA5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DANA_READY_FOR_REMATCH
	end

.TryGiveThunderstone:
	scall .Gift
	verbosegiveitem THUNDERSTONE
	iffalse .NoRoomForThunderstone
	clearflag ENGINE_DANA_HAS_THUNDERSTONE
	setevent ENGINE_DANA_GAVE_THUNDERSTONE
	sjump .NumberAccepted

.NoRoomForThunderstone:
	sjump .PackFull

.AskNumber1F:
	jumpstd AskNumber1FScript
	end

.AskNumber2F:
	jumpstd AskNumber2FScript
	end

.RegisteredPhoneNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.DeclinedPhoneNumber:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.Rematch:
	jumpstd RematchFScript
	end

.Gift:
	jumpstd GiftFScript
	end

.PackFull:
	jumpstd PackFullFScript
	end

.DanaDefeated:
	writetext LassDana1AfterBattleText
	promptbutton
	closetext
	end


;TrainerPokefanmDerek:
;	trainer POKEFANM, DEREK, EVENT_BEAT_POKEFANM_DEREK, PokefanmDerekSeenText, PokefanmDerekBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_POKEFANM_DEREK
	opentext
	checkflag ENGINE_DEREK_HAS_NUGGET
	iftrue .HasNugget
	checkcellnum PHONE_POKEFANM_DEREK
	iftrue .NumberAccepted
	checkevent EVENT_DEREK_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PokefanMDerekText_NotBragging
	promptbutton
	setevent EVENT_DEREK_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_POKEFANM_DEREK
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEFANM, DEREK
	scall .RegisteredNumber
	sjump .NumberAccepted

.HasNugget:
	scall .Gift
	verbosegiveitem NUGGET
	iffalse .NoRoom
	clearflag ENGINE_DEREK_HAS_NUGGET
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end


;TrainerBugCatcherDoug:
;	trainer BUG_CATCHER, DOUG1, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BUG_CATCHER_DOUG
	opentext
	checkflag ENGINE_DOUG_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_DOUG_HAS_BERRY
	iftrue .DougItem
	checkcellnum PHONE_BUG_CATCHER_DOUG
	iftrue .DougDefeated
	checkevent EVENT_DOUG_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext BugCatcherDougAfterBattleText
	promptbutton
	setevent EVENT_DOUG_ASKED_FOR_PHONE_NUMBER
	scall Route2SouthAskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route2SouthAskNumber2
.AskForNumber:
	askforphonenumber PHONE_BUG_CATCHER_DOUG
	ifequal PHONE_CONTACTS_FULL, Route2SouthPhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route2SouthNumberDeclined
	gettrainername STRING_BUFFER_3, BUG_CATCHER, DOUG1
	scall Route2SouthRegisteredNumber
	jump Route2SouthNumberAccepted

.WantsBattle:
	scall Route2SouthRematch
	winlosstext BugCatcherDougBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent EVENT_BEAT_BLAINE
	iftrue .LoadFight1
	loadtrainer BUG_CATCHER, DOUG1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DOUG_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, DOUG2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DOUG_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, DOUG3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DOUG_READY_FOR_REMATCH
	end

.DougItem:
	scall Route2SouthGiftItem
	random 4
	ifequal 0, .chestoberry
	ifequal 1, .leppaberry
	ifequal 2, .lumberry
	ifequal 3, .sitrusberry

.chestoberry:
	verbosegiveitem CHESTO_BERRY
	iffalse Route2SouthPackFull
	jump .Done

.leppaberry:
	verbosegiveitem LEPPA_BERRY
	iffalse Route2SouthPackFull
	jump .Done

.lumberry:
	verbosegiveitem LUM_BERRY
	iffalse Route2SouthPackFull
	jump .Done

.sitrusberry:
	verbosegiveitem SITRUS_BERRY
	iffalse Route2SouthPackFull

.Done:
	clearflag ENGINE_DOUG_HAS_BERRY
	setflag ENGINE_DOUG_GAVE_BERRY
	jump Route2SouthNumberAccepted

.DougDefeated:
	writetext BugCatcherDougAfterBattleText
	promptbutton
	closetext
	end


;TrainerBikerEoin:
;	trainer BIKER, EOIN1, EVENT_BEAT_BIKER_EOIN, BikerEoinSeenText, BikerEoinBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIKER_EOIN
	opentext
	checkflag ENGINE_EOIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIKER_EOIN
	iftrue .EoinDefeated
	checkevent EVENT_EOIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext BikerEoinAfterBattleText
	waitbutton
	setevent EVENT_EOIN_ASKED_FOR_PHONE_NUMBER
	scall Route17AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route17AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BIKER_EOIN
	ifequal PHONE_CONTACTS_FULL, Route17PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route17NumberDeclined
	gettrainername STRING_BUFFER_3, BIKER, EOIN1
	scall Route17RegisteredNumber
	jump Route17NumberAccepted

.WantsBattle:
	scall Route17Rematch
	winlosstext BikerEoinBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer BIKER, EOIN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_EOIN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIKER, EOIN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_EOIN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIKER, EOIN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_EOIN_READY_FOR_REMATCH
	end

.EoinDefeated:
	writetext BikerEoinAfterBattleText
	waitbutton
	closetext
	end


;TrainerPicnickerErin1:
;	trainer PICNICKER, ERIN1, EVENT_BEAT_PICNICKER_ERIN, PicnickerErin1SeenText, PicnickerErin1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_ERIN
	opentext
	checkflag ENGINE_ERIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_PICNICKER_ERIN
	iftrue .ErinDefeated
	checkevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PicnickerErinAfterBattleText
	promptbutton
	setevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	scall Route46AskNumber1F
	sjump .AskForNumber

.AskedAlready:
	scall Route46AskNumber2F
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_ERIN
	ifequal PHONE_CONTACTS_FULL, Route46PhoneFullF
	ifequal PHONE_CONTACT_REFUSED, Route46NumberDeclinedF
	gettrainername STRING_BUFFER_3, PICNICKER, ERIN1
	scall Route46RegisteredNumberF
	sjump Route46NumberAcceptedF

.WantsBattle:
	scall Route46RematchF
	winlosstext PicnickerErin1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer PICNICKER, ERIN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, ERIN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, ERIN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	checkevent EVENT_ERIN_CALCIUM
	iftrue .HasCalcium
	checkevent EVENT_GOT_CALCIUM_FROM_ERIN
	iftrue .GotCalciumAlready
	scall Route46RematchGiftF
	verbosegiveitem CALCIUM
	iffalse ErinNoRoomForCalcium
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjump Route46NumberAcceptedF

.GotCalciumAlready:
	end

.HasCalcium:
	opentext
	writetext PicnickerErin2BeatenText
	waitbutton
	verbosegiveitem CALCIUM
	iffalse ErinNoRoomForCalcium
	clearevent EVENT_ERIN_CALCIUM
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjump Route46NumberAcceptedF

.ErinDefeated:
	writetext PicnickerErinAfterBattleText
	promptbutton
	closetext
	end

Route46AskNumber1F:
	jumpstd AskNumber1FScript
	end

Route46AskNumber2F:
	jumpstd AskNumber2FScript
	end

Route46RegisteredNumberF:
	jumpstd RegisteredNumberFScript
	end

Route46NumberAcceptedF:
	jumpstd NumberAcceptedFScript
	end

Route46NumberDeclinedF:
	jumpstd NumberDeclinedFScript
	end

Route46PhoneFullF:
	jumpstd PhoneFullFScript
	end

Route46RematchF:
	jumpstd RematchFScript
	end

ErinNoRoomForCalcium:
	setevent EVENT_ERIN_CALCIUM
	jumpstd PackFullFScript
	end

Route46RematchGiftF:
	jumpstd RematchGiftFScript
	end


;TrainerCooltrainermGaven3:
;	trainer COOLTRAINERM, GAVEN3, EVENT_BEAT_COOLTRAINERM_GAVEN, CooltrainermGaven3SeenText, CooltrainermGaven3BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_COOLTRAINERM_GAVEN
	opentext
	checkflag ENGINE_GAVEN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERM_GAVEN
	iftrue .GavenDefeated
	checkevent EVENT_GAVEN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainermGavenAfterText
	promptbutton
	setevent EVENT_GAVEN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERM_GAVEN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVEN3
	scall .RegisteredNumber
	jump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainermGaven3BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer COOLTRAINERM, GAVEN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GAVEN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer COOLTRAINERM, GAVEN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GAVEN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer COOLTRAINERM, GAVEN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GAVEN_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.GavenDefeated:
	writetext CooltrainermGavenAfterText
	promptbutton
	closetext
	end


;TrainerPicnickerGina:
;	trainer PICNICKER, GINA1, EVENT_BEAT_PICNICKER_GINA, PicnickerGinaSeenText, PicnickerGinaBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_GINA
	opentext
	checkflag ENGINE_GINA_READY_FOR_REMATCH
	iftrue .Rematch
	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue .LeafStone
	checkcellnum PHONE_PICNICKER_GINA
	iftrue .GinaDefeated
	checkevent EVENT_GINA_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PicnickerGinaAfterText
	promptbutton
	setevent EVENT_GINA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .FinishAsk

.AskAgain:
	scall .AskNumber2
.FinishAsk:
	askforphonenumber PHONE_PICNICKER_GINA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, GINA1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext PicnickerGinaBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight1
	loadtrainer PICNICKER, GINA1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GINA_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, GINA2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GINA_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, GINA3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GINA_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer PICNICKER, GINA4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GINA_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer PICNICKER, GINA5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GINA_READY_FOR_REMATCH
	end

.LeafStone:
	scall .Gift
	verbosegiveitem LEAF_STONE
	iffalse .BagFull
	clearflag ENGINE_GINA_HAS_LEAF_STONE
	setflag ENGINE_GINA_GAVE_LEAF_STONE
	sjump .NumberAccepted

.BagFull:
	sjump .PackFull

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.RematchStd:
	jumpstd RematchFScript
	end

.Gift:
	jumpstd GiftFScript
	end

.PackFull:
	jumpstd PackFullFScript
	end
	
.GinaDefeated:
	writetext PicnickerGinaAfterText
	promptbutton
	closetext
	end


;TrainerTeacherHillary:
;	trainer TEACHER, HILLARY1, EVENT_BEAT_TEACHER_HILLARY, TeacherHillarySeenText, TeacherHillaryBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_TEACHER_HILLARY
	opentext
	checkflag ENGINE_HILLARY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_TEACHER_HILLARY
	iftrue .HillaryDefeated
	checkevent EVENT_HILLARY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext TeacherHillaryAfterBattleText
	waitbutton
	setevent EVENT_HILLARY_ASKED_FOR_PHONE_NUMBER
	scall Route15FAskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route15FAskNumber2
.AskForNumber:
	askforphonenumber PHONE_TEACHER_HILLARY
	ifequal PHONE_CONTACTS_FULL, Route15FPhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route15FNumberDeclined
	gettrainername STRING_BUFFER_3, TEACHER, HILLARY1
	scall Route15FRegisteredNumber
	jump Route15FNumberAccepted

.WantsBattle:
	scall Route15FRematch
	winlosstext TeacherHillaryBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer TEACHER, HILLARY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_HILLARY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer TEACHER, HILLARY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_HILLARY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer TEACHER, HILLARY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_HILLARY_READY_FOR_REMATCH
	end

.HillaryDefeated:
	writetext TeacherHillaryAfterBattleText
	waitbutton
	closetext
	end


;TrainerSailorHuey:
;	trainer SAILOR, HUEY1, EVENT_BEAT_SAILOR_HUEY, SailorHueySeenText, SailorHueyBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SAILOR_HUEY
	opentext
	checkflag ENGINE_HUEY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_SAILOR_HUEY
	iftrue .HueyDefeated
	checkevent EVENT_HUEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext SailorHueyAfterBattleText
	promptbutton
	setevent EVENT_HUEY_ASKED_FOR_PHONE_NUMBER
	scall OlivineLighthouse2FAskNumber1
	sjump .AskForNumber

.AskedBefore:
	scall OlivineLighthouse2FAskNumber2
.AskForNumber:
	askforphonenumber PHONE_SAILOR_HUEY
	ifequal PHONE_CONTACTS_FULL, OlivineLighthouse2FPhoneFull
	ifequal PHONE_CONTACT_REFUSED, OlivineLighthouse2FNumberDeclined
	gettrainername STRING_BUFFER_3, SAILOR, HUEY1
	scall OlivineLighthouse2FRegisteredNumber
	sjump OlivineLighthouse2FNumberAccepted

.WantsBattle:
	scall OlivineLighthouse2FRematch
	winlosstext SailorHueyBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight1
	loadtrainer SAILOR, HUEY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_HUEY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SAILOR, HUEY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_HUEY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SAILOR, HUEY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_HUEY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer SAILOR, HUEY4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_HUEY_READY_FOR_REMATCH
	checkevent EVENT_HUEY_PROTEIN
	iftrue .HasProtein
	checkevent EVENT_GOT_PROTEIN_FROM_HUEY
	iftrue .SkipGift
	scall .RematchGift
	verbosegiveitem PROTEIN
	iffalse .PackFull
	setevent EVENT_GOT_PROTEIN_FROM_HUEY
	sjump OlivineLighthouse2FNumberAccepted

.SkipGift:
	end

.HasProtein:
	opentext
	writetext SailorHueyGiveProteinText
	waitbutton
	verbosegiveitem PROTEIN
	iffalse .PackFull
	clearevent EVENT_HUEY_PROTEIN
	setevent EVENT_GOT_PROTEIN_FROM_HUEY
	sjump OlivineLighthouse2FNumberAccepted


.PackFull:
	setevent EVENT_HUEY_PROTEIN
	jumpstd PackFullMScript
	end

.RematchGift:
	jumpstd RematchGiftMScript
	end

.HueyDefeated:
	writetext SailorHueyAfterBattleText
	promptbutton
	closetext
	end


;TrainerYoungsterIan:
;	trainer YOUNGSTER, IAN1, EVENT_BEAT_YOUNGSTER_IAN, YoungsterIanSeenText, YoungsterIanBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_YOUNGSTER_IAN
	opentext
	checkevent EVENT_GOT_BERRY_FROM_YOUNGSTER_IAN
	iftrue .TryBerry
	checkflag ENGINE_IAN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_YOUNGSTER_IAN
	iftrue .IanDefeated
	checkevent EVENT_IAN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext YoungsterIanAfterText
	promptbutton
	setevent EVENT_IAN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_YOUNGSTER_IAN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, YOUNGSTER, IAN1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext YoungsterIanBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight1
	loadtrainer YOUNGSTER, IAN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_IAN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer YOUNGSTER, IAN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_IAN_READY_FOR_REMATCH
	opentext
	sjump .TryBerry
	end

.LoadFight2:
	loadtrainer YOUNGSTER, IAN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_IAN_READY_FOR_REMATCH
	opentext
	sjump .TryBerry
	end

.LoadFight3:
	loadtrainer YOUNGSTER, IAN4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_IAN_READY_FOR_REMATCH
	opentext
	sjump .TryBerry
	end

.LoadFight4:
	loadtrainer YOUNGSTER, IAN5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_IAN_READY_FOR_REMATCH
	opentext
	sjump .TryBerry
	end

.TryBerry:
	setevent EVENT_GOT_BERRY_FROM_YOUNGSTER_IAN
	writetext YoungsterIanRematchGiftText
	waitbutton
	random 3
	ifequal 0, .pechaberry
	ifequal 1, .cheriberry
	ifequal 2, .chestoberry

.pechaberry:
	verbosegiveitem PECHA_BERRY
	iffalse .PackFull
	clearevent EVENT_GOT_BERRY_FROM_YOUNGSTER_IAN
	closetext
	end

.cheriberry:
	verbosegiveitem CHERI_BERRY
	iffalse .PackFull
	clearevent EVENT_GOT_BERRY_FROM_YOUNGSTER_IAN
	closetext
	end

.chestoberry:
	verbosegiveitem CHESTO_BERRY
	iffalse .PackFull
	clearevent EVENT_GOT_BERRY_FROM_YOUNGSTER_IAN
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.PackFull:
	sjump .PackFullSTD
	end

.PackFullSTD:
	jumpstd PackFullMScript
	end

.IanDefeated:
	writetext YoungsterIanAfterText
	promptbutton
	closetext
	end


;TrainerJugglerIrwin:
;	trainer JUGGLER, IRWIN1, EVENT_BEAT_JUGGLER_IRWIN, JugglerIrwin1SeenText, JugglerIrwin1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_JUGGLER_IRWIN
	opentext
	checkcellnum PHONE_JUGGLER_IRWIN
	iftrue .IrwinDefeated
	checkevent EVENT_IRWIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext JugglerIrwinAfterBattleText
	promptbutton
	setevent EVENT_IRWIN_ASKED_FOR_PHONE_NUMBER
	scall Route35AskNumber1M
	jump .AskForNumber

.AskedAlready:
	scall Route35AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_JUGGLER_IRWIN
	ifequal PHONE_CONTACTS_FULL, Route35PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route35NumberDeclinedM
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	scall Route35RegisteredNumberM
	jump Route35NumberAcceptedM

.IrwinDefeated:
	writetext JugglerIrwinAfterBattleText
	promptbutton
	closetext
	end

Route35AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route35AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route35RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route35NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route35NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route35PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route35RematchM:
	jumpstd RematchMScript
	end


;TrainerSchoolboyJack1:
;	trainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboyJack1SeenText, SchoolboyJack1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_JACK
	opentext
	checkflag ENGINE_JACK_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_SCHOOLBOY_JACK
	iftrue .JackDefeated
	checkevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext SchoolboyJackTradeMonText
	promptbutton
	setevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	scall NationalParkAskNumber1M
	sjump .RequestNumber

.AskAgain:
	scall NationalParkAskNumber2M
.RequestNumber:
	askforphonenumber PHONE_SCHOOLBOY_JACK
	ifequal PHONE_CONTACTS_FULL, NationalParkPhoneFullM
	ifequal PHONE_CONTACT_REFUSED, NationalParkNumberDeclinedM
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	scall NationalParkRegisteredNumberM
	sjump NationalParkNumberAcceptedM

.Rematch:
	scall .RematchStd
	winlosstext SchoolboyJack1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, JACK1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, JACK2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, JACK3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer SCHOOLBOY, JACK4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer SCHOOLBOY, JACK5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.JackDefeated:
	writetext SchoolboyJackTradeMonText
	promptbutton
	closetext
	end

.RematchStd:
	jumpstd RematchMScript
	end


;TrainerBirdKeeperJamie:
;	trainer BIRD_KEEPER, JAMIE1, EVENT_BEAT_BIRD_KEEPER_JAMIE, BirdKeeperJamieSeenText, BirdKeeperJamieBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIRDKEEPER_JAMIE
	opentext
	checkflag ENGINE_JAMIE_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkflag ENGINE_JAMIE_HAS_MOON_STONE
	iftrue .GiveMoonStone
	checkcellnum PHONE_BIRDKEEPER_JAMIE
	iftrue .JamieDefeated
	checkevent EVENT_JAMIE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext BirdKeeperJamieAfterBattleText
	waitbutton
	setevent EVENT_JAMIE_ASKED_FOR_PHONE_NUMBER
	scall Route14AskNumber1
	jump .ContinueAskForPhoneNumber

.AskAgainForPhoneNumber:
	scall Route14AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_BIRDKEEPER_JAMIE
	ifequal PHONE_CONTACTS_FULL, Route14PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route14NumberDeclined
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JAMIE1
	scall Route14RegisteredNumber
	jump Route14NumberAccepted

.ChooseRematch:
	scall Route14Rematch
	winlosstext BirdKeeperJamieBeatenText, 0
	checkflag EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer BIRD_KEEPER, JAMIE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JAMIE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIRD_KEEPER, JAMIE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JAMIE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIRD_KEEPER, JAMIE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JAMIE_READY_FOR_REMATCH
	end

.GiveMoonStone:
	scall .Gift
	verbosegiveitem MOON_STONE
	iffalse .BagFull
	clearflag ENGINE_JAMIE_HAS_MOON_STONE
	setevent ENGINE_JAMIE_GAVE_MOON_STONE
	jump Route14NumberAccepted

.BagFull:
	jump .PackFull

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

.JamieDefeated:
	writetext BirdKeeperJamieAfterBattleText
	waitbutton
	closetext
	end

Route14AskNumber1:
	jumpstd AskNumber1MScript
	end

Route14AskNumber2:
	jumpstd AskNumber2MScript
	end

Route14RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

Route14NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

Route14NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

Route14PhoneFull:
	jumpstd PhoneFullMScript
	end

Route14Rematch:
	jumpstd RematchMScript
	end


;TrainerYoungsterJoey:
;	trainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoey1SeenText, YoungsterJoey1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_YOUNGSTER_JOEY
	opentext
	checkflag ENGINE_JOEY_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_YOUNGSTER_JOEY
	iftrue .JoeyDefeated
	checkevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext YoungsterJoey1AfterText
	promptbutton
	setevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_YOUNGSTER_JOEY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, YOUNGSTER, JOEY1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext YoungsterJoey1BeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue .LoadFight1
	loadtrainer YOUNGSTER, JOEY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer YOUNGSTER, JOEY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer YOUNGSTER, JOEY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer YOUNGSTER, JOEY4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer YOUNGSTER, JOEY5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY_READY_FOR_REMATCH
	checkevent EVENT_JOEY_HP_UP
	iftrue .GiveHPUp
	checkevent EVENT_GOT_HP_UP_FROM_JOEY
	iftrue .done
	scall .RematchGift
	verbosegiveitem HP_UP
	iffalse .PackFull
	setevent EVENT_GOT_HP_UP_FROM_JOEY
	sjump .NumberAccepted

.done
	end

.GiveHPUp:
	opentext
	writetext YoungsterJoeyText_GiveHPUpAfterBattle
	waitbutton
	verbosegiveitem HP_UP
	iffalse .PackFull
	clearevent EVENT_JOEY_HP_UP
	setevent EVENT_GOT_HP_UP_FROM_JOEY
	sjump .NumberAccepted

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end

.PackFull:
	setevent EVENT_JOEY_HP_UP
	jumpstd PackFullMScript
	end

.RematchGift:
	jumpstd RematchGiftMScript
	end

.JoeyDefeated:
	writetext YoungsterJoey1AfterText
	promptbutton
	closetext
	end


;TrainerBirdKeeperJose2:
;	trainer BIRD_KEEPER, JOSE2, EVENT_BEAT_BIRD_KEEPER_JOSE2, BirdKeeperJose2SeenText, BirdKeeperJose2BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIRDKEEPER_JOSE
	opentext
	checkflag ENGINE_JOSE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue .HasStarPiece
	checkcellnum PHONE_BIRDKEEPER_JOSE
	iftrue .JoseDefeated
	checkevent EVENT_JOSE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BirdKeeperJose2AfterBattleText
	promptbutton
	setevent EVENT_JOSE_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BIRDKEEPER_JOSE
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JOSE2
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext BirdKeeperJose2BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer BIRD_KEEPER, JOSE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOSE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIRD_KEEPER, JOSE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOSE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIRD_KEEPER, JOSE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOSE_READY_FOR_REMATCH
	end

.HasStarPiece:
	scall .Gift
	verbosegiveitem STAR_PIECE
	iffalse .NoRoom
	clearflag ENGINE_JOSE_HAS_STAR_PIECE
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

.JoseDefeated:
	writetext BirdKeeperJose2AfterBattleText
	promptbutton
	closetext
	end










;TrainerTwinsKayandTia1:
;	trainer TWINS, KAYANDTIA1, EVENT_BEAT_TWINS_KAYANDTIA, TwinsKayandTiaSeenText, TwinsKayandTiaBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_TWINS_KAY_AND_TIA
	opentext
	checkflag ENGINE_KAY_AND_TIA_READY_FOR_REMATCH
	iftrue KayandTiaWantsBattle
	checkcellnum PHONE_TWINS_KAY_AND_TIA
	iftrue KayandTia1Defeated
	checkevent EVENT_KAY_AND_TIA_ASKED_FOR_PHONE_NUMBER
	iftrue KayandTiaAskedBefore
	writetext TwinsKayandTiaAfterBattleText1
	waitbutton
	setevent EVENT_KAY_AND_TIA_ASKED_FOR_PHONE_NUMBER
	scall Route15FAskNumber1
	jump KayandTiaAskForNumber

KayandTiaAskedBefore:
	scall Route15FAskNumber2
KayandTiaAskForNumber:
	askforphonenumber PHONE_TWINS_KAY_AND_TIA
	ifequal PHONE_CONTACTS_FULL, Route15FPhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route15FNumberDeclined
	gettrainername STRING_BUFFER_3, TWINS, KAYANDTIA1
	scall Route15FRegisteredNumber
	jump Route15FNumberAccepted

KayandTiaWantsBattle:
	scall Route15FRematch
	winlosstext TwinsKayandTiaBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue KayandTiaLoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue KayandTiaLoadFight1
	loadtrainer TWINS, KAYANDTIA1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KAY_AND_TIA_READY_FOR_REMATCH
	end

TrainerTwinsKayandTia2:
	trainer TWINS, KAYANDTIA1, EVENT_BEAT_TWINS_KAYANDTIA, TwinsKayandTiaSeenText, TwinsKayandTiaBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_TWINS_KAY_AND_TIA
	opentext
	checkflag ENGINE_KAY_AND_TIA_READY_FOR_REMATCH
	iftrue KayandTiaWantsBattle
	checkcellnum PHONE_TWINS_KAY_AND_TIA
	iftrue KayandTia2Defeated
	checkevent EVENT_KAY_AND_TIA_ASKED_FOR_PHONE_NUMBER
	iftrue KayandTiaAskedBefore
	writetext TwinsKayandTiaAfterBattleText2
	waitbutton
	setevent EVENT_KAY_AND_TIA_ASKED_FOR_PHONE_NUMBER
	scall Route15FAskNumber1
	jump KayandTiaAskForNumber

KayandTiaLoadFight1:
	loadtrainer TWINS, KAYANDTIA2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KAY_AND_TIA_READY_FOR_REMATCH
	end

KayandTiaLoadFight2:
	loadtrainer TWINS, KAYANDTIA3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KAY_AND_TIA_READY_FOR_REMATCH
	end

KayandTia1Defeated:
	writetext TwinsKayandTiaAfterBattleText1
	waitbutton
	closetext
	end

KayandTia2Defeated:
	writetext TwinsKayandTiaAfterBattleText2
	waitbutton
	closetext
	end


;TrainerBlackbeltKenji:
;	trainer BLACKBELT_T, KENJI, EVENT_BEAT_BLACKBELT_KENJI, BlackbeltKenji3SeenText, BlackbeltKenji3BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BLACKBELT_KENJI
	opentext
	checkcellnum PHONE_BLACKBELT_KENJI
	iftrue .Registered
	checkevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	special SampleKenjiBreakCountdown
	writetext BlackbeltKenjiAfterBattleText
	waitbutton
	setevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BLACKBELT_KENJI
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.Registered:
	readvar VAR_KENJI_BREAK
	ifnotequal 1, Route45NumberAcceptedM
	checktime MORN
	iftrue .Morning
	checktime NITE
	iftrue .Night
	checkevent EVENT_KENJI_ON_BREAK
	iffalse Route45NumberAcceptedM
	scall Route45GiftM
	verbosegiveitem PP_UP
	iffalse .NoRoom
	clearevent EVENT_KENJI_ON_BREAK
	special SampleKenjiBreakCountdown
	sjump Route45NumberAcceptedM

.Morning:
	writetext BlackbeltKenjiMorningText
	waitbutton
	closetext
	end

.Night:
	writetext BlackbeltKenjiNightText
	waitbutton
	closetext
	end


;TrainerHikerKenny:
;	trainer HIKER, KENNY1, EVENT_BEAT_HIKER_KENNY, HikerKennySeenText, HikerKennyBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_HIKER_KENNY
	opentext
	checkflag ENGINE_KENNY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_HIKER_KENNY
	iftrue .KennyDefeated
	checkevent EVENT_KENNY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext HikerKennyAfterBattleText
	waitbutton
	setevent EVENT_KENNY_ASKED_FOR_PHONE_NUMBER
	scall Route13AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route13AskNumber2
.AskForNumber:
	askforphonenumber PHONE_HIKER_KENNY
	ifequal PHONE_CONTACTS_FULL, Route13PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route13NumberDeclined
	gettrainername STRING_BUFFER_3, HIKER, KENNY1
	scall Route13RegisteredNumber
	jump Route13NumberAccepted

.WantsBattle:
	scall Route13Rematch
	winlosstext HikerKennyBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer HIKER, KENNY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KENNY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer HIKER, KENNY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KENNY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer HIKER, KENNY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KENNY_READY_FOR_REMATCH
	end

.KennyDefeated:
	writetext HikerKennyAfterBattleText
	waitbutton
	closetext
	end


;TrainerLassKrise:
;	trainer LASS, KRISE1, EVENT_BEAT_LASS_KRISE, LassKriseSeenText, LassKriseBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_LASS_KRISE
	opentext
	checkflag ENGINE_KRISE_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_LASS_KRISE
	iftrue .KriseDefeated
	checkevent EVENT_KRISE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext LassKriseAfterBattleText
	promptbutton
	setevent EVENT_KRISE_ASKED_FOR_PHONE_NUMBER
	scall NationalParkAskNumber1F
	sjump .RequestNumber

.AskAgain:
	scall NationalParkAskNumber2F
.RequestNumber:
	askforphonenumber PHONE_LASS_KRISE
	ifequal PHONE_CONTACTS_FULL, NationalParkPhoneFullF
	ifequal PHONE_CONTACT_REFUSED, NationalParkNumberDeclinedF
	gettrainername STRING_BUFFER_3, LASS, KRISE1
	scall NationalParkRegisteredNumberF
	sjump NationalParkNumberAcceptedF

.Rematch:
	scall .RematchStd
	winlosstext LassKriseBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer LASS, KRISE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KRISE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer LASS, KRISE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KRISE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer LASS, KRISE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KRISE_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer LASS, KRISE4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KRISE_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer LASS, KRISE5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KRISE_READY_FOR_REMATCH
	end

.RematchStd:
	jumpstd RematchFScript
	end

.KriseDefeated:
	writetext LassKriseAfterBattleText
	promptbutton
	closetext
	end


;TrainerFisherKyle:
;	trainer FISHER, KYLE1, EVENT_BEAT_FISHER_KYLE, FisherKyleSeenText, FisherKyleBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_KYLE
	opentext
	checkflag ENGINE_KYLE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_FISHER_KYLE
	iftrue .KyleDefeated
	checkevent EVENT_KYLE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext FisherKyleAfterBattleText
	promptbutton
	setevent EVENT_KYLE_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_FISHER_KYLE
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, FISHER, KYLE1
	scall .RegisteredNumber
	jump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext FisherKyleBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer FISHER, KYLE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KYLE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, KYLE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KYLE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, KYLE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KYLE_READY_FOR_REMATCH
	end

.KyleDefeated:
	writetext FisherKyleAfterBattleText
	promptbutton
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end


;TrainerPicnickerLiz1:
;	trainer PICNICKER, LIZ1, EVENT_BEAT_PICNICKER_LIZ, PicnickerLiz1SeenText, PicnickerLiz1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_LIZ
	opentext
	checkflag ENGINE_LIZ_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_PICNICKER_LIZ
	iftrue .LizDefeated
	checkevent EVENT_LIZ_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PicnickerLiz1AfterText
	promptbutton
	setevent EVENT_LIZ_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskAgain:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_LIZ
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, LIZ1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext PicnickerLiz1BeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue .LoadFight1
	loadtrainer PICNICKER, LIZ1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, LIZ2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, LIZ3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer PICNICKER, LIZ4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer PICNICKER, LIZ5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.RematchStd:
	jumpstd RematchFScript
	end

.LizDefeated:
	writetext PicnickerLiz1AfterText
	promptbutton
	closetext
	end


;TrainerHikerParry:
;	trainer HIKER, PARRY3, EVENT_BEAT_HIKER_PARRY, HikerParry3SeenText, HikerParry3BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_HIKER_PARRY
	opentext
	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_HIKER_PARRY
	iftrue .ParryDefeated
	checkevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext HikerParryAfterBattleText
	promptbutton
	setevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_HIKER_PARRY
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.WantsBattle:
	scall Route45RematchM
	winlosstext HikerParry3BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer HIKER, PARRY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARRY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer HIKER, PARRY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARRY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer HIKER, PARRY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARRY_READY_FOR_REMATCH
	checkevent EVENT_PARRY_IRON
	iftrue .HasIron
	checkevent EVENT_GOT_IRON_FROM_PARRY
	iftrue .GotIron
	scall Route45RematchGiftM
	verbosegiveitem IRON
	iffalse HikerParryHasIron
	setevent EVENT_GOT_IRON_FROM_PARRY
	sjump Route45NumberAcceptedM

.GotIron:
	end

.HasIron:
	opentext
	writetext HikerParryGivesIronText
	waitbutton
	verbosegiveitem IRON
	iffalse HikerParryHasIron
	clearevent EVENT_PARRY_IRON
	setevent EVENT_GOT_IRON_FROM_PARRY
	sjump Route45NumberAcceptedM

.ParryDefeated:
	writetext HikerParryAfterBattleText
	promptbutton
	closetext
	end


;TrainerFisherRalph1:
;	trainer FISHER, RALPH1, EVENT_BEAT_FISHER_RALPH, FisherRalph1SeenText, FisherRalph1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_RALPH
	opentext
	checkflag ENGINE_RALPH_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_FISHER_RALPH
	iftrue .RalphDefeated
	checkevent EVENT_RALPH_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext FisherRalphAfterText
	promptbutton
	setevent EVENT_RALPH_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskAgain:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_FISHER_RALPH
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, FISHER, RALPH1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext FisherRalph1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue .LoadFight1
	loadtrainer FISHER, RALPH1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, RALPH2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, RALPH3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer FISHER, RALPH4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer FISHER, RALPH5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end

.RalphDefeated:
	writetext FisherRalphAfterText
	promptbutton
	closetext
	end


;TrainerCooltrainerfReena:
;	trainer COOLTRAINERF, REENA1, EVENT_BEAT_COOLTRAINERF_REENA, CooltrainerfReenaSeenText, CooltrainerfReenaBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_COOLTRAINERF_REENA
	opentext
	checkflag ENGINE_REENA_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERF_REENA
	iftrue .ReenaDefeated
	checkevent EVENT_REENA_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainerfReenaAfterBattleText
	promptbutton
	setevent EVENT_REENA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERF_REENA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERF, REENA1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainerfReenaBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer COOLTRAINERF, REENA1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_REENA_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer COOLTRAINERF, REENA2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_REENA_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer COOLTRAINERF, REENA3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_REENA_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.Rematch:
	jumpstd RematchFScript
	end

.ReenaDefeated:
	writetext CooltrainerfReenaAfterBattleText
	promptbutton
	closetext
	end


;TrainerBikerReese:
;	trainer BIKER, REESE1, EVENT_BEAT_BIKER_REESE, BikerReeseSeenText, BikerReeseBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIKER_REESE
	opentext
	checkflag ENGINE_REESE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIKER_REESE
	iftrue .ReeseDefeated
	checkevent EVENT_REESE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext BikerReeseAfterBattleText
	waitbutton
	setevent EVENT_REESE_ASKED_FOR_PHONE_NUMBER
	scall Route17AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route17AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BIKER_REESE
	ifequal PHONE_CONTACTS_FULL, Route17PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route17NumberDeclined
	gettrainername STRING_BUFFER_3, BIKER, REESE1
	scall Route17RegisteredNumber
	jump Route17NumberAccepted

.WantsBattle:
	scall Route17Rematch
	winlosstext BikerReeseBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer BIKER, REESE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_REESE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIKER, REESE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_REESE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIKER, REESE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_REESE_READY_FOR_REMATCH
	end

.ReeseDefeated:
	writetext BikerReeseAfterBattleText
	waitbutton
	closetext
	end


;TrainerBugCatcherRob:
;	trainer BUG_CATCHER, ROB1, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcherRobSeenText, BugCatcherRobBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BUG_CATCHER_ROB
	opentext
	checkflag ENGINE_ROB_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_ROB_HAS_BERRY
	iftrue .RobItem
	checkcellnum PHONE_BUG_CATCHER_ROB
	iftrue .RobDefeated
	checkevent EVENT_ROB_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext BugCatcherRobAfterBattleText
	promptbutton
	setevent EVENT_ROB_ASKED_FOR_PHONE_NUMBER
	scall Route2SouthAskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route2SouthAskNumber2
.AskForNumber:
	askforphonenumber PHONE_BUG_CATCHER_ROB
	ifequal PHONE_CONTACTS_FULL, Route2SouthPhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route2SouthNumberDeclined
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ROB1
	scall Route2SouthRegisteredNumber
	jump Route2SouthNumberAccepted

.WantsBattle:
	scall Route2SouthRematch
	winlosstext BugCatcherRobBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent EVENT_BEAT_BLAINE
	iftrue .LoadFight1
	loadtrainer BUG_CATCHER, ROB1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ROB_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, ROB2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ROB_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, ROB3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ROB_READY_FOR_REMATCH
	end

.RobItem:
	scall Route2SouthGiftItem
	random 4
	ifequal 0, .chestoberry
	ifequal 1, .leppaberry
	ifequal 2, .lumberry
	ifequal 3, .sitrusberry

.chestoberry:
	verbosegiveitem CHESTO_BERRY
	iffalse Route2SouthPackFull
	jump .Done

.leppaberry:
	verbosegiveitem LEPPA_BERRY
	iffalse Route2SouthPackFull
	jump .Done

.lumberry:
	verbosegiveitem LUM_BERRY
	iffalse Route2SouthPackFull
	jump .Done

.sitrusberry:
	verbosegiveitem SITRUS_BERRY
	iffalse Route2SouthPackFull

.Done:
	clearflag ENGINE_ROB_HAS_BERRY
	setflag ENGINE_ROB_GAVE_BERRY
	jump Route2SouthNumberAccepted

.RobDefeated:
	writetext BugCatcherRobAfterBattleText
	promptbutton
	closetext
	end


;TrainerCamperTanner:
;	trainer CAMPER, TANNER1, EVENT_BEAT_CAMPER_TANNER, CamperTannerSeenText, CamperTannerBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_CAMPER_TANNER
	opentext
	checkflag ENGINE_TANNER_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkflag ENGINE_TANNER_HAS_SUN_STONE
	iftrue .GiveSunStone
	checkcellnum PHONE_CAMPER_TANNER
	iftrue .TannerDefeated
	checkevent EVENT_TANNER_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext CamperTannerAfterBattleText
	waitbutton
	setevent EVENT_TANNER_ASKED_FOR_PHONE_NUMBER
	scall Route13AskNumber1
	jump .ContinueAskForPhoneNumber

.AskAgainForPhoneNumber:
	scall Route13AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_CAMPER_TANNER
	ifequal PHONE_CONTACTS_FULL, Route13PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route13NumberDeclined
	gettrainername STRING_BUFFER_3, CAMPER, TANNER1
	scall Route13RegisteredNumber
	jump Route13NumberAccepted

.ChooseRematch:
	scall Route13Rematch
	winlosstext CamperTannerBeatenText, 0
	checkflag EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer CAMPER, TANNER1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TANNER_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer CAMPER, TANNER2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TANNER_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer CAMPER, TANNER3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TANNER_READY_FOR_REMATCH
	end

.GiveSunStone:
	scall .Gift
	verbosegiveitem SUN_STONE
	iffalse .BagFull
	clearflag ENGINE_TANNER_HAS_SUN_STONE
	setevent ENGINE_TANNER_GAVE_SUN_STONE
	jump Route13NumberAccepted

.BagFull:
	jump .PackFull

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

.TannerDefeated:
	writetext CamperTannerAfterBattleText
	waitbutton
	closetext
	end

Route13AskNumber1:
	jumpstd AskNumber1MScript
	end

Route13AskNumber2:
	jumpstd AskNumber2MScript
	end

Route13RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

Route13NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

Route13NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

Route13PhoneFull:
	jumpstd PhoneFullMScript
	end

Route13Rematch:
	jumpstd RematchMScript
	end


;TrainerPicnickerTiffany:
;	trainer PICNICKER, TIFFANY3, EVENT_BEAT_PICNICKER_TIFFANY, PicnickerTiffanySeenText, PicnickerTiffanyBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_TIFFANY
	opentext
	checkflag ENGINE_TIFFANY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_TIFFANY_HAS_SILK_SCARF
	iftrue .HasPinkBow
	checkcellnum PHONE_PICNICKER_TIFFANY
	iftrue .TiffanyDefeated
	checkevent EVENT_TIFFANY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PicnickerTiffanyWantsPicnicText
	promptbutton
	setevent EVENT_TIFFANY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_TIFFANY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, TIFFANY3
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext PicnickerTiffanyBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight1
	loadtrainer PICNICKER, TIFFANY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, TIFFANY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, TIFFANY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer PICNICKER, TIFFANY4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.HasPinkBow:
	scall .Gift
	verbosegiveitem SILK_SCARF
	iffalse .NoRoom
	clearflag ENGINE_TIFFANY_HAS_SILK_SCARF
	setevent ENGINE_TIFFANY_GAVE_SILK_SCARF
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.Rematch:
	jumpstd RematchFScript
	end

.Gift:
	jumpstd GiftFScript
	end

.PackFull:
	jumpstd PackFullFScript
	end

.TiffanyDefeated:
	writetext PicnickerTiffanyWantsPicnicText
	promptbutton
	closetext
	end


;TrainerCoupleTimandSue1:
;	trainer COUPLE, TIMANDSUE1, EVENT_BEAT_COUPLE_TIMANDSUE, CoupleTimandSueSeenText, CoupleTimandSueBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_COUPLE_TIM_AND_SUE
	opentext
	checkflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	iftrue TimAndSueWantsBattle
	checkcellnum PHONE_COUPLE_TIM_AND_SUE
	iftrue TimAndSue1Defeated
	checkevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	iftrue TimAndSueAskedBefore
	writetext CoupleTimandSueAfterBattleText1
	waitbutton
	setevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	scall TimAndSueAskNumber1
	jump TimAndSueAskForNumber

TimAndSueAskedBefore:
	scall TimAndSueAskNumber2
TimAndSueAskForNumber:
	askforphonenumber PHONE_COUPLE_TIM_AND_SUE
	ifequal PHONE_CONTACTS_FULL, TimAndSuePhoneFull
	ifequal PHONE_CONTACT_REFUSED, TimAndSueNumberDeclined
	gettrainername STRING_BUFFER_3, COUPLE, TIMANDSUE1
	scall TimAndSueRegisteredNumber
	jump TimAndSueNumberAccepted

TimAndSueWantsBattle:
	scall TimAndSueRematch
	winlosstext CoupleTimandSueBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue TimAndSueLoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue TimAndSueLoadFight1
	loadtrainer COUPLE, TIMANDSUE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	end

TrainerCoupleTimandSue2:
	trainer COUPLE, TIMANDSUE1, EVENT_BEAT_COUPLE_TIMANDSUE, CoupleTimandSueSeenText, CoupleTimandSueBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_COUPLE_TIM_AND_SUE
	opentext
	checkflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	iftrue TimAndSueWantsBattle
	checkcellnum PHONE_COUPLE_TIM_AND_SUE
	iftrue TimAndSue2Defeated
	checkevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	iftrue TimAndSueAskedBefore
	writetext CoupleTimandSueAfterBattleText2
	waitbutton
	setevent EVENT_TIM_AND_SUE_ASKED_FOR_PHONE_NUMBER
	scall TimAndSueAskNumber1
	jump TimAndSueAskForNumber

TimAndSueLoadFight1:
	loadtrainer COUPLE, TIMANDSUE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	end

TimAndSueLoadFight2:
	loadtrainer COUPLE, TIMANDSUE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIM_AND_SUE_READY_FOR_REMATCH
	end

TimAndSue1Defeated:
	writetext CoupleTimandSueAfterBattleText1
	waitbutton
	closetext
	end

TimAndSue2Defeated:
	writetext CoupleTimandSueAfterBattleText2
	waitbutton
	closetext
	end

TimAndSueAskNumber1:
	jumpstd AskNumber1FScript
	end

TimAndSueAskNumber2:
	jumpstd AskNumber2FScript
	end

TimAndSueRegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

TimAndSueNumberAccepted:
	jumpstd NumberAcceptedFScript
	end

TimAndSueNumberDeclined:
	jumpstd NumberDeclinedFScript
	end

TimAndSuePhoneFull:
	jumpstd PhoneFullFScript
	end

TimAndSueRematch:
	jumpstd RematchFScript
	end


;TrainerCamperTodd1:
;	trainer CAMPER, TODD1, EVENT_BEAT_CAMPER_TODD, CamperTodd1SeenText, CamperTodd1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_CAMPER_TODD
	opentext
	checkflag ENGINE_TODD_READY_FOR_REMATCH
	iftrue .Rematch
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleIsOn
	checkcellnum PHONE_CAMPER_TODD
	iftrue .ToddDefeated
	checkevent EVENT_TODD_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext CamperTodd1AfterText
	promptbutton
	setevent EVENT_TODD_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber
	sjump .FinishAsk

.AskAgain:
	scall .AskNumber2
.FinishAsk:
	askforphonenumber PHONE_CAMPER_TODD
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, CAMPER, TODD1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext CamperTodd1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_CIANWOOD
	iftrue .LoadFight1
	loadtrainer CAMPER, TODD1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer CAMPER, TODD2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer CAMPER, TODD3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer CAMPER, TODD4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer CAMPER, TODD5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.SaleIsOn:
	writetext CamperToddSaleText
	waitbutton
	closetext
	end

.AskNumber:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end
	
.ToddDefeated:
	writetext CamperTodd1AfterText
	promptbutton
	closetext
	end


;TrainerSchoolboyTorin:
;	trainer SCHOOLBOY, TORIN1, EVENT_BEAT_SCHOOLBOY_TORIN, SchoolboyTorinSeenText, SchoolboyTorinBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_TORIN
	opentext
	checkflag ENGINE_TORIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_SCHOOLBOY_TORIN
	iftrue .TorinDefeated
	checkevent EVENT_TORIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext SchoolboyTorinAfterBattleText
	waitbutton
	setevent EVENT_TORIN_ASKED_FOR_PHONE_NUMBER
	scall Route14AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route14AskNumber2
.AskForNumber:
	askforphonenumber PHONE_SCHOOLBOY_TORIN
	ifequal PHONE_CONTACTS_FULL, Route14PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route14NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, TORIN1
	scall Route14RegisteredNumber
	jump Route14NumberAccepted

.WantsBattle:
	scall Route14Rematch
	winlosstext SchoolboyTorinBeatenText, 0
	checkevent EVENT_BEAT_BLUE
	iftrue .LoadFight2
	checkevent ENGINE_FLYPOINT_PEWTER
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, TORIN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TORIN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, TORIN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TORIN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, TORIN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TORIN_READY_FOR_REMATCH
	end

.TorinDefeated:
	writetext SchoolboyTorinAfterBattleText
	waitbutton
	closetext
	end


;TrainerFisherTully:
;	trainer FISHER, TULLY1, EVENT_BEAT_FISHER_TULLY, FisherTullySeenText, FisherTullyBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_TULLY
	opentext
	checkflag ENGINE_TULLY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_TULLY_HAS_WATER_STONE
	iftrue .HasWaterStone
	checkcellnum PHONE_FISHER_TULLY
	iftrue .TullyDefeated
	checkevent EVENT_TULLY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FisherTullyAfterBattleText
	promptbutton
	setevent EVENT_TULLY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_FISHER_TULLY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, FISHER, TULLY1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext FisherTullyBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight1
	loadtrainer FISHER, TULLY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TULLY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, TULLY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TULLY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, TULLY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TULLY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer FISHER, TULLY4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TULLY_READY_FOR_REMATCH
	end

.HasWaterStone:
	scall .Gift
	verbosegiveitem WATER_STONE
	iffalse .NoRoom
	clearflag ENGINE_TULLY_HAS_WATER_STONE
	setevent ENGINE_TULLY_GAVE_WATER_STONE
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

.TullyDefeated:
	writetext FisherTullyAfterBattleText
	promptbutton
	closetext
	end


;TrainerBirdKeeperVance1:
;	trainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVance1SeenText, BirdKeeperVance1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIRDKEEPER_VANCE
	opentext
	checkflag ENGINE_VANCE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIRDKEEPER_VANCE
	iftrue .VanceDefeated
	checkevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BirdKeeperVanceLegendaryBirdsText
	promptbutton
	setevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BIRDKEEPER_VANCE
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext BirdKeeperVance1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer BIRD_KEEPER, VANCE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIRD_KEEPER, VANCE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIRD_KEEPER, VANCE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	checkevent EVENT_VANCE_CARBOS
	iftrue .Carbos
	checkevent EVENT_GOT_CARBOS_FROM_VANCE
	iftrue .ReceivedCarbosBefore
	scall Route44RematchGiftM
	verbosegiveitem CARBOS
	iffalse VancePackFull
	setevent EVENT_GOT_CARBOS_FROM_VANCE
	sjump Route44NumberAcceptedM

.ReceivedCarbosBefore:
	end

.Carbos:
	opentext
	writetext BirdKeeperVance2BeatenText
	waitbutton
	verbosegiveitem CARBOS
	iffalse VancePackFull
	clearevent EVENT_VANCE_CARBOS
	setevent EVENT_GOT_CARBOS_FROM_VANCE
	sjump Route44NumberAcceptedM

.VanceDefeated:
	writetext BirdKeeperVanceLegendaryBirdsText
	promptbutton
	closetext
	end

Route44AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route44AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route44RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route44NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route44NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route44PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route44RematchM:
	jumpstd RematchMScript
	end

Route44GiftM:
	jumpstd GiftMScript
	end

Route44PackFullM:
	jumpstd PackFullMScript
	end

VancePackFull:
	setevent EVENT_VANCE_CARBOS
	jumpstd PackFullMScript
	end

Route44RematchGiftM:
	jumpstd RematchGiftMScript
	end


;TrainerBugCatcherWade1:
;	trainer BUG_CATCHER, WADE1, EVENT_BEAT_BUG_CATCHER_WADE, BugCatcherWade1SeenText, BugCatcherWade1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BUG_CATCHER_WADE
	opentext
	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue .WadeRematch
	checkflag ENGINE_WADE_HAS_BERRY
	iftrue .WadeItem
	checkcellnum PHONE_BUG_CATCHER_WADE
	iftrue .WadeDefeated
	checkevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext BugCatcherWade1AfterText
	promptbutton
	setevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	scall .AskPhoneNumberSTD
	sjump .Continue

.AskAgain:
	scall .AskAgainSTD
.Continue:
	askforphonenumber PHONE_BUG_CATCHER_WADE
	ifequal PHONE_CONTACTS_FULL, .PhoneFullSTD
	ifequal PHONE_CONTACT_REFUSED, .DeclinedNumberSTD
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	scall .RegisterNumberSTD
	sjump .AcceptedNumberSTD

.WadeRematch:
	scall .RematchSTD
	winlosstext BugCatcherWade1BeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue .LoadFight1
	loadtrainer BUG_CATCHER, WADE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, WADE2
	startbattle
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, WADE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer BUG_CATCHER, WADE4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer BUG_CATCHER, WADE5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WADE_READY_FOR_REMATCH
	end

.WadeItem:
	scall .ItemSTD
	random 4
	ifequal 0, .oranberry
	ifequal 1, .pechaberry
	ifequal 2, .cheriberry
	ifequal 3, .persimberry

.oranberry:
	verbosegiveitem ORAN_BERRY
	iffalse .PackFull
	sjump .Done

.pechaberry:
	verbosegiveitem PECHA_BERRY
	iffalse .PackFull
	sjump .Done

.cheriberry:
	verbosegiveitem CHERI_BERRY
	iffalse .PackFull
	sjump .Done

.persimberry:
	verbosegiveitem PERSIM_BERRY
	iffalse .PackFull

.Done:
	clearflag ENGINE_WADE_HAS_BERRY
	setflag ENGINE_WADE_GAVE_BERRY
	sjump .AcceptedNumberSTD

.PackFull:
	sjump .PackFullSTD

.AskPhoneNumberSTD:
	jumpstd AskNumber1MScript
	end

.AskAgainSTD:
	jumpstd AskNumber2MScript
	end

.RegisterNumberSTD:
	jumpstd RegisteredNumberMScript
	end

.AcceptedNumberSTD:
	jumpstd NumberAcceptedMScript
	end

.DeclinedNumberSTD:
	jumpstd NumberDeclinedMScript
	end

.PhoneFullSTD:
	jumpstd PhoneFullMScript
	end

.RematchSTD:
	jumpstd RematchMScript
	end

.ItemSTD:
	jumpstd GiftMScript
	end

.PackFullSTD:
	jumpstd PackFullMScript
	end

.WadeDefeated:
	writetext BugCatcherWade1AfterText
	promptbutton
	closetext
	end


;TrainerFirebreatherWalt:
;	trainer FIREBREATHER, WALT1, EVENT_BEAT_FIREBREATHER_WALT, FirebreatherWaltSeenText, FirebreatherWaltBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FIREBREATHER_WALT
	opentext
	checkflag ENGINE_WALT_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_FIREBREATHER_WALT
	iftrue .WaltDefeated
	checkevent EVENT_WALT_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FirebreatherWaltAfterBattleText
	promptbutton
	setevent EVENT_WALT_ASKED_FOR_PHONE_NUMBER
	scall Route35AskNumber1M
	jump .AskForNumber

.AskedAlready:
	scall Route35AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_FIREBREATHER_WALT
	ifequal PHONE_CONTACTS_FULL, Route35PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route35NumberDeclinedM
	gettrainername STRING_BUFFER_3, FIREBREATHER, WALT1
	scall Route35RegisteredNumberM
	jump Route35NumberAcceptedM

.WantsBattle:
	scall Route35RematchM
	winlosstext FirebreatherWaltBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_CIANWOOD
	iftrue .LoadFight1
	loadtrainer FIREBREATHER, WALT1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WALT_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FIREBREATHER, WALT2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WALT_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FIREBREATHER, WALT3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WALT_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer FIREBREATHER, WALT4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WALT_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer FIREBREATHER, WALT5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WALT_READY_FOR_REMATCH
	end

.WaltDefeated:
	writetext FirebreatherWaltAfterBattleText
	promptbutton
	closetext
	end


;TrainerFisherWilton1:
;	trainer FISHER, WILTON1, EVENT_BEAT_FISHER_WILTON, FisherWilton1SeenText, FisherWilton1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_WILTON
	opentext
	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_WILTON_HAS_BALL_ITEM
	iftrue .HasItem
	checkcellnum PHONE_FISHER_WILTON
	iftrue .WiltonDefeated
	checkevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FisherWiltonHugePoliwagText
	promptbutton
	setevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_FISHER_WILTON
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext FisherWilton1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer FISHER, WILTON1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, WILTON2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, WILTON3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.HasItem:
	scall Route44GiftM
	random 3
	ifequal 0, .pokeball
	ifequal 1, .greatball
	ifequal 2, .ultraball

.pokeball:
	verbosegiveitem POKE_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.greatball:
	verbosegiveitem GREAT_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.ultraball:
	verbosegiveitem ULTRA_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.ItemReceived:
	clearflag ENGINE_WILTON_HAS_BALL_ITEM
	setflag ENGINE_WILTON_GAVE_BALL_ITEM
	sjump Route44NumberAcceptedM

.Route44PackFullM:
	sjump Route44PackFullM
	
.WiltonDefeated:
	writetext FisherWiltonHugePoliwagText
	promptbutton
	closetext
	end
