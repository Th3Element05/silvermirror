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
	callback MAPCALLBACK_TILES, .CinnabarGymDoorsCallback

.CinnabarGymDoorsCallback:
	checkevent EVENT_CINNABAR_GYM_QUIZ_1
	iffalse .NoMoreDoors
	changeblock 20, 6, $3c ; door 1 open
	checkevent EVENT_CINNABAR_GYM_QUIZ_2
	iffalse .NoMoreDoors
	changeblock 12, 6, $3c ; door 2 open
	checkevent EVENT_CINNABAR_GYM_QUIZ_3
	iffalse .NoMoreDoors
	changeblock 12, 12, $3c ; door 3 open
	checkevent EVENT_CINNABAR_GYM_QUIZ_4
	iffalse .NoMoreDoors
	changeblock 6, 14, $3e ; door 4 open
	checkevent EVENT_CINNABAR_GYM_QUIZ_5
	iffalse .NoMoreDoors
	changeblock 4, 12, $3c ; door 5 open
	checkevent EVENT_CINNABAR_GYM_QUIZ_6
	iffalse .NoMoreDoors
	changeblock 4, 6, $3c ; door 6 open
.NoMoreDoors:
	endcallback

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
	setevent EVENT_BEAT_FIREBREATHER_BILL
	setevent EVENT_BEAT_SUPER_NERD_HUGH
	setevent EVENT_BEAT_FIREBREATHER_RAY
	setevent EVENT_BEAT_SUPER_NERD_CARY
	setevent EVENT_BEAT_FIREBREATHER_EVAN
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
	scall CinnabarGymCheckBadges
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

CinnabarGymCheckBadges:
	readvar VAR_BADGES
	ifequal 6, .SilphCo
	ifequal 7, .ViridianGym
	end

.SilphCo
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .AlreadyBeatSilph
	specialphonecall SPECIALCALL_SILPHCO
.AlreadyBeatSilph
	end

.ViridianGym
	setevent EVENT_VIRIDIAN_GYM_LEADER_RETURNED
	specialphonecall SPECIALCALL_VIRIDIANGYM
	end

BlaineIntroText:
	text "Hah!"

;	para "I am BLAINE! I"
;	line "am the LEADER of"
;	cont "CINNABAR GYM!"

	para "<PLAYER>! You"
	line "came to challenge"
	cont "CINNABAR GYM?"

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
	line "the VOLCANOBADGE."
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
	iftrue CinnabarGymQuizDone
	pause 10
	playsound SFX_BOOT_PC
	changeblock 18, 8, $6c ; quiz blue
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion1Text
	yesorno
	iftrue .Correct
	closetext
	playsound SFX_WRONG
	changeblock 18, 8, $6b ; quiz red
	reloadmappart
	pause 10
	applymovement CINNABARGYM_TRAINER1, CinnabarGymWrongAnswerMovement
	turnobject PLAYER, LEFT
	sjump TrainerFirebreatherBill
.Correct
	playsound SFX_SAVE
	changeblock 18, 8, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 20, 6, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_1
	end

CinnabarQuizMachine2:
	checkevent EVENT_CINNABAR_GYM_QUIZ_2
	iftrue CinnabarGymQuizDone
	pause 10
	playsound SFX_BOOT_PC
	changeblock 10, 2, $6c ; quiz blue
	opentext
	writetext CinnabarGymQuizIntroText
	promptbutton
	writetext CinnabarGymQuestion2Text
	yesorno
	iffalse .Correct
	playsound SFX_WRONG
	changeblock 10, 2, $6b ; quiz red
	reloadmappart
	pause 10
	applymovement CINNABARGYM_TRAINER2, CinnabarGymWrongAnswerMovement
	turnobject PLAYER, LEFT
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
	changeblock 12, 6, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_2
	end

CinnabarQuizMachine3:
	checkevent EVENT_CINNABAR_GYM_QUIZ_3
	iftrue CinnabarGymQuizDone
	pause 10
	playsound SFX_BOOT_PC
	changeblock 10, 8, $6c ; quiz blue
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
	turnobject PLAYER, LEFT
	sjump TrainerFirebreatherRay
.Correct
	playsound SFX_SAVE
	changeblock 10, 8, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 12, 12, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_3
	end

CinnabarQuizMachine4:
	checkevent EVENT_CINNABAR_GYM_QUIZ_4
	iftrue CinnabarGymQuizDone
	pause 10
	playsound SFX_BOOT_PC
	changeblock 10, 14, $6c ; quiz blue
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
	turnobject PLAYER, LEFT
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
	changeblock 6, 14, $3e ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_4
	end

CinnabarQuizMachine5:
	checkevent EVENT_CINNABAR_GYM_QUIZ_5
	iftrue CinnabarGymQuizDone
	pause 10
	playsound SFX_BOOT_PC
	changeblock 2, 14, $6c ; quiz blue
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
	turnobject PLAYER, LEFT
	sjump TrainerFirebreatherEvan
.Correct
	playsound SFX_SAVE
	changeblock 2, 14, $6a ; quiz green
	reloadmappart
	waitsfx
	writetext CinnabarGymQuizCorrectText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 12, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_5
	end

CinnabarQuizMachine6:
	checkevent EVENT_CINNABAR_GYM_QUIZ_6
	iftrue CinnabarGymQuizDone
	pause 10
	playsound SFX_BOOT_PC
	changeblock 2, 8, $6c ; quiz blue
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
	turnobject PLAYER, LEFT
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
	changeblock 4, 6, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_6
	end

CinnabarGymQuizDone:
	jumptext CinnabarGymQuizDoneText

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
	done

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

CinnabarGymQuizDoneText:
	text "The door is"
	line "already open."
	done

CinnabarGymWrongAnswerMovement:
	slow_step DOWN
	turn_head RIGHT
	step_end

TrainerFirebreatherBill: ; quiz 1
	checkevent EVENT_BEAT_FIREBREATHER_BILL
	iftrue .AfterBattleText
	faceplayer
	opentext
	writetext FirebreatherBillSeenText
	waitbutton
	closetext
	winlosstext FirebreatherBillBeatenText, 0
	loadtrainer FIREBREATHER, BILL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FIREBREATHER_BILL
	checkevent EVENT_CINNABAR_GYM_QUIZ_1
	iftrue .DoorAlreadyOpen
	pause 20
	playsound SFX_ENTER_DOOR
	changeblock 20, 6, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_1
.DoorAlreadyOpen
	end

.AfterBattleText:
	jumptextfaceplayer FirebreatherBillAfterBattleText

FirebreatherBillSeenText:
	text "I was a thief, but"
	line "I became straight"
	cont "as a trainer!"
	done

FirebreatherBillBeatenText:
	text "I surrender!"
	done

FirebreatherBillAfterBattleText:
	text "Training #MON"
	line "with BLAINE helped"
	cont "me stop stealing!"
	done

TrainerSuperNerdHugh: ; quiz 2
	checkevent EVENT_BEAT_SUPER_NERD_HUGH
	iftrue .AfterBattleText
	faceplayer
	opentext
	writetext SuperNerdHughSeenText
	waitbutton
	closetext
	winlosstext SuperNerdHughBeatenText, 0
	loadtrainer SUPER_NERD, HUGH
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_HUGH
	checkevent EVENT_CINNABAR_GYM_QUIZ_2
	iftrue .DoorAlreadyOpen
	pause 20
	playsound SFX_ENTER_DOOR
	changeblock 12, 6, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_2
.DoorAlreadyOpen
	end

.AfterBattleText:
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

TrainerFirebreatherRay: ; quiz 3
	checkevent EVENT_BEAT_FIREBREATHER_RAY
	iftrue .AfterBattleText
	faceplayer
	opentext
	writetext FirebreatherRaySeenText
	waitbutton
	closetext
	winlosstext FirebreatherRayBeatenText, 0
	loadtrainer FIREBREATHER, RAY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FIREBREATHER_RAY
	checkevent EVENT_CINNABAR_GYM_QUIZ_3
	iftrue .DoorAlreadyOpen
	pause 20
	playsound SFX_ENTER_DOOR
	changeblock 12, 12, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_3
.DoorAlreadyOpen
	end

.AfterBattleText:
	jumptextfaceplayer FirebreatherRayAfterBattleText

FirebreatherRaySeenText:
	text "I just like using"
	line "fire #MON!"
	done

FirebreatherRayBeatenText:
	text "Too hot"
	line "to handle!"
	done

FirebreatherRayAfterBattleText:
	text "I just don't like"
	line "water #MON!"
	done

TrainerSuperNerdCary: ; quiz 4
	checkevent EVENT_BEAT_SUPER_NERD_CARY
	iftrue .AfterBattleText
	faceplayer
	opentext
	writetext SuperNerdCarySeenText
	waitbutton
	closetext
	winlosstext SuperNerdCaryBeatenText, 0
	loadtrainer SUPER_NERD, CARY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_CARY
	checkevent EVENT_CINNABAR_GYM_QUIZ_4
	iftrue .DoorAlreadyOpen
	pause 20
	playsound SFX_ENTER_DOOR
	changeblock 6, 14, $3e ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_4
.DoorAlreadyOpen
	end

.AfterBattleText:
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

TrainerFirebreatherEvan: ; quiz 5
	checkevent EVENT_BEAT_FIREBREATHER_EVAN
	iftrue .AfterBattleText
	faceplayer
	opentext
	writetext FirebreatherEvanSeenText
	waitbutton
	closetext
	winlosstext FirebreatherEvanBeatenText, 0
	loadtrainer FIREBREATHER, EVAN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FIREBREATHER_EVAN
	checkevent EVENT_CINNABAR_GYM_QUIZ_5
	iftrue .DoorAlreadyOpen
	pause 20
	playsound SFX_ENTER_DOOR
	changeblock 4, 12, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_5
.DoorAlreadyOpen
	end

.AfterBattleText:
	jumptextfaceplayer FirebreatherEvanAfterBattleText

FirebreatherEvanSeenText:
	text "I've been to many"
	line "GYMs, but this is"
	cont "my favorite!"
	done

FirebreatherEvanBeatenText:
	text "Yowza!"
	line "Too hot!"
	done

FirebreatherEvanAfterBattleText:
	text "Us fire #MON"
	line "fans like PONYTA"
	cont "and NINETALES!"
	done

TrainerSuperNerdMarkus: ; quiz 6
	checkevent EVENT_BEAT_SUPER_NERD_MARKUS
	iftrue .AfterBattleText
	faceplayer
	opentext
	writetext SuperNerdMarkusSeenText
	waitbutton
	closetext
	winlosstext SuperNerdMarkusBeatenText, 0
	loadtrainer SUPER_NERD, MARKUS
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_MARKUS
	checkevent EVENT_CINNABAR_GYM_QUIZ_6
	iftrue .DoorAlreadyOpen
	pause 20
	playsound SFX_ENTER_DOOR
	changeblock 4, 6, $3c ; door open
	reloadmappart
	setevent EVENT_CINNABAR_GYM_QUIZ_6
.DoorAlreadyOpen
	end

.AfterBattleText:
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
	warp_event 20, 17, CINNABAR_ISLAND, 2
	warp_event 21, 17, CINNABAR_ISLAND, 2

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
	object_event 18,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerFirebreatherBill, -1
	object_event 10,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TrainerSuperNerdHugh, -1
	object_event 10,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerFirebreatherRay, -1
	object_event 10, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TrainerSuperNerdCary, -1
	object_event  2, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerFirebreatherEvan, -1
	object_event  2,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TrainerSuperNerdMarkus, -1
	object_event 20,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSuperNerdTeru, -1
	object_event  3,  3, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarGymBlaineScript, -1
	object_event 19, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarGymGuideScript, -1
