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
	winlosstext KogaBeatenText, 0
	loadtrainer KOGA, KOGA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KOGA
	setevent EVENT_BEAT_SAGE_KOJI
	setevent EVENT_BEAT_SAGE_KHAI
	setevent EVENT_BEAT_JUGGLER_HORTON
	setevent EVENT_BEAT_JUGGLER_ADAM
	setevent EVENT_BEAT_JUGGLER_AUSTIN
	setevent EVENT_BEAT_JUGGLER_EMMETT
	opentext
	writetext PlayerReceivedSoulbadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
	promptbutton
	writetext KogaExplainSoulbadgeText
	promptbutton
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

KogaIntroText:
	text "KOGA: Fwahahaha!"

	para "A mere child like"
	line "you dares to"
	cont "challenge me?"

	para "Very well, I"
	line "shall show you"
	cont "true terror as a"
	cont "ninja master!"

	para "You shall feel"
	line "the despair of"
	cont "poison and sleep"
	cont "techniques!"
	done

KogaBeatenText:
	text "Humph!"
	line "You have proven"
	cont "your worth!"

	para "Here! Take the"
	line "SOULBADGE!"
	done

PlayerReceivedSoulbadgeText:
	text "<PLAYER> received"
	line "SOULBADGE."
	done

KogaExplainSoulbadgeText:
	text "Now that you have"
	line "the SOULBADGE,"
	cont "your #MON can"
	line "use SURF outside"
	cont "of battle!"

	para "Ah! Take this"
	line "too!"
	done

KogaExplainTMText:
	text "TM06 contains"
	line "TOXIC!"

	para "It is a secret"
	line "technique over"
	cont "400 years old!"
	done

KogaAfterBattleText:
	text "When afflicted by"
	line "TOXIC, #MON"
	cont "suffer more and"
	cont "more as battle"
	cont "progresses!"

	para "It will surely"
	line "terrorize foes!"
	done

TrainerSageKoji:
	trainer SAGE, KOJI, EVENT_BEAT_SAGE_KOJI, SageKojiSeenText, SageKojiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageKojiAfterBattleText
	waitbutton
	closetext
	end

SageKojiSeenText:
	text "I also study the"
	line "way of the ninja"
	cont "with master KOGA!"

	para "Ninja have a long"
	line "history of using"
	cont "animals!"
	done

SageKojiBeatenText:
	text "I'm defeated!"
	done

SageKojiAfterBattleText:
	text "I still have much"
	line "to learn!"
	done

TrainerSageKhai:
	trainer SAGE, KHAI, EVENT_BEAT_SAGE_KHAI, SageKhaiSeenText, SageKhaiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageKhaiAfterBattleText
	waitbutton
	closetext
	end

SageKhaiSeenText:
	text "Stop right there!"

	para "Our invisible"
	line "walls have you"
	cont "frustrated?"
	done

SageKhaiBeatenText:
	text "Whoa!"
	line "He's got it!"
	done

SageKhaiAfterBattleText:
	text "You impressed me!"
	line "Here's a hint!"

	para "Look very closely"
	line "for gaps in the"
	cont "invisible walls!"
	done

TrainerJugglerHorton:
	trainer JUGGLER, HORTON, EVENT_BEAT_JUGGLER_HORTON, JugglerHortonSeenText, JugglerHortonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext JugglerHortonAfterBattleText
	waitbutton
	closetext
	end

JugglerHortonSeenText:
	text "Master KOGA comes"
	line "from a long line"
	cont "of ninjas!"

	para "What did you"
	line "descend from?"
	done

JugglerHortonBeatenText:
	text "Dropped"
	line "my balls!"
	done

JugglerHortonAfterBattleText:
	text "Where there is"
	line "light, there is"
	cont "shadow!"

	para "Light and shadow!"
	line "Which do you"
	cont "choose?"
	done

TrainerJugglerAdam:
	trainer JUGGLER, ADAM, EVENT_BEAT_JUGGLER_ADAM, JugglerAdamSeenText, JugglerAdamBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext JugglerAdamAfterBattleText
	waitbutton
	closetext
	end

JugglerAdamSeenText:
	text "I wanted to become"
	line "a ninja, so I"
	cont "joined this GYM!"
	done

JugglerAdamBeatenText:
	text "I'm done"
	line "for!"
	done

JugglerAdamAfterBattleText:
	text "I will keep on"
	line "training under"
	cont "KOGA, my ninja"
	cont "master!"
	done

TrainerJugglerAustin:
	trainer JUGGLER, AUSTIN, EVENT_BEAT_JUGGLER_AUSTIN, JugglerAustinSeenText, JugglerAustinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext JugglerAustinAfterBattleText
	waitbutton
	closetext
	end

JugglerAustinSeenText:
	text "Let's see you"
	line "beat my special"
	cont "techniques!"
	done

JugglerAustinBeatenText:
	text "You"
	line "had me fooled!"
	done

JugglerAustinAfterBattleText:
	text "I like poison and"
	line "sleep techniques,"
	cont "as they linger"
	cont "after battle!"
	done

TrainerJugglerEmmett:
	trainer JUGGLER, EMMETT, EVENT_BEAT_JUGGLER_EMMETT, JugglerEmmettSeenText, JugglerEmmettBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext JugglerEmmettAfterBattleText
	waitbutton
	closetext
	end

JugglerEmmettSeenText:
	text "Strength isn't"
	line "the key for"
	cont "#MON!"

	para "It's strategy!"

	para "I'll show you how"
	line "strategy can beat"
	cont "brute strength!"
	done

JugglerEmmettBeatenText:
	text "What?"
	line "Extraordinary!"
	done

JugglerEmmettAfterBattleText:
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
	text "Yo! Champ in"
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
	line "ninja can terrify"
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
	warp_event  4, 17, FUCHSIA_CITY, 3
	warp_event  5, 17, FUCHSIA_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, FuchsiaGymStatue
	bg_event  6, 15, BGEVENT_READ, FuchsiaGymStatue

	def_object_events
	object_event  4, 10, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaGymKogaScript, -1
	object_event  8,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageKoji, -1
	object_event  3,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageKhai, -1
	object_event  2,  7, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerJugglerHorton, -1
	object_event  7,  8, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerAdam, -1
	object_event  1, 12, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerJugglerAustin, -1
	object_event  8, 13, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerJugglerEmmett, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, FuchsiaGymGuideScript, -1
