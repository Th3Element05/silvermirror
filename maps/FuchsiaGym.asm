	object_const_def

FuchsiaGym_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGymKogaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KOGA
	iftrue .FightDone
	writetext KogaIntroText
	waitbutton
	closetext
	winlosstext KogaBeaten1Text, 0
	loadtrainer KOGA, KOGA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KOGA
	setevent EVENT_BEAT_NINJA_KOA
	setevent EVENT_BEAT_NINJA_KHAI
	setevent EVENT_BEAT_SAGE_EZRA
	setevent EVENT_BEAT_SAGE_KYLO
	setevent EVENT_BEAT_SAGE_KODA
	setevent EVENT_BEAT_SAGE_MUSA
	opentext
	writetext PlayerReceivedSoulbadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
	promptbutton
	writetext KogaExplainSoulbadgeText
	promptbutton
	scall FuchsiaGymCheckBadges
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM06_TOXIC
	iftrue .GotToxic
	verbosegiveitem TM_TOXIC
	setevent EVENT_GOT_TM06_TOXIC
	writetext KogaExplainTMText
	promptbutton
	; fallthrough
.GotToxic:
	writetext KogaAfterBattleText
	waitbutton
	closetext
	end

FuchsiaGymCheckBadges:
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

KogaIntroText:
	ntag "KOGA:"
	text "Fwahahaha!"

	para "A mere child like"
	line "you dares to"
	cont "challenge me?"

	para "Very well, I"
	line "shall show you"
	cont "true terror as a"
	roll "NINJA MASTER!"

	para "You shall feel"
	line "the despair of"
	cont "poison and sleep"
	roll "techniques!"
	done

KogaBeaten1Text:
	ntag "KOGA:"
	text "Humph!"
	line "You have proven"
	cont "your worth!"

	para "Here! Take the"
	line "SOULBADGE!"
	done

PlayerReceivedSoulbadgeText:
	text "<PLAYER> received"
	line "the SOULBADGE."
	done

KogaExplainSoulbadgeText:
	ntag "KOGA:"
	text "Now that you have"
	line "the SOULBADGE,"
;	cont "your #MON can"
;	roll "use SURF outside"
;	cont "of battle!"
	cont "you are one step"
	roll "closer to the"
	cont "#MON LEAGUE!"

	para "Ah! Take this"
	line "too!"
	done

KogaExplainTMText:
	ntag "KOGA:"
	text "TM06 contains"
	line "TOXIC!"

	para "It is a secret"
	line "technique over"
	cont "400 years old!"
	done

KogaAfterBattleText:
	ntag "KOGA:"
	text "When afflicted by"
	line "TOXIC, #MON"
	cont "suffer more and"
	roll "more as battle"
	cont "progresses!"

	para "It will surely"
	line "terrorize foes!"
	done

TrainerNinjaKoa:
	trainer NINJA, KOA, EVENT_BEAT_NINJA_KOA, NinjaKoaSeenText, NinjaKoaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NinjaKoaAfterBattleText
	waitbutton
	closetext
	end

NinjaKoaSeenText:
	text "I also study the"
	line "way of the NINJA"
	cont "with master KOGA!"

	para "NINJAs have a long"
	line "history of using"
	cont "animals!"
	done

NinjaKoaBeatenText:
	text "I'm defeated!"
	done

NinjaKoaAfterBattleText:
	text "I still have much"
	line "to learn!"
	done

TrainerNinjaKhai:
	trainer NINJA, KHAI, EVENT_BEAT_NINJA_KHAI, NinjaKhaiSeenText, NinjaKhaiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NinjaKhaiAfterBattleText
	waitbutton
	closetext
	end

NinjaKhaiSeenText:
	text "Stop right there!"

	para "Our invisible"
	line "walls have you"
	cont "frustrated?"
	done

NinjaKhaiBeatenText:
	text "Whoa!"
	line "He's got it!"
	done

NinjaKhaiAfterBattleText:
	text "You impressed me!"
	line "Here's a hint!"

	para "Look very closely"
	line "for gaps in the"
	cont "invisible walls!"
	done

TrainerSageEzra:
	trainer SAGE, EZRA, EVENT_BEAT_SAGE_EZRA, SageEzraSeenText, SageEzraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageEzraAfterBattleText
	waitbutton
	closetext
	end

SageEzraSeenText:
	text "Master KOGA comes"
	line "from a long line"
	cont "of NINJAs!"

	para "What did you"
	line "descend from?"
	done

SageEzraBeatenText:
	text "Dropped my balls!"
	done

SageEzraAfterBattleText:
	text "Where there is"
	line "light, there is"
	cont "shadow!"

	para "Light and shadow!"
	line "Which do you"
	cont "choose?"
	done

TrainerSageKylo:
	trainer SAGE, KYLO, EVENT_BEAT_SAGE_KYLO, SageKyloSeenText, SageKyloBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageKyloAfterBattleText
	waitbutton
	closetext
	end

SageKyloSeenText:
	text "I want to become"
	line "a NINJA, so I"
	cont "joined this GYM!"
	done

SageKyloBeatenText:
	text "I'm done for!"
	done

SageKyloAfterBattleText:
	text "I will keep on"
	line "training under"
	cont "my NINJA MASTER,"
	roll "KOGA!"
	done

TrainerSageKoda:
	trainer SAGE, KODA, EVENT_BEAT_SAGE_KODA, SageKodaSeenText, SageKodaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageKodaAfterBattleText
	waitbutton
	closetext
	end

SageKodaSeenText:
	text "Let's see you"
	line "beat my special"
	cont "techniques!"
	done

SageKodaBeatenText:
	text "You had me"
	line "fooled!"
	done

SageKodaAfterBattleText:
	text "I like poison and"
	line "sleep techniques,"
	cont "since they linger"
	roll "after battle!"
	done

TrainerSageMusa:
	trainer SAGE, MUSA, EVENT_BEAT_SAGE_MUSA, SageMusaSeenText, SageMusaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageMusaAfterBattleText
	waitbutton
	closetext
	end

SageMusaSeenText:
	text "Strength isn't"
	line "the key for"
	cont "#MON!"

	para "It's strategy!"

	para "I'll show you how"
	line "strategy can beat"
	cont "brute strength!"
	done

SageMusaBeatenText:
	text "What?"
	line "Extraordinary!"
	done

SageMusaAfterBattleText:
	text "So, you mix brawn"
	line "with brains?"
	cont "Good strategy!"
	done

FuchsiaGymGuideScript:
	checkevent EVENT_BEAT_KOGA
	iftrue .FuchsiaGymGuideWinScript
	jumptextfaceplayer FuchsiaGymGuideText
.FuchsiaGymGuideWinScript:
	jumptextfaceplayer FuchsiaGymGuideWinText

FuchsiaGymGuideText:
	text "Yo! CHAMP in the"
	line "making!"

	para "FUCHSIA GYM is"
	line "riddled with"
	cont "invisible walls!"

	para "KOGA might appear"
	line "close, but he's"
	cont "blocked off!"

	para "You have to find"
	line "gaps in the walls"
	cont "to reach him!"
	done

FuchsiaGymGuideWinText:
	text "It's amazing how"
	line "NINJA can terrify"
	cont "even now!"
	done

FuchsiaGymStatue:
	gettrainername STRING_BUFFER_4, KOGA, KOGA1
	checkflag ENGINE_SOULBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

FuchsiaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, FUCHSIA_CITY, 6
	warp_event  5, 17, FUCHSIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, FuchsiaGymStatue
	bg_event  6, 15, BGEVENT_READ, FuchsiaGymStatue

	def_object_events
	object_event  4, 10, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaGymKogaScript, EVENT_NINJA_CHALLENGE_IN_PROGRESS
	object_event  8,  2, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 2, TrainerNinjaKoa, -1
	object_event  3,  5, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 2, TrainerNinjaKhai, -1
	object_event  2,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageEzra, -1
	object_event  7,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageKylo, -1
	object_event  1, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSageKoda, -1
	object_event  8, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageMusa, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, FuchsiaGymGuideScript, -1

;.GrayOverTreeOBPalette