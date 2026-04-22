	object_const_def

VioletGym_MapScripts:
	def_scene_scripts

	def_callbacks

VioletGymFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .FightDone
	writetext FalknerIntroText
	waitbutton
	closetext
	winlosstext FalknerWinLossText, 0
	loadtrainer FALKNER, FALKNER1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FALKNER
	opentext
	writetext ReceivedZephyrBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
;	readvar VAR_BADGES
;	scall VioletGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM43_SKY_ATTACK
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_BIRD_KEEPER_RICK
	setevent EVENT_BEAT_BIRD_KEEPER_LUCAS
;	setmapscene ELMS_LAB, SCENE_ELMSLAB_NOOP
;	specialphonecall SPECIALCALL_ASSISTANT
	writetext FalknerZephyrBadgeText
	promptbutton
	verbosegiveitem TM_SKY_ATTACK
	iffalse .NoRoomForSkyAttack
	setevent EVENT_GOT_TM43_SKY_ATTACK
	writetext FalknerTMMudSlapText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext FalknerFightDoneText
	waitbutton
.NoRoomForSkyAttack:
	closetext
	end

;VioletGymActivateRockets:
;	ifequal 7, .RadioTowerRockets
;	ifequal 6, .GoldenrodRockets
;	end
;
;.GoldenrodRockets:
;	jumpstd GoldenrodRocketsScript
;
;.RadioTowerRockets:
;	jumpstd RadioTowerRocketsScript

FalknerIntroText:
	ntag "FALKNER:"
	text "I'm FALKNER, the"
	line "VIOLET #MON GYM"
	cont "leader!"

	para "People say you can"
	line "clip flying-type"
	cont "#MON's wings"
	roll "with a jolt of"
	cont "electricity…"

	para "I won't allow such"
	line "insults to bird"
	cont "#MON!"

	para "I'll show you the"
	line "real power of the"
	cont "bird #MON!"
	done

FalknerWinLossText:
	ntag "FALKNER:"
	text "…Darn! My dad's"
	line "cherished bird"
	cont "#MON…"

	para "All right."
	line "Take this."

	para "It's the official"
	line "#MON LEAGUE"
	cont "ZEPHYRBADGE."
	done

ReceivedZephyrBadgeText:
	text "<PLAYER> received"
	line "the ZEPHYRBADGE."
	done

FalknerZephyrBadgeText:
	ntag "FALKNER:"
	text "Here--take this"
	line "too."
	done

FalknerTMMudSlapText:
	ntag "FALKNER:"
	text "SKY ATTACK is the"
	line "strongest flying-"
	cont "type attack!"

	para "Enegy is stored"
	line "up, then released"
	cont "all at once on"
	roll "the next turn."
	done

;	text "By using a TM, a"
;	line "#MON will"
;
;	para "instantly learn a"
;	line "new move."
;
;	para "Don't worry, TMs"
;	line "are reusable so"
;
;	para "use them however"
;	line "you like."
;
;	para "TM31 contains"
;	line "MUD-SLAP."
;
;	para "It reduces the"
;	line "enemy's accuracy"
;
;	para "while it causes"
;	line "damage."
;
;	para "In other words, it"
;	line "is both defensive"
;	cont "and offensive."
;	done

FalknerFightDoneText:
	ntag "FALKNER:"
	text "I'm going to train"
	line "harder to become"
	cont "the greatest bird"
	roll "#MON master!"
	done

TrainerBirdKeeperRick:
	trainer BIRD_KEEPER, RICK, EVENT_BEAT_BIRD_KEEPER_RICK, BirdKeeperRickSeenText, BirdKeeperRickBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRickAfterBattleText
	waitbutton
	closetext
	end

BirdKeeperRickSeenText:
	text "The keyword is"
	line "guts!"

	para "Those here are"
	line "training night and"
	cont "day to become bird"
	roll "#MON masters."

	para "Come on!"
	done

BirdKeeperRickBeatenText:
	text "Gaaah!"
	done

BirdKeeperRickAfterBattleText:
	text "FALKNER's skills"
	line "are for real!"

	para "Don't get cocky"
	line "just because you"
	cont "beat me!"
	done

TrainerBirdKeeperLucas:
	trainer BIRD_KEEPER, LUCAS, EVENT_BEAT_BIRD_KEEPER_LUCAS, BirdKeeperLucasSeenText, BirdKeeperLucasBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperLucasAfterBattleText
	waitbutton
	closetext
	end

BirdKeeperLucasSeenText:
	text "Let me see if you"
	line "are good enough to"
	cont "face FALKNER!"
	done

BirdKeeperLucasBeatenText:
	text "This can't be"
	line "true!"
	done

BirdKeeperLucasAfterBattleText:
	text "You're definitely"
	line "good enough…"
	done

VioletGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .VioletGymGuideWinScript
	writetext VioletGymGuideText
	waitbutton
	closetext
	end

.VioletGymGuideWinScript:
	writetext VioletGymGuideWinText
	waitbutton
	closetext
	end

VioletGymGuideText:
	text "Hey! CHAMP!"

	para "The grass-type is"
	line "weak against the"
	cont "flying-type. Keep"
	roll "this in mind."
	done

VioletGymGuideWinText:
	text "Nice battle!"

	para "I expected no less"
	line "from you, CHAMP!"
	done

VioletGymStatue:
	gettrainername STRING_BUFFER_4, FALKNER, FALKNER1
	jumpstd GymStatue3Script
;	checkflag ENGINE_ZEPHYRBADGE
;	iftrue .Beaten
;	jumpstd GymStatue1Script
;.Beaten:
;	gettrainername STRING_BUFFER_4, FALKNER, FALKNER1
;	jumpstd GymStatue2Script

VioletGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, VIOLET_CITY, 2
	warp_event  5, 15, VIOLET_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, VioletGymStatue
	bg_event  6, 13, BGEVENT_READ, VioletGymStatue

	def_object_events
	object_event  5,  2, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletGymFalknerScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRick, -1 ;rod
	object_event  2, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperLucas, -1 ;abe
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymGuideScript, -1
