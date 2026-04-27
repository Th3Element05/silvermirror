	object_const_def
	const ROUTE45_LEPPA_BERRY
	const ROUTE45_LUM_BERRY

Route45_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route45Fruittrees

Route45Fruittrees:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_45_FRUIT
	iftrue .NoFruit
	appear ROUTE45_LEPPA_BERRY
	appear ROUTE45_LUM_BERRY
.NoFruit:
;	clearevent EVENT_OAK_REMIND_ABOUT_WATERFALL
	endcallback

; fruit
Route45_LeppaBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, LEPPA_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem LEPPA_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE45_LEPPA_BERRY
	setflag ENGINE_DAILY_ROUTE_45_FRUIT
.NoRoomInBag
	closetext
	end

Route45_LumBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, LUM_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem LUM_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE45_LUM_BERRY
	setflag ENGINE_DAILY_ROUTE_45_FRUIT
.NoRoomInBag
	closetext
	end

Route45_NoFruit:
	farsjump Std_NoFruitScript

; trainers
TrainerHikerQuentin:
	trainer HIKER, QUENTIN, EVENT_BEAT_HIKER_QUENTIN, HikerQuentinSeenText, HikerQuentinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerQuentinAfterBattleText
	waitbutton
	closetext
	end

HikerQuentinSeenText:
	text "Be prepared for"
	line "anything!"

	para "Let me see if your"
	line "#MON have been"
	cont "raised properly!"
	done

HikerQuentinBeatenText:
	text "Oh, I lost that!"
	done

HikerQuentinAfterBattleText:
	text "I'll head back to"
	line "BLACKTHORN's ICE"
	cont "PATH and train"
	roll "some more."
	done

TrainerCooltrainermColt:
	trainer COOLTRAINERM, COLT, EVENT_BEAT_COOLTRAINERM_COLT, CooltrainermColtSeenText, CooltrainermColtBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainermColtAfterBattleText
	waitbutton
	closetext
	end

CooltrainermColtSeenText:
	text "What are your"
	line "thoughts on rais-"
	cont "ing #MON?"
	done

CooltrainermColtBeatenText:
	text "You've won my"
	line "respect."
	done

CooltrainermColtAfterBattleText:
	text "I see you're rais-"
	line "ing your #MON"
	cont "with care."

	para "The bond you build"
	line "will save you in"
	cont "tough situations."
	done


TrainerCooltrainerfQuinn:
	trainer COOLTRAINERF, QUINN, EVENT_BEAT_COOLTRAINERF_QUINN, CooltrainerfQuinnSeenText, CooltrainerfQuinnBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfQuinnAfterBattleText
	waitbutton
	closetext
	end

CooltrainerfQuinnSeenText:
	text "What is your"
	line "battle strategy?"

	para "It is foolish to"
	line "use strong moves"
	cont "indiscriminately."
	done

CooltrainerfQuinnBeatenText:
	text "Fine. I lost."
	done

CooltrainerfQuinnAfterBattleText:
	text "I'm not in favor"
	line "of overly power-"
	cont "ful moves."

	para "I want to win, but"
	line "I also don't want"
	cont "to harm #MON."
	done

TrainerHikerParry:
	trainer HIKER, PARRY1, EVENT_BEAT_HIKER_PARRY, HikerParrySeenText, HikerParryBeatenText, 0, .Script
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
	winlosstext HikerParryBeatenText, 0
	loadtrainer HIKER, PARRY_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARRY_READY_FOR_REMATCH
	checkevent EVENT_PARRY_IRON
	iftrue .HasIron
	checkevent EVENT_GOT_IRON_FROM_PARRY
	iffalse .GiveIron
	random 10
	ifequal 0, .GiveIron
	sjump .ParryDefeated

.GiveIron
	scall Route45RematchGiftM
	verbosegiveitem IRON
	iffalse HikerParryHasIron
	setevent EVENT_GOT_IRON_FROM_PARRY
	sjump Route45NumberAcceptedM

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

HikerParryHasIron:
	setevent EVENT_PARRY_IRON
	jumpstd PackFullMScript
	end

HikerParrySeenText:
	text "My #MON are"
	line "power packed!"
	done

HikerParryBeatenText:
	text "Wahahah! I'm the"
	line "big loser!"
	done

HikerParryAfterBattleText:
	text "I'm not much good"
	line "at thinking, see?"

	para "So, I just plow"
	line "ahead with power!"
	done

HikerParryGivesIronText:
	text "I just can't find"
	line "a way to win!"

	para "Keep it up!"

	para "Oh, and take this"
	line "--it's the gift"
	cont "you couldn't take"
	roll "last time."
	done

TrainerBlackbeltKenji:
	trainer BLACKBELT_T, KENJI1, EVENT_BEAT_BLACKBELT_KENJI, BlackbeltKenjiSeenText, BlackbeltKenjiBeatenText, 0, .Script
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
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI1
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

.NoRoom:
	sjump Route45PackFullM

BlackbeltKenjiSeenText:
	text "I was training"
	line "here alone."

	para "Behold the fruits"
	line "of my labor!"
	done

BlackbeltKenjiBeatenText:
	text "Waaaargh!"
	done

BlackbeltKenjiAfterBattleText:
	text "This calls for"
	line "extreme measures."

	para "I must take to the"
	line "hills and train in"
	cont "solitude."
	done

BlackbeltKenjiMorningText:
	text "I'm going to train"
	line "a bit more before"
	cont "I break for lunch."
	done

BlackbeltKenjiNightText:
	text "We had plenty of"
	line "rest at lunch, so"
	cont "now we're ready"
	roll "to train more!"
	done

Route45AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route45AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route45RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route45NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route45NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route45PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route45RematchM:
	jumpstd RematchMScript
	end

Route45GiftM:
	jumpstd GiftMScript
	end

Route45PackFullM:
	jumpstd PackFullMScript
	end

Route45RematchGiftM:
	jumpstd RematchGiftMScript
	end

TrainerHikerPatrick:
	trainer HIKER, PATRICK, EVENT_BEAT_HIKER_PATRICK, HikerPatrickSeenText, HikerPatrickBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerPatrickAfterBattleText
	waitbutton
	closetext
	end

HikerPatrickSeenText:
	text "Yo! You're spunky!"
	line "But you know what?"

	para "When it comes to"
	line "sheer spunkiness,"
	cont "I'm the man!"
	done

HikerPatrickBeatenText:
	text "My #MON weren't"
	line "spunky enough!"
	done

HikerPatrickAfterBattleText:
	text "Boy, do I love"
	line "HP UP! Mmmm, yum!"

	para "I keep drinking my"
	line "#MON's!"

	para "I can't help it!"
	done

TrainerCamperDilan:
	trainer CAMPER, DILAN, EVENT_BEAT_CAMPER_DILAN, CamperDilanSeenText, CamperDilanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperDilanAfterBattleText
	waitbutton
	closetext
	end

CamperDilanSeenText:
	text "I'm really, really"
	line "tough!"
	done

CamperDilanBeatenText:
	text "I was tough at the"
	line "BATTLE TOWER…"
	done

CamperDilanAfterBattleText:
	text "Have you been to"
	line "the BATTLE TOWER?"

	para "I never, ever lose"
	line "there, but…"
	done

;TrainerHikerTimothy:
;	trainer HIKER, TIMOTHY, EVENT_BEAT_HIKER_TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText, 0, .Script
;
;.Script:
;	endifjustbattled
;	opentext
;	writetext HikerTimothyAfterBattleText
;	waitbutton
;	closetext
;	end

;HikerTimothySeenText:
;	text "Why do I climb"
;	line "mountains?"
;
;	para "Because they're"
;	line "there."
;
;	para "Why do I train"
;	line "#MON?"
;
;	para "Because they're"
;	line "there!"
;	done
;
;HikerTimothyBeatenText:
;	text "Losses…"
;	line "They're there too!"
;	done
;
;HikerTimothyAfterBattleText:
;	text "The best thing to"
;	line "ever happen to me"
;
;	para "was discovering"
;	line "#MON."
;	done

; bg
Route45Sign:
	jumptext Route45SignText
Route45SignText:
	text "ROUTE 45"
	line "MOUNTAIN ROAD"
	done

Route45HiddenPpUp:
	hiddenitem PP_UP, EVENT_ROUTE_45_HIDDEN_PP_UP

; items
Route45Nugget:
	itemball NUGGET

Route45Revive:
	itemball REVIVE

Route45Elixer:
	itemball ELIXER

Route45MaxPotion:
	itemball MAX_POTION

Route45_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, DARK_CAVE_BLACKTHORN_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event 16, 80, BGEVENT_READ, Route45_NoFruit
	bg_event 15, 82, BGEVENT_READ, Route45_NoFruit
	bg_event 10,  4, BGEVENT_READ, Route45Sign
	bg_event 13, 80, BGEVENT_ITEM, Route45HiddenPpUp

	def_object_events
	object_event 16, 80, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route45_LeppaBerry, EVENT_ROUTE_45_LEPPA_BERRY
	object_event 15, 82, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route45_LumBerry, EVENT_ROUTE_45_LUM_BERRY
	object_event 10, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerQuentin, -1 ;erik
	object_event 17, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermColt, -1 ;ryan
	object_event  5, 36, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfQuinn, -1 ;kelly
	object_event  5, 28, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerParry, -1 ;parry
	object_event  6, 51, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltKenji, -1 ;kenji
	object_event 15, 65, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerPatrick, -1 ;michael
	object_event  4, 70, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerCamperDilan, -1 ;quentin
;	object_event  9, 65, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerTimothy, -1 ;timothy
	object_event  9, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Nugget, EVENT_ROUTE_45_NUGGET
	object_event  5, 66, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Revive, EVENT_ROUTE_45_REVIVE
	object_event  6, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Elixer, EVENT_ROUTE_45_ELIXER
	object_event  7, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45MaxPotion, EVENT_ROUTE_45_MAX_POTION
