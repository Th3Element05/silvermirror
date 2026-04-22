	object_const_def

MahoganyGym_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyGymPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .FightDone
	writetext PryceText_Intro
	waitbutton
	closetext
	winlosstext PryceText_Impressed, 0
	loadtrainer PRYCE, PRYCE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	writetext Text_ReceivedGlacierBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
;	readvar VAR_BADGES
;	scall MahoganyGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM80_ANCIENTPOWER
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_BOARDER_SHAUN
	setevent EVENT_BEAT_SKIER_ROXANNE
	setevent EVENT_BEAT_BOARDER_RONALD
	setevent EVENT_BEAT_SKIER_CLARISSA
;	setevent EVENT_BEAT_BOARDER_BRAD
	writetext PryceText_GlacierBadgeSpeech
	promptbutton
	verbosegiveitem TM_ANCIENTPOWER
;	iffalse .NoRoomForAncientpower
	setevent EVENT_GOT_TM80_ANCIENTPOWER
	writetext PryceText_AncientpowerSpeech
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext PryceText_CherishYourPokemon
	waitbutton
;.NoRoomForAncientpower:
	closetext
	end

;MahoganyGymActivateRockets:
;	ifequal 7, .RadioTowerRockets
;	ifequal 6, .GoldenrodRockets
;	end
;
;.GoldenrodRockets:
;	jumpstd GoldenrodRocketsScript
;
;.RadioTowerRockets:
;	jumpstd RadioTowerRocketsScript

PryceText_Intro:
	ntag "PRYCE:"
	text "#MON have many"
	line "experiences in"
	cont "their lives, just "
	roll "like we do. "

	para "I, too, have seen"
	line "and suffered much"
	cont "in my life."

	para "Since I am your"
	line "elder, let me show"
	cont "you what I mean."

	para "I have been with"
	line "#MON since"
	cont "before you were"
	roll "born."

	para "I do not lose"
	line "easily."

	para "I, PRYCE--the"
	line "winter trainer--"
	cont "shall demonstrate"
	roll "my power!"
	done

PryceText_Impressed:
	ntag "PRYCE:"
	text "Ah, I am impressed"
	line "by your prowess."

	para "With your strong"
	line "will, I know you"
	cont "will overcome all"
	roll "life's obstacles."

	para "You are worthy of"
	line "this BADGE!"
	done

Text_ReceivedGlacierBadge:
	text "<PLAYER> received"
	line "the GLACIERBADGE."
	done

PryceText_GlacierBadgeSpeech:
	ntag "PRYCE:"
	text "And this… This is"
	line "a gift from me!"
	done

PryceText_AncientpowerSpeech:
	ntag "PRYCE:"
	text "That TM contains"
	line "ANCIENTPOWER."

	para "It's a special"
	line "rock-type attack"
	cont "which may raise"
	roll "all of the user's"
	cont "stats at once."
;
;	para "And, some #MON"
;	line "will only evolve"
;	cont "when they know"
;	roll "ANCIENTPOWER."
	done

PryceText_CherishYourPokemon:
	ntag "PRYCE:"
	text "When the ice and"
	line "snow melt, spring"
	cont "arrives."

	para "You and your #-"
	line "MON will be to-"
	cont "gether for many"
	roll "years to come."

	para "Cherish your time"
	line "together!"
	done

TrainerBoarderShaun:
	trainer BOARDER, SHAUN, EVENT_BEAT_BOARDER_SHAUN, BoarderShaunSeenText, BoarderShaunBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BoarderShaunAfterBattleText
	waitbutton
	closetext
	end

BoarderShaunSeenText:
	text "I know PRYCE's"
	line "secret."
	done

BoarderShaunBeatenText:
	text "OK. I'll tell you"
	line "PRYCE's secret."
	done

BoarderShaunAfterBattleText:
	text "The secret behind"
	line "PRYCE's power…"

	para "He meditates under"
	line "a waterfall daily"
	cont "to strengthen his"
	roll "mind and body."
	done

TrainerSkierRoxanne:
	trainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, SkierRoxanneSeenText, SkierRoxanneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SkierRoxanneAfterBattleText
	waitbutton
	closetext
	end

SkierRoxanneSeenText:
	text "To get to PRYCE,"
	line "our GYM LEADER,"
	cont "you need to think"
	roll "before you skate."
	done

SkierRoxanneBeatenText:
	text "I wouldn't lose to"
	line "you in skiing!"
	done

SkierRoxanneAfterBattleText:
	text "If you don't skate"
	line "with precision,"
	cont "you won't get far"
	roll "in this GYM."
	done

TrainerBoarderRonald:
	trainer BOARDER, RONALD, EVENT_BEAT_BOARDER_RONALD, BoarderRonaldSeenText, BoarderRonaldBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BoarderRonaldAfterBattleText
	waitbutton
	closetext
	end

BoarderRonaldSeenText:
	text "I'll freeze your"
	line "#MON, so you"
	cont "can't do a thing!"
	done

BoarderRonaldBeatenText:
	text "Darn. I couldn't"
	line "do a thing."
	done

BoarderRonaldAfterBattleText:
	text "I think there's a"
	line "move a #MON"
	cont "can use while it's"
	roll "frozen."
	done

TrainerSkierClarissa:
	trainer SKIER, CLARISSA, EVENT_BEAT_SKIER_CLARISSA, SkierClarissaSeenText, SkierClarissaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SkierClarissaAfterBattleText
	waitbutton
	closetext
	end

SkierClarissaSeenText:
	text "Check out my"
	line "parallel turn!"
	done

SkierClarissaBeatenText:
	text "No! You made me"
	line "wipe out!"
	done

SkierClarissaAfterBattleText:
	text "I shouldn't have"
	line "been bragging"
	cont "about my skiing…"
	done

;TrainerBoarderBrad:
;	trainer BOARDER, BRAD, EVENT_BEAT_BOARDER_BRAD, BoarderBradSeenText, BoarderBradBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext BoarderBradAfterBattleText
;	waitbutton
;	closetext
;	end
;
;BoarderBradSeenText:
;	text "This GYM has a"
;	line "slippery floor."
;
;	para "It's fun, isn't"
;	line "it?"
;
;	para "But hey--we're"
;	line "not playing games"
;	cont "here!"
;	done
;
;BoarderBradBeatenText:
;	text "Do you see how"
;	line "serious we are?"
;	done
;
;BoarderBradAfterBattleText:
;	text "This GYM is great."
;	line "I love boarding"
;	cont "with my #MON!"
;	done

MahoganyGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .MahoganyGymGuideWinScript
	writetext MahoganyGymGuideText
	waitbutton
	closetext
	end

.MahoganyGymGuideWinScript:
	writetext MahoganyGymGuideWinText
	waitbutton
	closetext
	end

MahoganyGymGuideText:
	text "PRYCE is a veteran"
	line "who has trained"
	cont "#MON for over"
	roll "40 years."

	para "He's said to be"
	line "good at freezing"
	cont "opponents with"
	roll "ice-type moves."

	para "That means you"
	line "should melt him"
	cont "with your burning"
	roll "ambition!"
	done

MahoganyGymGuideWinText:
	text "PRYCE is some-"
	line "thing, but you're"
	cont "something else!"

	para "That was a hot"
	line "battle!"
	done

MahoganyGymStatue:
	gettrainername STRING_BUFFER_4, PRYCE, PRYCE1
	jumpstd GymStatue3Script
;	checkflag ENGINE_GLACIERBADGE
;	iftrue .Beaten
;	jumpstd GymStatue1Script
;.Beaten:
;	gettrainername STRING_BUFFER_4, PRYCE, PRYCE1
;	jumpstd GymStatue2Script

MahoganyGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, MAHOGANY_TOWN, 3
	warp_event  5, 17, MAHOGANY_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, MahoganyGymStatue
	bg_event  6, 15, BGEVENT_READ, MahoganyGymStatue

	def_object_events
	object_event  5,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MahoganyGymPryceScript, -1
	object_event  2,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerBoarderShaun, -1 ;douglas
	object_event  5,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_TRAINER, 1, TrainerSkierRoxanne, -1 ;roxanne
	object_event  0, 17, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerBoarderRonald, -1 ;ronald
	object_event  9, 17, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_TRAINER, 1, TrainerSkierClarissa, -1 ;clarissa
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyGymGuideScript, -1
;	object_event  4,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBrad, -1 ;brad

;.PinkOverYellowOBPalette