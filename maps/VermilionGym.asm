	object_const_def
	const VERMILIONGYM_SURGE

VermilionGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .VermilionGymDoorsCallback

.VermilionGymDoorsCallback:
	checkevent EVENT_VERMILION_GYM_SWITCH_2
	iftrue .NoDoors
	endcallback

.NoDoors:
	changeblock 4, 4, $32 ; floor
	endcallback

VermilionGymTrashCanScript:
	checkevent EVENT_VERMILION_GYM_SWITCH_2
	iftrue .trash_can
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .second_switch
;first_switch
	random 4
	ifnotequal 0, .reset_switches
	writetext VermilionGymFoundSwitchText
	playsound SFX_PUSH_BUTTON
	promptbutton
	writetext VermilionGymFoundFirstSwitchText
	playsound SFX_ENTER_DOOR
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	waitbutton
	closetext
	end

.second_switch
	random 3
	ifnotequal 0, .reset_switches
	writetext VermilionGymFoundSwitchText
	playsound SFX_PUSH_BUTTON
	promptbutton
	writetext VermilionGymFoundSecondSwitchText
	waitbutton
	playsound SFX_ENTER_DOOR
	setevent EVENT_VERMILION_GYM_SWITCH_2
	changeblock 4, 4, $32 ; floor
	reloadmappart
	closetext
	end

.reset_switches
	writetext VermilionGymTrashCanText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .NoReset
	promptbutton
	writetext VermilionGymResetSwitchesText
	playsound SFX_WRONG
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; fallthrough
.NoReset:
	waitbutton
	closetext
	end

.trash_can
	jumpstd TrashCanScript

VermilionGymSurgeScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LTSURGE
	iftrue .FightDone
	writetext LtSurgeIntroText
	waitbutton
	closetext
	winlosstext LtSurgeWinLossText, 0
	loadtrainer LT_SURGE, LT_SURGE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_GENTLEMAN_MILTON
	setevent EVENT_BEAT_GUITARIST_CLYDE
	setevent EVENT_BEAT_SAILOR_KENNETH
	opentext
	writetext ReceivedThunderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
	waitbutton
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM52_SPARK
	iftrue .SpeechAfterTM
	writetext LtSurgeThunderBadgeText
	promptbutton
	verbosegiveitem TM_SPARK
	iffalse .NoRoomForSpark
	setevent EVENT_GOT_TM52_SPARK
	writetext LtSurgeSparkText
	promptbutton
	; fallthrough
.SpeechAfterTM
	writetext LtSurgeAfterBattleText
	waitbutton
.NoRoomForSpark
	closetext
	end

LtSurgeIntroText:
	text "Hey, kid! What do"
	line "you think you're"
	cont "doing here?"

	para "You won't live"
	line "long in combat!"
	cont "That's for sure!"

	para "I tell you kid,"
	line "electric #MON"
	cont "saved me during"
	cont "the war!"

	para "They zapped my"
	line "enemies into"
	cont "paralysis!"

	para "The same as I'll"
	line "do to you!"
	done

LtSurgeWinLossText:
	text "Whoa!"

	para "You're the real"
	line "deal, kid!"

	para "Fine then, take"
	line "the THUNDERBADGE!"
	done

ReceivedThunderBadgeText:
	text "<PLAYER> received"
	line "THUNDERBADGE."
	done

LtSurgeThunderBadgeText:
	text "The THUNDERBADGE"
	line "cranks up your"
	cont "#MON's SPEED!"

	para "It also lets your"
	line "#MON FLY any"
	cont "time, kid!"

	para "You're special,"
	line "kid! Take this!"
	done

LtSurgeSparkText:
	text "TM52 contains"
	line "SPARK!"

	para "Teach it to an"
	line "electric #MON!"
	done

LtSurgeAfterBattleText:
	text "A little word of"
	line "advice, kid!"

	para "Electricity is"
	line "sure powerful!"

	para "But, it's useless"
	line "against ground-"
	cont "type #MON!"
	done

TrainerGentlemanMilton:
	trainer GENTLEMAN, MILTON, EVENT_BEAT_GENTLEMAN_MILTON, GentlemanMiltonSeenText, GentlemanMiltonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanMiltonAfterBattleText
	waitbutton
	closetext
	end

GentlemanMiltonSeenText:
	text "When I was in the"
	line "Army, LT.SURGE"
	cont "was my strict CO!"
	done

GentlemanMiltonBeatenText:
	text "Stop!"
	line "You're very good!"
	done

GentlemanMiltonAfterBattleText:
	text "The door won't"
	line "open?"

	para "LT.SURGE always"
	line "was cautious!"
	done

TrainerGuitaristClyde:
	trainer GUITARIST, CLYDE, EVENT_BEAT_GUITARIST_CLYDE, GuitaristClydeSeenText, GuitaristClydeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GuitaristClydeAfterBattleText
	waitbutton
	closetext
	end

GuitaristClydeSeenText:
	text "I'm a lightweight,"
	line "but I'm good with"
	cont "electricity!"
	done

GuitaristClydeBeatenText:
	text "Fried!"
	done

GuitaristClydeAfterBattleText:
	text "OK, I'll talk!"

	para "LT.SURGE said he"
	line "hid door switches"
	cont "inside something!"
	done

TrainerSailorKenneth:
	trainer SAILOR, KENNETH, EVENT_BEAT_SAILOR_KENNETH, SailorKennethSeenText, SailorKennethBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorKennethAfterBattleText
	waitbutton
	closetext
	end

SailorKennethSeenText:
	text "This is no place"
	line "for kids!"
	done

SailorKennethBeatenText:
	text "Wow!"
	line "Surprised me!"
	done

SailorKennethAfterBattleText:
	text "LT.SURGE set up"
	line "double locks!"
	cont "Here's a hint!"

	para "When you open the"
	line "1st lock, the 2nd"
	cont "lock is right"
	cont "next to it!"
	done

VermilionGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LTSURGE
	iftrue .VermilionGymGuideWinScript
	writetext VermilionGymGuideText
	waitbutton
	closetext
	end

.VermilionGymGuideWinScript:
	writetext VermilionGymGuideWinText
	waitbutton
	closetext
	end

VermilionGymGuideText:
	text "Yo! Champ in"
	line "making!"

	para "LT.SURGE has a"
	line "nickname. People"
	cont "refer to him as"
	cont "the Lightning"
	cont "American!"

	para "He's an expert on"
	line "electric #MON!"

	para "Birds and water"
	line "#MON are at"
	cont "risk! Beware of"
	cont "paralysis too!"

	para "LT.SURGE is very"
	line "cautious!"

	para "You'll have to"
	line "break a code to"
	cont "get to him!"
	done

VermilionGymGuideWinText:
	text "Whew! That match"
	line "was electric!"
	done

VermilionGymStatue:
	checkflag ENGINE_THUNDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, LT_SURGE, LT_SURGE1
	jumpstd GymStatue2Script

;VermilionGymTrashCan:
;	jumptext VermilionGymTrashCanText

VermilionGymTrashCanText:
	text "Nope! Nothing here"
	line "but trash."
	done

VermilionGymFoundSwitchText:
	text "Hey!"

	para "There's a switch"
	line "under the trash!"

	para "Better press it."
	done

VermilionGymFoundFirstSwitchText:
	text "The first electric"
	line "lock opened!"
	done

VermilionGymFoundSecondSwitchText:
	text "The second"
	line "electric lock"
	cont "opened!"

	para "The path ahead is"
	line "clear!"
	done

VermilionGymResetSwitchesText:
	text "Hey! The electric"
	line "locks were reset!"
	done

VermilionGymSurgeTrashCan:
	jumpstd TrashCanScript

VermilionGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VERMILION_CITY, 7
	warp_event  5, 17, VERMILION_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  1,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  5,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  7,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  9,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  1,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  5,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  7,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  9,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  1, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  5, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  7, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  9, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3, 15, BGEVENT_READ, VermilionGymStatue
	bg_event  6, 15, BGEVENT_READ, VermilionGymStatue
	bg_event  6,  1, BGEVENT_READ, VermilionGymSurgeTrashCan

	def_object_events
	object_event  5,  2, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionGymSurgeScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGentlemanMilton, -1
	object_event  3,  8, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristClyde, -1
	object_event  0, 10, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorKenneth, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, VermilionGymGuideScript, -1
