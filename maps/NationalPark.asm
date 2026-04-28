	object_const_def

NationalPark_MapScripts:
	def_scene_scripts

	def_callbacks

; trainers
TrainerSchoolboyJack:
	trainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboyJackSeenText, SchoolboyJackBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext SchoolboyJackAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_JACK
	opentext
	checkflag ENGINE_JACK_READY_FOR_REMATCH
	iftrue Route36Rematch
	checkcellnum PHONE_SCHOOLBOY_JACK
	iftrue .JackDefeated
	checkevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext SchoolboyJackAfterBattleText
	promptbutton
	setevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	scall Route36AskNumber1
	sjump .RequestNumber

.AskAgain:
	scall Route36AskNumber2
.RequestNumber:
	askforphonenumber PHONE_SCHOOLBOY_JACK
	ifequal PHONE_CONTACTS_FULL, Route36PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route36NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	scall Route36RegisteredNumber
	sjump Route36NumberAccepted

.Rematch:
	scall Route36Rematch
	winlosstext SchoolboyJack1BeatenText, 0
	loadtrainer SCHOOLBOY, JACK_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.JackDefeated:
	writetext SchoolboyJackAfterBattleText
	promptbutton
	closetext
	end

SchoolboyJackSeenText:
	text "The world of"
	line "#MON is deep."

	para "There are still"
	line "lots of things we"
	cont "don't know."

	para "But I know more"
	line "than you do!"
	done

SchoolboyJackBeatenText:
	text "Wha-wha-what?"
	done

SchoolboyJackAfterBattleText:
	text "There is a lot"
	line "to learn."

	para "For example…"

	para "There are {d:NUM_TMS} kinds"
	line "of TMs."
	done


TrainerPokefanmColin:
	trainer POKEFANM, COLIN, EVENT_BEAT_POKEFANM_COLIN, PokefanmColinSeenText, PokefanmColinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanmColinAfterBattleText
	waitbutton
	closetext
	end

PokefanmColinSeenText:
	text "We adore our #-"
	line "MON, even if they"
	cont "dislike us."

	para "That's what being"
	line "a FAN is about."
	done

PokefanmColinBeatenText:
	text "M-my #MON!"
	done

PokefanmColinAfterBattleText:
	text "I lost the battle,"
	line "but my #MON win"

	para "the prize for"
	line "being most lovely."
	done


TrainerPokefanfRuth:
	trainer POKEFANF, RUTH, EVENT_BEAT_POKEFANF_RUTH, PokefanfRuthSeenText, PokefanfRuthBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanfRuthAfterBattleText
	waitbutton
	closetext
	end

PokefanfRuthSeenText:
	text "Such darling"
	line "#MON."

	para "Let's show our"
	line "#MON together"
	cont "at the same time."
	done

PokefanfRuthBeatenText:
	text "I don't mind"
	line "losing."
	done

PokefanfRuthAfterBattleText:
	text "Do you know about"
	line "baby #MON?"

	para "I bet they're just"
	line "adorable!"
	done


TrainerLassHailey:
	trainer LASS, HAILEY, EVENT_BEAT_LASS_HAILEY, LassHaileySeenText, LassHaileyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassHaileyAfterBattleText
	waitbutton
	closetext
	end

LassHaileySeenText:
	text "Hello? Why are you"
	line "staring at me?"

	para "Oh, a battle?"
	done

LassHaileyBeatenText:
	text "…Hmmm…"
	done

LassHaileyAfterBattleText:
	text "I thought you were"
	line "staring at me"
	cont "because I'm cute!"
	done


NationalParkTeacher1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue .GotQuickClaw
	writetext NationalParkTeacher1Text
	promptbutton
	verbosegiveitem QUICK_CLAW
	iffalse .NoRoom
	setevent EVENT_GOT_QUICK_CLAW
.GotQuickClaw:
	writetext NationalParkTeacher1Text_GotQuickClaw
	waitbutton
.NoRoom:
	closetext
	end

NationalParkTeacher1Text:
	text "Pay attention,"
	line "please!"

	para "…Oops, I have to"
	line "quit thinking like"
	cont "a teacher all the"
	roll "time."

	para "You must be a"
	line "#MON trainer."

	para "Since you're work-"
	line "ing so hard, I"
	cont "want you to have"
	roll "this."
	done

NationalParkTeacher1Text_GotQuickClaw:
	text "Let a #MON hold"
	line "that QUICK CLAW."

	para "Sometimes it will"
	line "strike first"
	cont "during battle."
	done

NationalParkMeowth:
	faceplayer
	opentext
	writetext NationalParkMeowthText
	cry MEOWTH
	waitbutton
	closetext
	end

NationalParkMeowthText:
;	text "PERSIAN: Fufushaa!"
	ntag "MEOWTH:"
	text "Fufushaa!"
	done

NationalParkPokefanFScript:
	jumptextfaceplayer NationalParkPokefanFText
NationalParkPokefanFText:
	text "This is MAIL I got"
	line "from my daughter."
	cont "It cheers me up."
	done

NationalParkYoungster1Script:
	jumptextfaceplayer NationalParkYoungster1Text
NationalParkYoungster1Text:
	text "I'm playing with"
	line "stickers I printed"
	cont "from my #DEX."
	done

NationalParkYoungster2Script:
	jumptextfaceplayer NationalParkYoungster2Text
NationalParkYoungster2Text:
	text "I get the other"
	line "guy's #DEX"
	cont "sticker if I win."
	done

NationalParkTeacher2Script:
	jumptextfaceplayer NationalParkTeacher2Text
NationalParkTeacher2Text:
	text "I take walks in"
	line "the PARK, but I"
	cont "never go into the"
	roll "grass."

	para "Trainers always"
	line "want to battle…"
	done

; bg text
NationalParkRelaxationSquareSign:
	jumptext NationalParkRelaxationSquareText
NationalParkRelaxationSquareText:
	text "RELAXATION SQUARE"
	line "NATIONAL PARK"
	done

NationalParkBattleNoticeSign:
	jumptext NationalParkBattleNoticeText
NationalParkBattleNoticeText:
	text "     NOTICE!"

	para "Please battle only"
	line "in the grass."

	para "NATIONAL PARK"
	line "WARDEN's OFFICE"
	done


; items
NationalParkHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_NATIONAL_PARK_HIDDEN_FULL_HEAL

NationalParkSunStone:
	itemball SUN_STONE

NationalParkTMEnergyBall:
	itemball TM_ENERGY_BALL


NationalPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 18, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 33, 19, ROUTE_36_NATIONAL_PARK_GATE, 2
	warp_event 10, 47, ROUTE_35_NATIONAL_PARK_GATE, 1
	warp_event 11, 47, ROUTE_35_NATIONAL_PARK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 14, 44, BGEVENT_READ, NationalParkRelaxationSquareSign
	bg_event 26, 30, BGEVENT_READ, NationalParkBattleNoticeSign
	bg_event  6, 47, BGEVENT_ITEM, NationalParkHiddenFullHeal

	def_object_events

	object_event 27, 24, SPRITE_BOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJack, -1
	object_event 15, 26, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPokefanfRuth, -1 ;beverly
	object_event 21,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanmColin, -1  ;william
	object_event  8, 15, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassHailey, -1 ;krise

	object_event 15,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NationalParkPokefanFScript, -1
	object_event 27, 40, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher1Script, -1
	object_event 26, 40, SPRITE_MEOWTH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NationalParkMeowth, -1
	object_event 11, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkYoungster1Script, -1
	object_event 10, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NationalParkYoungster2Script, -1
	object_event 17, 41, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher2Script, -1

	object_event 35, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NationalParkSunStone, EVENT_NATIONAL_PARK_SUN_STONE
	object_event  1, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NationalParkTMEnergyBall, EVENT_NATIONAL_PARK_TM_ENERGY_BALL
