	object_const_def
	const ROUTE40_MONICA

Route40_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route40MonicaCallback

Route40MonicaCallback:
	clearevent EVENT_BATTLE_TOWER_OPEN_CIVILIANS
	readvar VAR_WEEKDAY
	ifequal MONDAY, .MonicaAppears
	disappear ROUTE40_MONICA
	endcallback

.MonicaAppears:
	appear ROUTE40_MONICA
	endcallback

MonicaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	iftrue .Monday
	readvar VAR_WEEKDAY
	ifnotequal MONDAY, .NotMonday
	checkevent EVENT_MET_MONICA_OF_MONDAY
	iftrue .MetMonica
	writetext MeetMonicaText
	promptbutton
	setevent EVENT_MET_MONICA_OF_MONDAY
.MetMonica:
	writetext MonicaGivesGiftText
	promptbutton
	verbosegiveitem SHARP_BEAK
	iffalse .done
	setevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	writetext MonicaGaveGiftText
	waitbutton
.done
	closetext
	end

.Monday:
	writetext MonicaMondayText
	waitbutton

.NotMonday:
	writetext MonicaNotMondayText
	waitbutton
	closetext
	end

MeetMonicaText:
	text "MONICA: Glad to"
	line "meet you. I'm"

	para "MONICA of Monday."
	done

MonicaGivesGiftText:
	text "As a token of our"
	line "friendship, I have"
	cont "a gift for you!"
	done

MonicaGaveGiftText:
	text "MONICA: It's an"
	line "item that raises"

	para "the power of fly-"
	line "ing-type moves."

	para "You should equip a"
	line "bird #MON with"
	cont "that item."
	done

MonicaMondayText:
	text "MONICA: My broth-"
	line "ers and sisters"

	para "are all over the"
	line "place."

	para "See if you could"
	line "find them all!"
	done

MonicaNotMondayText:
	text "MONICA: I don't"
	line "think today is"
	cont "Monday. How sad…"
	done

TrainerFisherRoyce:
	trainer FISHER, ROYCE, EVENT_BEAT_FISHER_ROYCE, FisherRoyceSeenText, FisherRoyceBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherRoyceAfterBattleText
	waitbutton
	closetext
	end

FisherRoyceSeenText:
	text "I hooked some"
	line "rare #MON!"

	para "I want to put"
	line "them to the test!"

	para "Let's battle!"
	done

FisherRoyceBeatenText:
	text "I'm still proud"
	line "of my catch!"
	done

FisherRoyceAfterBattleText:
	text "KURT's LURE BALL"
	line "is the best for"

	para "catching hooked"
	line "#MON."

	para "It's much more"
	line "effective than a"
	cont "ULTRA BALL."
	done

TrainerSwimmermDaryl:
	trainer SWIMMERM, DARYL, EVENT_BEAT_SWIMMERM_DARYL, SwimmermDarylSeenText, SwimmermDarylBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmermDarylAfterBattleText
	waitbutton
	closetext
	end

SwimmermDarylSeenText:
	text "You have to warm"
	line "up before going"
	cont "into the water."

	para "That's basic."
	done

SwimmermDarylBeatenText:
	text "OK! Uncle! I give!"
	done

SwimmermDarylAfterBattleText:
	text "CIANWOOD CITY is"
	line "a good distance"
	cont "away from here."
	done

TrainerSwimmerfNikki:
	trainer SWIMMERF, NIKKI, EVENT_BEAT_SWIMMERF_NIKKI, SwimmerfNikkiSeenText, SwimmerfNikkiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNikkiAfterBattleText
	waitbutton
	closetext
	end

SwimmerfNikkiSeenText:
	text "Are you going to"
	line "CIANWOOD?"

	para "How about a quick"
	line "battle first?"
	done

SwimmerfNikkiBeatenText:
	text "I lost that one!"
	done

SwimmerfNikkiAfterBattleText:
	text "I'd say I'm a"
	line "better swimmer"
	cont "than you. Yeah!"
	done

TrainerSwimmerfDiana:
	trainer SWIMMERF, DIANA, EVENT_BEAT_SWIMMERF_DIANA, SwimmerfDianaSeenText, SwimmerfDianaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDianaAfterBattleText
	waitbutton
	closetext
	end

SwimmerfDianaSeenText:
	text "No inner tube for"
	line "me."

	para "I'm hanging on to"
	line "a sea #MON!"
	done

SwimmerfDianaBeatenText:
	text "Ooh, I'm feeling"
	line "dizzy!"
	done

SwimmerfDianaAfterBattleText:
	text "While I float like"
	line "this, the waves"
	cont "carry me along."
	done

TrainerSwimmermTony:
	trainer SWIMMERM, TONY, EVENT_BEAT_SWIMMERM_TONY, SwimmermTonySeenText, SwimmermTonyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmermTonyAfterBattleText
	waitbutton
	closetext
	end

SwimmermTonySeenText:
	text "Hey, you're young"
	line "and fit!"

	para "Don't ride your"
	line "#MON! Swim!"
	done

SwimmermTonyBeatenText:
	text "Uh-oh. I lost…"
	done

SwimmermTonyAfterBattleText:
	text "Swimming exercises"
	line "your entire body."
	cont "It's healthy."
	done

Route40Lass1Script:
	jumptextfaceplayer Route40Lass1Text

Route40Lass1Text:
	text "Although you can't"
	line "see it from here,"

	para "CIANWOOD is across"
	line "the sea."
	done

Route40Lass2Script:
	jumptextfaceplayer Route40Lass2Text

Route40Lass2Text:
	text "I came to OLIVINE"
	line "by ship to see the"

	para "sights and soak up"
	line "the atmosphere."

	para "Being a port, it"
	line "feels so different"
	cont "from a big city."
	done

Route40StandingYoungsterScript:
	jumptextfaceplayer Route40StandingYoungsterText

Route40StandingYoungsterText:
	text "Have you gone to"
	line "the BATTLE TOWER?"

	para "I think a lot of"
	line "tough trainers"

	para "have gathered"
	line "there already."

	para "But since you have"
	line "so many BADGES,"

	para "you shouldn't do"
	line "badly at all."
	done

;Route40PokefanMScript:
;	special CheckMobileAdapterStatusSpecial
;	iftrue .mobile
;	jumptextfaceplayer Route40PokefanMText
;.mobile
;	jumptextfaceplayer Route40PokefanMText_Mobile
;
;Route40PokefanMText:
;	text "Hm! There's a big"
;	line "building up ahead!"
;
;	para "What is it?"
;	done
;
;Route40PokefanMText_Mobile:
;	text "Hm! Look at all"
;	line "those serious-"
;	cont "looking trainers"
;	cont "streaming in."
;
;	para "What? What?"
;	done

Route40Sign:
	jumptext Route40SignText

Route40SignText:
	text "ROUTE 40"

	para "CIANWOOD CITY -"
	line "OLIVINE CITY"
	done

Route40Rock:
	jumpstd SmashRockScript

Route40HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_40_HIDDEN_HYPER_POTION

Route40_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, ROUTE_40_BATTLE_TOWER_GATE, 1

	def_coord_events

	def_bg_events
	bg_event 14, 10, BGEVENT_READ, Route40Sign
	bg_event  7,  7, BGEVENT_ITEM, Route40HiddenHyperPotion

	def_object_events
	object_event  8, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonicaScript, EVENT_ROUTE_40_MONICA_OF_MONDAY
	object_event 15, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherRoyce, -1
	object_event 13, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmermDaryl, -1 ;simon
	object_event  4, 19, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfNikki, -1 ;elaine
	object_event 10, 25, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfDiana, -1 ;paula
	object_event 17, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSwimmermTony, -1 ;randall
	object_event 10, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Lass1Script, -1
	object_event 13,  4, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route40Lass2Script, -1
	object_event 12,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route40StandingYoungsterScript, EVENT_BATTLE_TOWER_OPEN_CIVILIANS
;	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40PokefanMScript, -1
	object_event  7, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event  6,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event  7,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
