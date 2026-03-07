	object_const_def
	const SSANNE2F_RIVAL
	const SSANNE2F_CAPTAIN

SSAnne2F_MapScripts:
	def_scene_scripts
	scene_script SSAnne2FNoop1Scene, SCENE_SSANNE2F_RIVAL_BATTLE
	scene_script SSAnne2FNoop2Scene, SCENE_SSANNE2F_NOOP

	def_callbacks

SSAnne2FNoop1Scene:
SSAnne2FNoop2Scene:
	end

SSAnne2FRivalEncounterL:
	moveobject SSANNE2F_RIVAL, 34, 4
	; fallthrough
SSAnne2FRivalEncounterR:
	playmusic MUSIC_RIVAL_ENCOUNTER
	pause 20
	appear SSANNE2F_RIVAL
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalWalkDownMovement
	opentext
	writetext SSAnne2FRivalBeforeBattleText
	waitbutton
	closetext
	setevent EVENT_SSANNE_2F_RIVAL
	setlasttalked SSANNE2F_RIVAL
	winlosstext SSAnne2FRivalBattleWinText, SSAnne2FRivalBattleLossText
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .RivalBulbasaur
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .RivalCharmander
	loadtrainer RIVAL2, RIVAL2_1_SQUIRTLE
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalBulbasaur
	loadtrainer RIVAL2, RIVAL2_1_BULBASAUR
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalCharmander
	loadtrainer RIVAL2, RIVAL2_1_CHARMANDER
	startbattle
	reloadmapafterbattle
	sjump .FinishRival

.FinishRival
	opentext
	writetext SSAnne2FRivalAfterBattleText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	scall SSAnne2FRivalGoesAroundScript
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalLeavesMovement
	disappear SSANNE2F_RIVAL
	setscene SCENE_SSANNE2F_NOOP
	special RestartMapMusic
	end

SSAnne2FRivalGoesAroundScript:
	readvar VAR_XCOORD
	ifequal 34, .Right
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalLeftMovement
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalWalkDownMovement
	end
.Right
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalRightMovement
	end

SSAnne2FRivalBeforeBattleText:
	text "<RIVAL>: Bonjour!"
	line "<PLAYER>!"
	cont "Imagine seeing"
	roll "you here!"

;	para "<PLAYER>, were you"
;	line "really invited?"

	para "So how's your"
	line "#DEX coming?"
	cont "I already caught"
	roll "40 kinds, pal!"

	para "Different kinds"
	line "are everywhere!"
	cont "Crawl around in"
	roll "grassy areas!"
	done

SSAnne2FRivalBattleWinText:
	text "Humph!"

	para "At least you're"
	line "raising your"
	cont "#MON!"
	done

SSAnne2FRivalBattleLossText:
	text "<PLAYER>! What are"
	line "you, seasick?"

	para "You should shape"
	line "up, pal!"
	done

SSAnne2FRivalAfterBattleText:
	text "<RIVAL>: I heard"
	line "there was a CUT"
	cont "master on board,"
	roll "but he was just a"
	cont "seasick old man!"

	para "But, CUT itself is"
	line "really useful, so"
	cont "you should go see"
	roll "him! Smell ya!"
	done

SSAnne2FCaptainScript:
	checkevent EVENT_GOT_HM01_CUT
	iftrue .AlreadyGotCut
	opentext
	writetext SSAnne2FCaptainIntroText
	promptbutton
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .RightMovement
	ifequal LEFT, .LeftMovement
	sjump SSAnne2FRubCaptainsBack

.AlreadyGotCut
	jumptextfaceplayer SSAnne2FCaptainSetSailText

.RightMovement
	applymovement PLAYER, SSAnne2FCaptainsBackRightMovement
	sjump SSAnne2FRubCaptainsBack

.LeftMovement
	applymovement PLAYER, SSAnne2FCaptainsBackLeftMovement
	; fallthrough
SSAnne2FRubCaptainsBack:
	opentext
	writetext SSAnne2FRubCaptainsBackText
	playmusic MUSIC_HEAL
	pause 80
	special RestartMapMusic
	promptbutton
	turnobject SSANNE2F_CAPTAIN, DOWN
	writetext SSAnne2FCaptainThanksGivePagerText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_CUT
	writetext GotCutPagerText
	promptbutton
	writetext SSAnne2FCaptainExplainPagerGiveCutText
	promptbutton
;	verbosegiveitem TM_CUT ;removed
	setevent EVENT_GOT_HM01_CUT
	writetext SSAnne2FCaptainSetSailText
	waitbutton
	closetext
	setmapscene VERMILION_CITY, SCENE_VERMILIONCITY_SSANNE_LEAVES
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "CUT PAGER@"

GotCutPagerText:
	text "SCYTHER was"
	line "added to the PPS!"
	done

SSAnne2FCaptainIntroText:
	text "CAPTAIN: Ooargh…"
	line "I feel hideous…"
	cont "Urrp! Seasick…"
	done

SSAnne2FRubCaptainsBackText:
	text "<PLAYER> rubbed"
	line "the CAPTAIN's"
	cont "back!"

	para "Rub-rub…"
	line "Rub-rub…"
	done

SSAnne2FCaptainThanksGivePagerText:
	text "CAPTAIN: Whew!"
	line "Thank you! I"
	cont "feel much better!"

	para "You want to see"
	line "my CUT technique?"

	para "I could show you"
	line "if I wasn't ill…"

	para "I know! You can"
	line "have this!"
	done

SSAnne2FCaptainExplainPagerGiveCutText:
	text "That's a"
	line "CUT PAGER."

	para "It lets you"
	line "summon a #MON"
	cont "to cut small"
	roll "trees."
	done

SSAnne2FCaptainSetSailText:
	text "CAPTAIN: Whew!"

	para "Now that I'm not"
	line "sick any more, I"
	cont "guess it's time"
	roll "to set sail!"
	done

SSAnne2FWaiterScript:
	jumptextfaceplayer SSAnne2FWaiterText
SSAnne2FWaiterText:
	text "This ship, she is"
	line "a luxury liner"
	cont "for trainers!"

	para "At every port, we"
	line "hold parties with"
	cont "invited trainers!"
	done

SSAnne2FRivalLeftMovement:
	slow_step LEFT
	step_end

SSAnne2FRivalRightMovement:
	slow_step RIGHT
SSAnne2FRivalWalkDownMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end

SSAnne2FRivalLeavesMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

SSAnne2FCaptainsBackRightMovement:
	slow_step DOWN
	slow_step RIGHT
	turn_head UP
	step_end

SSAnne2FCaptainsBackLeftMovement:
	slow_step DOWN
	slow_step LEFT
	turn_head UP
	step_end

SSAnne2FCaptainsTrashCan:
	jumptext SSAnne2FCaptainsTrashCanText
SSAnne2FCaptainsTrashCanText:
	text "Yuck! Shouldn't"
	line "have looked!"
	done

SSAnne2FCaptainsBook:
	jumptext SSAnne2FCaptainsBookText
SSAnne2FCaptainsBookText:
	text "How to Conquer"
	line "Seasickness…"

	para "The CAPTAIN's"
	line "reading this!"
	done

SSAnne2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  6, SS_ANNE_1F, 2        ; 1
	warp_event  2, 10, SS_ANNE_BOW, 1       ; 2
	warp_event 34,  6, SS_ANNE_2F, 10       ; 3
	warp_event  9, 13, SS_ANNE_ROOMS_2F, 1  ; 4
	warp_event 13, 13, SS_ANNE_ROOMS_2F, 3  ; 5
	warp_event 17, 13, SS_ANNE_ROOMS_2F, 5  ; 6
	warp_event 21, 13, SS_ANNE_ROOMS_2F, 7  ; 7
	warp_event 25, 13, SS_ANNE_ROOMS_2F, 9  ; 8
	warp_event 29, 13, SS_ANNE_ROOMS_2F, 11 ; 9
	warp_event 20,  7, SS_ANNE_2F, 3        ; 10
	warp_event 21,  7, SS_ANNE_2F, 3        ; 11

	def_coord_events
	coord_event 34, 11, SCENE_SSANNE2F_RIVAL_BATTLE, SSAnne2FRivalEncounterL
	coord_event 35, 11, SCENE_SSANNE2F_RIVAL_BATTLE, SSAnne2FRivalEncounterR

	def_bg_events
	bg_event 20,  2, BGEVENT_READ, SSAnne2FCaptainsTrashCan
	bg_event 23,  4, BGEVENT_READ, SSAnne2FCaptainsBook

	def_object_events
	object_event 35,  6, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SSANNE_2F_RIVAL
	object_event 20,  3, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SSAnne2FCaptainScript, -1
	object_event 19, 15, SPRITE_CHEF, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FWaiterScript, -1
