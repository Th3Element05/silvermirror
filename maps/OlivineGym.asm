	object_const_def
	const OLIVINEGYM_JASMINE
	const OLIVINEGYM_GYM_GUIDE

OlivineGym_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineGymJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JASMINE
	iftrue .FightDone
	writetext Jasmine_SteelTypeIntro
	waitbutton
	closetext
	winlosstext Jasmine_BetterTrainer, 0
	loadtrainer JASMINE, JASMINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
;	readvar VAR_BADGES
;	scall OlivineGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue .GotIronTail
	writetext Jasmine_BadgeSpeech
	promptbutton
	verbosegiveitem TM_IRON_TAIL
	iffalse .NoRoomForIronTail
	setevent EVENT_GOT_TM23_IRON_TAIL
	writetext Jasmine_IronTailSpeech
	waitbutton
	closetext
	end

.GotIronTail:
	writetext Jasmine_GoodLuck
	waitbutton
.NoRoomForIronTail:
	closetext
	end

;OlivineGymActivateRockets:
;	ifequal 7, .RadioTowerRockets
;	ifequal 6, .GoldenrodRockets
;	end

;.GoldenrodRockets:
;	jumpstd GoldenrodRocketsScript

;.RadioTowerRockets:
;	jumpstd RadioTowerRocketsScript

Jasmine_SteelTypeIntro:
;	text "…Thank you for"
;	line "your help at the"
;	cont "LIGHTHOUSE…"
;
;	para "But this is dif-"
;	line "ferent. Please"
;
;	para "allow me to intro-"
;	line "duce myself."
;
	text "I am JASMINE, a"
	line "GYM LEADER. I use"
	cont "the steel-type."

	para "…Do you know about"
	line "the steel-type?"

	para "It's a type that"
	line "was only recently"
	cont "discovered."

	para "…Um… May I begin?"
	done

Jasmine_BetterTrainer:
	text "…You are a better"
	line "trainer than me…"

	para "In accordance with"
	line "LEAGUE rules, I"
	cont "confer upon you"
	roll "this BADGE."
	done

Text_ReceivedMineralBadge:
	text "<PLAYER> received"
	line "the MINERALBADGE."
	done

Jasmine_BadgeSpeech:
;	text "MINERALBADGE"
;	line "raises #MON's"
;	cont "DEFENSE."
;
	text "…Um… Please take"
	line "this too…"
	done

Jasmine_IronTailSpeech:
	text "…You could use"
	line "that TM to teach"
	cont "IRON TAIL."
	done

Jasmine_GoodLuck:
	text "Um… I don't know"
	line "how to say this,"
	cont "but good luck…"
	done

OlivineGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_JASMINE
	iftrue .OlivineGymGuideWinScript
	opentext
	writetext OlivineGymGuideText
	waitbutton
	closetext
	end

.OlivineGymGuideWinScript:
	opentext
	writetext OlivineGymGuideWinText
	waitbutton
	closetext
	end

OlivineGymGuideText:
	text "Yo! CHAMP!"

	para "JASMINE uses the"
	line "newly discovered"
	cont "steel-type."

	para "I don't know very"
	line "much about it."
	done

OlivineGymGuideWinText:
	text "That was awesome."

	para "The steel-type,"
	line "huh?"

	para "That was a close"
	line "encounter of an"
	cont "unknown kind!"
	done

OlivineGymStatue:
	gettrainername STRING_BUFFER_4, JASMINE, JASMINE1
	jumpstd GymStatue3Script
;	checkflag ENGINE_MINERALBADGE
;	iftrue .Beaten
;	jumpstd GymStatue1Script
;.Beaten:
;	jumpstd GymStatue2Script

OlivineGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  7, 13, BGEVENT_READ, OlivineGymStatue

	def_object_events
	object_event  5,  1, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymJasmineScript, -1
	object_event  6, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuideScript, -1
