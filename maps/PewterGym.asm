	object_const_def

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGymBrockScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .FightDone
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_ISAAC
;	setmapscene PEWTER_CITY, SCENE_PEWTERCITY_NOOP
	setmapscene ROUTE_22, SCENE_ROUTE22_NOOP
;	setevent EVENT_PEWTER_CITY_BLOCKING_YOUNGSTER
	setevent EVENT_GOT_POKEBALLS_FROM_OAK
	opentext
	writetext ReceivedBoulderbadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	promptbutton
	writetext BrockBoulderbadgeText
	promptbutton
	setevent EVENT_GOT_POKEBALLS_FROM_OAK
	clearevent EVENT_BLUES_HOUSE_NEIGHBOR
	scall PewterGymCheckBadges
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM34_BIDE
	iftrue .SpeechAfterTM
	verbosegiveitem TM_BIDE
	setevent EVENT_GOT_TM34_BIDE
	writetext BrockTMBideText
	promptbutton
	; fallthrough
.SpeechAfterTM
	writetext BrockAfterBattleText
	waitbutton
	closetext
	checkevent EVENT_TALKED_TO_MOM_AFTER_GETTING_POKEDEX
	iffalse .DoMomCall
	end
.DoMomCall:
	specialphonecall SPECIALCALL_WORRIED
	end

PewterGymCheckBadges:
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

BrockIntroText:
	ntag "BROCK:"
	text "I'm BROCK!"
	line "I'm PEWTER's GYM"
	cont "LEADER!"

	para "I believe in rock"
	line "hard defense and"
	cont "determination!"

	para "That's why my"
	line "#MON are all"
	cont "the rock-type!"

	para "Do you still want"
	line "to challenge me?"
	cont "Fine then! Show"
	roll "me your best!"
	done

BrockWinLossText:
	ntag "BROCK:"
	text "I took you for"
	line "granted."

	para "As proof of your"
	line "victory, here's"
	cont "the BOULDERBADGE!"
	done

ReceivedBoulderbadgeText:
	text "<PLAYER> received"
	line "the BOULDERBADGE."
	done

BrockBoulderbadgeText:
	ntag "BROCK:"
	text "That's an official"
	line "POKEMON LEAGUE"
	cont "BADGE!"

;	para "The technique"
;	line "FLASH can now be"
;	cont "used any time!"
	
	para "There are all"
	line "kinds of trainers"
	cont "in the world!"

	para "You appear to be"
	line "very gifted as a"
	cont "#MON trainer!"

	para "Go to the GYM in"
	line "CERULEAN and test"
	cont "your abilities!"

	para "Wait! Take this"
	line "with you!"
	done

BrockTMBideText:
	ntag "BROCK:"
	text "TM34 contains"
	line "BIDE!"

	para "Your #MON will"
	line "absorb damage in"
	cont "battle then pay"
	roll "it back double!"
	done

BrockAfterBattleText:
	ntag "BROCK:"
	text "By using a TM, a"
	line "#MON will"
	cont "instantly learn"
	roll "a new move."

	para "Don't worry, TMs"
	line "are reusable so"
	cont "use them however"
	roll "you like."
	done

TrainerCamperIsaac:
	trainer CAMPER, ISAAC, EVENT_BEAT_CAMPER_ISAAC, CamperIsaacSeenText, CamperIsaacBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperIsaacAfterBattleText
	waitbutton
	closetext
	end

CamperIsaacSeenText:
	ntag "CAMPER:"
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

CamperIsaacBeatenText:
	ntag "ISAAC:"
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	done

CamperIsaacAfterBattleText:
	ntag "CAMPER:"
	text "You're pretty hot,"
	line "but not as hot"
	cont "as BROCK!"
	done

PewterGymGuideScript:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .ChampText
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuideWinScript
	jumptextfaceplayer PewterGymGuideText

.PewterGymGuideWinScript:
	jumptextfaceplayer PewterGymGuideWinText

.ChampText:
	jumptextfaceplayer PewterGymGuideChampText

PewterGymGuideText:
	ntag "GUIDE:"
	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	roll "#MON CHAMP!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"

	para "The 1st #MON"
	line "out in a match is"
	cont "at the top of the"
	roll "#MON LIST!"

	para "By changing the"
	line "order of #MON,"
	cont "matches could be"
	roll "made easier!"
	done

PewterGymGuideWinText:
	ntag "GUIDE:"
	text "Just as I thought!"
	line "You're #MON"
	cont "CHAMP material!"
	done

PewterGymGuideChampText::
	ntag "GUIDE:"
	text "Congratulations,"
	line "CHAMP!"

	para "I knew you could"
	line "go all the way!"
	done

PewterGymStatue:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Champion
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script
.Champion
	jumpstd GymStatue3Script


; rematch
PewterGymBrockRematchScript:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .GreatBattle
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK_2
	iftrue .skipintro
	writetext BrockRematchIntroText
	waitbutton
	sjump .startbattle

.skipintro
	writetext BrockAskRematchText
	yesorno
	iffalse .norematch
.startbattle
	closetext
	winlosstext BrockRematchWinLossText, 0
	loadtrainer BROCK, BROCK2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	scall PewterGymRematchesCheck
	farscall ViridianGymRematchesCompleteCheck
	opentext
.norematch
	writetext BrockRematchAfterBattleText
	waitbutton
	closetext
	end

.GreatBattle
	jumptextfaceplayer BrockRematchGreatBattleText

;PewterGymRematchesCheck:
;	checkevent EVENT_BEAT_LEADER_BLUE
;	iftrue .end
;;	checkevent EVENT_BEAT_BROCK_2
;;	iffalse .end
;	checkevent EVENT_BEAT_MISTY_2
;	iffalse .end
;	checkevent EVENT_BEAT_LTSURGE_2
;	iffalse .end
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

BrockRematchIntroText:
	ntag "BROCK:"
	text "<PLAYER>!"
	line "It's been a while!"

	para "The #MON LEAGUE"
	line "said there was a"
	cont "new CHAMPION!"

	para "You showed so much"
	line "potential when you"
	cont "challenged me for"
	roll "the BOULDERBADGE."

	para "But I never would"
	line "have imagined you"
	cont "would go on to be-"
	roll "come CHAMPION!"

	para "Please, let's have"
	line "another battle!"

	para "This time I won't"
	line "hold back!"
	done

BrockAskRematchText:
	ntag "BROCK:"
	text "Ready for another"
	line "rematch?"
	done

BrockRematchWinLossText:
	ntag "BROCK:"
	text "Wow! That's what I"
	line "should expect from"
	cont "the #MON LEAGUE"
	roll "CHAMPION."
	done

BrockRematchAfterBattleText:
	ntag "BROCK:"
	text "Whenever you feel"
	line "like battling, let"
	cont "me know."

	para "I'm always ready"
	line "for a challenge!"
	done

BrockRematchGreatBattleText:
	ntag "BROCK:"
	text "That was a great"
	line "battle!"
	done


PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, EVENT_BEAT_ELITE_FOUR
	object_event  3,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperIsaac, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
;
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterGymBrockRematchScript, EVENT_KANTO_LEADER_REMATCHES
