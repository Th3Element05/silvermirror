	object_const_def
	const AGATHASROOM_AGATHA

E4AgathasRoom_MapScripts:
	def_scene_scripts
	scene_script AgathasRoomLockDoorScene, SCENE_AGATHASROOM_LOCK_DOOR
	scene_script AgathasRoomNoopScene,     SCENE_AGATHASROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, AgathasRoomDoorsCallback

AgathasRoomLockDoorScene:
	sdefer AgathasRoomDoorLocksBehindYouScript
AgathasRoomNoopScene:
	end

AgathasRoomDoorsCallback:
	checkevent EVENT_AGATHAS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $0a ; wall
.KeepEntranceOpen:
	checkevent EVENT_AGATHAS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $0b ; open door
.KeepExitClosed:
	endcallback

AgathasRoomDoorLocksBehindYouScript:
	applymovement PLAYER, AgathasRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $0a ; wall
	reloadmappart
	closetext
	setscene SCENE_AGATHASROOM_NOOP
	setevent EVENT_AGATHAS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

AgathaScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_E4_AGATHA
	iftrue AgathaScript_AfterBattle
	writetext AgathaScript_AgathaBeforeText
	waitbutton
	closetext
	winlosstext AgathaScript_AgathaBeatenText, 0
	loadtrainer AGATHA, AGATHA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_E4_AGATHA
	opentext
	writetext AgathaScript_AgathaDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0b ; open door
	reloadmappart
	closetext
	setevent EVENT_AGATHAS_ROOM_EXIT_OPEN
	waitsfx
	end

AgathaScript_AfterBattle:
	writetext AgathaScript_AgathaDefeatText
	waitbutton
	closetext
	end

AgathasRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

AgathaScript_AgathaBeforeText:
	ntag "AGATHA:"
	text "I am AGATHA of"
	line "the ELITE FOUR!"

	para "OAK's taken a lot"
	line "of interest in"
	cont "you, child!"

	para "That old duff was"
	line "once tough and"
	cont "handsome! That"
	roll "was decades ago!"

	para "Now he just wants"
	line "to fiddle with"
	cont "his #DEX!"

	para "He's wrong!"
	line "#MON are for"
	cont "fighting!"

	para "<PLAYER>! I'll show"
	line "you how a real"
	cont "trainer fights!"
	done

AgathaScript_AgathaBeatenText:
	ntag "AGATHA:"
	text "Oh ho!"
	line "You're something"
	cont "special, child!"
	done

AgathaScript_AgathaDefeatText:
	ntag "AGATHA:"
	text "You win! I see"
	line "what the old duff"
	cont "sees in you now!"

	para "I have nothing"
	line "else to say! Run"
	cont "along now, child!"
	done

E4AgathasRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, E4_BRUNOS_ROOM, 3
	warp_event  5, 17, E4_BRUNOS_ROOM, 4
	warp_event  4,  2, E4_LANCES_ROOM, 1
	warp_event  5,  2, E4_LANCES_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_AGATHA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AgathaScript_Battle, -1
