	object_const_def
	const DRAGONSHRINE_ELDER1
	const DRAGONSHRINE_ELDER2
	const DRAGONSHRINE_ELDER3
	const DRAGONSHRINE_DRATINI_POKEBALL

DragonShrine_MapScripts:
	def_scene_scripts
	scene_script DragonShrineTakeTestScene, SCENE_DRAGONSHRINE_TAKE_TEST
	scene_script DragonShrineNoopScene,     SCENE_DRAGONSHRINE_NOOP

	def_callbacks

DragonShrineTakeTestScene:
	sdefer DragonShrineTakeTestScript
	end

DragonShrineNoopScene:
	end

DragonShrineTakeTestScript:
	applymovement PLAYER, DragonShrinePlayerWalkInMovement
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderStepDown2Movement
	opentext
	writetext DragonShrineElderGreetingText
	promptbutton
.Question1:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	writetext DragonShrineQuestion1Text
	promptbutton
	loadmenu DragonShrineQuestion1_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer
	end

.Question2:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	writetext DragonShrineQuestion2Text
	promptbutton
	loadmenu DragonShrineQuestion2_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer

.Question3:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	writetext DragonShrineQuestion3Text
	promptbutton
	loadmenu DragonShrineQuestion3_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer

.Question4:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	writetext DragonShrineQuestion4Text
	promptbutton
	loadmenu DragonShrineQuestion4_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .RightAnswer

.Question5:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	writetext DragonShrineQuestion5Text
	promptbutton
	loadmenu DragonShrineQuestion5_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer

.WrongAnswer:
	setevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	closetext
	turnobject DRAGONSHRINE_ELDER1, UP
	opentext
	writetext DragonShrineWrongAnswerText
	waitbutton
	closetext
	turnobject DRAGONSHRINE_ELDER1, LEFT
	opentext
	sjump .NextQuestion

.RightAnswer:
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
;	iftrue .TestComplete
	writetext DragonShrineRightAnswerText
	promptbutton
.NextQuestion
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .TestComplete
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question2

.TestComplete:
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	iftrue .FailedTestDialogue
;PassedTest
	writetext DragonShrinePassedTestText
	promptbutton
.FailedTestDialogue
	writetext DragonShrineTestCompleteText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderPlaceDratiniMovement
	appear DRAGONSHRINE_DRATINI_POKEBALL
	pause 15
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderStepDown1Movement
	setevent EVENT_CLEARED_DRAGONS_DEN
	setscene SCENE_DRAGONSHRINE_NOOP
;	specialphonecall SPECIALCALL_MASTERBALL
	opentext
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	iftrue .FailedTestEnd
	writetext DragonShrineOfferDratiniPassedText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAwayMovement
	end

.FailedTestEnd
	writetext DragonShrineOfferDratiniFailedText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAwayMovement
	end

;	setmapscene DRAGONS_DEN_B1F, SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

DragonShrineQuestion1_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 10, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Friends@"
	db "Pets@"
	db "Tools@"

DragonShrineQuestion2_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Training@"
	db "Strategy@"
	db "Cheating@"

DragonShrineQuestion3_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 10, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Strong@"
	db "Weak@"
	db "Anybody@"

DragonShrineQuestion4_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Love@"
	db "Discipline@"
	db "Knowledge@"

DragonShrineQuestion5_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Strong@"
	db "Weak@"
	db "Both@"

DragonShrineElderGreetingText:
	ntag "ELDER:"
	text "Hm… Good to see"
	line "you here."

	para "CLAIR sent you?"

	para "I imagine she"
	line "wants us to test"
	cont "you…"

	para "Very well…"

	para "Are you ready?"

	para "<……> <……>"

	para "Oh dear, no, not"
	line "a battle. You need"
	cont "only answer a few"
	roll "questions."

	para "Let us begin."
	done

DragonShrineQuestion1Text:
	ntag "ELDER:"
	text "What are #MON"
	line "to you?"
	done

DragonShrineQuestion2Text:
	ntag "ELDER:"
	text "What helps you to"
	line "win battles?"
	done

DragonShrineQuestion3Text:
	ntag "ELDER:"
	text "What kind of"
	line "trainer do you"
	cont "wish to battle?"
	done

DragonShrineQuestion4Text:
	ntag "ELDER:"
	text "What is most"
	line "important when"
	cont "raising #MON?"
	done

DragonShrineQuestion5Text:
	ntag "ELDER:"
	text "Strong #MON."
	line "Weak #MON."

	para "Which is more"
	line "important?"
	done

DragonShrineWrongAnswerText:
	ntag "ELDER:"
	text "Hm… I see…"
	done

DragonShrineRightAnswerText:
	ntag "ELDER:"
	text "Oh, I understand…"
	done

DragonShrinePassedTestText:
	ntag "ELDER:"
	text "Hm… I see…"

	para "You care deeply"
	line "for #MON."

	para "Very commendable."

	para "That conviction is"
	line "what is important!"

	para "<PLAYER>, never"
	line "lose that belief."

	para "Even so…"
	done

DragonShrineTestCompleteText:
	ntag "ELDER:"
	text "There will always"
	line "be more to learn"
	cont "about the nature"
	roll "of #MON."

	para "What is important"
	line "to you?"

	para "What is important"
	line "to someone else?"

	para "These things are"
	line "rarely the same."
	done

DragonShrineOfferDratiniPassedText:
	ntag "ELDER:"
	text "I would like to"
	line "offer you this"
	cont "#MON."

	para "I believe it will"
	line "be in good hands"
	cont "with you."

	para "Please take it,"
	line "if you wish."
	done

DragonShrineOfferDratiniFailedText:
	ntag "ELDER:"
	text "I would like to"
	line "offer you this"
	cont "#MON."

	para "I believe that"
	line "raising it will"
	cont "help you grow as"
	roll "a trainer."
	done

DragonShrinePlayerWalkInMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_sleep 20
	turn_head LEFT
	step_sleep 20
	turn_head RIGHT
	step_sleep 20
	step_end

DragonShrineElderStepDown2Movement:
	slow_step DOWN
DragonShrineElderStepDown1Movement:
	slow_step DOWN
	turn_head LEFT
	step_end

DragonShrineElderPlaceDratiniMovement:
	slow_step UP
	turn_head LEFT
	step_sleep 10
	step_end

DragonShrineElderWalkAwayMovement:
	slow_step UP
	slow_step UP
	turn_head DOWN
	step_end

DragonShrineDratiniPokeballScript:
	opentext
	refreshscreen
	pokepic DRATINI
	cry DRATINI
	waitbutton
	closepokepic
	setval DRATINI
	special SilentSetSeenMon
	writetext DragonShrineTakeThisDratiniText
	yesorno
	iffalse .MaybeLater
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	disappear DRAGONSHRINE_DRATINI_POKEBALL
	writetext DragonShrinePlayerReceivedDratiniText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke DRATINI, 15, DRAGON_SCALE
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	special GiveDratini
	setevent EVENT_GOT_DRATINI
	closetext
	end

.MaybeLater:
	writetext DragonShrineMaybeLaterText
	waitbutton
	closetext
	end

.PartyFull:
	writetext DragonShrinePartyFullText
	waitbutton
	closetext
	end

DragonShrineTakeThisDratiniText:
	text "Its the #MON"
	line "offered by the"
	cont "DRAGON clan."

	para "Take it?"
	done

DragonShrineMaybeLaterText:
	text "Maybe later."
	done

DragonShrinePartyFullText:
	text "You can't carry"
	line "any more #MON."
	done

DragonShrinePlayerReceivedDratiniText:
	text "<PLAYER> received"
	line "DRATINI!"
	done

DragonShrineElder1Script:
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	iftrue .FailedTest
	jumptextfaceplayer DragonShrineSymbolicDragonText

.FailedTest
	jumptextfaceplayer DragonShrineElderAfterFailedText

DragonShrineSymbolicDragonText:
	ntag "ELDER:"
	text "Dragon #MON are"
	line "symbolic of our"
	cont "clan."

	para "You have shown"
	line "that you can be"
	cont "entrusted with"
	roll "this one."
	done

DragonShrineElderAfterFailedText:
	ntag "ELDER:"
	text "Dragon #MON are"
	line "symbolic of our"
	cont "clan."

	para "Please take good"
	line "care of this one."
	done

DragonShrineElder2Script:
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	iftrue .FailedTest
	jumptextfaceplayer DragonShrineElder2Text

.FailedTest
	jumptextfaceplayer DragonShrineElder2FailedText

DragonShrineElder2Text:
	text "It's been quite"
	line "some time since a"
	cont "trainer has gained"
	roll "the approval of"
	cont "our MASTER."

	para "In fact, not since"
	line "Master LANCE."
	done

DragonShrineElder2FailedText:
	text "Few trainers ever"
	line "truly pass our"
	cont "MASTER's test."

	para "The last trainer"
	line "who gained our"
	cont "MASTER's approval"
	roll "was Master LANCE."
	done

DragonShrineElder3Script:
	jumptextfaceplayer DragonShrineElder3Text
DragonShrineElder3Text:
	text "You know young"
	line "Master LANCE?"

	para "He looks so much"
	line "like our MASTER"
	cont "did in his youth."

	para "It's in their"
	line "blood."
	done

DragonShrine_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, DRAGONS_DEN_B1F, 2
	warp_event  5,  9, DRAGONS_DEN_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder1Script, -1
	object_event  2,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder2Script, -1
	object_event  7,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder3Script, -1
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineDratiniPokeballScript, EVENT_DRAGON_SHRINE_DRATINI_POKEBALL
