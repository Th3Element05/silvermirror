	object_const_def
	const LANCESROOM_LANCE
	const LANCESROOM_RIVAL
	const LANCESROOM_OAK

E4LancesRoom_MapScripts:
	def_scene_scripts
	scene_script LancesRoomLockDoorScene, SCENE_LANCESROOM_LOCK_DOOR
	scene_script LancesRoomNoopScene,     SCENE_LANCESROOM_APPROACH_LANCE

	def_callbacks
	callback MAPCALLBACK_TILES, LancesRoomDoorsCallback

LancesRoomLockDoorScene:
	sdefer LancesRoomDoorLocksBehindYouScript
LancesRoomNoopScene:
	end

LancesRoomDoorsCallback:
	checkevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 20, $0f ; wall
.KeepEntranceOpen:
	checkevent EVENT_LANCES_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 0, $0e ; open door
.KeepExitClosed:
	endcallback

LancesRoomDoorLocksBehindYouScript:
	applymovement PLAYER, LancesRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 20, $0f ; wall
	reloadmappart
	closetext
	setscene SCENE_LANCESROOM_APPROACH_LANCE
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	end

Script_ApproachLanceFromLeft:
; stop from leaving?
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromLeft
	sjump LancesRoomLanceScript

Script_ApproachLanceFromRight:
; stop from leaving?
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromRight
LancesRoomLanceScript:
	checkevent EVENT_BEAT_E4_LANCE
	iftrue LanceScript_AfterBattle
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	writetext LanceBattleIntroText
	waitbutton
	closetext
	winlosstext LanceBattleWinText, 0
	setlasttalked LANCESROOM_LANCE
	loadtrainer LANCE, LANCE1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_E4_LANCE
	playmusic MUSIC_GYM_VICTORY
	opentext
	writetext LanceBattleAfterText_1
	promptbutton
	special FadeOutMusic
	writetext LanceBattleAfterText_2
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0e ; open door
	reloadmappart
	appear LANCESROOM_RIVAL
	turnobject LANCESROOM_LANCE, UP
	turnobject PLAYER, UP
	applymovement LANCESROOM_RIVAL, Movement_RivalWalksIn
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0d ; close door
	reloadmappart
	opentext
	writetext LanceRivalIntroText
	waitbutton
	closetext
	playmapmusic
	applymovement LANCESROOM_LANCE, Movement_LanceStepsAside
	end

LancesRoomRivalScript:
	readvar VAR_FACING
	ifequal DOWN, .TalkRivalBehind
	ifequal LEFT, .TalkRivalRight
	ifequal UP, .TalkRivalFront
	sjump LancesRoomRivalBattleScript
	
.TalkRivalBehind
	applymovement PLAYER, Movement_TalkRivalBehind
	sjump LancesRoomRivalBattleScript

.TalkRivalRight
	applymovement PLAYER, Movement_TalkRivalRight
	sjump LancesRoomRivalBattleScript

.TalkRivalFront
	applymovement PLAYER, Movement_TalkRivalFront
;	sjump LancesRoomRivalBattleScript
	; fallthrough
LancesRoomRivalBattleScript:
	turnobject LANCESROOM_RIVAL, LEFT
	opentext
	writetext ChampionBattleIntroText
	waitbutton
	closetext
	setlasttalked LANCESROOM_RIVAL
	winlosstext ChampionBattleWinText, ChampionBattleLossText
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .ChampionBulbasaur
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .ChampionCharmander
	getmonname STRING_BUFFER_3, CHARMANDER
	loadtrainer CHAMPION, CHAMPION1_SQUIRTLE
	sjump .DoChampionBattle
.ChampionBulbasaur
	getmonname STRING_BUFFER_3, SQUIRTLE
	loadtrainer CHAMPION, CHAMPION1_BULBASAUR
	sjump .DoChampionBattle
.ChampionCharmander
	getmonname STRING_BUFFER_3, BULBASAUR
	loadtrainer CHAMPION, CHAMPION1_CHARMANDER
;	sjump .FinishChampion
	; fallthrough
.DoChampionBattle
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_E4_CHAMPION
	playmusic MUSIC_GYM_VICTORY
	opentext
	writetext ChampionBattleAfterText
	waitbutton
	closetext
	musicfadeout MUSIC_PROF_OAK, 16
	pause 30
	showemote EMOTE_SHOCK, LANCESROOM_RIVAL, 15
	turnobject LANCESROOM_RIVAL, DOWN
	pause 10
	turnobject PLAYER, DOWN
	opentext
	writetext LancesRoomOakSaysPlayerNameText
	waitbutton
	closetext
	appear LANCESROOM_OAK
	applymovement LANCESROOM_OAK, LancesRoomMovementData_OakWalksIn
	opentext
	writetext LancesRoomOakCongratulationsText
	waitbutton
	closetext
	applymovement PLAYER, Movement_PlayerStepsAside
	applymovement LANCESROOM_OAK, Movement_OakSpeaksToRival
	turnobject LANCESROOM_RIVAL, LEFT
	opentext
	writetext LancesRoomOakDisappointedText
	waitbutton
	closetext
	turnobject LANCESROOM_OAK, LEFT
	opentext
	writetext LancesRoomOakComeWithMeText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0e ; open door
	reloadmappart
	follow LANCESROOM_OAK, PLAYER
	applymovement LANCESROOM_OAK, Movement_OakLeadsPlayerAway
	playsound SFX_EXIT_BUILDING
	disappear LANCESROOM_OAK
	applymovement PLAYER, Movement_PlayerEntersHallOfFame
	playsound SFX_EXIT_BUILDING
;	disappear PLAYER
	applymovement PLAYER, Movement_CameraPansUp
	pause 20
	warpfacing UP, HALL_OF_FAME, 4, 9
	end

LanceScript_AfterBattle:
	jumptextfaceplayer LanceDefeatText

LancesRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementData_ApproachLanceFromLeft:
	step UP
	step UP
	turn_head RIGHT
	step_end

MovementData_ApproachLanceFromRight:
	step UP
	step LEFT
	step UP
	turn_head RIGHT
	step_end

Movement_RivalWalksIn:
	slow_step DOWN
	slow_step DOWN
	step_end

Movement_LanceStepsAside:
	step RIGHT
	step RIGHT
;	turn_head LEFT
	step_end

Movement_TalkRivalBehind:
	step LEFT
	step DOWN
	turn_head RIGHT
	step_end

Movement_TalkRivalRight:
	step DOWN
	step LEFT
Movement_TalkRivalFront:
	step LEFT
	step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_OakWalksIn:
	step UP
	step UP
	step UP
	step UP
	step_end

Movement_PlayerStepsAside:
	step LEFT
	turn_head RIGHT
	step_end

Movement_OakSpeaksToRival:
	step UP
	turn_head RIGHT
	step_end

Movement_OakLeadsPlayerAway:
	step UP
	step UP
	step_end

Movement_PlayerEntersHallOfFame:
	step UP
	hide_object
	step_end

Movement_CameraPansUp:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

LanceBattleIntroText:
	text "Ah! I heard about"
	line "you <PLAYER>!"

	para "I lead the ELITE"
	line "FOUR! You can"
	cont "call me LANCE the"
	cont "dragon trainer!"

	para "You know that"
	line "dragons are"
	cont "mythical #MON!"

	para "They're hard to"
	line "catch and raise,"
	cont "but their powers"
	cont "are superior!"

	para "They're virtually"
	line "indestructible!"

	para "Well, are you"
	line "ready to lose?"

	para "Your LEAGUE"
	line "challenge ends"
	cont "with me, <PLAYER>!"
	done

LanceBattleWinText:
	text "That's it!"

	para "I hate to admit"
	line "it, but you are a"
	cont "#MON master!"
	done

LanceBattleAfterText_1:
	text "I still can't"
	line "believe my"
	cont "dragons lost to"
	cont "you, <PLAYER>!"

	para "You are now the"
	line "#MON LEAGUE"
	cont "CHAMPION!"
	done

LanceBattleAfterText_2:
	text "…Or, you would"
	line "have been, but"
	cont "you have one more"
	cont "challenge ahead."

	para "You have to face"
	line "another trainer!"
	cont "His name is…"
	done

LanceRivalIntroText:
	text "<RIVAL>!"

	para "He beat the ELITE"
	line "FOUR before you!"

	para "He is the new"
	line "#MON LEAGUE"
	cont "CHAMPION!"
	done

LanceDefeatText:
	text "You are both very"
	line "talented trainers!"

	para "I am eager to see"
	line "which of you will"
	cont "claim the title"
	cont "of CHAMPION!"
	done
;
;	para "Shall I heal your"
;	line "#MON before"
;	cont "this battle?"
;	done

ChampionBattleIntroText:
	text "<RIVAL>: Hey!"

	para "I was looking"
	line "forward to seeing"
	cont "you, <PLAYER>!"

	para "My rival should"
	line "be strong to keep"
	cont "me sharp!"

	para "While working on"
	line "#DEX, I looked"
	cont "all over for"
	cont "powerful #MON!"

	para "Not only that, I"
	line "assembled teams"
	cont "that would beat"
	cont "any #MON type!"

	para "And now!"

	para "I'm the #MON"
	line "LEAGUE CHAMPION!"

	para "<PLAYER>! Do you"
	line "know what that"
	cont "means?"

	para "I'll tell you!"

	para "I am the most"
	line "powerful trainer"
	cont "in the world!"
	done

ChampionBattleWinText:
	text "NO!"
	line "That can't be!"
	cont "You beat my best!"

	para "After all that"
	line "work to become"
	cont "LEAGUE CHAMP?"

	para "My reign is over"
	line "already?"
	cont "It's not fair!"
	done

ChampionBattleLossText:
	text "Hahaha!"
	line "I won, I won!"

	para "I'm too good for"
	line "you, <PLAYER>!"

	para "You did well to"
	line "even reach me,"
	cont "<RIVAL>, the"
	cont "#MON genius!"

	para "Nice try, loser!"
	line "Hahaha!"
	done

ChampionBattleAfterText:
	text "Why?"
	line "Why did I lose?"

	para "I never made any"
	line "mistakes raising"
	cont "my #MON…"

	para "Darn it! You're"
	line "the new #MON"
	cont "LEAGUE CHAMPION!"

	para "Although I don't"
	line "like to admit it."
	done

LancesRoomOakSaysPlayerNameText:
	text "OAK: <PLAYER>!"
	done

LancesRoomOakCongratulationsText:
	text "OAK: So, you won!"
	line "Congratulations!"
	cont "You're the new"
	cont "#MON LEAGUE"
	cont "CHAMPION!"

	para "You've grown up so"
	line "much since you"
	cont "first left with"
	cont "@"
	text_ram wStringBuffer3
	text "!"
	done

LancesRoomOakDisappointedText:
	text "OAK: <RIVAL>! I'm"
	line "disappointed!"

	para "I came when I"
	line "heard you beat"
	cont "the ELITE FOUR!"

	para "But, when I got"
	line "here, you had"
	cont "already lost!"

	para "<RIVAL>! Do you"
	line "understand why"
	cont "you lost?"

	para "You have forgotten"
	line "to treat your"
	cont "#MON with"
	cont "trust and love!"

	para "Without them, you"
	line "will never become"
	cont "a CHAMP again!"
	done

LancesRoomOakComeWithMeText:
	text "OAK: <PLAYER>!"

	para "You understand"
	line "that your victory"
	cont "was not just your"
	cont "own doing!"

	para "The bond you share"
	line "with your #MON"
	cont "is marvelous!"

	para "<PLAYER>!"
	line "Come with me!"
	done

E4LancesRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 21, E4_AGATHAS_ROOM, 3
	warp_event  5, 21, E4_AGATHAS_ROOM, 4
;	warp_event  4,  1, E4_CHAMPIONS_ROOM, 1
;	warp_event  5,  1, E4_CHAMPIONS_ROOM, 2
	warp_event  4,  1, HALL_OF_FAME, 1
	warp_event  5,  1, HALL_OF_FAME, 2

	def_coord_events
	coord_event  4,  6, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromLeft
	coord_event  5,  6, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromRight

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LancesRoomLanceScript, -1
	object_event  5,  1, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LancesRoomRivalScript, EVENT_LANCES_ROOM_RIVAL
	object_event  4,  8, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK
