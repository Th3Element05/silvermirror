	object_const_def
	const LORELEISROOM_LORELEI

E4LoreleisRoom_MapScripts:
	def_scene_scripts
	scene_script LoreleisRoomLockDoorScene, SCENE_LORELEISROOM_LOCK_DOOR
	scene_script LoreleisRoomNoopScene,     SCENE_LORELEISROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, LoreleisRoomDoorsCallback

LoreleisRoomLockDoorScene:
	sdefer LoreleisRoomDoorLocksBehindYouScript
LoreleisRoomNoopScene:
	end

LoreleisRoomDoorsCallback:
	checkevent EVENT_LORELEIS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $0a ; wall
.KeepEntranceOpen:
	checkevent EVENT_LORELEIS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $0b ; open door
.KeepExitClosed:
	endcallback

LoreleisRoomDoorLocksBehindYouScript:
	applymovement PLAYER, LoreleisRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $0a ; wall
	reloadmappart
	closetext
	setscene SCENE_LORELEISROOM_NOOP
	setevent EVENT_LORELEIS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

LoreleiScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_E4_LORELEI
	iftrue LoreleiScript_AfterBattle
	writetext LoreleiScript_LoreleiBeforeText
	waitbutton
	closetext
	winlosstext LoreleiScript_LoreleiBeatenText, 0
	loadtrainer LORELEI, LORELEI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_E4_LORELEI
	opentext
	writetext LoreleiScript_LoreleiDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0b ; open door
	reloadmappart
	closetext
	setevent EVENT_LORELEIS_ROOM_EXIT_OPEN
	waitsfx
	end

LoreleiScript_AfterBattle:
	writetext LoreleiScript_LoreleiDefeatText
	waitbutton
	closetext
	end

LoreleisRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

LoreleiScript_LoreleiBeforeText:
	text "Welcome to"
	line "#MON LEAGUE!"

	para "I am LORELEI of"
	line "the ELITE FOUR!"

	para "No one can best"
	line "me when it comes"
	cont "to icy #MON!"

	para "Freezing moves"
	line "are powerful!"

	para "Your #MON will"
	line "be at my mercy"
	cont "when they are"
	roll "frozen solid!"

	para "Hahaha!"
	line "Are you ready?"
	done

LoreleiScript_LoreleiBeatenText:
	text "I… I can't…"
	line "believe it…"
	done

LoreleiScript_LoreleiDefeatText:
	text "You're better"
	line "than I thought!"
	cont "Go on ahead!"

	para "You only got a"
	line "taste of #MON"
	cont "LEAGUE power!"
	done

E4LoreleisRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, INDIGO_PLATEAU_POKECENTER_1F, 3
	warp_event  5, 17, INDIGO_PLATEAU_POKECENTER_1F, 4
	warp_event  4,  2, E4_BRUNOS_ROOM, 1
	warp_event  5,  2, E4_BRUNOS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_LORELEI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LoreleiScript_Battle, -1
