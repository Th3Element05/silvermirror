	object_const_def

SaffronGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .SaffronGymWarpCallback

.SaffronGymWarpCallback:
	checkevent EVENT_BEAT_SABRINA
	iffalse .NoExitWarp
	changeblock 8, 10, $12 ; red warp tile
.NoExitWarp:
	endcallback

SaffronGymSabrinaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SABRINA
	iftrue .FightDone
	writetext SabrinaIntroText
	waitbutton
	closetext
	winlosstext SabrinaBeatenText, 0
	loadtrainer SABRINA, SABRINA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_PSYCHIC_NATHAN
	setevent EVENT_BEAT_MEDIUM_HAZEL
	setevent EVENT_BEAT_PSYCHIC_FRANKLIN
	setevent EVENT_BEAT_MEDIUM_NAOMI
	setevent EVENT_BEAT_PSYCHIC_HERMAN
	setevent EVENT_BEAT_MEDIUM_STELLA
	setevent EVENT_BEAT_PSYCHIC_GREG
	opentext
	writetext PlayerReceivedMarshbadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
	promptbutton
	writetext SabrinaExplainMarshbadgeText
	promptbutton
	scall SaffronGymCheckBadges
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM04_CALM_MIND
	iftrue .GotPsywave
	verbosegiveitem TM_CALM_MIND
	setevent EVENT_GOT_TM04_CALM_MIND
	writetext SabrinaExplainTMText
	waitbutton
	closetext
	pause 10
	playsound SFX_WARP_TO
	changeblock 8, 10, $10 ; blue warp tile
	reloadmappart
	changeblock 8, 10, $12 ; red warp tile
	reloadmappart
	changeblock 8, 10, $10 ; blue warp tile
	reloadmappart
	changeblock 8, 10, $12 ; red warp tile
	reloadmappart
	end
.GotPsywave:
	writetext SabrinaAfterBattleText
	waitbutton
	closetext
	end

SaffronGymCheckBadges:
	readvar VAR_BADGES
	ifequal 7, .ViridianGym
	end

.ViridianGym
	setevent EVENT_VIRIDIAN_GYM_LEADER_RETURNED
	specialphonecall SPECIALCALL_VIRIDIANGYM
	end

SabrinaIntroText:
	ntag "SABRINA:"
	text "I had a vision of"
	line "your arrival!"

	para "I have had psychic"
	line "powers since I"
	cont "was a child."

	para "I first learned"
	line "to bend spoons"
	cont "with my mind."

	para "I dislike fight-"
	line "ing, but if you"
	cont "wish, I will show"
	roll "you my powers!"
	done

SabrinaBeatenText:
	ntag "SABRINA:"
	text "I'm shocked!"
	line "But, a loss is"
	cont "a loss."

	para "I admit I didn't"
	line "work hard enough"
	cont "to win!"

	para "You earned the"
	line "MARSHBADGE!"
	done

PlayerReceivedMarshbadgeText:
	text "<PLAYER> received"
	line "the MARSHADGE."
	done

SabrinaExplainMarshbadgeText:
	ntag "SABRINA:"
;	text "The MARSHBADGE"
;	line "makes #MON up"
;	cont "to L70 obey you!"
;
;	para "Stronger #MON"
;	line "will become wild,"
;	cont "ignoring your"
;	roll "orders in battle!"
;
;	para "Just don't raise"
;	line "your #MON too"
;	cont "much!"
;
	text "That MARSHBADGE"
	line "is proof of your"
	cont "strength."

	para "Wear it proudly."

	para "Wait, please take"
	line "this TM with you!"
	done

SabrinaExplainTMText:
	ntag "SABRINA:"
;	text "TM46 is PSYWAVE!"
;	line "It uses powerful"
;	cont "psychic waves to"
;	roll "inflict damage!"
;
	text "TM04 is CALM MIND."
	line "By focusing their"
	cont "mind, #MON can"
	roll "raise both their"
	cont "SPECIAL ATTACK and"
	roll "SPECIAL DEFENSE!"

	para "Good luck on your"
	line "#MON LEAGUE"
	cont "challenge!"

	para "You can use this"
	line "red warp panel"
	cont "to go right to"
	roll "the exit."
	done

SabrinaAfterBattleText:
	ntag "SABRINA:"
	text "Everyone has"
	line "psychic power!"
	cont "People just don't"
	roll "realize it!"
	done

TrainerPsychicNathan:
	trainer PSYCHIC_T, NATHAN, EVENT_BEAT_PSYCHIC_NATHAN, PsychicNathanSeenText, PsychicNathanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicNathanAfterBattleText
	waitbutton
	closetext
	end

PsychicNathanSeenText:
	ntag "PSYCHIC:"
	text "SAFFRON #MON"
	line "GYM is famous for"
	cont "its psychics!"

	para "You want to see"
	line "SABRINA!"
	cont "I can tell!"
	done

PsychicNathanBeatenText:
	ntag "NATHAN:"
	text "Arrrgh!"
	done

PsychicNathanAfterBattleText:
	ntag "PSYCHIC:"
	text "That's right! I"
	line "used telepathy to"
	cont "read your mind!"
	done

TrainerMediumHazel:
	trainer MEDIUM, HAZEL, EVENT_BEAT_MEDIUM_HAZEL, MediumHazelSeenText, MediumHazelBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumHazelAfterBattleText
	waitbutton
	closetext
	end

MediumHazelSeenText:
	ntag "MEDIUM:"
	text "SABRINA is younger"
	line "than I, but I"
	cont "respect her!"
	done

MediumHazelBeatenText:
	ntag "HAZEL:"
	text "Not good enough!"
	done

MediumHazelAfterBattleText:
	ntag "MEDIUM:"
	text "In a battle of"
	line "equals, the one"
	cont "with the stronger"
	roll "will wins!"

	para "If you wish"
	line "to beat SABRINA,"
	cont "focus on winning!"
	done

TrainerPsychicFranklin:
	trainer PSYCHIC_T, FRANKLIN, EVENT_BEAT_PSYCHIC_FRANKLIN, PsychicFranklinSeenText, PsychicFranklinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicFranklinAfterBattleText
	waitbutton
	closetext
	end

PsychicFranklinSeenText:
	ntag "PSYCHIC:"
	text "Does our unseen"
	line "power scare you?"
	done

PsychicFranklinBeatenText:
	ntag "FARNKLIN:"
	text "I never foresaw"
	line "this!"
	done

PsychicFranklinAfterBattleText:
	ntag "PSYCHIC:"
	text "Psychic #MON"
	line "fear only ghosts"
	cont "and bugs!"
	done

TrainerMediumNaomi:
	trainer MEDIUM, NAOMI, EVENT_BEAT_MEDIUM_NAOMI, MediumNaomiSeenText, MediumNaomiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumNaomiAfterBattleText
	waitbutton
	closetext
	end

MediumNaomiSeenText:
	ntag "MEDIUM:"
	text "#MON take on"
	line "the appearance of"
	cont "their trainers."

	para "Your #MON must"
	line "be tough, then!"
	done

MediumNaomiBeatenText:
	ntag "NAOMI:"
	text "I knew"
	line "it!"
	done

MediumNaomiAfterBattleText:
	ntag "MEDIUM:"
	text "I must teach"
	line "better techniques"
	cont "to my #MON!"
	done

TrainerPsychicHerman:
	trainer PSYCHIC_T, HERMAN, EVENT_BEAT_PSYCHIC_HERMAN, PsychicHermanSeenText, PsychicHermanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicHermanAfterBattleText
	waitbutton
	closetext
	end

PsychicHermanSeenText:
	ntag "PSYCHIC:"
	text "You know that"
	line "power alone isn't"
	cont "enough!"
	done

PsychicHermanBeatenText:
	ntag "HERMAN:"
	text "I don't believe"
	line "this!"
	done

PsychicHermanAfterBattleText:
	ntag "PSYCHIC:"
	text "SABRINA just wiped"
	line "out the KARATE"
	cont "MASTER next door!"
	done

TrainerMediumStella:
	trainer MEDIUM, STELLA, EVENT_BEAT_MEDIUM_STELLA, MediumStellaSeenText, MediumStellaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumStellaAfterBattleText
	waitbutton
	closetext
	end

MediumStellaSeenText:
	ntag "MEDIUM:"
	text "You and I,"
	line "our #MON"
	line "shall fight!"
	done

MediumStellaBeatenText:
	ntag "STELLA:"
	text "I lost after all!"
	done

MediumStellaAfterBattleText:
	ntag "MEDIUM:"
	text "I knew that this"
	line "was going to take"
	cont "place."
	done

TrainerPsychicGreg:
	trainer PSYCHIC_T, GREG, EVENT_BEAT_PSYCHIC_GREG, PsychicGregSeenText, PsychicGregBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicGregAfterBattleText
	waitbutton
	closetext
	end

PsychicGregSeenText:
	ntag "PSYCHIC:"
	text "SABRINA is young,"
	line "but she's also"
	cont "our LEADER!"

	para "You won't reach"
	line "her easily!"
	done

PsychicGregBeatenText:
	ntag "GREG:"
	text "I lost my"
	line "concentration!"
	done

PsychicGregAfterBattleText:
	ntag "PSYCHIC:"
	text "The FIGHTING DOJO"
	line "next door used to"
	cont "be an official"
	roll "#MON GYM."

	para "But we challenged"
	line "them, and #MON"
	cont "LEAGUE gave their"
	roll "GYM status to us."
	done

SaffronGymGuideScript:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .ChampText
	checkevent EVENT_BEAT_SABRINA
	iftrue .SaffronGymGuideWinScript
	jumptextfaceplayer SaffronGymGuideText

.SaffronGymGuideWinScript:
	jumptextfaceplayer SaffronGymGuideWinText

.ChampText:
	faceplayer
	opentext
	farwritetext PewterGymGuideChampText
	waitbutton
	closetext
	end

SaffronGymGuideText:
	ntag "GUIDE:"
	text "Yo! CHAMP in the"
	line "making!"

	para "SABRINA's #MON"
	line "use psychic power"
	cont "instead of force!"

	para "Fighting #MON"
	line "are weak against"
	cont "psychic #MON!"

	para "They get creamed"
	line "before they can"
	cont "even aim a punch!"
	done

SaffronGymGuideWinText:
	ntag "GUIDE:"
	text "Psychic power,"
	line "huh?"

	para "If I had that,"
	line "I'd make a bundle"
	cont "at the slots!"
	done

SaffronGymStatue:
	gettrainername STRING_BUFFER_4, SABRINA, SABRINA1
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Champion
	checkflag ENGINE_MARSHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script
.Champion
	jumpstd GymStatue3Script


; rematch
SaffronGymSabrinaRematchScript:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .GreatBattle
	faceplayer
	opentext
	checkevent EVENT_BEAT_SABRINA_2
	iftrue .skipintro
	writetext SabrinaRematchIntroText
	waitbutton
	sjump .startbattle

.skipintro
	writetext SabrinaAskRematchText
	yesorno
	iffalse .norematch
.startbattle
	closetext
	winlosstext SabrinaRematchWinLossText, 0
	loadtrainer SABRINA, SABRINA2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SABRINA_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	scall SaffronGymRematchesCheck
	farscall ViridianGymRematchesCompleteCheck
	opentext
.norematch
	writetext SabrinaRematchAfterBattleText
	waitbutton
	closetext
	end

.GreatBattle
	jumptextfaceplayer SabrinaRematchGreatBattleText

;SaffronGymRematchesCheck:
;	checkevent EVENT_BEAT_LEADER_BLUE
;	iftrue .end
;	checkevent EVENT_BEAT_BROCK_2
;	iffalse .end
;	checkevent EVENT_BEAT_MISTY_2
;	iffalse .end
;	checkevent EVENT_BEAT_LTSURGE_2
;	iffalse .end
;	checkevent EVENT_BEAT_ERIKA_2
;	iffalse .end
;	checkevent EVENT_BEAT_KOGA_2
;	iffalse .end
;;	checkevent EVENT_BEAT_SABRINA_2
;;	iffalse .end
;	checkevent EVENT_BEAT_BLAINE_2
;	iffalse .end
;	clearevent EVENT_VIRIDIAN_GYM_BLUE
;	specialphonecall SPECIALCALL_VIRIDIANGYM2
;.end
;	end

SabrinaRematchIntroText:
	ntag "SABRINA:"
	text "I knew you would"
	line "return here as"
	cont "the CHAMPION."

	para "I had a vision of"
	line "your victory over"
	cont "<RIVAL>."

	para "I also knew you"
	line "would return here"
	cont "to challenge me"
	roll "again."
	done

SabrinaAskRematchText:
	ntag "SABRINA:"
	text "Another battle?"
	done

SabrinaRematchWinLossText:
	ntag "SABRINA:"
	text "You are extremely"
	line "talented. I don't"
	cont "need psychic power"
	roll "to see that."
	done

SabrinaRematchAfterBattleText:
	ntag "SABRINA:"
	text "I'll be ready for"
	line "our next battle."

	para "I already know"
	line "when it will be."
	done

SabrinaRematchGreatBattleText:
	ntag "SABRINA:"
	text "I knew that would"
	line "be a great battle!"
	done


SaffronGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 17, SAFFRON_CITY, 2 ;1
	warp_event 10, 17, SAFFRON_CITY, 2 ;2
	warp_event  1,  2, SAFFRON_GYM, 20 ;3
	warp_event  1,  4, SAFFRON_GYM, 32 ;4
	warp_event  1,  8, SAFFRON_GYM, 28 ;5
	warp_event  1, 10, SAFFRON_GYM, 10 ;6
	warp_event  1, 14, SAFFRON_GYM, 26 ;7
	warp_event  1, 16, SAFFRON_GYM, 18 ;8
	warp_event  4,  2, SAFFRON_GYM, 17 ;9
	warp_event  4,  4, SAFFRON_GYM, 6  ;10
	warp_event  4,  8, SAFFRON_GYM, 16 ;11
	warp_event  4, 10, SAFFRON_GYM, 14 ;12
	warp_event  4, 14, SAFFRON_GYM, 24 ;13
	warp_event  4, 16, SAFFRON_GYM, 12 ;14
	warp_event  8,  2, SAFFRON_GYM, 22 ;15
	warp_event  8,  4, SAFFRON_GYM, 11 ;16
	warp_event 11,  2, SAFFRON_GYM, 9  ;17
	warp_event 11,  4, SAFFRON_GYM, 8  ;18
	warp_event 15,  2, SAFFRON_GYM, 21 ;19
	warp_event 15,  4, SAFFRON_GYM, 3  ;20
	warp_event 15,  8, SAFFRON_GYM, 19 ;21
	warp_event 15, 10, SAFFRON_GYM, 15 ;22
	warp_event 15, 14, SAFFRON_GYM, 25 ;23
	warp_event 15, 16, SAFFRON_GYM, 13 ;24
	warp_event 18,  2, SAFFRON_GYM, 23 ;25
	warp_event 18,  4, SAFFRON_GYM, 7  ;26
	warp_event 18,  8, SAFFRON_GYM, 29 ;27
	warp_event 18, 10, SAFFRON_GYM, 5  ;28
	warp_event 18, 14, SAFFRON_GYM, 27 ;29
	warp_event 18, 16, SAFFRON_GYM, 31 ;30
	warp_event 11, 14, SAFFRON_GYM, 30 ;31
	warp_event 11, 10, SAFFRON_GYM, 4  ;32
	warp_event  8, 10, SAFFRON_GYM, 31 ;33

	def_coord_events

	def_bg_events
	bg_event  8, 15, BGEVENT_READ, SaffronGymStatue

	def_object_events
	object_event 10,  8, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGymSabrinaScript, EVENT_BEAT_ELITE_FOUR
	object_event  3,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicNathan, -1
	object_event 10,  3, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumHazel, -1
	object_event 17,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicFranklin, -1
	object_event  3,  9, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumNaomi, -1
	object_event 17,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicHerman, -1
	object_event  3, 15, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumStella, -1
	object_event 17, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicGreg, -1
	object_event  9, 14, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGymGuideScript, -1
;
	object_event 10,  8, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGymSabrinaRematchScript, EVENT_KANTO_LEADER_REMATCHES
