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
	checkevent EVENT_GOT_TM81_X_SCISSOR
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_MEGANDPEG
	setevent EVENT_BEAT_BUG_CATCHER_FINLEY
	setevent EVENT_BEAT_BUG_CATCHER_JON
	setevent EVENT_BEAT_BUG_CATCHER_ABEL
	writetext BugsyText_HiveBadgeSpeech
	promptbutton
	verbosegiveitem TM_X_SCISSOR
;	iffalse .NoRoomForXScissor
	setevent EVENT_GOT_TM81_X_SCISSOR
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetext
	end

.GotFuryCutter:
	writetext BugsyText_BugMonsAreDeep
	waitbutton
;.NoRoomForXScissor:
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
	ntag "BUGSY:"
	text "I'm BUGSY!"

	para "I never lose when"
	line "it comes to bug"
	cont "#MON."

	para "My research is"
	line "going to make me"
	cont "the authority on"
	roll "bug #MON!"

	para "Let me demonstrate"
	line "what I've learned"
	cont "from my studies."
	done

BugsyText_ResearchIncomplete:
	ntag "BUGSY:"
	text "Whoa, amazing!"
	line "You're an expert"
	cont "on #MON!"

	para "My research isn't"
	line "complete yet."

	para "Okay, you win."
	line "Take this BADGE."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> received"
	line "the HIVEBADGE."
	done

BugsyText_HiveBadgeSpeech:
	ntag "BUGSY:"
	text "Here, I also want"
	line "you to have this."
	done

BugsyText_FuryCutterSpeech:
	ntag "BUGSY:"
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
	ntag "BUGSY:"
	text "Bug #MON have"
	line "many mysteries to"
	cont "explore."

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
	ntag "BUGCATCHER:"
	text "My #MON are"
	cont "pretty tough!"
	done

BugCatcherAbelBeatenText:
	ntag "ABEL:"
	text "Urrgggh!"
	done

BugCatcherAbelAfterBattleText:
	ntag "BUGCATCHER:"
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
	ntag "BUGCATCHER:"
	text "Bug #MON evolve"
	line "young. So they get"
	cont "stronger quickly!"
	done

BugCatcherFinleyBeatenText:
	ntag "FINLEY:"
	text "Just evolving"
	line "isn't enough!"
	done

BugCatcherFinleyAfterBattleText:
	ntag "BUGCATCHER:"
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
	ntag "BUGCATCHER:"
	text "Bug #MON are"
	line "cool and tough!"

	para "I'll prove it to"
	line "you!"
	done

BugCatcherJonBeatenText:
	ntag "JON:"
	text "You proved how"
	line "tough you are…"
	done

BugCatcherJonAfterBattleText:
	ntag "BUGCATCHER:"
	text "They're so cool,"
	line "but most girls"
	cont "don't like bug"
	roll "#MON."

	para "I don't know why…"
	done

TrainerTwinsMegAndPeg1:
	trainer TWINS, MEGANDPEG, EVENT_BEAT_TWINS_MEGANDPEG, TwinsMegAndPeg1SeenText, TwinsMegAndPegBeatenText, 0, .AfterScript
.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsMegAndPeg1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsMegAndPeg2:
	trainer TWINS, MEGANDPEG, EVENT_BEAT_TWINS_MEGANDPEG, TwinsMegAndPeg1SeenText, TwinsMegAndPegBeatenText, 0, .AfterScript
.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsMegAndPeg2AfterBattleText
	waitbutton
	closetext
	end

TwinsMegAndPeg1SeenText:
	ntag "TWIN:"
	text "You're planning on"
	line "challenging BUGSY?"
	cont "No way!"

	para "If you want to"
	line "challenge BUSGY,"
	cont "we come first!"
	done

TwinsMegAndPegBeatenText:
	ntag "MEG&PEG:"
	text "Oh!"
	line "Double darn!"
	done

TwinsMegAndPeg1AfterBattleText:
	ntag "TWIN:"
	text "You're really"
	line "strong!"
	done

TwinsMegAndPeg2AfterBattleText:
	ntag "TWIN:"
	text "Our precious bug"
	line "#MON lost!"
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
	ntag "GUIDE:"
	text "Yo, CHAMP!"

	para "BUGSY's young, but"
	line "his knowledge of"
	cont "bug #MON is for"
	roll "real."

	para "Remember… Bug"
	line "#MON don't like"
	cont "fire."

	para "Flying-type moves"
	line "are super-effec-"
	cont "tive too."
	done

AzaleaGymGuideWinText:
	ntag "GUIDE:"
	text "Well done! That"
	line "was a great clash"
	cont "of talented young"
	roll "trainers."

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


; rematch
AzaleaGymBugsyRematchScript:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .GreatBattle
	faceplayer
	opentext
	writetext BugsyAskRematchText
	yesorno
	iffalse .norematch
.startbattle
	closetext
	winlosstext BugsyRematchWinLossText, 0
	loadtrainer BUGSY, BUGSY2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	opentext
.norematch
	writetext BugsyRematchAfterBattleText
	waitbutton
	closetext
	end

.GreatBattle
	jumptextfaceplayer BugsyRematchGreatBattleText

BugsyAskRematchText:
	ntag "BUGSY:"
	text "Welcome back!"

	para "Are you ready to"
	cont "battle?"
	done

BugsyRematchWinLossText:
	ntag "BUGSY:"
	text "Squashed again!"
	done

BugsyRematchAfterBattleText:
	ntag "BUGSY:"
	text "Come back for a"
	line "battle, any time!"
	done

BugsyRematchGreatBattleText:
	ntag "BUGSY:"
	text "That was a great"
	line "battle!"
	done


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
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, EVENT_JOHTO_GYM_LEADERS
	object_event  9,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAbel, -1 ;josh
	object_event  4,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherFinley, -1 ;benny
	object_event  1,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJon, -1 ;al
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsMegAndPeg1, -1 ;amyandmay
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsMegAndPeg2, -1 ;amyandmay
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaGymGuideScript, -1
;
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyRematchScript, EVENT_JOHTO_LEADER_REMATCHES
