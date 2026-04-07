	object_const_def
	const NATIONALPARKBUGCONTEST_BUG_CATCHER1
	const NATIONALPARKBUGCONTEST_BUG_CATCHER2
	const NATIONALPARKBUGCONTEST_COOLTRAINER_M
	const NATIONALPARKBUGCONTEST_POKEFAN_M
	const NATIONALPARKBUGCONTEST_BUG_CATCHER3
	const NATIONALPARKBUGCONTEST_YOUNGSTER1
	const NATIONALPARKBUGCONTEST_LASS
	const NATIONALPARKBUGCONTEST_BUG_CATCHER4
	const NATIONALPARKBUGCONTEST_YOUNGSTER2
	const NATIONALPARKBUGCONTEST_YOUNGSTER3
	const NATIONALPARKBUGCONTEST_POKE_BALL1
;	const NATIONALPARKBUGCONTEST_POKE_BALL2

NationalParkBugContest_MapScripts:
	def_scene_scripts

	def_callbacks

BugCatchingContestant1AScript:
	jumptextfaceplayer BugCatchingContestant1AText
BugCatchingContestant1AText:
	text "DON: I'm going to"
	line "win! Don't bother"
	cont "me."
	done

BugCatchingContestant2AScript:
	jumptextfaceplayer BugCatchingContestant2AText
BugCatchingContestant2AText:
	text "ED: My PARASECT"
	line "puts #MON to"
	cont "sleep with SPORE."
	done

BugCatchingContestant3AScript:
	jumptextfaceplayer BugCatchingContestant3AText
BugCatchingContestant3AText:
	text "NICK: I'm raising"
	line "fast #MON for"
	cont "battles."
	done

BugCatchingContestant4AScript:
	jumptextfaceplayer BugCatchingContestant4AText
BugCatchingContestant4AText:
	text "WILLIAM: I'm not"
	line "concerned about"
	cont "winning."

	para "I'm just looking"
	line "for rare #MON."
	done

BugCatchingContestant5AScript:
	jumptextfaceplayer BugCatchingContestant5AText
BugCatchingContestant5AText:
	text "BENNY: Ssh! You'll"
	line "scare off SCYTHER."

	para "I'll talk to you"
	line "later."
	done

BugCatchingContestant6AScript:
	jumptextfaceplayer BugCatchingContestant6AText
BugCatchingContestant6AText:
	text "BARRY: You should"
	line "weaken bug #MON"
	cont "first, then throw"
	roll "a BALL."
	done

BugCatchingContestant7AScript:
	jumptextfaceplayer BugCatchingContestant7AText
BugCatchingContestant7AText:
	text "CINDY: I love bug"
	line "#MON."

	para "I guess you must"
	line "like them too."
	done

BugCatchingContestant8AScript:
	jumptextfaceplayer BugCatchingContestant8AText
BugCatchingContestant8AText:
	text "JOSH: I've been"
	line "collecting bug"
	cont "#MON since I"
	roll "was a baby."

	para "There's no way I'm"
	line "going to lose!"
	done

BugCatchingContestant9AScript:
	jumptextfaceplayer BugCatchingContestant9AText
BugCatchingContestant9AText:
	text "SAMUEL: If you've"
	line "got the time to"
	cont "chat, go find some"
	roll "bug #MON."
	done

BugCatchingContestant10AScript:
	jumptextfaceplayer BugCatchingContestant10AText
BugCatchingContestant10AText:
	text "KIPP: I've studied"
	line "about bug #MON"
	cont "a lot."

	para "I'm going to win"
	line "for sure."
	done


; bg text, itemballs, and hidden items are all in NationalPark.asm
;NationalParkRelaxationSquareSign:
;	jumptext NationalParkRelaxationSquareText
;NationalParkRelaxationSquareText:
;	text "RELAXATION SQUARE"
;	line "NATIONAL PARK"
;	done

;NationalParkBattleNoticeSign:
;	jumptext NationalParkBattleNoticeText
;NationalParkBattleNoticeText:
;	text "     NOTICE!"
;
;	para "Please battle only"
;	line "in the grass."
;
;	para "NATIONAL PARK"
;	line "WARDEN's OFFICE"
;	done

;NationalParkHiddenFullHeal:
;	hiddenitem FULL_HEAL, EVENT_NATIONAL_PARK_HIDDEN_FULL_HEAL

;NationalParkSunStone:
;	itemball SUN_STONE

;NationalParkTMEnergyBall:
;	itemball TM_ENERGY_BALL


NationalParkBugContest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 18, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 33, 19, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 10, 47, ROUTE_35_NATIONAL_PARK_GATE, 1
	warp_event 11, 47, ROUTE_35_NATIONAL_PARK_GATE, 1

	def_coord_events

	def_bg_events
	bg_event 14, 44, BGEVENT_READ, NationalParkRelaxationSquareSign
	bg_event 26, 30, BGEVENT_READ, NationalParkBattleNoticeSign
	bg_event  6, 47, BGEVENT_ITEM, NationalParkHiddenFullHeal

	def_object_events
	object_event 19, 29, SPRITE_BOY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant1AScript, EVENT_BUG_CATCHING_CONTESTANT_1A
	object_event 28, 22, SPRITE_BOY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant2AScript, EVENT_BUG_CATCHING_CONTESTANT_2A
	object_event  9, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant3AScript, EVENT_BUG_CATCHING_CONTESTANT_3A
	object_event  7, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant4AScript, EVENT_BUG_CATCHING_CONTESTANT_4A
	object_event 23,  9, SPRITE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant5AScript, EVENT_BUG_CATCHING_CONTESTANT_5A
	object_event 27, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant6AScript, EVENT_BUG_CATCHING_CONTESTANT_6A
	object_event  7, 23, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant7AScript, EVENT_BUG_CATCHING_CONTESTANT_7A
	object_event 11, 27, SPRITE_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant8AScript, EVENT_BUG_CATCHING_CONTESTANT_8A
	object_event 16,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant9AScript, EVENT_BUG_CATCHING_CONTESTANT_9A
	object_event 17, 34, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BugCatchingContestant10AScript, EVENT_BUG_CATCHING_CONTESTANT_10A

	object_event 35, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NationalParkSunStone, EVENT_NATIONAL_PARK_SUN_STONE
	object_event  1, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NationalParkTMEnergyBall, EVENT_NATIONAL_PARK_TM_ENERGY_BALL
