	object_const_def
	const CHAMPIONSROOM_BLUE

E4ChampionsRoom_MapScripts:
	def_scene_scripts
	scene_script ChampionsRoomLockDoorScene, SCENE_CHAMPIONSROOM_LOCK_DOOR
	scene_script ChampionsRoomNoopScene,     SCENE_CHAMPIONSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, ChampionsRoomDoorsCallback

ChampionsRoomLockDoorScene:
	sdefer ChampionsRoomDoorLocksBehindYouScript
	end

ChampionsRoomNoopScene:
	end

ChampionsRoomDoorsCallback:
	checkevent EVENT_CHAMPIONS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_CHAMPIONS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

ChampionsRoomDoorLocksBehindYouScript:
	applymovement PLAYER, ChampionsRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_CHAMPIONSROOM_NOOP
	setevent EVENT_CHAMPIONS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

ChampionScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_E4_CHAMPION
	iftrue ChampionScript_AfterBattle
	writetext ChampionScript_ChampionBeforeText
	waitbutton
	closetext
	winlosstext ChampionScript_ChampionBeatenText, 0
	loadtrainer CHAMPION, CHAMPION1_BULBASAUR
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_E4_CHAMPION
	opentext
	writetext ChampionScript_ChampionDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_CHAMPIONS_ROOM_EXIT_OPEN
	waitsfx
	end

ChampionScript_AfterBattle:
	writetext ChampionScript_ChampionDefeatText
	waitbutton
	closetext
	end

ChampionsRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

ChampionScript_ChampionBeforeText:
	text "Fwahahahaha!"

	para "I am KOGA of the"
	line "ELITE FOUR."

	para "I live in shadows,"
	line "a ninja!"

	para "My intricate style"
	line "will confound and"
	cont "destroy you!"

	para "Confusion, sleep,"
	line "poison…"

	para "Prepare to be the"
	line "victim of my sin-"
	cont "ister technique!"

	para "Fwahahahaha!"

	para "#MON is not"
	line "merely about brute"

	para "force--you shall"
	line "see soon enough!"
	done

ChampionScript_ChampionBeatenText:
	text "Ah!"
	line "You have proven"
	cont "your worth!"
	done

ChampionScript_ChampionDefeatText:
	text "I subjected you to"
	line "everything I could"
	cont "muster."

	para "But my efforts"
	line "failed. I must"
	cont "hone my skills."

	para "Go on to the next"
	line "room, and put your"
	cont "abilities to test!"
	done

E4ChampionsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, E4_LANCES_ROOM, 2
	warp_event  5, 17, E4_LANCES_ROOM, 3
	warp_event  4,  2, HALL_OF_FAME, 1
	warp_event  5,  2, HALL_OF_FAME, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ChampionScript_Battle, -1
