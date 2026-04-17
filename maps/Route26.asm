	object_const_def
	const ROUTE26_LEPPA_BERRY
	const ROUTE26_SITRUS_BERRY

Route26_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route26Fruittrees

; fruit
Route26Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_26_FRUIT
	iftrue .NoFruit
	appear ROUTE1_ORAN_BERRY
	appear ROUTE1_BLK_APRICORN
.NoFruit:
	endcallback

Route26_LeppaBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, LEPPA_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem LEPPA_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE26_LEPPA_BERRY
	setflag ENGINE_DAILY_ROUTE_26_FRUIT
.NoRoomInBag
	closetext
	end

Route26_SitrusBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, SITRUS_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem SITRUS_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE26_SITRUS_BERRY
	setflag ENGINE_DAILY_ROUTE_26_FRUIT
.NoRoomInBag
	closetext
	end

Route26_NoFruit:
	farsjump Std_NoFruitScript


; trainers
TrainerCooltrainerMGavin:
	trainer COOLTRAINERM, GAVIN1, EVENT_BEAT_COOLTRAINERM_GAVIN, CooltrainerMGavinSeenText, CooltrainerMGavinBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext CooltrainerMGavinAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_COOLTRAINERM_GAVIN
	opentext
	checkflag ENGINE_GAVIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERM_GAVIN
	iftrue .GavinDefeated
	checkevent EVENT_GAVIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainerMGavinAfterBattleText
	promptbutton
	setevent EVENT_GAVIN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERM_GAVIN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVIN1
	scall .RegisteredNumber
	jump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainerMGavinBeatenText, 0
	loadtrainer COOLTRAINERM, GAVIN_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer COOLTRAINERM, GAVIN1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GAVIN_READY_FOR_REMATCH
	end

.GavinDefeated:
	writetext CooltrainerMGavinAfterBattleText
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

CooltrainerMGavinSeenText:
	text "I got eight GYM"
	line "BADGES in JOHTO."

	para "I'm on my way to"
	line "take the #MON"
	cont "LEAGUE challenge!"
	done

CooltrainerMGavinBeatenText:
	text "I blew it!"
	done

CooltrainerMGavinAfterBattleText:
	text "It's going to be"
	line "tough to beat the"
	cont "#MON LEAGUE."

	para "They say that the"
	line "ELITE FOUR are"
	cont "way tougher than"
	roll "GYM LEADERS."

	para "I need to do some"
	line "more training."
	done


TrainerCooltrainerMFinn:
	trainer COOLTRAINERM, FINN, EVENT_BEAT_COOLTRAINERM_FINN, CooltrainerMFinnSeenText, CooltrainerMFinnBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMFinnAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMFinnSeenText:
	text "By experiencing"
	line "tough battles, you"
	cont "gain power."
	done

CooltrainerMFinnBeatenText:
	text "Gaah! Life is even"
	line "tougher!"
	done

CooltrainerMFinnAfterBattleText:
	text "To get to #MON"
	line "LEAGUE, you have"
	cont "to get through"
	roll "VICTORY ROAD."

	para "But VICTORY ROAD"
	line "is tough."

	para "They won't even"
	line "you in without"
	cont "eight GYM BADGES."
	done


TrainerCooltrainerFJoyce:
	trainer COOLTRAINERF, JOYCE, EVENT_BEAT_COOLTRAINERF_JOYCE, CooltrainerFJoyceSeenText, CooltrainerFJoyceBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFJoyceAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFJoyceSeenText:
	text "You look like a"
	line "good trainer."

	para "I'm going to give"
	line "this battle every-"
	cont "thing I've got!"
	done

CooltrainerFJoyceBeatenText:
	text "No! I don't"
	line "believe this!"
	done

CooltrainerFJoyceAfterBattleText:
	text "I've defeated"
	line "eight GYM LEADERs,"
	cont "so I was feeling"
	roll "confident."

	para "I'll have to try"
	line "harder next time."
	done


TrainerCooltrainerFBeth:
	trainer COOLTRAINERF, BETH1, EVENT_BEAT_COOLTRAINERF_BETH, CooltrainerFBethSeenText, CooltrainerFBethBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext CooltrainerFBethAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_COOLTRAINERF_BETH
	opentext
	checkflag ENGINE_BETH_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERF_BETH
	iftrue .BethDefeated
	checkevent EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainerFBethAfterBattleText
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
	winlosstext CooltrainerFBethBeatenText, 0
	loadtrainer COOLTRAINERF, BETH_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer COOLTRAINERF, BETH1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BETH_READY_FOR_REMATCH
	end

.BethDefeated:
	writetext CooltrainerFBethAfterBattleText
	promptbutton
	closetext
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

CooltrainerFBethSeenText:
	text "Some of the train-"
	line "ers on their way"
	cont "to #MON LEAGUE"
	roll "are so serious."

	para "They try so hard"
	line "to win no matter"
	cont "the cost."

	para "I feel sorry for"
	line "their #MON."
	done

CooltrainerFBethBeatenText:
	text "#MON aren't"
	line "just tools."
	done

CooltrainerFBethAfterBattleText:
	text "#MON are in-"
	line "valuable, lifelong"
	cont "partners."
	done


TrainerPsychicCaleb:
	trainer PSYCHIC_T, CALEB, EVENT_BEAT_PSYCHIC_CALEB, PsychicCalebSeenText, PsychicCalebBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicCalebAfterBattleText
	waitbutton
	closetext
	end

PsychicCalebSeenText:
	text "Do you have enough"
	line "BADGES to get to"
	cont "#MON LEAGUE?"
	done

PsychicCalebBeatenText:
	text "Good battle!"
	done

PsychicCalebAfterBattleText:
	text "People and #MON"
	line "grow from their"
	cont "experiences."

	para "Don't be lazy and"
	line "get complacent."
	done


TrainerFisherLuca:
	trainer FISHER, LUCA, EVENT_BEAT_FISHER_LUCA, FisherLucaSeenText, FisherLucaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherLucaAfterBattleText
	waitbutton
	closetext
	end

FisherLucaSeenText:
	text "I'm feeling great"
	line "today!"

	para "I feel like I"
	line "could boot even"
	cont "the LEAGUE CHAMP!"
	done

FisherLucaBeatenText:
	text "No! Not in this"
	line "battle!"
	done

FisherLucaAfterBattleText:
	text "Just like in fish-"
	line "ing, it's all over"
	cont "in #MON if you"
	roll "give up."
	done


; bg text
Route26Sign:
	jumptext Route26SignText
Route26SignText:
	text "ROUTE 26"
	done


; items
Route26MaxElixer:
	itemball MAX_ELIXER


Route26_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  1, ROUTE_26_GATE, 3
	warp_event  5, 67, DAY_OF_WEEK_SIBLINGS_HOUSE, 1
	warp_event 15, 53, ROUTE_26_HEAL_HOUSE, 1
;	warp_event  7,  5, VICTORY_ROAD_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 13, 49, BGEVENT_READ, Route26_NoFruit
	bg_event 14, 50, BGEVENT_READ, Route26_NoFruit
	bg_event  9,  3, BGEVENT_READ, Route26Sign

	def_object_events
	object_event 13, 49, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route26_LeppaBerry, EVENT_ROUTE_26_LEPPA_BERRY
	object_event 14, 50, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route26_SitrusBerry, EVENT_ROUTE_26_SITRUS_BERRY
	object_event 14, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMGavin, -1
	object_event  9, 38, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerMFinn, -1
	object_event 10, 56, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFJoyce, -1
	object_event  5,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerFBeth, -1
	object_event 13, 79, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicCaleb, -1
	object_event 10, 92, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherLuca, -1
	object_event  9, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route26MaxElixer, EVENT_ROUTE_26_MAX_ELIXER
