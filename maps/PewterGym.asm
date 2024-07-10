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
	cont "me your best!"
	done

BrockWinLossText:
	text "BROCK: I took"
	line "you for granted."

	para "As proof of your"
	line "victory, here's"
	cont "the BOULDERBADGE!"
	done

ReceivedBoulderbadgeText:
	text "<PLAYER> received"
	line "BOULDERBADGE."
	done

BrockBoulderbadgeText:
	text "That's an official"
	line "POKEMON LEAGUE"
	cont "BADGE!"

	para "The technique"
	line "FLASH can now be"
	cont "used any time!"
	
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
	text "TM34 contains"
	line "BIDE!"

	para "Your #MON will"
	line "absorb damage in"
	cont "battle then pay"
	cont "it back double!"
	done

BrockAfterBattleText:
	text "By using a TM, a"
	line "#MON will"
	cont "instantly learn"
	line "a new move."

	para "Don't worry, TMs"
	line "are reusable so"
	cont "use them however"
	cont "you like."
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
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

CamperIsaacBeatenText:
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	done

CamperIsaacAfterBattleText:
	text "You're pretty hot,"
	line "but not as hot"
	cont "as BROCK!"
	done

PewterGymGuideScript:
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuideWinScript
	jumptextfaceplayer PewterGymGuideText

.PewterGymGuideWinScript:
	jumptextfaceplayer PewterGymGuideWinText

PewterGymGuideText:
	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	cont "#MON champ!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"

	para "The 1st #MON"
	line "out in a match is"
	cont "at the top of the"
	cont "#MON LIST!"

	para "By changing the"
	line "order of #MON,"
	cont "matches could be"
	cont "made easier!"
	done

PewterGymGuideWinText:
	text "Just as I thought!"
	line "You're #MON"
	cont "champ material!"
	done

PewterGymStatue:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

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
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  3,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperIsaac, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
