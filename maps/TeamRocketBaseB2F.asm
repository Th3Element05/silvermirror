	object_const_def
	const TEAMROCKETBASEB2F_JANINE
	const TEAMROCKETBASEB2F_KOGA
	const TEAMROCKETBASEB2F_JANINE_N
	const TEAMROCKETBASEB2F_KOGA_N
	const TEAMROCKETBASEB2F_NINJA_JONIN_T
	const TEAMROCKETBASEB2F_NINJA_JONIN
	const TEAMROCKETBASEB2F_BUSH_NINJA
	const TEAMROCKETBASEB2F_SPEED_NINJA1
	const TEAMROCKETBASEB2F_SPEED_NINJA2
	const TEAMROCKETBASEB2F_SPEED_M

TeamRocketBaseB2F_MapScripts:
	def_scene_scripts
;	scene_script TeamRocketBaseB2FNoop1Scene, SCENE_TEAMROCKETBASEB2F_MEET_JANINE
;	scene_script TeamRocketBaseB2FNoop2Scene, SCENE_TEAMROCKETBASEB2F_NOOP

	def_callbacks

;TeamRocketBaseB2FNoop1Scene:
;TeamRocketBaseB2FNoop2Scene:
;	end

TrainerNinjaJonin:
	trainer NINJA, JONIN, EVENT_BEAT_NINJA_JONIN, NinjaJoninSeenText, NinjaJoninBeatenText, 0, .Script
.Script:
	checkevent EVENT_TEAM_ROCKET_BASE_B2F_JONIN
	iffalse TeamRocketBaseB2FNinjaJoninScript
	setevent EVENT_NINJA_SECURITY_5
	setevent EVENT_NINJA_SECURITY_6
	setevent EVENT_NINJA_SECURITY_7
	setevent EVENT_NINJA_SECURITY_8
	setmapscene TEAM_ROCKET_BASE_B1F, SCENE_TEAMROCKETBASEB1F_NOOP
	opentext
	writetext NinjaJoninAfterBattleText
	waitbutton
	closetext
	; fallthrough

TeamRocketBaseB2FMeetJanineAndKogaScene:
	follow TEAMROCKETBASEB2F_NINJA_JONIN_T, PLAYER
	readvar VAR_YCOORD
	ifequal 13, .Short
	applymovement TEAMROCKETBASEB2F_NINJA_JONIN_T, TeamRocketBaseB2FOneStepUpMovement
.Short
	applymovement TEAMROCKETBASEB2F_NINJA_JONIN_T, TeamRocketBaseB2FApproachJanineMovement
	stopfollow
	turnobject TEAMROCKETBASEB2F_NINJA_JONIN_T, RIGHT
	turnobject TEAMROCKETBASEB2F_JANINE, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext TeamRocketBaseB2FJanineQuestionText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, TEAMROCKETBASEB2F_JANINE, 15
	applymovement TEAMROCKETBASEB2F_JANINE, TeamRocketBaseB2FMovesDownMovement
	turnobject TEAMROCKETBASEB2F_NINJA_JONIN_T, DOWN
	opentext
	writetext TeamRocketBaseB2FJanineIntroText
	waitbutton
	closetext
	appear TEAMROCKETBASEB2F_KOGA
	turnobject TEAMROCKETBASEB2F_JANINE, DOWN
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, TEAMROCKETBASEB2F_JANINE, 15
	applymovement TEAMROCKETBASEB2F_KOGA, TeamRocketBaseB2FFourStepsUpMovement
	opentext
	writetext TeamRocketBaseB2FKogaExplainsText
	promptbutton
	closetext
	applymovement TEAMROCKETBASEB2F_KOGA, TeamRocketBaseB2FKogaApproachesPlayerMovement
	opentext
	writetext TeamRocketBaseB2FKogaWelcomeText
	waitbutton
	closetext
	applymovement TEAMROCKETBASEB2F_JANINE, TeamRocketBaseB2FMovesDownMovement
	turnobject TEAMROCKETBASEB2F_KOGA, RIGHT
	opentext
	writetext TeamRocketBaseB2FJanineInterjectsText
	promptbutton
	turnobject TEAMROCKETBASEB2F_KOGA, UP
	pause 10
	writetext TeamRocketBaseB2FPlayerExplainsText
	waitbutton
	closetext
	applymovement TEAMROCKETBASEB2F_KOGA, TeamRocketBaseB2FSlowStepLeftMovement
	opentext
	writetext TeamRocketBaseB2FKogaPerhapsLugiaText
	promptbutton
	closetext
	applymovement TEAMROCKETBASEB2F_KOGA, TeamRocketBaseB3FOneStepRightMovement
	opentext
	writetext TeamRocketBaseB2FKogaProposesChallengeText
	promptbutton
	closetext
	applymovement TEAMROCKETBASEB2F_JANINE, TeamRocketBaseB2FOneStepUpMovement
	turnobject TEAMROCKETBASEB2F_JANINE, LEFT
	turnobject PLAYER, RIGHT
	turnobject TEAMROCKETBASEB2F_KOGA, UP
	opentext
	writetext TeamRocketBaseB2FJanineExplainsChallengeText
	waitbutton
	closetext
	applymovement TEAMROCKETBASEB2F_JANINE, TeamRocketBaseB2FSpinMovement
	appear TEAMROCKETBASEB2F_JANINE_N
	disappear TEAMROCKETBASEB2F_JANINE
	refreshscreen
	pause 15
	applymovement TEAMROCKETBASEB2F_JANINE_N, TeamRocketBaseB2FExitSceneMovement
	disappear TEAMROCKETBASEB2F_JANINE_N
	applymovement TEAMROCKETBASEB2F_KOGA, TeamRocketBaseB2FSpinMovement
	appear TEAMROCKETBASEB2F_KOGA_N
	disappear TEAMROCKETBASEB2F_KOGA
	refreshscreen
	pause 15
	applymovement TEAMROCKETBASEB2F_KOGA_N, TeamRocketBaseB2FExitSceneMovement
	disappear TEAMROCKETBASEB2F_KOGA_N
;	clearevent EVENT_TEAM_ROCKET_BASE_B2F_JONIN
;	setevent EVENT_TEAM_ROCKET_BASE_B2F_JANINE
;	setevent EVENT_TEAM_ROCKET_BASE_B2F_KOGA
	appear TEAMROCKETBASEB2F_NINJA_JONIN
	disappear TEAMROCKETBASEB2F_NINJA_JONIN_T
	turnobject PLAYER, UP
	opentext
	writetext TeamRocketBaseB2FNinjaJoninChallengeText
	waitbutton
	closetext
	end

NinjaJoninSeenText:
	text "Intruder!"

	para "How did you get"
	line "past our guards?"
	done

NinjaJoninBeatenText:
	text "Such power!"
	done

NinjaJoninAfterBattleText:
	text "I understand now"
	line "how you got past"
	cont "our guards."

	para "I want you to meet"
	line "one of the leaders"
	cont "of our clan."

	para "Please, follow me."
	done

TeamRocketBaseB2FJanineQuestionText:
	text "JANINE: What is"
	line "this?"

	para "You know better"
	line "than to bring an"
	cont "outsider into our"
	roll "den!"

	para "JONIN: I do,"
	line "JANINE."

	para "But this outsider"
	line "has found their"
	cont "way here on their"
	roll "own."

	para "They have seen"
	line "through our hidden"
	cont "entrances, and"
	roll "bested our guards."

	para "I challenged them"
	line "myself, and lost."
	done

TeamRocketBaseB2FJanineIntroText:
	text "JANINE: We do not"
	line "get unexpected"
	cont "guests here."

	para "No one has found"
	line "the entrance to"
	cont "our den and been"
	roll "able to pass our"
	cont "guards."

	para "These are very"
	line "impressive feats."

	para "Tell me, why have"
	line "you come here?"

	para "<……> <……>"

	para "JANINE: You seek"
	line "the CLEAR BELL?"

	para "As if we would"
	line "just hand such an"
	cont "artifact to some"
	roll "outsider!"

	para "Impossible!"

	para "KOGA: JANINE!"
	done

TeamRocketBaseB2FKogaExplainsText:
	text "KOGA: Can you not"
	line "see the SOULBADGE"
	cont "pinned to this"
	roll "trainer's shirt?"

	para "I tested this one"
	line "and granted them"
	cont "that BADGE myself."

	para "This is <PLAYER>."
;
;	para "Furthermore, they"
;	line "are also the most"
;	cont "recent #MON"
;	roll "LEAGUE CHAMPION."
	done

TeamRocketBaseB2FKogaWelcomeText:
	text "KOGA: It is quite"
	line "a surprise to find"
	cont "you here."

	para "<PLAYER>, welcome"
	line "to the den of the"
	cont "NINJA CLAN."
	done

TeamRocketBaseB2FJanineInterjectsText:
	text "JANINE: Father,"
	line "no matter who this"
	cont "is, you know we"
	roll "cannot just hand"
	cont "the CLEAR BELL to"
	roll "an outsider."

	para "KOGA: Yes, you're"
	line "right. Our clan"
	cont "has protected the"
	roll "CLEAR BELL for"
	cont "generations."

	para "Few even know that"
	line "it exists, which"
	cont "begs the question:"

	para "How does <PLAYER>"
	line "know to seek it"
	cont "here?"
	done

TeamRocketBaseB2FPlayerExplainsText:
	text "<……> <……>"

	para "KOGA: I see…"
	line "HO-OH has returned"
	cont "to the TIN TOWER?"
	done

TeamRocketBaseB2FKogaPerhapsLugiaText:
	text "KOGA: HO-OH…"

	para "Then perhaps…"
	line "LUGIA, too…?"
	done

TeamRocketBaseB2FKogaProposesChallengeText:
	text "KOGA: JANINE, our"
	line "clan has protected"
	cont "the CLEAR BELL for"
	roll "centuries, but we"
	cont "knew a time would"
	roll "come when someone"
	cont "worthy of it would"
	roll "appear."

	para "HO-OH has revealed"
	line "itself to <PLAYER>"
	cont "and returned to"
	roll "TIN TOWER."

	para "This may be a sign"
	line "they are destined"
	cont "to receive the"
	roll "CLEAR BELL."

	para "We should test"
	line "them."

	para "JANINE: If you say"
	line "so, then we shall"
	cont "test them."
	done

TeamRocketBaseB2FJanineExplainsChallengeText:
	text "JANINE: <PLAYER>,"
	line "find us somewhere"
	cont "within this den."

	para "Only then will"
	line "we grant you the"
	cont "CLEAR BELL."
	done

TeamRocketBaseB2FApproachJanineMovement:
	step UP
	step UP
TeamRocketBaseB2FFourStepsUpMovement:
	step UP
	step UP
TeamRocketBaseB2FTwoStepsUpMovement:
	step UP
TeamRocketBaseB2FOneStepUpMovement:
	step UP
	step_end

TeamRocketBaseB2FMovesDownMovement:
	step DOWN
	turn_head LEFT
	step_end

TeamRocketBaseB2FKogaApproachesPlayerMovement:
	step LEFT
	turn_head UP
	step_end

TeamRocketBaseB2FSlowStepLeftMovement:
	slow_step LEFT
	step_end

;TeamRocketBaseB2FOneStepRightMovement:
;	step RIGHT
;	step_end

TeamRocketBaseB2FSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

TeamRocketBaseB2FExitSceneMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

TeamRocketBaseB2FNinjaJoninScript:
	checkevent EVENT_PASSED_NINJA_CHALLENGE
	iffalse .ChallengeInProgress
	jumptextfaceplayer TeamRocketBaseB2FNinjaJoninImpressedText

.ChallengeInProgress
	jumptextfaceplayer TeamRocketBaseB2FNinjaJoninChallengeText

TeamRocketBaseB2FNinjaJoninImpressedText:
	text "JONIN: You have"
	line "been accepted by"
	cont "both JANINE and"
	roll "MASTER KOGA."

	para "You are welcome"
	line "here any time."
	done

TeamRocketBaseB2FNinjaJoninChallengeText:
	text "JONIN: Good luck."
	done

TrainerNinjaGenin:
	trainer NINJA, GENIN, EVENT_BEAT_NINJA_GENIN, NinjaChallengeSeenText, NinjaGeninBeatenText, 0, .Script
.Script:
;	endifjustbattled
	checkevent EVENT_PASSED_NINJA_CHALLENGE
	iffalse TeamRocketBaseB2FNotWhoYouAreLookingFor
	jumptextfaceplayer NinjaGeninAfterBattleText

;NinjaChallengeSeenText:
;	text "We have orders to"
;	line "battle you if you"
;	cont "talk to us!"
;	done

NinjaGeninBeatenText:
	text "I didn't stand a"
	line "chance."
	done

NinjaGeninAfterBattleText:
	text "I want to get on"
	line "the security team,"
	cont "so I'm working my"
	roll "way up the ranks."
	done

TrainerNinjaChunin:
	trainer NINJA, CHUNIN, EVENT_BEAT_NINJA_CHUNIN, NinjaChallengeSeenText, NinjaChuninBeatenText, 0, .Script
.Script:
;	endifjustbattled
	checkevent EVENT_PASSED_NINJA_CHALLENGE
	iffalse TeamRocketBaseB2FNotWhoYouAreLookingFor
	jumptextfaceplayer NinjaChuninAfterBattleText

;NinjaChallengeSeenText:
;	text "We have orders to"
;	line "battle you if you"
;	cont "talk to us!"
;	done

NinjaChuninBeatenText:
	text "I followed my"
	line "orders."
	done

NinjaChuninAfterBattleText:
	text "I must train hard"
	line "and challenge you"
	cont "again to regain my"
	roll "honor!"
	done

TeamRocketBaseB2FNotWhoYouAreLookingFor:
	jumptextfaceplayer TeamRocketBaseB2FNotWhoYouAreLookingForText
TeamRocketBaseB2FNotWhoYouAreLookingForText:
	text "I'm not who you"
	line "are looking for."
	done

NinjaChallengeSeenText:
	text "We have orders to"
	line "battle you if you"
	cont "talk to us!"
	done

; flavor ninjas
TeamRocketBaseB2FBushNinjaScript:
	faceplayer
	opentext
	writetext TeamRocketBaseB2FConcealmentText
	waitbutton
	closetext
	applymovement TEAMROCKETBASEB2F_BUSH_NINJA, TeamRocketBaseB2FEnterBushMovement
	disappear TEAMROCKETBASEB2F_BUSH_NINJA
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

TeamRocketBaseB2FConcealmentText:
	text "Concealment is an"
	line "important skill."

	para "I'm practicing."
	done

TeamRocketBaseB2FEnterBushMovement:
	big_step UP
	rock_smash 6
	step_end

TeamRocketBaseB2FHiddenNinja1:
	conditional_event EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, TeamRocketBaseB1FHiddenNinja

TeamRocketBaseB2FSpeedNinja1Script:
	faceplayer
	opentext
	writetext TeamRocketBaseB2FSpeedText
	waitbutton
	closetext
	playsound SFX_CUT
	applymovement TEAMROCKETBASEB2F_SPEED_NINJA1, MahoganyMart1FRockSmashMovement2
	disappear TEAMROCKETBASEB2F_SPEED_NINJA1
	appear TEAMROCKETBASEB2F_SPEED_NINJA2
	sjump FinishSpeedNinja

TeamRocketBaseB2FSpeedNinja2Script:
	faceplayer
	opentext
	writetext TeamRocketBaseB2FSpeedText
	waitbutton
	closetext
	playsound SFX_CUT
	applymovement TEAMROCKETBASEB2F_SPEED_NINJA2, MahoganyMart1FRockSmashMovement2
	disappear TEAMROCKETBASEB2F_SPEED_NINJA2
	appear TEAMROCKETBASEB2F_SPEED_NINJA1
;	sjump FinishSpeedNinja
	; fallthrough
FinishSpeedNinja:
	appear TEAMROCKETBASEB2F_SPEED_M
	applymovement TEAMROCKETBASEB2F_SPEED_M, MahoganyMart1FRockSmashMovement2
	disappear TEAMROCKETBASEB2F_SPEED_M
	end

TeamRocketBaseB2FSpeedText:
	text "Speed is an"
	line "important skill."

	para "I'm practicing."
	done

TeamRocketBaseB2FKnowledgeNinjaScript:
	jumptextfaceplayer TeamRocketBaseB2FKnowledgeText
TeamRocketBaseB2FKnowledgeText:
	text "Knowledge is an"
	line "important skill."

	para "I'm reading."
	done

TeamRocketBaseB2FAccountantScript:
	jumptextfaceplayer TeamRocketBaseB2FAccountantText
TeamRocketBaseB2FAccountantText:
	text "Who am I?"

	para "I'm just the"
	line "CLAN's accountant."
	done

TeamRocketBaseB2FBookshelf:
	jumptext TeamRocketBaseB2FBookshelfText
TeamRocketBaseB2FBookshelfText:
	text "It's full of very"
	line "old books."
	done

TeamRocketBaseB2FComputer:
	jumptext TeamRocketBaseB2FTaxesText
TeamRocketBaseB2FTaxesText:
	text "It's the NINJA"
	line "CLAN's taxes."
	done

TeamRocketBaseB2FHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_TEAM_ROCKET_BASE_B2F_HIDDEN_FULL_HEAL

TeamRocketBaseB2FTMThief:
	itemball TM_THIEF

TeamRocketBaseB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 14, TEAM_ROCKET_BASE_B1F, 2
	warp_event  3,  2, TEAM_ROCKET_BASE_B3F, 1
	warp_event 27,  2, TEAM_ROCKET_BASE_B3F, 2
	warp_event  3,  6, TEAM_ROCKET_BASE_B3F, 3
	warp_event 27, 14, TEAM_ROCKET_BASE_B3F, 4

	def_coord_events
;	coord_event 14, 13, SCENE_TEAMROCKETBASEB2F_MEET_JANINE, RocketBaseB2FMeetJanineScript1
;	coord_event 14, 14, SCENE_TEAMROCKETBASEB2F_MEET_JANINE, RocketBaseB2FMeetJanineScript2

	def_bg_events
	bg_event 21,  9, BGEVENT_IFSET, TeamRocketBaseB2FHiddenNinja1
	bg_event  8,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event  9,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 10,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 11,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 18,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 19,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
;	bg_event 20,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 21,  3, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 26,  7, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 27,  7, BGEVENT_READ, TeamRocketBaseB2FBookshelf
	bg_event 25,  8, BGEVENT_UP, TeamRocketBaseB2FComputer
	bg_event 24,  5, BGEVENT_ITEM, TeamRocketBaseB2FHiddenFullHeal

	def_object_events
	object_event 15,  6, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_JANINE
	object_event 15, 12, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B2F_KOGA
	object_event 15,  7, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_NINJA_SECURITY_NINJAS
	object_event 14,  8, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_NINJA_SECURITY_NINJAS
	object_event 14, 11, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerNinjaJonin, EVENT_TEAM_ROCKET_BASE_B2F_JANINE
	object_event 14,  6, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB2FNinjaJoninScript, EVENT_TEAM_ROCKET_BASE_B2F_JONIN
; concealment
	object_event 21, 10, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB2FBushNinjaScript, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
; speed
	object_event  7,  9, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB2FSpeedNinja1Script, EVENT_TEAM_ROCKET_BASE_B2F_SPEED_NINJA1
	object_event 11,  9, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB2FSpeedNinja2Script, EVENT_TEAM_ROCKET_BASE_B2F_SPEED_NINJA2
	object_event  9,  9, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_NINJA_SECURITY_NINJAS
; knowledge
	object_event 20,  4, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB2FKnowledgeNinjaScript, -1
; accounting
	object_event 24,  9, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TeamRocketBaseB2FAccountantScript, -1
; trainers
	object_event 25, 13, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 0, TrainerNinjaGenin, -1
	object_event  4,  1, SPRITE_NINJA, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 0, TrainerNinjaChunin, -1
; TM_THIEF
	object_event  3, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB2FTMThief, EVENT_TEAM_ROCKET_BASE_B2F_TM_THIEF

;.GrayOverTreeOBPalette