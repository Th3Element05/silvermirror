	object_const_def
	const CIANWOODGYM_CHUCK
	const CIANWOODGYM_BOULDER1

CianwoodGym_MapScripts:
	def_scene_scripts

	def_callbacks

GymClosedBlackbeltScript:
	jumptextfaceplayer CianwoodGymClosedBlackbeltText

CianwoodGymClosedBlackbeltText:
	text "There was a rock-"
	line "slide on Route 42."

	para "Our gym leader,"
	line "CHUCK, has gone"
	cont "to help clear it."
	done

CianwoodGymChuckScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CHUCK
	iftrue .FightDone
	writetext ChuckIntroText1
	waitbutton
	closetext
	turnobject CIANWOODGYM_CHUCK, RIGHT
	opentext
	writetext ChuckIntroText2
	waitbutton
	closetext
	applymovement CIANWOODGYM_BOULDER1, CianwoodGymMovement_ChuckChucksBoulder
	playsound SFX_STRENGTH
	earthquake 80
	disappear CIANWOODGYM_BOULDER1
	pause 30
	faceplayer
	opentext
	writetext ChuckIntroText3
	waitbutton
	closetext
	winlosstext ChuckLossText, 0
	loadtrainer CHUCK, CHUCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_BLACKBELT_LEE
	setevent EVENT_BEAT_BLACKBELT_LAO
	opentext
	writetext GetStormBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
;	readvar VAR_BADGES
;	scall CianwoodGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_HM06_WHIRLPOOL
	iftrue .AlreadyGotWhirlpool
	writetext ChuckExplainBadgeText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_WHIRLPOOL
	writetext GotWhirlpoolPagerText
	promptbutton
	giveitem HM_WHIRLPOOL
	setevent EVENT_GOT_HM06_WHIRLPOOL
	writetext ChuckExplainPagerText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "WHIRLPOOL PAGER@"

GotWhirlpoolPagerText: ;change whirlpool pager to POLIWRATH?
	text "AZUMARILL was"
	line "added to the PPS!"
	done

.AlreadyGotWhirlpool:
	writetext ChuckAfterText
	waitbutton
.BagFull:
	closetext
	end

;CianwoodGymActivateRockets:
;	ifequal 7, .RadioTowerRockets
;	ifequal 6, .GoldenrodRockets
;	end
;
;.GoldenrodRockets:
;	jumpstd GoldenrodRocketsScript
;
;.RadioTowerRockets:
;	jumpstd RadioTowerRocketsScript

ChuckIntroText1:
	text "WAHAHAH!"

	para "So you've made"
	line "it to CIANWOOD!"

	para "Let me tell you,"
	line "I'm tough!"

	para "My #MON will"
	line "crush stones and"
	cont "shatter bones!"

	para "Watch this!"
	done

ChuckIntroText2:
	text "CHUCK: Urggh!"
	line "…"

	para "Oooarrgh!"
	done

ChuckIntroText3:
	text "There! Scared now,"
	line "are you?"

	para "What?"
	line "It has nothing to"
	cont "do with #MON?"

	para "That's true!"

	para "Come on. See what"
	line "my #MON can do!"
	done

ChuckLossText:
	text "Wha? Huh?"
	line "I lost?"

	para "How about that!"
	line "You're worthy of"
	cont "the STORMBADGE!"
	done

GetStormBadgeText:
	text "<PLAYER> received"
	line "STORMBADGE."
	done

ChuckExplainBadgeText:
;	text "STORMBADGE makes"
;	line "all #MON up to"
;
;	para "L70 obey, even"
;	line "traded ones."
;
	text "You're strong."
	line "I think you might"
	cont "your #MON could"
	cont "handle anything."

	para "Take this, too!"
	done

ChuckExplainPagerText:
	text "That's a PAGER"
	line "for WHIRLPOOL!"

	para "With that, you can"
	line "cross the turbulent"
	cont "waters around the"
	cont "WHIRL ISLANDS."

	para "That's a dangerous"
	line "place. But I know"
	cont "you can handle it!"
	done

ChuckAfterText:
	text "WAHAHAH! I enjoyed"
	line "battling you!"

	para "But a loss is a"
	line "loss!"

	para "From now on, I'm"
	line "going to train 24"
	cont "hours a day!"
	done

;TrainerBlackbeltNob:
;	trainer BLACKBELT_T, NOB, EVENT_BEAT_BLACKBELT_NOB, BlackbeltNobSeenText, BlackbeltNobBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext BlackbeltNobAfterText
;	waitbutton
;	closetext
;	end
;
;BlackbeltNobSeenText:
;	text "Words are useless."
;	line "Let your fists do"
;	cont "the talking!"
;	done
;
;BlackbeltNobBeatenText:
;	text "…"
;	done
;
;BlackbeltNobAfterText:
;	text "I lost! "
;	line "I'm speechless!"
;	done

;TrainerBlackbeltLung:
;	trainer BLACKBELT_T, LUNG, EVENT_BEAT_BLACKBELT_LUNG, BlackbeltLungSeenText, BlackbeltLungBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext BlackbeltLungAfterText
;	waitbutton
;	closetext
;	end

;BlackbeltLungSeenText:
;	text "My raging fists"
;	line "will shatter your"
;	cont "#MON!"
;	done
;
;BlackbeltLungBeatenText:
;	text "I got shattered!"
;	done
;
;BlackbeltLungAfterText:
;	text "My #MON lost…"
;	line "My… my pride is"
;	cont "shattered…"
;	done

;TrainerBlackbeltYoshi:
;	trainer BLACKBELT_T, YOSHI, EVENT_BEAT_BLACKBELT_YOSHI, BlackbeltYoshiSeenText, BlackbeltYoshiBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext BlackbeltYoshiAfterText
;	waitbutton
;	closetext
;	end
;
;BlackbeltYoshiSeenText:
;	text "My #MON and I"
;	line "are bound togeth-"
;	cont "er by friendship."
;
;	para "Our bond will"
;	line "never be broken!"
;	done
;
;BlackbeltYoshiBeatenText:
;	text "This isn't real!"
;	done
;
;BlackbeltYoshiAfterText:
;	text "You seem to have a"
;	line "strong bond with"
;	cont "your #MON too!"
;	done

;TrainerBlackbeltLao:
;	trainer BLACKBELT_T, LAO, EVENT_BEAT_BLACKBELT_LAO, BlackbeltLaoSeenText, BlackbeltLaoBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext BlackbeltLaoAfterText
;	waitbutton
;	closetext
;	end
;
;BlackbeltLaoSeenText:
;	text "We martial artists"
;	line "fear nothing!"
;	done
;
;BlackbeltLaoBeatenText:
;	text "That's shocking!"
;	done
;
;BlackbeltLaoAfterText:
;	text "Fighting #MON"
;	line "are afraid of psy-"
;	cont "chics…"
;	done

CianwoodGymMovement_ChuckChucksBoulder:
	set_sliding
	big_step LEFT
	big_step UP
	fast_jump_step RIGHT
	remove_sliding
	step_end

CianwoodGymBoulder:
	jumpstd StrengthBoulderScript

OlivineGymStatue:
	gettrainername STRING_BUFFER_4, CHUCK, CHuCK1
	jumpstd GymStatue3Script
;	checkflag ENGINE_STORMBADGE
;	iftrue .Beaten
;	jumpstd GymStatue1Script
;.Beaten:
;	jumpstd GymStatue2Script

CianwoodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CIANWOOD_CITY, 2
	warp_event  5, 17, CIANWOOD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CianwoodGymStatue
	bg_event  6, 15, BGEVENT_READ, CianwoodGymStatue

	def_object_events
	object_event  4,  1, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodGymChuckScript, -1
	object_event  5,  1, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  4, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GymClosedBlackbeltScript, EVENT_CIANWOOD_GYM_CLOSED_BLACKBELTS
	object_event  5, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GymClosedBlackbeltScript, EVENT_CIANWOOD_GYM_CLOSED_BLACKBELTS
	object_event  2, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltNob, EVENT_CIANWOOD_GYM_TRAINERS
	object_event  7, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltLung, EVENT_CIANWOOD_GYM_TRAINERS
	object_event  4,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  5,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
;	object_event  3,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltYoshi, -1
;	object_event  5,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltLao, -1
;	object_event  3,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
