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
	text "The MARSHBADGE"
	line "makes #MON up"
	cont "to L70 obey you!"

	para "Stronger #MON"
	line "will become wild,"
	cont "ignoring your"
	roll "orders in battle!"

	para "Just don't raise"
	line "your #MON too"
	cont "much!"

	para "Wait, please take"
	line "this TM with you!"
	done

SabrinaExplainTMText:
;	text "TM46 is PSYWAVE!"
;	line "It uses powerful"
;	cont "psychic waves to"
;	cont "inflict damage!"
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
	text "SAFFRON #MON"
	line "GYM is famous for"
	cont "its psychics!"

	para "You want to see"
	line "SABRINA!"
	cont "I can tell!"
	done

PsychicNathanBeatenText:
	text "Arrrgh!"
	done

PsychicNathanAfterBattleText:
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
	text "SABRINA is younger"
	line "than I, but I"
	cont "respect her!"
	done

MediumHazelBeatenText:
	text "Not"
	line "good enough!"
	done

MediumHazelAfterBattleText:
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
	text "Does our unseen"
	line "power scare you?"
	done

PsychicFranklinBeatenText:
	text "I never"
	line "foresaw this!"
	done

PsychicFranklinAfterBattleText:
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
	text "#MON take on"
	line "the appearance of"
	cont "their trainers."

	para "Your #MON must"
	line "be tough, then!"
	done

MediumNaomiBeatenText:
	text "I knew"
	line "it!"
	done

MediumNaomiAfterBattleText:
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
	text "You know that"
	line "power alone isn't"
	cont "enough!"
	done

PsychicHermanBeatenText:
	text "I don't"
	line "believe this!"
	done

PsychicHermanAfterBattleText:
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
	text "You and I,"
	line "our #MON"
	cont "shall fight!"
	done

MediumStellaBeatenText:
	text "I lost"
	line "after all!"
	done

MediumStellaAfterBattleText:
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
	text "SABRINA is young,"
	line "but she's also"
	cont "our LEADER!"

	para "You won't reach"
	line "her easily!"
	done

PsychicGregBeatenText:
	text "I lost"
	line "my concentration!"
	done

PsychicGregAfterBattleText:
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
	checkevent EVENT_BEAT_SABRINA
	iftrue .SaffronGymGuideWinScript
	jumptextfaceplayer SaffronGymGuideText

.SaffronGymGuideWinScript:
	jumptextfaceplayer SaffronGymGuideWinText

SaffronGymGuideText:
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
	text "Psychic power,"
	line "huh?"

	para "If I had that,"
	line "I'd make a bundle"
	cont "at the slots!"
	done

SaffronGymStatue:
	gettrainername STRING_BUFFER_4, SABRINA, SABRINA1
	checkflag ENGINE_MARSHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

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
;
;	warp_event  9, 17, SAFFRON_CITY, 2 ;1
;	warp_event 10, 17, SAFFRON_CITY, 2 ;2
;	warp_event 11, 14, SAFFRON_GYM, 18 ;3
;	warp_event 18, 14, SAFFRON_GYM, 19 ;4
;	warp_event 18, 10, SAFFRON_GYM, 20 ;5
;	warp_event  1, 10, SAFFRON_GYM, 21 ;6
;	warp_event  4,  2, SAFFRON_GYM, 22 ;7
;	warp_event 11,  4, SAFFRON_GYM, 23 ;8
;	warp_event  1, 14, SAFFRON_GYM, 24 ;9
;	warp_event 18,  2, SAFFRON_GYM, 25 ;10
;	warp_event 15, 16, SAFFRON_GYM, 26 ;11
;	warp_event  4, 16, SAFFRON_GYM, 27 ;12
;	warp_event  4,  8, SAFFRON_GYM, 28 ;13
;	warp_event  8,  2, SAFFRON_GYM, 29 ;14
;	warp_event 15,  8, SAFFRON_GYM, 30 ;15
;	warp_event 15,  4, SAFFRON_GYM, 31 ;16
;	warp_event  1,  4, SAFFRON_GYM, 32 ;17
;	warp_event 18, 16, SAFFRON_GYM, 3  ;18
;	warp_event 18,  8, SAFFRON_GYM, 4  ;19
;	warp_event  1,  8, SAFFRON_GYM, 5  ;20
;	warp_event  4,  4, SAFFRON_GYM, 6  ;21
;	warp_event 11,  2, SAFFRON_GYM, 7  ;22
;	warp_event  1, 16, SAFFRON_GYM, 8  ;23
;	warp_event 18,  4, SAFFRON_GYM, 9  ;24
;	warp_event 15, 14, SAFFRON_GYM, 10 ;25
;	warp_event  4, 14, SAFFRON_GYM, 11 ;26
;	warp_event  4, 10, SAFFRON_GYM, 12 ;27
;	warp_event  8,  4, SAFFRON_GYM, 13 ;28
;	warp_event 15, 10, SAFFRON_GYM, 14 ;29
;	warp_event 15,  2, SAFFRON_GYM, 15 ;30
;	warp_event  1,  2, SAFFRON_GYM, 16 ;31
;	warp_event 11, 10, SAFFRON_GYM, 17 ;32
;	warp_event  8, 10, SAFFRON_GYM, 3  ;33

	def_coord_events

	def_bg_events
	bg_event  8, 15, BGEVENT_READ, SaffronGymStatue

	def_object_events
	object_event 10,  8, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGymSabrinaScript, -1
	object_event  3,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicNathan, -1
	object_event 10,  3, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumHazel, -1
	object_event 17,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicFranklin, -1
	object_event  3,  9, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumNaomi, -1
	object_event 17,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicHerman, -1
	object_event  3, 15, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumStella, -1
	object_event 17, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPsychicGreg, -1
	object_event  9, 14, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGymGuideScript, -1
