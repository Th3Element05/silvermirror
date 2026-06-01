	object_const_def

VermilionGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .VermilionGymDoorsCallback

.VermilionGymDoorsCallback:
	checkevent EVENT_VERMILION_GYM_SWITCH_2
	iffalse .Skip
	changeblock 4, 4, $32 ; floor
.Skip
	endcallback

VermilionGymTrashCanScript:
	checkevent EVENT_VERMILION_GYM_SWITCH_2
	iftrue .trash_can
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .second_switch
;first_switch
	random 3
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
	playsound SFX_WRONG
	promptbutton
	writetext VermilionGymResetSwitchesText
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
	checkflag ENGINE_THUNDERBADGE
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
	writetext ReceivedThunderbadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
	promptbutton
	writetext LtSurgeThunderbadgeText
	promptbutton
	scall VermilionGymCheckBadges
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM42_SPARK
	iftrue .GotSpark
	verbosegiveitem TM_SPARK
	setevent EVENT_GOT_TM42_SPARK
	writetext SurgeExplainTMText
	waitbutton
	closetext
	end
.GotSpark
	writetext LtSurgeAfterBattleText
	waitbutton
	closetext
	end

VermilionGymCheckBadges:
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

LtSurgeIntroText:
	ntag "LT.SURGE:"
	text "Hey, kid! What do"
	line "you think you're"
	cont "doing here?"

	para "You won't last"
	line "long in combat!"
	cont "That's for sure!"

	para "I tell you kid,"
	line "electric #MON"
	cont "saved me during"
	roll "the war!"

	para "They zapped my"
	line "enemies into"
	cont "paralysis!"

	para "The same as I'll"
	line "do to you!"
	done

LtSurgeWinLossText:
	ntag "LT.SURGE:"
	text "Whoa!"

	para "You're the real"
	line "deal, kid!"

	para "Fine then, take"
	line "the THUNDERBADGE!"
	done

ReceivedThunderbadgeText:
	text "<PLAYER> received"
	line "the THUNDERBADGE."
	done

LtSurgeThunderbadgeText:
	ntag "LT.SURGE:"
;	text "The THUNDERBADGE"
;	line "lets your #MON"
;	cont "use FLY anytime!"

	text "That's an official"
	line "POKEMON LEAGUE"
	cont "BADGE!"

	para "You're special,"
	line "kid! Take this!"
	done

SurgeExplainTMText:
	ntag "LT.SURGE:"
	text "TM52 contains"
	line "SPARK!"

	para "Teach it to an"
	line "electric #MON!"
	done

LtSurgeAfterBattleText:
	ntag "LT.SURGE:"
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
	ntag "GENTLEMAN:"
	text "When I was in the"
	line "Army, LT.SURGE"
	cont "was my strict CO!"
	done

GentlemanMiltonBeatenText:
	ntag "MILTON:"
	text "Stop!"
	line "You're very good!"
	done

GentlemanMiltonAfterBattleText:
	ntag "GENTLEMAN:"
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
	ntag "GUITARIST:"
	text "I'm a lightweight,"
	line "but I'm good with"
	cont "electricity!"
	done

GuitaristClydeBeatenText:
	ntag "CLYDE:"
	text "Fried!"
	done

GuitaristClydeAfterBattleText:
	ntag "GUITARIST:"
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
	ntag "SAILOR:"
	text "This is no place"
	line "for kids!"
	done

SailorKennethBeatenText:
	ntag "KENNETH:"
	text "Wow!"
	line "Surprised me!"
	done

SailorKennethAfterBattleText:
	ntag "SAILOR:"
	text "LT.SURGE set up"
	line "double locks!"
	cont "Here's a hint!"

	para "When you open the"
	line "1st lock, the 2nd"
	cont "lock is right"
	roll "next to it!"
	done

VermilionGymGuideScript:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .ChampText
	checkevent EVENT_BEAT_LTSURGE
	iftrue .VermilionGymGuideWinScript
	jumptextfaceplayer VermilionGymGuideText

.VermilionGymGuideWinScript:
	jumptextfaceplayer VermilionGymGuideWinText

.ChampText:
	faceplayer
	opentext
	farwritetext PewterGymGuideChampText
	waitbutton
	closetext
	end

VermilionGymGuideText:
	ntag "GUIDE:"
	text "Yo! CHAMP in the"
	line "making!"

	para "LT.SURGE has a"
	line "nickname. People"
	cont "call him the"
	roll "Lightning Warrior!"

	para "He's an expert on"
	line "electric #MON!"

	para "Birds and water"
	line "#MON are at"
	cont "risk! Beware of"
	roll "paralysis too!"

	para "LT.SURGE is very"
	line "cautious!"

	para "You'll have to"
	line "break a code to"
	cont "get to him!"
	done

VermilionGymGuideWinText:
	ntag "GUIDE:"
	text "Whew! That match"
	line "was electric!"
	done

VermilionGymStatue:
	gettrainername STRING_BUFFER_4, LT_SURGE, LT_SURGE1
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Champion
	checkflag ENGINE_THUNDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script
.Champion
	jumpstd GymStatue3Script

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
	changeblock 4, 4, $32 ; floor
	reloadmappart
	jumpstd TrashCanScript


; rematch
VermilionGymSurgeRematchScript:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue .GreatBattle
	faceplayer
	opentext
	checkevent EVENT_BEAT_LTSURGE_2
	iftrue .skipintro
	writetext LtSurgeRematchIntroText
	waitbutton
	sjump .startbattle

.skipintro
	writetext LtSurgeAskRematchText
	yesorno
	iffalse .norematch
.startbattle
	closetext
	winlosstext LtSurgeRematchWinLossText, 0
	loadtrainer LT_SURGE, LT_SURGE2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LTSURGE_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
;	scall VermilionGymRematchesCheck
	farscall ViridianGymRematchesCompleteCheck
	opentext
.norematch
	writetext LtSurgeRematchAfterBattleText
	waitbutton
	closetext
	end

.GreatBattle
	jumptextfaceplayer LtSurgeRematchGreatBattleText

;VermilionGymRematchesCheck:
;	checkevent EVENT_BEAT_LEADER_BLUE
;	iftrue .end
;	checkevent EVENT_BEAT_BROCK_2
;	iffalse .end
;	checkevent EVENT_BEAT_MISTY_2
;	iffalse .end
;;	checkevent EVENT_BEAT_LTSURGE_2
;;	iffalse .end
;	checkevent EVENT_BEAT_ERIKA_2
;	iffalse .end
;	checkevent EVENT_BEAT_KOGA_2
;	iffalse .end
;	checkevent EVENT_BEAT_SABRINA_2
;	iffalse .end
;	checkevent EVENT_BEAT_BLAINE_2
;	iffalse .end
;	clearevent EVENT_VIRIDIAN_GYM_BLUE
;	specialphonecall SPECIALCALL_VIRIDIANGYM2
;.end
;	end

LtSurgeRematchIntroText:
	ntag "LT.SURGE:"
	text "<PLAYER>!"

	para "We don't get a new"
	line "LEAGUE CHAMPION"
	cont "very often!"

	para "Only the toughest"
	line "trainers can beat"
	cont "the ELITE FOUR!"

	para "Show me what you've"
	line "got!"
	done

LtSurgeAskRematchText:
	ntag "LT.SURGE:"
	text "Ready to challenge"
	line "me again?"
	done

LtSurgeRematchWinLossText:
	ntag "LT.SURGE:"
	text "Electrifying!"
	done

LtSurgeRematchAfterBattleText:
	ntag "LT.SURGE:"
	text "I'll put you to the"
	line "test any time!"
	done

LtSurgeRematchGreatBattleText:
	ntag "LT.SURGE:"
	text "That was a great"
	line "battle!"
	done


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
	object_event  5,  2, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionGymSurgeScript, EVENT_BEAT_ELITE_FOUR
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 3, TrainerGentlemanMilton, -1
	object_event  3,  8, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristClyde, -1
	object_event  0, 10, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorKenneth, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, VermilionGymGuideScript, -1
;
	object_event  5,  2, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionGymSurgeRematchScript, EVENT_KANTO_LEADER_REMATCHES
