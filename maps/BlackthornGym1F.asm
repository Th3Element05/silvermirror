	object_const_def

BlackthornGym1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BlackthornGym1FBouldersCallback

BlackthornGym1FBouldersCallback:
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	iffalse .skip1
	changeblock 8, 2, $34 ; fallen boulder 1
.skip1
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	iffalse .skip2
	changeblock 2, 4, $31 ; fallen boulder 2
.skip2
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	iffalse .skip3
	changeblock 8, 6, $34 ; fallen boulder 3
.skip3
	endcallback

BlackthornGymClairScript:
	faceplayer
	opentext
;	checkflag ENGINE_RISINGBADGE
;	iftrue .AlreadyGotBadge
	checkevent EVENT_BEAT_CLAIR
	iftrue .FightDone
	writetext ClairIntroText
	waitbutton
	closetext
	winlosstext ClairWinText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CLAIR
	opentext
	writetext ClairText_AdmitDefeat
	promptbutton
	writetext Text_ReceivedRisingBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE
.FightDone:
	checkevent EVENT_GOT_TM72_DRAGONBREATH
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_COOLTRAINERF_LAYLA
	setevent EVENT_BEAT_COOLTRAINERM_ZANE
	setevent EVENT_BEAT_COOLTRAINERM_AXEL
	setevent EVENT_BEAT_COOLTRAINERF_IRIS
;	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	writetext ClairText_RisingBadgeSpeech
	promptbutton
	verbosegiveitem TM_DRAGONBREATH
;	iffalse .SpeechAfterTM ;.NoRoomForDragonbreath
	setevent EVENT_GOT_TM72_DRAGONBREATH
	writetext ClairText_DragonbreathSpeech
	promptbutton
.SpeechAfterTM
;.NoRoomForDragonbreath:
	checkevent EVENT_CLEARED_DRAGONS_DEN
	iftrue .AfterDragonsDen
	writetext ClairText_GoToDragonsDen
	waitbutton
	closetext
	setevent EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	clearevent EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	end

.AfterDragonsDen:
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	iftrue .FailedTest
	writetext ClairTextAfterDragonsDenPassedText
	waitbutton
	closetext
	end

.FailedTest
	writetext ClairTextAfterDragonsDenFailedText
	waitbutton
	closetext
	end

ClairIntroText:
	ntag "CLAIR:"
	text "Welcome to"
	line "BLACKTHORN GYM,"
	cont "the home of the"
	roll "Dragon Clan:"

	para "The world's best"
	line "dragon masters."

	para "As one of them,"
	line "I can hold my own"
	cont "against even the"
	roll "#MON LEAGUE's"
	cont "ELITE FOUR."

	para "Do you still want"
	line "to take me on?"

	para "…Fine."
	line "Let's do it!"
	done

ClairWinText:
	ntag "CLAIR:"
	text "I lost?"

	para "I don't believe"
	line "it. I've only ever"
	cont "lost to my cousin,"
	roll "LANCE."
	done

ClairText_AdmitDefeat:
	ntag "CLAIR:"
	text "I see, you bested"
	line "even LANCE…"

	para "You're the newest"
	line "#MON LEAGUE"
	cont "CHAMPION."

	para "I can't deny that"
	line "you beat me."

	para "You have earned"
	line "this BADGE."
	done

Text_ReceivedRisingBadge:
	text "<PLAYER> received"
	line "the RISINGBADGE."
	done

ClairText_RisingBadgeSpeech:
	ntag "CLAIR:"
	text "And, I think you"
	line "will can make good"
	cont "use of this."
	done

ClairText_DragonbreathSpeech:
	ntag "CLAIR:"
	text "That contains"
	line "DRAGONBREATH."

	para "It's an attack"
	line "that may paralyze"
	cont "the opponent."
	done

ClairText_GoToDragonsDen:
	ntag "CLAIR:"
	text "You've beaten me,"
	line "and even LANCE."

	para "I think you should"
	line "meet the elders of"
	cont "our clan."

	para "Their temple is in"
	line "the DRAGON's DEN,"
	cont "behind this gym."

	para "I will allow your"
	line "entry."
;
;	para "Go see them if you"
;	line "think you've got"
;	cont "what it takes."
	done

ClairTextAfterDragonsDenPassedText:
	ntag "CLAIR:"
	text "You met our elders"
	line "and passed their"
	cont "test…"

	para "You are a truly"
	line "exceptional #-"
	cont "MON trainer."
	done

ClairTextAfterDragonsDenFailedText:
	ntag "CLAIR:"
	text "You met our elders"
	line "and took their"
	cont "test…"

	para "That's a very rare"
	line "honor."
	done

TrainerCooltrainermZane:
	trainer COOLTRAINERM, ZANE, EVENT_BEAT_COOLTRAINERM_ZANE, CooltrainermZaneSeenText, CooltrainermZaneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainermZaneAfterBattleText
	waitbutton
	closetext
	end

CooltrainermZaneSeenText:
	text "My chance of"
	line "losing? Not even"
	cont "one percent!"
	done

CooltrainermZaneBeatenText:
	text "That's odd."
	done

CooltrainermZaneAfterBattleText:
	text "I know my short-"
	line "comings now."

	para "Thanks for showing"
	line "me!"
	done

TrainerCooltrainerfLayla:
	trainer COOLTRAINERF, LAYLA, EVENT_BEAT_COOLTRAINERF_LAYLA, CooltrainerfLaylaSeenText, CooltrainerfLaylaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLaylaAfterBattleText
	waitbutton
	closetext
	end

CooltrainerfLaylaSeenText:
	text "Dragons are sacred"
	line "#MON."

	para "They are full of"
	line "life energy."

	para "If you're not"
	line "serious, you won't"
	cont "be able to beat"
	roll "them."
	done

CooltrainerfLaylaBeatenText:
	text "Way to go!"
	done

CooltrainerfLaylaAfterBattleText:
	text "Dragons are weak"
	line "against dragon-"
	cont "type moves."
	done

BlackthornGymBlockingCooltrainer:
	jumptextfaceplayer BlackthornGymBlockingCooltrainer_Text
BlackthornGymBlockingCooltrainer_Text:
	text "Our LEADER isn't"
	line "here right now."

	para "You might be able"
	line "to find her at"
	cont "LAKE OF RAGE."

	para "Its north from"
	line "MAHOGANY TOWN."
	done

BlackthornGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_CLAIR_RETURNED_TO_GYM
	iffalse .ClairIsOut
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuideWinScript
	writetext BlackthornGymGuideText
	waitbutton
	closetext
	end

.ClairIsOut:
	writetext BlackthornGymGuideClairOutText
	waitbutton
	closetext
	end

.BlackthornGymGuideWinScript:
	writetext BlackthornGymGuideWinText
	waitbutton
	closetext
	end

BlackthornGymGuideClairOutText:
	text "Yo! CHAMP!"

	para "The GYM LEADER"
	line "here is CLAIR."

	para "She's not here"
	line "right now."

	para "I wonder where she"
	line "went?"
	done

BlackthornGymGuideText:
	text "Yo! CHAMP!"

;	para "It's been a long"
;	line "journey, but we"
;	cont "are almost done!"
;	cont "Count on me!"
;
	para "CLAIR uses the"
	line "mythical dragon-"
	cont "-type #MON."

	para "They resist a lot"
	line "of types, but ice-"
	cont "type moves are"
	roll "their weakness."
	done

BlackthornGymGuideWinText:
	text "You were great to"
	line "beat CLAIR!"

	para "I always knew that"
	line "there was nothing"
	cont "that could stand"
	roll "in your way!"
	done

BlackthornGymStatue:
	gettrainername STRING_BUFFER_4, CLAIR, CLAIR1
	jumpstd GymStatue3Script
;	checkflag ENGINE_RISINGBADGE
;	iftrue .Beaten
;	jumpstd GymStatue1Script
;.Beaten:
;	gettrainername STRING_BUFFER_4, CLAIR, CLAIR1
;	jumpstd GymStatue2Script

BlackthornGym1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BLACKTHORN_CITY, 1
	warp_event  5, 17, BLACKTHORN_CITY, 1
	warp_event  1,  7, BLACKTHORN_GYM_2F, 1
	warp_event  7,  9, BLACKTHORN_GYM_2F, 2
	warp_event  2,  6, BLACKTHORN_GYM_2F, 3
	warp_event  7,  7, BLACKTHORN_GYM_2F, 4
	warp_event  7,  6, BLACKTHORN_GYM_2F, 5

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, BlackthornGymStatue
	bg_event  6, 15, BGEVENT_READ, BlackthornGymStatue

	def_object_events
	object_event  1, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornGymBlockingCooltrainer, EVENT_CLAIR_RETURNED_TO_GYM
	object_event  0, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymBlockingCooltrainer, EVENT_CLAIR_RETURNED_TO_GYM
	object_event  5,  3, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornGymClairScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermZane, -1 ;mike
	object_event  9,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLayla, -1 ;lola
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymGuideScript, -1
