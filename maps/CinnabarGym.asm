	object_const_def
	const CINNABARGYM_TRAINER1
	const CINNABARGYM_TRAINER2
	const CINNABARGYM_TRAINER3
	const CINNABARGYM_TRAINER4
	const CINNABARGYM_TRAINER5
	const CINNABARGYM_TRAINER6

CinnabarGym_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarGymBlaineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLAINE
	iftrue .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_FIREBREATHER_FINNLEY
	setevent EVENT_BEAT_SUPER_NERD_HUGH
	setevent EVENT_BEAT_FIREBREATHER_DUSTIN
	setevent EVENT_BEAT_SUPER_NERD_CARY
	setevent EVENT_BEAT_FIREBREATHER_DRAKE
	setevent EVENT_BEAT_SUPER_NERD_MARKUS
	setevent EVENT_BEAT_SUPER_NERD_TERU
	opentext
	writetext ReceivedVolcanobadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	promptbutton
	writetext BlaineVolcanobadgeText
	promptbutton
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM38_FIRE_BLAST
	iftrue .GotFireBlast
	verbosegiveitem TM_FIRE_BLAST
	setevent EVENT_GOT_TM38_FIRE_BLAST
	writetext BlaineExplainTMText
	waitbutton
	closetext
	end
.GotFireBlast:
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	end

BlaineIntroText:
	text "Hah!"

	para "I am BLAINE! I"
	line "am the LEADER of"
	cont "CINNABAR GYM!"

	para "My fiery #MON"
	line "will incinerate"
	cont "all challengers!"

	para "Hah! You better"
	line "have BURN HEAL!"
	done

BlaineWinLossText:
	text "I have"
	line "burnt out!"

	para "You have earned"
	line "the VOLCANOBADGE!"
	done

ReceivedVolcanobadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

BlaineVolcanobadgeText:
	text "Hah!"

	para "Here, you can"
	line "have this too!"
	done

BlaineExplainTMText:
	text "TM38 contains"
	line "FIRE BLAST!"

	para "Teach it to fire-"
	line "type #MON!"
	done

BlaineAfterBattleText:
	text "FIRE BLAST is the"
	line "ultimate fire"
	cont "technique!"

	para "Don't waste it on"
	line "water #MON!"
	done

CinnabarQuizMachine1:
	checkevent EVENT_CINNABAR_GYM_QUIZ_1
	iftrue .QuizDone
	changeblock 18, 8, $6c ; quiz blue
	playsound SFX_BOOT_PC
	waitsfx
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion1Text
	yesorno
	iftrue .Correct
	playsound SFX_WRONG
	changeblock 18, 8, $6b ; quiz red
	reloadmappart
	waitsfx
	applymovement CINNABARGYM_TRAINER1, CinnabarGymWrongAnswerMovement
	sjump TrainerFirebreatherFinnley
.Correct
	playsound SFX_SAVE
	changeblock 18, 8, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 20, 6, $64 ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_1
	end
.QuizDone
	jumptext CinnabarGymQuizDone

CinnabarQuizMachine2:
	checkevent EVENT_CINNABAR_GYM_QUIZ_2
	iftrue .QuizDone
	changeblock 10, 2, $6c ; quiz blue
	playsound SFX_BOOT_PC
	waitsfx
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion2Text
	yesorno
	iffalse .Correct
	playsound SFX_WRONG
	changeblock 10, 2, $6b ; quiz red
	reloadmappart
	waitsfx
	applymovement CINNABARGYM_TRAINER2, CinnabarGymWrongAnswerMovement
	sjump TrainerSuperNerdHugh
.Correct
	playsound SFX_SAVE
	changeblock 10, 2, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 12, 6, $64 ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_2
	end
.QuizDone
	jumptext CinnabarGymQuizDone

CinnabarQuizMachine3:
	checkevent EVENT_CINNABAR_GYM_QUIZ_3
	iftrue .QuizDone
	changeblock 10, 8, $6c ; quiz blue
	playsound SFX_BOOT_PC
	waitsfx
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion3Text
	yesorno
	iffalse .Correct
	playsound SFX_WRONG
	changeblock 10, 8, $6b ; quiz red
	reloadmappart
	waitsfx
	applymovement CINNABARGYM_TRAINER3, CinnabarGymWrongAnswerMovement
	sjump TrainerFirebreatherDustin
.Correct
	playsound SFX_SAVE
	changeblock 10, 8, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 12, 12, $64 ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_3
	end
.QuizDone
	jumptext CinnabarGymQuizDone

CinnabarQuizMachine4:
	checkevent EVENT_CINNABAR_GYM_QUIZ_4
	iftrue .QuizDone
	changeblock 10, 14, $6c ; quiz blue
	playsound SFX_BOOT_PC
	waitsfx
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion4Text
	yesorno
	iffalse .Correct
	playsound SFX_WRONG
	changeblock 10, 14, $6b ; quiz red
	reloadmappart
	waitsfx
	applymovement CINNABARGYM_TRAINER4, CinnabarGymWrongAnswerMovement
	sjump TrainerSuperNerdCary
.Correct
	playsound SFX_SAVE
	changeblock 10, 14, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 6, 14, $66 ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_4
	end
.QuizDone
	jumptext CinnabarGymQuizDone

CinnabarQuizMachine5:
	checkevent EVENT_CINNABAR_GYM_QUIZ_5
	iftrue .QuizDone
	changeblock 2, 14, $6c ; quiz blue
	playsound SFX_BOOT_PC
	waitsfx
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion5Text
	yesorno
	iftrue .Correct
	playsound SFX_WRONG
	changeblock 2, 14, $6b ; quiz red
	reloadmappart
	waitsfx
	applymovement CINNABARGYM_TRAINER5, CinnabarGymWrongAnswerMovement
	sjump TrainerFirebreatherDrake
.Correct
	playsound SFX_SAVE
	changeblock 2, 14, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 12, $64 ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_5
	end
.QuizDone
	jumptext CinnabarGymQuizDone

CinnabarQuizMachine6:
	checkevent EVENT_CINNABAR_GYM_QUIZ_6
	iftrue .QuizDone
	changeblock 2, 8, $6c ; quiz blue
	playsound SFX_BOOT_PC
	waitsfx
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion6Text
	yesorno
	iffalse .Correct
	playsound SFX_WRONG
	changeblock 2, 8, $6b ; quiz red
	reloadmappart
	waitsfx
	applymovement CINNABARGYM_TRAINER6, CinnabarGymWrongAnswerMovement
	sjump TrainerSuperNerdMarkus
.Correct
	playsound SFX_SAVE
	changeblock 2, 8, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 6, $64 ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_6
	end
.QuizDone
	jumptext CinnabarGymQuizDone

CinnabarGymQuizIntroText:
	text "#MON Quiz!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"

	para "Here we go!"
	done

CinnabarGymQuestion1Text: ;true
;	text "CATERPIE evolves"
;	line "into MEDAPOD?"
;	done
	text "CATERPIE evolves"
	line "at level 7?"
	done

CinnabarGymQuestion2Text: ;false
;	text "KANTO has 9"
;	line "certified #MON"
;	cont "LEAGUE GYMs?"
;	done
	text "PIKACHU is no.24"
	line "in the #DEX?"
	done

CinnabarGymQuestion3Text: ;false
;	text "POLIWAG evolves"
;	line "3 times?"
;	done
	text "POLIWAG's belly"
	line "swirls goes the"
	cont "same direction as"
	cont "POLIWHIRL's?"
	done

CinnabarGymQuestion4Text: ;false
;	text "ELECTRIC moves are"
;	line "super-effective"
;	line "against GROUND-"
;	cont "type #MON?"
;	done
	text "PSYCHIC moves are"
	line "super-effectve vs"
	cont "the GHOST-type?"
	done

CinnabarGymQuestion5Text: ;true
;	text "#MON of the"
;	line "same species and"
;	cont "same level are"
;	cont "not identical?"
;	done
	text "#MON of the"
	line "same species'"
	cont "stats can grow at"
	cont "different rates?"

CinnabarGymQuestion6Text: ;false
;	text "TM28 contains"
;	line "TOMBSTONER?"
;	done
	text "TM28 contains"
	line "EARTHQUAKE?"
	done

CinnabarGymQuizCorrectText:
	text "That's correct!"
	line "Go on through!"
	done

CinnabarGymQuizWrongText:
	text "Sorry!"
	line "Incorrect!"
	done

CinnabarGymQuizDone:
	text "The door is"
	line "already open."
	done

CinnabarGymWrongAnswerMovement:
	slow_step DOWN
	turn_head RIGHT
	step_end

TrainerFirebreatherFinnley: ; quiz 1
	trainer FIREBREATHER, FINNLEY, EVENT_BEAT_FIREBREATHER_FINNLEY, FirebreatherFinnleySeenText, FirebreatherFinnleyBeatenText, 0, .Script
.Script:
	checkevent EVENT_CINNABAR_GYM_QUIZ_1
	iftrue .AfterBattleText
	setevent EVENT_CINNABAR_GYM_QUIZ_1
	playsound SFX_ENTER_DOOR
	changeblock 20, 6, $64 ; door open
;	reloadmappart
;	changeblock 18, 8, $6d ; quiz off
	reloadmappart
	end
.AfterBattleText
	jumptextfaceplayer FirebreatherFinnleyAfterBattleText

FirebreatherFinnleySeenText:
	text "I was a thief, but"
	line "I became straight"
	cont "as a trainer!"
	done

FirebreatherFinnleyBeatenText:
	text "I"
	line "surrender!"
	done

FirebreatherFinnleyAfterBattleText:
	text "Training #MON"
	line "with BLAINE helped"
	cont "me stop stealing!"
	done

TrainerSuperNerdHugh: ; quiz 2
	trainer SUPER_NERD, HUGH, EVENT_BEAT_SUPER_NERD_HUGH, SuperNerdHughSeenText, SuperNerdHughBeatenText, 0, .Script
.Script:
	checkevent EVENT_CINNABAR_GYM_QUIZ_2
	iftrue .AfterBattleText
	setevent EVENT_CINNABAR_GYM_QUIZ_2
	playsound SFX_ENTER_DOOR
	changeblock 12, 6, $64 ; door open
;	reloadmappart
;	changeblock 10, 2, $6d ; quiz off
	reloadmappart
	end
.AfterBattleText
	endifjustbattled
	jumptextfaceplayer SuperNerdHughAfterBattleText

SuperNerdHughSeenText:
	text "You can't win!"
	line "I have studied"
	cont "#MON totally!"
	done

SuperNerdHughBeatenText:
	text "Waah!"
	line "My studies!"
	done

SuperNerdHughAfterBattleText:
	text "My theories are"
	line "too complicated"
	cont "for you!"
	done

TrainerFirebreatherDustin: ; quiz 3
	trainer FIREBREATHER, DUSTIN, EVENT_BEAT_FIREBREATHER_DUSTIN, FirebreatherDustinSeenText, FirebreatherDustinBeatenText, 0, .Script
.Script:
	checkevent EVENT_CINNABAR_GYM_QUIZ_3
	iftrue .AfterBattleText
	setevent EVENT_CINNABAR_GYM_QUIZ_3
	playsound SFX_ENTER_DOOR
	changeblock 12, 12, $64 ; door open
;	reloadmappart
;	changeblock 10, 8, $6d ; quiz off
	reloadmappart
	end
.AfterBattleText
	jumptextfaceplayer FirebreatherDustinAfterBattleText

FirebreatherDustinSeenText:
	text "I just like using"
	line "fire #MON!"
	done

FirebreatherDustinBeatenText:
	text "Too hot"
	line "to handle!"
	done

FirebreatherDustinAfterBattleText:
	text "I just don't like"
	line "water #MON!"
	done

TrainerSuperNerdCary: ; quiz 4
	trainer SUPER_NERD, CARY, EVENT_BEAT_SUPER_NERD_CARY, SuperNerdCarySeenText, SuperNerdCaryBeatenText, 0, .Script
.Script:
	checkevent EVENT_CINNABAR_GYM_QUIZ_4
	iftrue .AfterBattleText
	setevent EVENT_CINNABAR_GYM_QUIZ_4
	playsound SFX_ENTER_DOOR
	changeblock 6, 14, $64 ; door open
;	reloadmappart
;	changeblock 10, 14, $6d ; quiz off
	reloadmappart
	end
.AfterBattleText
	jumptextfaceplayer SuperNerdCaryAfterBattleText

SuperNerdCarySeenText:
	text "I know why BLAINE"
	line "became a trainer!"
	done

SuperNerdCaryBeatenText:
	text "Ow!"
	done

SuperNerdCaryAfterBattleText:
	text "BLAINE was lost"
	line "in the mountains"
	cont "when a fiery bird"
	cont "#MON appeared."

	para "Its light enabled"
	line "BLAINE to find"
	cont "his way down!"
	done

TrainerFirebreatherDrake: ; quiz 5
	trainer FIREBREATHER, DRAKE, EVENT_BEAT_FIREBREATHER_DRAKE, FirebreatherDrakeSeenText, FirebreatherDrakeBeatenText, 0, .Script
.Script:
	checkevent EVENT_CINNABAR_GYM_QUIZ_5
	iftrue .AfterBattleText
	setevent EVENT_CINNABAR_GYM_QUIZ_5
	playsound SFX_ENTER_DOOR
	changeblock 4, 12, $64 ; door open
;	reloadmappart
;	changeblock 2, 14, $6d ; quiz off
	reloadmappart
	end
.AfterBattleText
	jumptextfaceplayer FirebreatherDrakeAfterBattleText

FirebreatherDrakeSeenText:
	text "I've been to many"
	line "GYMs, but this is"
	cont "my favorite!"
	done

FirebreatherDrakeBeatenText:
	text "Yowza!"
	line "Too hot!"
	done

FirebreatherDrakeAfterBattleText:
	text "Us fire #MON"
	line "fans like PONYTA"
	cont "and NINETALES!"
	done

TrainerSuperNerdMarkus: ; quiz 6
	trainer SUPER_NERD, MARKUS, EVENT_BEAT_SUPER_NERD_MARKUS, SuperNerdMarkusSeenText, SuperNerdMarkusBeatenText, 0, .Script
.Script:
	checkevent EVENT_CINNABAR_GYM_QUIZ_6
	iftrue .AfterBattleText
	setevent EVENT_CINNABAR_GYM_QUIZ_6
	playsound SFX_ENTER_DOOR
	changeblock 4, 6, $64 ; door open
;	reloadmappart
;	changeblock 2, 8, $6d ; quiz off
	reloadmappart
	end
.AfterBattleText
	jumptextfaceplayer SuperNerdMarkusAfterBattleText

SuperNerdMarkusSeenText:
	text "Fire is weak"
	line "against H2O!"
	done

SuperNerdMarkusBeatenText:
	text "Oh!"
	line "Snuffed out!"
	done

SuperNerdMarkusAfterBattleText:
	text "Water beats fire!"
	line "But, fire melts"
	cont "ice #MON!"
	done

TrainerSuperNerdTeru:
	trainer SUPER_NERD, TERU, EVENT_BEAT_SUPER_NERD_TERU, SuperNerdTeruSeenText, SuperNerdTeruBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SuperNerdTeruAfterBattleText
	waitbutton
	closetext
	end

SuperNerdTeruSeenText:
	text "Do you know how"
	line "hot #MON fire"
	cont "breath can get?"
	done

SuperNerdTeruBeatenText:
	text "Yow!"
	line "Hot, hot, hot!"
	done

SuperNerdTeruAfterBattleText:
	text "Fire, or to be"
	line "more precise,"
	cont "combustion..."

	para "Blah, blah, blah,"
	line "blah..."
	done

CinnabarGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLAINE
	iftrue .CinnabarGymGuideWinScript
	writetext CinnabarGymGuideText
	waitbutton
	closetext
	end

.CinnabarGymGuideWinScript:
	writetext CinnabarGymGuideWinText
	waitbutton
	closetext
	end

CinnabarGymGuideText:
	text "Yo! Champ in"
	line "making!"

	para "The hot-headed"
	line "BLAINE is a fire"
	cont "#MON pro!"

	para "Douse his spirits"
	line "with water!"

	para "You better take"
	line "some BURN HEALs!"
	done

CinnabarGymGuideWinText:
	text "<PLAYER>! You beat"
	line "that fire brand!"
	done

CinnabarGymStatue:
	gettrainername STRING_BUFFER_4, BLAINE, BLAINE1
	checkflag ENGINE_VOLCANOBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

CinnabarGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 17, CINNABAR_ISLAND, 2
	warp_event 20, 17, CINNABAR_ISLAND, 2

	def_coord_events

	def_bg_events
	bg_event 18, 15, BGEVENT_READ, CinnabarGymStatue
	bg_event 19,  9, BGEVENT_UP, CinnabarQuizMachine1
	bg_event 11,  3, BGEVENT_UP, CinnabarQuizMachine2
	bg_event 11,  9, BGEVENT_UP, CinnabarQuizMachine3
	bg_event 11, 15, BGEVENT_UP, CinnabarQuizMachine4
	bg_event  3, 15, BGEVENT_UP, CinnabarQuizMachine5
	bg_event  3,  9, BGEVENT_UP, CinnabarQuizMachine6

	def_object_events
	object_event 18,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerFirebreatherFinnley, -1
	object_event 10,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerSuperNerdHugh, -1
	object_event 10,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerFirebreatherDustin, -1
	object_event 10, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerSuperNerdCary, -1
	object_event  2, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerFirebreatherDrake, -1
	object_event  2,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerSuperNerdMarkus, -1
	object_event 20,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerSuperNerdTeru, -1
	object_event  3,  3, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarGymBlaineScript, -1
	object_event 21, 14, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CinnabarGymGuideScript, -1
