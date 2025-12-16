	object_const_def

AzaleaGym_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaGymBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BUGSY
	iftrue .FightDone
	writetext BugsyText_INeverLose
	waitbutton
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	opentext
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
;	readvar VAR_BADGES
;	scall AzaleaGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM75_FURY_CUTTER
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_MEGANDPEG
	setevent EVENT_BEAT_BUG_CATCHER_FINLEY
	setevent EVENT_BEAT_BUG_CATCHER_JON
	setevent EVENT_BEAT_BUG_CATCHER_ABEL
	writetext BugsyText_HiveBadgeSpeech
	promptbutton
	verbosegiveitem TM_FURY_CUTTER
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM75_FURY_CUTTER
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetext
	end

.GotFuryCutter:
	writetext BugsyText_BugMonsAreDeep
	waitbutton
.NoRoomForFuryCutter:
	closetext
	end

;AzaleaGymActivateRockets:
;	ifequal 7, .RadioTowerRockets
;	ifequal 6, .GoldenrodRockets
;	end

;.GoldenrodRockets:
;	jumpstd GoldenrodRocketsScript

;.RadioTowerRockets:
;	jumpstd RadioTowerRocketsScript

BugsyText_INeverLose:
	text "I'm BUGSY!"

	para "I never lose when"
	line "it comes to bug"
	cont "#MON."

	para "My research is"
	line "going to make me"
	cont "the authority on"
	cont "bug #MON!"

	para "Let me demonstrate"
	line "what I've learned"
	cont "from my studies."
	done

BugsyText_ResearchIncomplete:
	text "Whoa, amazing!"
	line "You're an expert"
	cont "on #MON!"

	para "My research isn't"
	line "complete yet."

	para "OK, you win. Take"
	line "this BADGE."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> received"
	line "the HIVEBADGE."
	done

BugsyText_HiveBadgeSpeech:
	text "Here, I also want"
	line "you to have this."
	done

BugsyText_FuryCutterSpeech:
	text "TM75 contains"
	line "FURY CUTTER."

	para "If you don't miss,"
	line "it gets stronger"
	cont "every turn."

	para "The longer your"
	line "battle goes, the"
	cont "stronger it gets."
	done

BugsyText_BugMonsAreDeep:
	text "Bug #MON have"
	line "many mysteries to"
	line "explore."

	para "Study your favor-"
	line "ites thoroughly."
	done

TrainerBugCatcherAbel:
	trainer BUG_CATCHER, ABEL, EVENT_BEAT_BUG_CATCHER_ABEL, BugCatcherAbelSeenText, BugCatcherAbelBeatenText, 0, .AfterScript
.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherAbelAfterBattleText
	waitbutton
	closetext
	end

BugCatcherAbelSeenText:
	text "My #MON are"
	cont "pretty tough!"
	done

BugCatcherAbelBeatenText:
	text "Urrgggh!"
	done

BugCatcherAbelAfterBattleText:
	text "I guess I should"
	line "teach them better"
	cont "moves…"
	done

TrainerBugCatcherFinley:
	trainer BUG_CATCHER, FINLEY, EVENT_BEAT_BUG_CATCHER_FINLEY, BugCatcherFinleySeenText, BugCatcherFinleyBeatenText, 0, .AfterScript
.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherFinleyAfterBattleText
	waitbutton
	closetext
	end

BugCatcherFinleySeenText:
	text "Bug #MON evolve"
	line "young. So they get"
	cont "stronger quickly!"
	done

BugCatcherFinleyBeatenText:
	text "Just evolving"
	line "isn't enough!"
	done

BugCatcherFinleyAfterBattleText:
	text "#MON become"
	line "stronger if they"
	cont "evolve. Really!"
	done

TrainerBugCatcherJon:
	trainer BUG_CATCHER, JON, EVENT_BEAT_BUG_CATCHER_JON, BugCatcherJonSeenText, BugCatcherJonBeatenText, 0, .AfterScript
.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherJonAfterBattleText
	waitbutton
	closetext
	end

BugCatcherJonSeenText:
	text "Bug #MON are"
	line "cool and tough!"

	para "I'll prove it to"
	line "you!"
	done

BugCatcherJonBeatenText:
	text "You proved how"
	line "tough you are…"
	done

BugCatcherJonAfterBattleText:
	text "They're so cool,"
	line "but most girls"
	cont "don't like bug"
	cont "#MON."

	para "I don't know why…"
	done

TrainerTwinsMegAndPeg1:
	trainer TWINS, MEGANDPEG, EVENT_BEAT_TWINS_MEGANDPEG, TwinsMegAndPegSeenText, TwinsMegAndPegBeatenText, 0, .AfterScript
.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsMegAndPeg1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsMegAndPeg2:
	trainer TWINS, MEGANDPEG, EVENT_BEAT_TWINS_MEGANDPEG, TwinsMegAndPegSeenText, TwinsMegAndPegBeatenText, 0, .AfterScript
.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsMegAndPeg2AfterBattleText
	waitbutton
	closetext
	end

TwinsMegAndPegSeenText:
	text "MEG: Hi! Are you"
	line "challenging the"
	cont "LEADER? No way!"

	para "PEG: If you want"
	line "see the LEADER,"
	cont "we come first!"
	done

TwinsMegAndPegBeatenText:
	text "MEG & PEG: Oh,"
	line "double goodness!"
	done

TwinsMegAndPeg1AfterBattleText:
	text "MEG: You're"
	line "really strong!"
	done

TwinsMegAndPeg2AfterBattleText:
	text "PEG: Our precious"
	line "bug #MON lost!"
	cont "What a shame."
	done

AzaleaGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuideWinScript
	opentext
	writetext AzaleaGymGuideText
	waitbutton
	closetext
	end

.AzaleaGymGuideWinScript:
	opentext
	writetext AzaleaGymGuideWinText
	waitbutton
	closetext
	end

AzaleaGymGuideText:
	text "Yo, champ!"

	para "BUGSY's young, but"
	line "his knowledge of"
	cont "bug #MON is for"
	cont "real."

	para "Remember… Bug"
	line "#MON don't like"
	cont "fire."

	para "Flying-type moves"
	line "are super-effec-"
	cont "tive too."
	done

AzaleaGymGuideWinText:
	text "Well done! That"
	line "was a great clash"
	cont "of talented young"
	cont "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done

AzaleaGymStatue:
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd GymStatue3Script
;	checkflag ENGINE_HIVEBADGE
;	iftrue .Beaten
;	jumpstd GymStatue1Script
;.Beaten:
;	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
;	jumpstd GymStatue2Script

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, AZALEA_TOWN, 5
	warp_event  5, 15, AZALEA_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 13, BGEVENT_READ, AzaleaGymStatue

	def_object_events
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, -1
	object_event  9,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAbel, -1 ;josh
	object_event  4,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherFinley, -1 ;benny
	object_event  1,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJon, -1 ;al
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsMegAndPeg1, -1 ;amyandmay
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsMegAndPeg2, -1 ;amyandmay
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaGymGuideScript, -1
