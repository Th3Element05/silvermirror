	object_const_def
	const RADIOTOWER4F_BLUE
	const RADIOTOWER4F_OAK
	const RADIOTOWER4F_ROCKET
	const RADIOTOWER4F_ELECTRODE
	const RADIOTOWER4F_OFFICER
	const RADIOTOWER4F_MARY

RadioTower4F_MapScripts:
	def_scene_scripts
	scene_script RadioTower4FNoop1Scene, SCENE_RADIOTOWER4F_NOOP
	scene_script RadioTower4FNoop2Scene, SCENE_RADIOTOWER4F_RECORDING
	scene_script RadioTower4FNoop3Scene, SCENE_RADIOTOWER4F_FANATIC

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RadioTower4FFacingCallback

RadioTower4FFacingCallback:
	checkscene
	ifnotequal SCENE_RADIOTOWER4F_RECORDING, .End
	disappear RADIOTOWER4F_MARY
.End
	endcallback

RadioTower4FNoop1Scene:
RadioTower4FNoop2Scene:
RadioTower4FNoop3Scene:
	end

RadioTower4FRecordingInProgress:
	opentext
	writetext RadioTower4FRecordingInProgressText
	waitbutton
	closetext
	applymovement PLAYER, RadioTower4FOneStepUpMovement
	end

RadioTower4FRecordingInProgressText:
	text "They're recording"
	line "their radio show."

	para "It would be rude"
	line "to interrupt."
	done

RadioTower4FFanaticEncounterMovePlayer:
	showemote EMOTE_SHOCK, RADIOTOWER4F_BLUE, 20
	opentext
	writetext RadioTower4FBlue_HeyPlayerText
	waitbutton
	closetext
	applymovement PLAYER, RadioTower4FOneStepUpMovement
	turnobject PLAYER, LEFT
	; fallthrough

RadioTower4FBlueScript:
	turnobject RADIOTOWER4F_BLUE, RIGHT
	opentext
	writetext RadioTower4FBlue_CrazyText
	yesorno
	iffalse .NotReadyYet
	writetext RadioTower4FBlue_LetsGoText
	waitbutton
	closetext
	follow RADIOTOWER4F_BLUE, PLAYER
	applymovement RADIOTOWER4F_BLUE, RadioTower4FFourStepsDownMovement
	stopfollow
	turnobject PLAYER, RIGHT
	turnobject RADIOTOWER4F_BLUE, RIGHT
	turnobject RADIOTOWER4F_ROCKET, LEFT
	playmusic MUSIC_ROCKET_ENCOUNTER
	showemote EMOTE_SHOCK, RADIOTOWER4F_ROCKET, 20
	opentext
	writetext RocketFanaticSeenText
	waitbutton
	closetext
	winlosstext RocketFanaticBeatenText, 0
	loadtrainer EXECUTIVEM, FANATIC
	startbattle
	appear RADIOTOWER4F_OFFICER
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_FANATIC
	pause 10
	showemote EMOTE_BOLT, RADIOTOWER4F_ROCKET, 20
	turnobject RADIOTOWER4F_ROCKET, DOWN
	opentext
	writetext RocketFanaticAfterBattleText
	waitbutton
	closetext
	playsound SFX_FAINT ;ball poof?
	applymovement RADIOTOWER4F_ELECTRODE, RadioTower4FRockSmashMovement
	disappear RADIOTOWER4F_ELECTRODE
	waitsfx
	opentext
	writetext RadioTower4FBlue_NopeText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, RADIOTOWER4F_ROCKET, 20
	opentext
	writetext RadioTower4FFanatic_RiseAgainText
	waitbutton
	closetext
	follow RADIOTOWER4F_BLUE, PLAYER
	applymovement RADIOTOWER4F_BLUE, RadioTower4FOneStepDownMovement
	stopfollow
	turnobject PLAYER, RIGHT
	turnobject RADIOTOWER4F_BLUE, RIGHT
	applymovement RADIOTOWER4F_OFFICER, RadioTower4FThreeStepsDownMovement
	turnobject RADIOTOWER4F_OFFICER, RIGHT
	opentext
	writetext RadioTower4FOfficer_AfterBattleText
	waitbutton
	closetext
	turnobject RADIOTOWER4F_ROCKET, RIGHT
	playsound SFX_EGG_CRACK
	waitsfx
	pause 10
	follow RADIOTOWER4F_ROCKET, RADIOTOWER4F_OFFICER
	applymovement RADIOTOWER4F_ROCKET, RadioTower4FExitSceneMovement
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER4F_ROCKET
	applymovement RADIOTOWER4F_OFFICER, RadioTower4FOneStepUpMovement
	disappear RADIOTOWER4F_OFFICER
	setscene SCENE_RADIOTOWER4F_NOOP
	sjump RadioTower4FOakScript

.NotReadyYet:
	closetext
	applymovement PLAYER, RadioTower4FPlayerNotReadyMovement
	end

RadioTower4FBlue_HeyPlayerText:
	text "<RIVAL>: <PLAYER>!"
	done

RadioTower4FBlue_CrazyText:
	text "<RIVAL>: That guy"
	line "is crazy!"

	para "He said he'll tell"
	line "his ELECTRODE to"
	cont "use SELFDESTRUCT!"

	para "You distract him"
	line "while I take out"
	cont "the ELECTRODE."

	para "Are you ready?"
	done

RadioTower4FBlue_LetsGoText:
	text "<RIVAL>: Let's go!"
	done

RocketFanaticSeenText:
	text "FANATIC: Everyone"
	line "says TEAM ROCKET"
	cont "was disbanded!"

	para "They're wrong!"
	line "All wrong!"

	para "TEAM ROCKET can't"
	line "be gone!"
	cont "I'm still here!"

	para "I'll show them!"
	line "I'll make sure"
	cont "everyone knows!"

	para "TEAM ROCKET is"
	line "unbeatable!"
	done

RocketFanaticBeatenText:
	text "FANATIC: Ha!"
	line "Ha ha ha ha ha!"
	done

RocketFanaticAfterBattleText:
	text "FANATIC: Ha ha ha!"
	line "Ha ha HA HA HA!"

	para "ELECTRODE!"
	line "SELFDESTRUCT!"
	done

RadioTower4FBlue_NopeText:
	text "<RIVAL>: Nope."
	done

RadioTower4FFanatic_RiseAgainText:
	text "FANATIC: No! NO!"
	line "How can this be?"

	para "Is TEAM ROCKET"
	line "really defeated?"

	para "NO!"

	para "TEAM ROCKET will"
	line "rise again!"

	para "You'll see!"
	line "You'll all see!"
	done

RadioTower4FOfficer_AfterBattleText:
	text "OFFICER: Ok, pal."
	line "We'll see…"

	para "For now, you're"
	line "coming with me."
	done

RadioTower4FOakScript:
	special FadeOutMusic
	waitsfx
	playmusic MUSIC_PROF_OAK
	pause 10
	applymovement RADIOTOWER4F_OAK, RadioTower4FOneStepLeftMovement
	opentext
	writetext RadioTower4FOak_ThanksText
	waitbutton
	closetext
	applymovement RADIOTOWER4F_OAK, RadioTower4FOneStepDownMovement
	turnobject RADIOTOWER4F_OAK, LEFT
	opentext
	writetext RadioTower4FOak_ThanksBlueText
	promptbutton
	turnobject RADIOTOWER4F_OAK, RIGHT
	turnobject RADIOTOWER4F_MARY, LEFT
	writetext RadioTower4FOak_SorryMaryText
	waitbutton
	closetext
	applymovement RADIOTOWER4F_OAK, RadioTower4FTwoStepsUpMovement
	applymovement RADIOTOWER4F_OAK, RadioTower4FExitSceneMovement
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER4F_OAK
	clearevent EVENT_OAKS_LAB_OAK
	waitsfx
	playmusic MUSIC_GOLDENROD_CITY
	applymovement RADIOTOWER4F_BLUE, RadioTower4FBlueApproachesPlayerMovement
	opentext
	writetext RadioTower4FBlue_GiveWaterfallText
	promptbutton
	verbosegiveitem TM_WATERFALL
	setflag ENGINE_CAN_USE_WATERFALL
	setevent EVENT_GOT_HM07_WATERFALL
	setevent EVENT_OAK_REMIND_ABOUT_WATERFALL
	writetext RadioTower4FBlue_ExplainWaterfallText
	waitbutton
	closetext
	turnobject RADIOTOWER4F_BLUE, RIGHT
	pause 10
	showemote EMOTE_QUESTION, RADIOTOWER4F_BLUE, 20
	opentext
	writetext RadioTower4FBlue_PonderingText
	promptbutton
	turnobject RADIOTOWER4F_BLUE, LEFT
	writetext RadioTower4FBlue_GymLeaderText
	waitbutton
	closetext
	applymovement RADIOTOWER4F_BLUE, RadioTower4FOneStepUpMovement
	applymovement RADIOTOWER4F_BLUE, RadioTower4FExitSceneMovement
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER4F_BLUE
	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	setevent EVENT_CLEARED_RADIO_TOWER
	clearflag ENGINE_ROCKETS_IN_RADIO_TOWER
;	clearevent EVENT_RADIO_TOWER_CIVILIANS_AFTER ;cleared after leaving radio tower
;	clearevent EVENT_RADIO_TOWER_CIVILIANS       ;cleared after leaving radio tower
	end

RadioTower4FOak_ThanksText:
	text "OAK: <PLAYER>!"
	line "That was amazing!"

	para "It's no wonder"
	line "you're the #MON"
	cont "LEAGUE CHAMPION."
	done

RadioTower4FOak_ThanksBlueText:
	text "OAK: <RIVAL>,"
	line "that was very well"
	cont "done!"

	para "You've always been"
	line "a great trainer,"
	cont "but today I saw"
	cont "something more in"
	cont "you."

	para "It turns out there"
	line "is an opening for"
	cont "a GYM LEADER in"
	cont "VIRIDIAN CITY."

	para "I think you should"
	line "apply to lead the"
	cont "GYM there."

	para "I'll put in a good"
	line "word for you with"
	cont "#MON LEAGUE."
	done

RadioTower4FOak_SorryMaryText:
	text "OAK: Sorry, MARY."

	para "We will need to"
	line "finish recording"
	cont "another time."

	para "This has all been"
	line "too much for me."

	para "I need to get back"
	line "to my lab to rest."
	done

RadioTower4FBlue_GiveWaterfallText:
	text "<RIVAL>: Thanks"
	line "for the assist."

	para "I couldn't have"
	line "done that alone."

	para "Please, take this."
	done

RadioTower4FBlue_ExplainWaterfallText:
	text "<RIVAL>: That HM"
	line "teaches WATERFALL."

	para "LAPRAS can use"
	line "that technique to"
	cont "climb waterfalls!"

	para "You should try it"
	line "next time you use"
	cont "the LAPRAS PAGER."

	para "DARK CAVE has a"
	line "waterfall in it."

	para "There's a way in"
	line "from ROUTE 31."
	done

RadioTower4FBlue_PonderingText:
	text "<RIVAL>: Hmm…"

	para "Could I really be"
	line "a GYM LEADER?"
	done

RadioTower4FBlue_GymLeaderText:
	text "<RIVAL>: GRAMPS"
	line "told me to apply"
	cont "to be VIRIDIAN's"
	cont "GYM LEADER."

	para "Maybe I will…"

	para "Thanks again,"
	line "<PLAYER>!"

	para "See ya later!"
	done

RadioTower4FOneStepUpMovement:
	step UP
	step_end

RadioTower4FPlayerNotReadyMovement:
	step RIGHT
	step_end

RadioTower4FFourStepsDownMovement:
	step DOWN
RadioTower4FThreeStepsDownMovement:
	step DOWN
	step DOWN
RadioTower4FOneStepDownMovement:
	step DOWN
	step_end

RadioTower4FRockSmashMovement:
	rock_smash 10
	step_end

RadioTower4FExitSceneMovement:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
RadioTower4FTwoStepsUpMovement:
	step UP
	step UP
	step_end

RadioTower4FOneStepLeftMovement:
	step LEFT
	step_end

RadioTower4FBlueApproachesPlayerMovement:
	step RIGHT
	step UP
	turn_head LEFT
	step_end

; -1
RadioTower4FDJMaryScript:
	checkevent EVENT_GOT_BRIGHTPOWDER_FROM_MARY
	iftrue .GotBrightPowder
	checkevent EVENT_CLEARED_RADIO_TOWER
	iffalse .BeforeEvent
	faceplayer
	opentext
	writetext RadioTower4FDJMaryText_ClearedRockets
	promptbutton
	verbosegiveitem BRIGHTPOWDER
	iffalse .NoRoom
	writetext RadioTower4FDJMaryText_GiveBrightPowder
	setevent EVENT_GOT_BRIGHTPOWDER_FROM_MARY
	waitbutton
.NoRoom
	closetext
	end

.BeforeEvent:
	jumptextfaceplayer RadioTower4FDJMaryText_Default

.GotBrightPowder:
	jumptextfaceplayer RadioTower4FDJMaryText_Default

;RadioTower4FDJMaryText:
;	text "MARY: Why? Why do"
;	line "I have to suffer"
;	cont "through this?"
;
;	para "MEOWTH, help me!"
;	done

RadioTower4FDJMaryText_ClearedRockets:
	text "MARY: Oh! You're"
	line "my little savior!"

	para "Will you take this"
	line "as my thanks?"
	done

RadioTower4FDJMaryText_GiveBrightPowder:
	text "MARY: When a"
	line "#MON holds that"
	cont "it lowers the"
	cont "foe's ACCURACY."
	done

RadioTower4FDJMaryText_Default:
	text "MARY: Please tune"
	line "in to PROF.OAK's"
	cont "#MON TALK."
	done

RadioTowerMeowth:
	opentext
	writetext RadioTowerMeowthText
	cry MEOWTH
	waitbutton
	closetext
	end

RadioTowerMeowthText:
	text "MEOWTH: Meowth…"
	done

RadioTower4FFisherScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iffalse .RuinsOfAlph
	jumptextfaceplayer RadioTower4FFisher_DirectorText

.RuinsOfAlph
	jumptextfaceplayer RadioTower4FFisherText

RadioTower4FFisher_DirectorText:
	text "The DIRECTOR?"

	para "His office is up"
	line "one more floor."
	done

RadioTower4FFisherText:
	text "I listened to the"
	line "radio while I was"
	cont "at the RUINS."

	para "I heard a strange"
	line "broadcast there."
	done

RadioTower4FProductionSign:
	jumptext RadioTower4FProductionSignText
RadioTower4FProductionSignText:
	text "4F PRODUCTION"
	done

RadioTower4FStudio2Sign:
	jumptext RadioTower4FStudio2SignText
RadioTower4FStudio2SignText:
	text "4F STUDIO 2"
	done

RadioTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_5F, 1 ;1
	warp_event  9,  0, RADIO_TOWER_3F, 2 ;2
	warp_event 12,  0, RADIO_TOWER_5F, 2 ;3
	warp_event 17,  0, RADIO_TOWER_3F, 3 ;4

	def_coord_events
	coord_event 12,  3, SCENE_RADIOTOWER4F_RECORDING, RadioTower4FRecordingInProgress
	coord_event 13,  3, SCENE_RADIOTOWER4F_RECORDING, RadioTower4FRecordingInProgress
	coord_event 13,  2, SCENE_RADIOTOWER4F_FANATIC, RadioTower4FFanaticEncounterMovePlayer

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, RadioTower4FProductionSign
	bg_event 15,  0, BGEVENT_READ, RadioTower4FStudio2Sign

	def_object_events
	object_event 12,  1, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower4FBlueScript, EVENT_RADIO_TOWER_4F_BLUE
	object_event 14,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 13,  4, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 13,  5, SPRITE_ELECTRODE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_4F_OFFICER
	object_event 14,  6, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower4FDJMaryScript, -1
	object_event 12,  7, SPRITE_MEOWTH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RadioTowerMeowth, -1
	object_event  6,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower4FFisherScript, -1
	object_event 14,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_4F_OAK
	object_event 14,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_4F_OAK
;	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM10, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event 12,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event  4,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerScientistRich, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
