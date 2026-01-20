	object_const_def
	const TEAMROCKETBASEB3F_JANINE
	const TEAMROCKETBASEB3F_KOGA
	const TEAMROCKETBASEB3F_JANINE_N
	const TEAMROCKETBASEB3F_KOGA_N
	const TEAMROCKETBASEB3F_FIGHT_NINJA_R
	const TEAMROCKETBASEB3F_FIGHT_NINJA_L

TeamRocketBaseB3F_MapScripts:
	def_scene_scripts
	scene_script TeamRocketBaseB3FNoop1Scene, SCENE_TEAMROCKETBASEB3F_NINJA_FIGHT
	scene_script TeamRocketBaseB3FNoop2Scene, SCENE_TEAMROCKETBASEB3F_RESET

	def_callbacks
	callback MAPCALLBACK_TILES, TeamRocketBaseB3FCheckDoorsCallback

TeamRocketBaseB3FNoop1Scene:
TeamRocketBaseB3FNoop2Scene:
	end

TeamRocketBaseB3FCheckDoorsCallback:
;	checkevent EVENT_NINJA_CHALLENGE_IN_PROGRESS
;	iftrue .DontShutDoor
;	changeblock  8, 0, $29 ; wall
;	changeblock 10, 0, $5f ; bookshelf
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_BOTH_SWITCHES
	iftrue .DontShutDoor
	changeblock 10, 8, $39 ; door closed
.DontShutDoor
	endcallback

; scripts
TeamRocketBaseB3FKogaNinja:
	faceplayer
	opentext
	writetext TeamRocketBaseB3FPlayerText
	promptbutton
	closetext
	moveobject TEAMROCKETBASEB3F_KOGA, 5, 14
	applymovement TEAMROCKETBASEB3F_KOGA_N, TeamRocketBaseB2FSpinMovement
	appear TEAMROCKETBASEB3F_KOGA
	refreshscreen
	disappear TEAMROCKETBASEB3F_KOGA_N
	setlasttalked TEAMROCKETBASEB3F_KOGA
	pause 15
	faceplayer
	opentext
	writetext TeamRocketBaseB3FFoundKogaText
	waitbutton
	closetext
	winlosstext KogaBeatenNinjaText, 0
	loadtrainer KOGA, KOGA2
	startbattle
;	moveobject PLAYER, 6, 14
;	turnobject PLAYER, LEFT
;	turnobject TEAMROCKETBASEB3F_KOGA, RIGHT
	reloadmapafterbattle
	opentext
	writetext TeamRocketBaseB3FKogaAfterBattleText
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal UP, .skip
	applymovement PLAYER, TeamRocketBaseB3FJanineStepRightMovement
.skip
	applymovement TEAMROCKETBASEB3F_KOGA, TeamRocketBaseB3FOneStepDownMovement
	moveobject TEAMROCKETBASEB3F_KOGA, 5, 15
	end

TeamRocketBaseB3FPlayerText:
	text "<PLAYER>!"
	done

TeamRocketBaseB3FFoundKogaText:
	text "KOGA: You've found"
	line "me. Now see if you"
	cont "can defeat me."

	para "In FUCHSIA CITY,"
	line "our battle was for"
	cont "a LEAGUE BADGE."

	para "This is different."

	para "This time, I won't"
	line "be holding back."
	done

KogaBeatenNinjaText:
	text "Incredible."
	done

TeamRocketBaseB3FKogaAfterBattleText:
	text "<PLAYER>, you must"
	line "still find JANINE,"
	cont "and defeat her, as"
	roll "well."

	para "But for my part,"
	line "I have no doubt"
	cont "of your worthiness"
	roll "to receive the"
	cont "CLEAR BELL."
	done

TeamRocketBaseB3FKoga:
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_2
	iftrue .DoorIsOpen
	jumptextfaceplayer TeamRocketBaseB3FKogaHintText

.DoorIsOpen
	jumptextfaceplayer TeamRocketBaseB3FKogaBothSwitchesText

TeamRocketBaseB3FKogaHintText:
	text "Having trouble"
	line "finding JANINE?"

	para "Maybe a book will"
	line "have the answer?"
	done

TeamRocketBaseB3FKogaBothSwitchesText:
	text "You've found both"
	line "switches."

	para "Do you know what"
	line "they opened?"
	done

TeamRocketBaseB3FJanineNinja:
	faceplayer
	opentext
	writetext TeamRocketBaseB3FJanineIntroText
	promptbutton
	closetext
	applymovement TEAMROCKETBASEB3F_JANINE_N, TeamRocketBaseB2FSpinMovement
	appear TEAMROCKETBASEB3F_JANINE
	refreshscreen
	disappear TEAMROCKETBASEB3F_JANINE_N
	setlasttalked TEAMROCKETBASEB3F_JANINE
	pause 15
	faceplayer
	opentext
	writetext TeamRocketBaseB3FJaninePreBattleText
	waitbutton
	winlosstext JanineBeatenText, 0
	loadtrainer JANINE, JANINE1
	startbattle
	reloadmapafterbattle
	opentext
	writetext TeamRocketBaseB3FKogaPlayerText
	promptbutton
	moveobject TEAMROCKETBASEB3F_KOGA, 11, 8
	appear TEAMROCKETBASEB3F_KOGA
	turnobject TEAMROCKETBASEB3F_KOGA, UP
	closetext
	applymovement TEAMROCKETBASEB3F_KOGA, TeamRocketBaseB2FFourStepsUpMovement
	turnobject TEAMROCKETBASEB3F_KOGA, LEFT
	scall TeamRocketBaseB3FPositionPlayerScript
	opentext
	writetext TeamRocketBaseB3FKogaCongratulationsText
	promptbutton
	closetext
	applymovement TEAMROCKETBASEB3F_JANINE, TeamRocketBaseB3FJanineStepRightMovement
	turnobject PLAYER, UP
	opentext
	writetext TeamRocketBaseB3FJanineAdmitsDefeatText
	waitbutton
	closetext
	applymovement TEAMROCKETBASEB3F_JANINE, TeamRocketBaseB2FOneStepUpMovement
	pause 10
	playsound SFX_PUSH_BUTTON
	waitsfx
	playsound SFX_STRENGTH
	changeblock  8, 0, $5f ; bookshelf
	changeblock 10, 0, $2e ; stairs
	reloadmappart
	waitsfx
	applymovement TEAMROCKETBASEB3F_JANINE, TeamRocketBaseB2FTwoStepsUpMovement
	playsound SFX_EXIT_BUILDING
	disappear TEAMROCKETBASEB3F_JANINE
;	turnobject TEAMROCKETBASEB3F_JANINE, DOWN
	pause 60
	playsound SFX_EXIT_BUILDING
	moveobject TEAMROCKETBASEB3F_JANINE, 10, 0
	appear TEAMROCKETBASEB3F_JANINE
	applymovement TEAMROCKETBASEB3F_JANINE, TeamRocketBaseB3FOneStepDownMovement
	turnobject TEAMROCKETBASEB3F_JANINE, LEFT
	pause 10
	playsound SFX_PUSH_BUTTON
	pause 10
	applymovement TEAMROCKETBASEB3F_JANINE, TeamRocketBaseB3FTwoStepsDownMovement
	playsound SFX_STRENGTH
	changeblock  8, 0, $29 ; wall
	changeblock 10, 0, $5f ; bookshelf
	reloadmappart
	waitsfx
	opentext
	writetext TeamRocketBaseB3FJanineGivesClearBellText
	promptbutton
	giveitem CLEAR_BELL
	waitsfx
	writetext TeamRocketBaseB3FReceivedClearBellText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	turnobject PLAYER, RIGHT
	opentext
	writetext TeamRocketBaseB3FKogaGivesSilverWingText
	promptbutton
	giveitem SILVER_WING
	waitsfx
	writetext TeamRocketBaseB3FReceivedSilverWingText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	writetext TeamRocketBaseB3FKogaExplainsSilverWingText
	waitbutton
	closetext
	applymovement TEAMROCKETBASEB3F_KOGA, TeamRocketBaseB3FKogaStepsUpMovement
	opentext
	writetext TeamRocketBaseB3FKogaFarewellText
	waitbutton
	closetext
	applymovement TEAMROCKETBASEB3F_KOGA, TeamRocketBaseB3FKogaLeavesMovement
	disappear TEAMROCKETBASEB3F_KOGA
	moveobject TEAMROCKETBASEB3F_JANINE, 10, 3
	clearevent EVENT_NINJA_CHALLENGE_IN_PROGRESS
;	setmapscene WISE_TRIOS_ROOM, SCENE_WISETRIOROOM_NOOP
;	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
;	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	special RestartMapMusic
	end

TeamRocketBaseB3FPositionPlayerScript:
	readvar VAR_FACING
	ifequal RIGHT, .FromLeft
	ifequal LEFT, .FromRight
	; else UP
	applymovement PLAYER, TeamRocketBaseB3FOneStepRightMovement
	end

.FromLeft
	applymovement PLAYER, TeamRocketBaseB3FPlayerFromLeftMovement
	end

.FromRight
	applymovement PLAYER, TeamRocketBaseB3FPlayerFromRightMovement
	end

TeamRocketBaseB3FJanineIntroText:
	text "So, you found your"
	line "way here."
	done

TeamRocketBaseB3FJaninePreBattleText:
	text "I don't like the"
	line "idea of giving the"
	cont "CLEAR BELL to any-"
	roll "one from outside"
	cont "our CLAN."

	para "But that HO-OH has"
	line "appeared to you"
	cont "is significant."

	para "And your ability"
	line "to navigate our"
	cont "DEN continues to"
	roll "impress me."

	para "Show me that you"
	line "are strong enough!"

	para "Defeat me, and I"
	line "may condede that"
	cont "you're worthy of"
	roll "the CLEAR BELL!"
	done

JanineBeatenText:
	text "I… lost…?"
	done

TeamRocketBaseB3FKogaPlayerText:
	text "KOGA: <PLAYER>!"
	done

TeamRocketBaseB3FKogaCongratulationsText:
	text "KOGA: I knew you"
	line "could do it."

	para "After battling you"
	line "myself, I had no"
	cont "doubts."

	para "What about you,"
	line "JANINE?"
	done

TeamRocketBaseB3FJanineAdmitsDefeatText:
	text "JANINE: Yes…"
	line "I truly wasn't"
	cont "expecting to lose."

	para "But after facing"
	line "<PLAYER> in battle"
	cont "myself, I see it."

	para "I understand that"
	line "the CLEAR BELL was"
	cont "destined to go to"
	roll "<PLAYER>."

	para "Please wait here"
	line "a moment."
	done

TeamRocketBaseB3FJanineGivesClearBellText:
	text "JANINE: <PLAYER>,"
	line "on behalf of the"
	cont "NINJA CLAN, I deem"
	roll "you worthy of the"
	cont "CLEAR BELL."

	para "Receive it with"
	line "resepect."
	done

TeamRocketBaseB3FReceivedClearBellText:
	text "<PLAYER> received"
	line "the CLEAR BELL!"
	done

TeamRocketBaseB3FKogaGivesSilverWingText:
	text "KOGA: One more"
	line "thing, <PLAYER>."

	para "I want you to have"
	line "this as well."
	done

TeamRocketBaseB3FReceivedSilverWingText:
	text "<PLAYER> received"
	line "the SILVER WING!"
	done

TeamRocketBaseB3FKogaExplainsSilverWingText:
	text "KOGA: I found that"
	line "at BURNED TOWER,"
	cont "a long time ago."

	para "I believe it is a"
	line "feather from the"
	cont "legendary LUGIA"
	roll "which was said to"
	cont "roost at the top"
	roll "of the BRASS TOWER"
	cont "before it burned."

	para "I don't know if it"
	line "is important, but"
	cont "I think you should"
	roll "have it."
	done

TeamRocketBaseB3FKogaFarewellText:
	text "KOGA: I need to"
	line "get going."

	para "I've been away"
	line "from FUCHSIA GYM"
	cont "for too long."
	done

;TeamRocketBaseB3FKogaEntersMovement:
;	step UP
;	step UP
;	step UP
;TeamRocketBaseB3FTwoStepUpMovement:
;	step UP
;TeamRocketBaseB3FOneStepUpMovement:
;	step UP
;	step_end

TeamRocketBaseB3FPlayerFromLeftMovement:
	step DOWN
	step RIGHT
TeamRocketBaseB3FOneStepRightMovement:
	step RIGHT
	step_end

TeamRocketBaseB3FPlayerFromRightMovement:
	step DOWN
	turn_head RIGHT
	step_end

TeamRocketBaseB3FJanineStepRightMovement:
	step RIGHT
	turn_head DOWN
	step_end

TeamRocketBaseB3FKogaStepsUpMovement:
	step UP
	turn_head LEFT
	step_end

TeamRocketBaseB3FKogaLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
TeamRocketBaseB3FTwoStepsDownMovement:
	step DOWN
TeamRocketBaseB3FOneStepDownMovement:
	step DOWN
	step_end

TeamRocketBaseB3FJanine:
	jumptextfaceplayer TeamRocketBaseB3FJanineText
TeamRocketBaseB3FJanineText:
	text "Though you are not"
	line "a NINJA, you will"
	cont "always be welcome"
	roll "here."
	done

; trainers
TrainerNinjaTeisatsu:
	trainer NINJA, TEISATSU, EVENT_BEAT_NINJA_TEISATSU, NinjaTeisatsuSeenText, NinjaTeisatsuBeatenText, 0, .Script
.Script:
;	endifjustbattled
	checkevent EVENT_NINJA_CHALLENGE_IN_PROGRESS
	iftrue .PerfectDisguise
	jumptextfaceplayer NinjaTeisatsuAfterBattleText

.PerfectDisguise
	jumptextfaceplayer TeamRocketBaseB3FPerfectDisguiseText

NinjaTeisatsuSeenText:
	text "My students are"
	line "sparring. I have"
	cont "time to battle."
	done

NinjaTeisatsuBeatenText:
	text "I wish my students"
	line "were that strong!"
	done

NinjaTeisatsuAfterBattleText:
	text "My students train"
	line "day and night."
	done

TeamRocketBaseB3FPerfectDisguiseText:
	text "KOGA and JANINE"
	line "have perfected the"
	cont "art of disguise."

	para "You'll never be"
	line "able to tell who"
	cont "they are without"
	roll "talking to them."
	done

TrainerNinjaKancho:
	trainer NINJA, KANCHO, EVENT_BEAT_NINJA_KANCHO, NinjaKanchoSeenText, NinjaKanchoBeatenText, 0, .Script
.Script:
	endifjustbattled
	checkevent EVENT_NINJA_CHALLENGE_IN_PROGRESS
	iftrue .DuringChallenge
	jumptextfaceplayer NinjaKanchoAfterBattleText

.DuringChallenge
	jumptextfaceplayer NinjaKanchoDuringChallengeText

NinjaKanchoSeenText:
	text "I'm practicing my"
	line "flying-kick!"
	done

NinjaKanchoBeatenText:
	text "I came crashing"
	line "down!"
	done

NinjaKanchoDuringChallengeText:
	text "I'm not JANINE,"
	line "her flying-kick is"
	cont "perfect."
	done

NinjaKanchoAfterBattleText:
	text "I'll keep training"
	line "until I'm as good"
	cont "as JANINE!"
	done

TrainerNinjaKishu:
	trainer NINJA, KISHU, EVENT_BEAT_NINJA_KISHU, NinjaKishuSeenText, NinjaKishuBeatenText, 0, .Script
.Script:
	endifjustbattled
	checkevent EVENT_NINJA_CHALLENGE_IN_PROGRESS
	iftrue .DuringChallenge
	jumptextfaceplayer NinjaKishuAfterBattleText

.DuringChallenge
	jumptextfaceplayer NinjaKishuDuringChallengeText

NinjaKishuSeenText:
	text "I love it when my"
	line "opponent goes all-"
	cont "out."

	para "I'll go all-out"
	line "in a battle with"
	cont "you!"
	done

NinjaKishuBeatenText:
	text "I went all-out,"
	line "now I'm all out."
	done

NinjaKishuDuringChallengeText:
	text "I'm not JANINE,"
	line "but even a master"
	cont "like her trains"
	roll "every day."
	done

NinjaKishuAfterBattleText:
	text "I want to teach"
	line "students of my own"
	cont "someday."
	done

TrainerNinjaKonran:
	trainer NINJA, KONRAN, EVENT_BEAT_NINJA_KONRAN, NinjaKonranSeenText, NinjaKonranBeatenText, 0, .Script
.Script:
;	endifjustbattled
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_1
	iffalse .BeforeSwitch
	jumptextfaceplayer NinjaKonranAfterBattleText

.BeforeSwitch
	jumptextfaceplayer NinjaKonranBeforeSwitchText

NinjaKonranSeenText:
	text "JANINE told me to"
	line "watch this area."
	done

NinjaKonranBeatenText:
	text "Was I supposed to"
	line "fight?"
	done

NinjaKonranBeforeSwitchText:
	text "What am I supposed"
	line "to be watching?"

	para "There's nothing"
	line "here. Is there?"
	done

NinjaKonranAfterBattleText:
	text "A secret switch in"
	line "the bookshelf?"

	para "I never noticed!"
	done

TrainerNinjaSekko:
	trainer NINJA, SEKKO, EVENT_BEAT_NINJA_SEKKO, NinjaSekkoSeenText, NinjaSekkoBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer NinjaSekkoAfterBattleText

NinjaSekkoSeenText:
	text "Do I know where"
	line "JANINE is?"

	para "Maybe."
	done

NinjaSekkoBeatenText:
	text "I'm not allowed"
	line "to tell."
	done

NinjaSekkoAfterBattleText:
	text "I'm loyal to the"
	line "NINJA CLAN."

	para "I'll do my duty,"
	line "no matter what."
	done

TeamRocketBaseB3FNinjaFightSequence:
	applymovement TEAMROCKETBASEB3F_FIGHT_NINJA_L, TeamRocketBaseB3FNinjaStepRightMovement
	applymovement TEAMROCKETBASEB3F_FIGHT_NINJA_R, TeamRocketBaseB3FNinjaJumpMovement
	playsound SFX_TACKLE
	applymovement TEAMROCKETBASEB3F_FIGHT_NINJA_L, TeamRocketBaseB3FNinjaKnockedLeft1Movement
	showemote EMOTE_SHOCK, TEAMROCKETBASEB3F_FIGHT_NINJA_L, 10
	applymovement TEAMROCKETBASEB3F_FIGHT_NINJA_L, TeamRocketBaseB3FNinjaRetaliateMovement
	playsound SFX_TACKLE
	applymovement TEAMROCKETBASEB3F_FIGHT_NINJA_R, TeamRocketBaseB3FNinjaKnockedRight2Movement
	showemote EMOTE_SHOCK, TEAMROCKETBASEB3F_FIGHT_NINJA_R, 10
	applymovement TEAMROCKETBASEB3F_FIGHT_NINJA_L, TeamRocketBaseB3FNinjaKnockedLeft1Movement
	setscene SCENE_TEAMROCKETBASEB3F_RESET
	end

TeamRocketBaseB3FResetNinjaFight:
	setscene SCENE_TEAMROCKETBASEB3F_NINJA_FIGHT
	end

TeamRocketBaseB3FNinjaJumpMovement:
	turn_head LEFT
	fix_facing
	fast_jump_step LEFT
	remove_fixed_facing
	step_end

TeamRocketBaseB3FNinjaKnockedLeft1Movement:
	turn_head RIGHT
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

TeamRocketBaseB3FNinjaRetaliateMovement:
	turn_head UP
	turn_head LEFT
	turn_head DOWN
	turn_head RIGHT
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

;TeamRocketBaseB3FNinjaStepRightMovement:
;	big_step RIGHT
;	step_end

TeamRocketBaseB3FNinjaKnockedRight2Movement:
	fix_facing
	big_step RIGHT
TeamRocketBaseB3FNinjaStepRightMovement:
	big_step RIGHT
	remove_fixed_facing
	step_end

TeamRocketBaseB2FBookshelfSwitch1:
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_1
	iftrue TeamRocketBaseB3FSwitchAlreadyPressed
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_2
	iftrue TeamRocketBaseB3FOpenDoorScript
;FirstSwitch
	setevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_1
	jumptext TeamRocketBaseB3FFirstSwitchText

TeamRocketBaseB2FBookshelfSwitch2:
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_2
	iftrue TeamRocketBaseB3FSwitchAlreadyPressed
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_1
	iftrue TeamRocketBaseB3FOpenDoorScript
;FirstSwitch
	setevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_2
	jumptext TeamRocketBaseB3FFirstSwitchText

TeamRocketBaseB3FFirstSwitchText:
	text "There's a secret"
	line "switch here!"

	para "Better press it."

	para "…"

	para "It looks on, but"
	line "nothing seems to"
	cont "have happened."
	done

TeamRocketBaseB3FSwitchAlreadyPressed:
	jumptext TeamRocketBaseB3FSwitchAlreadyPressedText
TeamRocketBaseB3FSwitchAlreadyPressedText:
	text "There's a secret"
	line "switch here."

	para "Its been activated"
	line "already."
	done

TeamRocketBaseB3FOpenDoorScript:
	opentext
	writetext TeamRocketBaseB3FSecondSwitchText
	waitbutton
	closetext
	setevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_1
	setevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_2
	setevent EVENT_TEAM_ROCKET_BASE_B3F_BOTH_SWITCHES
	changeblock 10, 8, $3d ; door closed
	playsound SFX_PUSH_BUTTON
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	opentext
	writetext TeamRocketBaseB3FDidSomethingText
	waitbutton
	closetext
	end

TeamRocketBaseB3FSecondSwitchText:
	text "There's another"
	line "switch here!"

	para "Better press this"
	line "one, too."
	done

TeamRocketBaseB3FDidSomethingText:
	text "It sounded like"
	line "something opened."
	done

TeamRocketB3FOfficeDoor:
	opentext
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_BOTH_SWITCHES
	iftrue .BothLights
	writetext TeamRocketBaseB3FLockedDoorText
	promptbutton
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_1
	iftrue .OneLight
	checkevent EVENT_TEAM_ROCKET_BASE_B3F_SWITCH_2
	iftrue .OneLight
	writetext TeamRocketBaseB3FRedLightsText
	waitbutton
	closetext
	end

.OneLight
	writetext TeamRocketBaseB3FOneLightText
	waitbutton
	closetext
	end

.BothLights
	writetext TeamRocketBaseB3FBothLightsText
	waitbutton
	closetext
	end

TeamRocketBaseB3FLockedDoorText:
	text "This door is"
	line "locked."

	para "There are two"
	line "lights above the"
	cont "door."
	done

TeamRocketBaseB3FRedLightsText:
	text "Both lights are"
	line "red."
	done

TeamRocketBaseB3FOneLightText:
	text "One of the lights"
	line "is green."
	done

TeamRocketBaseB3FBothLightsText:
	text "The door is open!"

	para "The two lights"
	line "above the door are"
	cont "both green."
	done

TeamRocketB3FFakeBookshelf:
	jumptext TeamRocketBaseB1FFakeBookshelfText

TeamRocketBaseB3FProtein:
	itemball PROTEIN

TeamRocketBaseB3FXSpecial:
	itemball X_SPECIAL

TeamRocketBaseB3FFullHeal:
	itemball FULL_HEAL

TeamRocketBaseB3FUltraBall:
	itemball ULTRA_BALL

TeamRocketBaseB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  2, TEAM_ROCKET_BASE_B2F, 2
	warp_event 27,  2, TEAM_ROCKET_BASE_B2F, 3
	warp_event  3,  6, TEAM_ROCKET_BASE_B2F, 4
	warp_event 27, 14, TEAM_ROCKET_BASE_B2F, 5
;	warp_event 10,  0, TEAM_ROCKET_BASE_B4F, 1

	def_coord_events
	coord_event 22, 11, SCENE_TEAMROCKETBASEB3F_NINJA_FIGHT, TeamRocketBaseB3FNinjaFightSequence
	coord_event 23, 11, SCENE_TEAMROCKETBASEB3F_NINJA_FIGHT, TeamRocketBaseB3FNinjaFightSequence
	coord_event 22, 12, SCENE_TEAMROCKETBASEB3F_RESET, TeamRocketBaseB3FResetNinjaFight
	coord_event 23, 12, SCENE_TEAMROCKETBASEB3F_RESET, TeamRocketBaseB3FResetNinjaFight

	def_bg_events
	bg_event 10,  9, BGEVENT_UP, TeamRocketB3FOfficeDoor
	bg_event 11,  9, BGEVENT_UP, TeamRocketB3FOfficeDoor
	bg_event 10,  1, BGEVENT_READ, TeamRocketB3FFakeBookshelf
	bg_event 11,  1, BGEVENT_READ, TeamRocketB3FFakeBookshelf
	bg_event 18,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 19,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelfSwitch1
;	bg_event 20,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelf
;	bg_event 21,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 22,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 23,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event  4, 13, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event  5, 13, BGEVENT_READ, TeamRocketBaseB2FBookshelfSwitch2
	bg_event  6, 13, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event  7, 13, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 12,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 13,  1, BGEVENT_READ, TeamRocketBaseB2FBookshelf

	def_object_events
;koga/janine
	object_event  9,  3, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB3FJanine, EVENT_TEAM_ROCKET_BASE_B3F_JANINE
	object_event  5, 15, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB3FKoga, EVENT_TEAM_ROCKET_BASE_B3F_KOGA
	object_event  9,  3, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB3FJanineNinja, EVENT_TEAM_ROCKET_BASE_B3F_JANINE_NINJA
	object_event  5, 14, SPRITE_NINJA, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB3FKogaNinja, EVENT_TEAM_ROCKET_BASE_B3F_KOGA_NINJA
;fighters/trainers
	object_event 24,  9, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 0, TrainerNinjaKancho, -1
	object_event 21,  9, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 0, TrainerNinjaKishu, -1
;trainers
	object_event 22,  7, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerNinjaTeisatsu, -1
	object_event 19,  3, SPRITE_NINJA, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 1, TrainerNinjaKonran, -1
	object_event 12, 15, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 0, TrainerNinjaSekko, -1
;
	object_event  1, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB3FProtein, EVENT_TEAM_ROCKET_BASE_B3F_PROTEIN
	object_event 16,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB3FXSpecial, EVENT_TEAM_ROCKET_BASE_B3F_X_SPECIAL
	object_event 27,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB3FFullHeal, EVENT_TEAM_ROCKET_BASE_B3F_FULL_HEAL
	object_event 14, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB3FUltraBall, EVENT_TEAM_ROCKET_BASE_B3F_ULTRA_BALL

;.GrayOverTreeOBPalette