	object_const_def
	const CIANWOODGYM_CHUCK
	const CIANWOODGYM_BOULDER1

CianwoodGym_MapScripts:
	def_scene_scripts

	def_callbacks

GymClosedBlackbeltScript:
	jumptextfaceplayer CianwoodGymClosedBlackbeltText

CianwoodGymClosedBlackbeltText:
	text "There was a land-"
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
	giveitem TM_WHIRLPOOL
	setevent EVENT_GOT_HM06_WHIRLPOOL
	writetext ChuckExplainPagerText
	waitbutton
	closetext
	end

.AlreadyGotWhirlpool:
	writetext ChuckAfterText
	waitbutton
;.BagFull:
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "WHIRLPOOL PAGER@"

GotWhirlpoolPagerText: ;change whirlpool pager to POLIWRATH?
	text "POLIWRATH was"
	line "added to the PPS!"
	done

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
	text "You're strong."
	line "I think you might"
	cont "your #MON could"
	roll "handle anything."

	para "Take this, too!"
	done

ChuckExplainPagerText:
	text "That's a PAGER"
	line "for WHIRLPOOL!"

	para "With that, you can"
	line "cross the turbulent"
	cont "waters around the"
	roll "WHIRL ISLANDS."

	para "People say that a"
	line "powerful #MON"
	cont "lurks deep within"
	roll "WHIRL ISLANDs."

	para "But I've searched"
	line "there and never"
	cont "found anything."

	para "It's still a"
	line "dangerous place."
	cont "But I know you can"
	roll "handle yourself."
;
;	para "That's a dangerous"
;	line "place. But I know"
;	cont "you can handle it!"
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

CianwoodGymMovement_ChuckChucksBoulder:
	set_sliding
	big_step LEFT
	big_step UP
	fast_jump_step RIGHT
	remove_sliding
	step_end

TrainerBlackbeltLee:
	trainer BLACKBELT_T, LEE, EVENT_BEAT_BLACKBELT_LEE, BlackbeltLeeSeenText, BlackbeltLeeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltLeeAfterText
	waitbutton
	closetext
	end

BlackbeltLeeSeenText:
	text "My #MON and I"
	line "are bound togeth-"
	cont "er by friendship."

	para "Our bond will"
	line "never be broken!"
	done

BlackbeltLeeBeatenText:
	text "This isn't real!"
	done

BlackbeltLeeAfterText:
	text "You seem to have a"
	line "strong bond with"
	cont "your #MON too!"
	done

TrainerBlackbeltLao:
	trainer BLACKBELT_T, LAO, EVENT_BEAT_BLACKBELT_LAO, BlackbeltLaoSeenText, BlackbeltLaoBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltLaoAfterText
	waitbutton
	closetext
	end

BlackbeltLaoSeenText:
	text "We martial artists"
	line "fear nothing!"
	done

BlackbeltLaoBeatenText:
	text "That's shocking!"
	done

BlackbeltLaoAfterText:
	text "Fighting #MON"
	line "are afraid of"
	cont "psychics…"
	done

CianwoodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue .CianwoodGymGuideWinScript
	opentext
	writetext CianwoodGymGuideText
	waitbutton
	closetext
	end

.CianwoodGymGuideWinScript:
	opentext
	writetext CianwoodGymGuideWinText
	waitbutton
	closetext
	end

CianwoodGymGuideText:
	text "The GYM LEADER"
	cont "here uses the"
	cont "fighting-type."

	para "So you should"
	line "confound him with"
	cont "psychic #MON."

	para "Wipe out his #-"
	line "MON before they"
	cont "can use their"
	roll "physical strength."
	done

CianwoodGymGuideWinText:
	text "<PLAYER>! You won!"
	line "I could tell by"
	cont "looking at you!"
	done

CianwoodGymStatue:
	gettrainername STRING_BUFFER_4, CHUCK, CHUCK1
	jumpstd GymStatue3Script
;	checkflag ENGINE_STORMBADGE
;	iftrue .Beaten
;	jumpstd GymStatue1Script
;.Beaten:
;	jumpstd GymStatue2Script

CianwoodGymBoulder:
	jumpstd StrengthBoulderScript

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
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymGuideScript, -1
	object_event  4, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GymClosedBlackbeltScript, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event  5, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GymClosedBlackbeltScript, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event  2, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltLee, EVENT_CIANWOOD_GYM_TRAINERS ;nob
	object_event  7, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltLao, EVENT_CIANWOOD_GYM_TRAINERS ;lung
	object_event  4,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  5,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
;	object_event  3,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltYoshi, -1
;	object_event  5,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltLao, -1
;	object_event  3,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
