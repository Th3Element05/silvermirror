	object_const_def
	const ROUTE36_RAWST_BERRY
;	const ROUTE36_ARTHUR
	const ROUTE_36_SUDOWOODO
	const ROUTE_36_FLORIA

Route36_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route36FruittreesandArthurCallback

Route36FruittreesandArthurCallback:
	checkflag ENGINE_DAILY_ROUTE_36_FRUIT
	iftrue .Arthur
	appear ROUTE36_RAWST_BERRY
	; fallthrough
.Arthur:
;	readvar VAR_WEEKDAY
;	ifequal THURSDAY, .ArthurAppears
;	disappear ROUTE36_ARTHUR
	endcallback

;.ArthurAppears:
;	appear ROUTE36_ARTHUR
;	endcallback

; fruit
Route36_RawstBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, RAWST_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem RAWST_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE36_RAWST_BERRY
	setflag ENGINE_DAILY_ROUTE_36_FRUIT
.NoRoomInBag
	closetext
	end

Route36_NoFruit:
	farsjump Std_NoFruitScript

; scripts
;ArthurScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
;	iftrue .AlreadyGotStone
;	readvar VAR_WEEKDAY
;	ifnotequal THURSDAY, ArthurNotThursdayScript
;	checkevent EVENT_MET_ARTHUR_OF_THURSDAY
;	iftrue .MetArthur
;	writetext MeetArthurText
;	promptbutton
;	setevent EVENT_MET_ARTHUR_OF_THURSDAY
;.MetArthur:
;	writetext ArthurGivesGiftText
;	promptbutton
;	verbosegiveitem HARD_STONE
;	iffalse .BagFull
;	setevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
;	writetext ArthurGaveGiftText
;	waitbutton
;	closetext
;	end

;.AlreadyGotStone:
;	writetext ArthurThursdayText
;	waitbutton
;.BagFull:
;	closetext
;	end

;ArthurNotThursdayScript:
;	writetext ArthurNotThursdayText
;	waitbutton
;	closetext
;	end

;MeetArthurText:
;	text "ARTHUR: Who are"
;	line "you?"
;
;	para "I'm ARTHUR of"
;	line "Thursday."
;	done

;ArthurGivesGiftText:
;	text "Here. You can have"
;	line "this."
;	done

;ArthurGaveGiftText:
;	text "ARTHUR: A #MON"
;	line "that uses rock-"
;	cont "type moves should"
;	roll "hold on to that."
;
;	para "It pumps up rock-"
;	line "type attacks."
;	done

;ArthurThursdayText:
;	text "ARTHUR: I'm ARTHUR"
;	line "of Thursday. I'm"
;	cont "the second son out"
;	roll "of seven children."
;	done

;ArthurNotThursdayText:
;	text "ARTHUR: Today's"
;	line "not Thursday. How"
;	cont "disappointing."
;	done

; sudowoodo
SudowoodoScript:
	checkitem SQUIRTBOTTLE
	iftrue .Fight

	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE_36_SUDOWOODO, SudowoodoShakeMovement
	end

.Fight:
	opentext
	writetext UseSquirtbottleText
	yesorno
	iffalse DidntUseSquirtbottleScript
	closetext
WateredWeirdTreeScript:: ; export (for when you use Squirtbottle from pack)
	opentext
	writetext UsedSquirtbottleText
	waitbutton
	closetext
	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE_36_SUDOWOODO, SudowoodoShakeMovement
	opentext
	writetext SudowoodoAttackedText
	waitbutton
	closetext
	loadwildmon SUDOWOODO, 40 ;20
	startbattle
	setevent EVENT_FOUGHT_SUDOWOODO
	ifequal DRAW, DidntCatchSudowoodo
	disappear ROUTE_36_SUDOWOODO
	reloadmapafterbattle
;	special CheckBattleCaughtResult
;	iffalse .nocatch
;	setflag ENGINE_PLAYER_CAUGHT_SUDOWOODO
;.nocatch
	end

DidntUseSquirtbottleScript:
	closetext
	end

DidntCatchSudowoodo:
	reloadmapafterbattle
	applymovement ROUTE_36_SUDOWOODO, WeirdTreeMovement_Flee
	disappear ROUTE_36_SUDOWOODO
	special LoadUsedSpritesGFX
	special RefreshSprites
	end

UseSquirtbottleText:
	text "It's a weird tree."
	line "Use SQUIRTBOTTLE?"
	done

UsedSquirtbottleText:
	text "<PLAYER> used the"
	line "SQUIRTBOTTLE."
	done

SudowoodoAttackedText:
	text "The weird tree"
	line "doesn't like the"
	cont "SQUIRTBOTTLE!"

	para "The weird tree"
	line "attacked!"
	done

SudowoodoShakeMovement:
	tree_shake
	step_end

WeirdTreeMovement_Flee:
	fast_jump_step UP
	fast_jump_step UP
	step_end

Route36FloriaScript:
	faceplayer
	opentext
;	checkevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
;	iftrue .SecondTimeTalking
	setevent EVENT_MET_FLORIA
	writetext FloriaText1
	waitbutton
	closetext
	clearevent EVENT_FLORIA_AT_FLOWER_SHOP
	readvar VAR_FACING
	ifequal UP, .Up
	applymovement ROUTE_36_FLORIA, FloriaMovement1
	disappear ROUTE_36_FLORIA
	end

.Up:
	applymovement ROUTE_36_FLORIA, FloriaMovement2
	disappear ROUTE_36_FLORIA
	end

;.SecondTimeTalking:
;	writetext FloriaText2
;	waitbutton
;	closetext
;	end

FloriaText1:
	ntag "FLORIA:"
	text "I'm FLORIA from"
	line "the FLOWER SHOP!"

	para "Listen, listen!"

	para "When I sprinkled"
	line "water on that"
	cont "weird tree, it"
	roll "jumped right up!"

	para "It just has to be"
	line "a #MON."

	para "If I suprise it do"
	line "you think it will"
	cont "drop its disguise?"

	para "I'll go ask my"
	line "sis at the FLOWER"
	cont "SHOP."
	done

;FloriaText2:
;	text "When I told my sis"
;	line "about the wiggly"
;	cont "tree, she said"
;	roll "it's dangerous."
;	done

FloriaMovement2:
	step RIGHT
FloriaMovement1:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end


Route36BlockingSchoolboyLeftScript:
	faceplayer
	opentext
	writetext Route36BlockingSchoolboyText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

Route36BlockingSchoolboyRightScript:
	faceplayer
	opentext
	writetext Route36BlockingSchoolboyText
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

Route36BlockingSchoolboyText:
	text "Don't bother me!"

	para "I'm busy battling"
	line "with my #MON!"
	done

Route36TangelaScript:
	cry TANGELA
	waitsfx
	opentext
	writetext Route36TangelaText
	waitbutton
	closetext
	end

Route36TangelaText:
	text "TANGELA is focused"
	line "on the battle."
	done

Route36MrMimeScript:
	cry MR__MIME
	waitsfx
	opentext
	writetext Route36MrMimeText
	waitbutton
	closetext
	end

Route36MrMimeText:
	text "MR.MIME is focused"
	line "on the battle."
	done

TrainerPsychicPhil:
	trainer PSYCHIC_T, PHIL, EVENT_BEAT_PSYCHIC_PHIL, PsychicPhilSeenText, PsychicPhilBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicPhilAfterBattleText
	waitbutton
	closetext
	end

PsychicPhilSeenText:
	text "I'm going to read"
	line "your thoughts!"
	done

PsychicPhilBeatenText:
	text "I misread you!"
	done

PsychicPhilAfterBattleText:
	text "I'd be stronger"
	line "if I could tell"
	cont "what my opponent"
	roll "was thinking."
	done

TrainerSchoolboyTorin:
	trainer SCHOOLBOY, TORIN1, EVENT_BEAT_SCHOOLBOY_TORIN, SchoolboyTorinSeenText, SchoolboyTorinBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext SchoolboyTorinAfterBattleText
;	waitbutton
;	closetext
;	end

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
	scall Route36AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route36AskNumber2
.AskForNumber:
	askforphonenumber PHONE_SCHOOLBOY_TORIN
	ifequal PHONE_CONTACTS_FULL, Route36PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route36NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, TORIN1
	scall Route36RegisteredNumber
	jump Route36NumberAccepted

.WantsBattle:
	scall Route36Rematch
	winlosstext SchoolboyTorinBeatenText, 0
	loadtrainer SCHOOLBOY, TORIN_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TORIN_READY_FOR_REMATCH
	end

.TorinDefeated:
	writetext SchoolboyTorinAfterBattleText
	waitbutton
	closetext
	end

Route36AskNumber1:
	jumpstd AskNumber1MScript
	end

Route36AskNumber2:
	jumpstd AskNumber2MScript
	end

Route36RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

Route36NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

Route36NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

Route36PhoneFull:
	jumpstd PhoneFullMScript
	end

Route36Rematch:
	jumpstd RematchMScript
	end

SchoolboyTorinSeenText:
	text "Thanks to my stud-"
	line "ies, I'm ready for"
	cont "any #MON!"
	done

SchoolboyTorinBeatenText:
	text "Oops! Computation"
	line "error?"
	done

SchoolboyTorinAfterBattleText:
	text "Darn. I study five"
	line "hours a day too."

	para "There's more to"
	line "learning than just"
	cont "reading books."
	done

TrainerSchoolboyChad:
	trainer SCHOOLBOY, CHAD1, EVENT_BEAT_SCHOOLBOY_CHAD, SchoolboyChadSeenText, SchoolboyChadBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext SchoolboyChadAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_CHAD
	opentext
	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue .ChadRematch
	checkcellnum PHONE_SCHOOLBOY_CHAD
	iftrue .ChadDefeated
	checkevent EVENT_CHAD_ASKED_FOR_PHONE_NUMBER
	iftrue .SecondTimeAsking
	writetext SchoolboyChadAfterBattleText
	promptbutton
	setevent EVENT_CHAD_ASKED_FOR_PHONE_NUMBER
	scall Route36AskNumber1
	sjump .AskToRegisterNumber

.SecondTimeAsking:
	scall Route36AskNumber2
.AskToRegisterNumber:
	askforphonenumber PHONE_SCHOOLBOY_CHAD
	ifequal PHONE_CONTACTS_FULL, Route36PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route36NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	scall Route36RegisteredNumber
	sjump Route36NumberAccepted

.ChadRematch:
	scall Route36Rematch
	winlosstext SchoolboyChadBeatenText, 0
	loadtrainer SCHOOLBOY, CHAD_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CHAD_READY_FOR_REMATCH
	end

.ChadDefeated:
	writetext SchoolboyChadAfterBattleText
	promptbutton
	closetext
	end

SchoolboyChadSeenText:
	text "I'm always ready"
	line "for another #-"
	cont "MON battle!"
	done

SchoolboyChadBeatenText:
	text "I wasn't ready"
	line "for that!"
	done

SchoolboyChadAfterBattleText:
	text "My strategy wasn't"
	line "good enough."

	para "I guess I need to"
	line "study more."
	done

Route36Sign:
	jumptext Route36SignText
Route36SignText:
	text "ROUTE 36"
	done

RuinsOfAlphNorthSign:
	jumptext RuinsOfAlphNorthSignText
RuinsOfAlphNorthSignText:
	text "RUINS OF ALPH"
	line "NORTH ENTRANCE"
	done

Route36TrainerTips1:
	jumptext Route36TrainerTips1Text
Route36TrainerTips1Text:
	text "TRAINER TIPS"

	para "#MON stats"
	line "vary--even within"
	cont "the same species."

	para "Their stats may be"
	line "similar at first."

	para "However, differ-"
	line "ences will become"
	cont "pronounced as the"
	roll "#MON grow."
	done

Route36TrainerTips2:
	jumptext Route36TrainerTips2Text
Route36TrainerTips2Text:
	text "TRAINER TIPS"

	para "Use DIG to return"
	line "to the entrance of"
	cont "any place."

	para "It is convenient"
	line "for exploring"
	cont "caves and other"
	roll "landmarks."
	done

Route36_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  8, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event 18,  9, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 47, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 48, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 2

	def_coord_events
;	coord_event 20,  7, SCENE_ROUTE_36_SUICUNE, Route36SuicuneScript
;	coord_event 22,  7, SCENE_ROUTE_36_SUICUNE, Route36SuicuneScript

	def_bg_events
	bg_event 21,  4, BGEVENT_READ, Route36_NoFruit
	bg_event 29,  1, BGEVENT_READ, Route36TrainerTips2
	bg_event 45, 11, BGEVENT_READ, RuinsOfAlphNorthSign
	bg_event 55,  7, BGEVENT_READ, Route36Sign
	bg_event 21,  7, BGEVENT_READ, Route36TrainerTips1

	def_object_events
	object_event 21,  4, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route36_RawstBerry, EVENT_ROUTE_36_RAWST_BERRY
;	object_event 48,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArthurScript, EVENT_ROUTE_36_ARTHUR_OF_THURSDAY
	object_event 35,  8, SPRITE_SUDOWOODO, SPRITEMOVEDATA_SUDOWOODO, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SudowoodoScript, EVENT_ROUTE_36_SUDOWOODO
	object_event 33, 11, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route36FloriaScript, EVENT_FLORIA_AT_SUDOWOODO
	object_event 39,  9, SPRITE_BOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route36BlockingSchoolboyLeftScript, EVENT_ROUTE_36_OPEN
	object_event 40,  9, SPRITE_TANGELA_MOVE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36TangelaScript, EVENT_ROUTE_36_OPEN
	object_event 41,  9, SPRITE_MR__MIME_MOVE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36MrMimeScript, EVENT_ROUTE_36_OPEN
	object_event 42,  9, SPRITE_BOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route36BlockingSchoolboyRightScript, EVENT_ROUTE_36_OPEN
	object_event 20, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPsychicPhil, -1 ;mark
	object_event 27, 15, SPRITE_BOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyTorin, EVENT_ROUTE_36_BATTLE ;alan
	object_event 41,  7, SPRITE_BOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSchoolboyChad, EVENT_ROUTE_36_BATTLE
;	object_event 51,  8, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36LassScript, -1
;	object_event 44,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36RockSmashGuyScript, -1
