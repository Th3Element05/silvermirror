	object_const_def
	const ROUTE22_RIVAL

Route22_MapScripts:
	def_scene_scripts
	scene_script Route22Noop1Scene, SCENE_ROUTE22_NOOP
	scene_script Route22Noop2Scene, SCENE_ROUTE22_RIVAL

	def_callbacks

; scene scripts
Route22Noop1Scene:
Route22Noop2Scene:
	end

; scripts
Route22RivalBattleHigh:
	moveobject ROUTE22_RIVAL, 24, 4
Route22RivalBattleLow:
	playmusic MUSIC_RIVAL_ENCOUNTER
	pause 15
	appear ROUTE22_RIVAL
	applymovement ROUTE22_RIVAL, Route22RivalApproachMovement
; check badges here to jump to second battle script
	opentext
	writetext Route22RivalBeforeBattleText1
	waitbutton
	closetext
	winlosstext Route22RivalBattleWinText1, Route22RivalBattleLossText1
	setlasttalked ROUTE22_RIVAL
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .RivalBulbasaur1
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .RivalCharmander1
;	winlosstext Route22RivalBattleWinText1, Route22RivalBattleLossText1
;	setlasttalked ROUTE22_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_SQUIRTLE
	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
;	dontrestartmapmusic
	reloadmap
	sjump .FinishRival1
.RivalBulbasaur1:
;	winlosstext Route22RivalBattleWinText1, Route22RivalBattleLossText1
;	setlasttalked ROUTE22_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_BULBASAUR
	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
;	dontrestartmapmusic
	reloadmap
	sjump .FinishRival1
.RivalCharmander1:
;	winlosstext Route22RivalBattleWinText1, Route22RivalBattleLossText1
;	setlasttalked ROUTE22_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_CHARMANDER
	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
;	dontrestartmapmusic
	reloadmap
	sjump .FinishRival1

.FinishRival1:
;	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Route22RivalAfterBattleText1
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	scall Route22RivalGoesAroundScript
	applymovement ROUTE22_RIVAL, Route22RivalLeavesMovement1
	disappear ROUTE22_RIVAL
	setscene SCENE_ROUTE22_NOOP
	special HealParty
;	special FadeOutMusic
;	playmapmusic
	special RestartMapMusic
	end

Route22RivalGoesAroundScript:
	readvar VAR_YCOORD
	ifequal 4, .Skip
	applymovement ROUTE22_RIVAL, Route22RivalOverMovement
	end
.Skip
	applymovement ROUTE22_RIVAL, Route22RivalUnderMovement
	end

; movements
Route22RivalApproachMovement:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

Route22RivalOverMovement:
	slow_step UP
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step DOWN
	slow_step DOWN
	step_end

Route22RivalUnderMovement:
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

Route22RivalLeavesMovement1:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end

Route22RivalLeavesMovement2:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

; npc text
Route22RivalBeforeBattleText1:
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "You're going to"
	line "#MON LEAGUE?"

	para "Forget it! You"
	line "probably don't"
	cont "have any BADGEs!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #MON"
	cont "get any stronger?"
	done

Route22RivalAfterBattleText1:
	text "I heard #MON"
	line "LEAGUE has many"
	cont "tough trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

Route22RivalBattleWinText1:
	text "Awww!"
	line "You just lucked"
	cont "out!"
	done

Route22RivalBattleLossText1:
	text "<RIVAL>: What?"
	line "Why do I have 2"
	cont "#MON?"

	para "You should catch"
	line "some more too!"
	done

Route22RivalBeforeBattleText2:
	text "<RIVAL>: What?"
	line "<PLAYER>! What a"
	cont "surprise to see"
	cont "you here!"

	para "So you're going to"
	line "#MON LEAGUE?"

	para "You collected all"
	line "the BADGEs too?"
	cont "That's cool!"

	para "Then I'll whip you"
	line "<PLAYER> as a"
	cont "warm up for"
	cont "#MON LEAGUE!"

	para "Come on!"
	done

Route22RivalAfterBattleText2:
	text "That loosened me"
	line "up! I'm ready for"
	cont "#MON LEAGUE!"

	para "<PLAYER>, you need"
	line "more practice!"

	para "But hey, you know"
	line "that! I'm out of"
	cont "here. Smell ya!"
	done

Route22RivalBattleWinText2:
	text "What!?"

	para "I was just"
	line "careless!"
	done

Route22RivalBattleLossText2:
	text "<RIVAL>: Hahaha!"
	line "<PLAYER>! That's"
	cont "your best? You're"
	cont "nowhere near as"
	cont "good as me, pal!"

	para "Go train some"
	line "more! You loser!"
	done

; bg text
VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "#MON LEAGUE"

	para "VICTORY ROAD"
	line "ENTRANCE"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, VICTORY_ROAD_GATE, 1
;	warp_event  4, 10, ROUTE_28_GATE, 3
;	warp_event  4, 11, ROUTE_28_GATE, 4
	warp_event  9, 15, ROUTE_26_GATE, 1
	warp_event 10, 15, ROUTE_26_GATE, 2

	def_coord_events
	coord_event 29,  4, SCENE_ROUTE22_RIVAL, Route22RivalBattleHigh
	coord_event 29,  5, SCENE_ROUTE22_RIVAL, Route22RivalBattleLow

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, VictoryRoadEntranceSign

	def_object_events
	object_event 24,  5, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlueScript, EVENT_ROUTE_22_RIVAL
