	object_const_def

CeruleanGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymMistyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY
	iftrue .FightDone
	writetext MistyIntroText
	waitbutton
	closetext
	winlosstext MistyWinLossText, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_SWIMMERM_HAROLD
	setevent EVENT_BEAT_PICNICKER_SOPHIA
	opentext
	writetext ReceivedCascadebadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
	promptbutton
	writetext MistyCascadebadgeText
	promptbutton
	scall CeruleanGymCheckBadges
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM11_BUBBLEBEAM
	iftrue .SpeechAfterTM
	verbosegiveitem TM_BUBBLEBEAM
	setevent EVENT_GOT_TM11_BUBBLEBEAM
	; fallthrough
.SpeechAfterTM
	writetext MistyTMBubblebeamText
	waitbutton
	closetext
	end

CeruleanGymCheckBadges:
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

MistyIntroText:
	text "Hi, you're a new"
	line "face!"

	para "Trainers who want"
	line "to turn pro have"
	cont "to have a policy"
	cont "about #MON!"

	para "What is your"
	line "approach when you"
	cont "catch #MON?"

	para "My policy is an"
	line "all-out offensive"
	cont "with water-type"
	cont "#MON!"
	done

MistyWinLossText:
	text "Wow!"
	line "You're too much!"

	para "All right!"

	para "You can have the"
	line "CASCADEBADGE to"
	cont "show you beat me!"
	done

ReceivedCascadebadgeText:
	text "<PLAYER> received"
	line "CASCADEBADGE."
	done

MistyCascadebadgeText:
	text "The CASCADEBADGE"
	line "makes all #MON"
	cont "up to L30 obey!"

	para "That includes"
	line "even outsiders!"

	para "There's more, you"
	line "can now use CUT"
	cont "any time!"

	para "You can CUT down"
	line "small bushes to"
	cont "open new paths!"

	para "You can also have"
	line "my favorite TM!"
	done

MistyTMBubblebeamText:
	text "TM11 teaches"
	line "BUBBLEBEAM!"

	para "Use it on an"
	line "aquatic #MON!"
	done

TrainerSwimmerMHarold:
	trainer SWIMMERM, HAROLD, EVENT_BEAT_SWIMMERM_HAROLD, SwimmerMHaroldSeenText, SwimmerMHaroldBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMHaroldAfterBattleText
	waitbutton
	closetext
	end

SwimmerMHaroldSeenText:
	text "Splash!"

	para "I'm first up!"
	line "Let's do it!"
	done

SwimmerMHaroldBeatenText:
	text "That"
	line "can't be!"
	done

SwimmerMHaroldAfterBattleText:
	text "MISTY is going to"
	line "keep improving!"

	para "She won't lose to"
	line "someone like you!"
	done

TrainerPicnickerSophia:
	trainer PICNICKER, SOPHIA, EVENT_BEAT_PICNICKER_SOPHIA, PicnickerSophiaSeenText, PicnickerSophiaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerSophiaAfterBattleText
	waitbutton
	closetext
	end

PicnickerSophiaSeenText:
	text "I'm more than good"
	line "enough for you!"

	para "MISTY can wait!"
	done

PicnickerSophiaBeatenText:
	text "You"
	line "overwhelmed me!"
	done

PicnickerSophiaAfterBattleText:
	text "You have to face"
	line "other trainers to"
	cont "find out how good"
	cont "you really are."
	done

CeruleanGymGuideScript:
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuideWinScript
	jumptextfaceplayer CeruleanGymGuideText
.CeruleanGymGuideWinScript:
	jumptextfaceplayer CeruleanGymGuideWinText

CeruleanGymGuideText:
	text "Yo! Champ in"
	line "making!"

	para "Here's my advice!"

	para "The LEADER, MISTY,"
	line "is a pro who uses"
	cont "water #MON!"

	para "You can drain all"
	line "their water with"
	cont "plant #MON!"

	para "Or, zap them with"
	line "electricity!"
	done

CeruleanGymGuideWinText:
	text "You beat MISTY!"
	line "What'd I tell ya?"

	para "You and me kid,"
	line "we make a pretty"
	cont "darn good team!"
	done

CeruleanGymStatue:
	gettrainername STRING_BUFFER_4, MISTY, MISTY1
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

CeruleanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, CERULEAN_CITY, 7
	warp_event  5, 15, CERULEAN_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, CeruleanGymStatue
	bg_event  6, 13, BGEVENT_READ, CeruleanGymStatue

	def_object_events
	object_event  4,  3, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanGymMistyScript, -1
	object_event  8,  9, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMHarold, -1
	object_event  2,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerSophia, -1
	object_event  7, 12, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanGymGuideScript, -1
