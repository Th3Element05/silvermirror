	object_const_def
	const ROUTE5_DAYCAREMAN
	const ROUTE5_DAY_CARE_MON_1
	const ROUTE5_DAY_CARE_MON_2

Route5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route5EggCheckCallback

Route5EggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_5
	sjump .CheckMon1

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_5
	sjump .CheckMon1

.CheckMon1:
	checkflag ENGINE_DAY_CARE_MAN_HAS_MON
	iffalse .HideMon1
	clearevent EVENT_DAY_CARE_MON_1
	sjump .CheckMon2

.HideMon1:
	setevent EVENT_DAY_CARE_MON_1
	sjump .CheckMon2

.CheckMon2:
	checkflag ENGINE_DAY_CARE_LADY_HAS_MON
	iffalse .HideMon2
	clearevent EVENT_DAY_CARE_MON_2
	endcallback

.HideMon2:
	setevent EVENT_DAY_CARE_MON_2
	endcallback

DayCareManScript_Outside:
	faceplayer
	opentext
	special DayCareManOutside
	waitbutton
	closetext
	ifequal TRUE, .end_fail
	clearflag ENGINE_DAY_CARE_MAN_HAS_EGG
	readvar VAR_FACING
	ifequal LEFT, .walk_around_player
	applymovement ROUTE5_DAYCAREMAN, Route5DayCareManWalksBackInsideMovement
	playsound SFX_ENTER_DOOR
	disappear ROUTE5_DAYCAREMAN
.end_fail
	end

.walk_around_player
	applymovement ROUTE5_DAYCAREMAN, Route5DayCareManWalksAroundPlayerMovement
	playsound SFX_ENTER_DOOR
	disappear ROUTE5_DAYCAREMAN
	end

DayCareMon1Script:
	opentext
	special DayCareMon1
	closetext
	end

DayCareMon2Script:
	opentext
	special DayCareMon2
	closetext
	end

Route5DayCareManWalksBackInsideMovement:
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	step_end

Route5DayCareManWalksAroundPlayerMovement:
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	slow_step UP
	step_end

Route5DayCareSign:
	jumptext DayCareSignText

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

DayCareSignText:
	text "DAY-CARE"

	para "LET US RAISE YOUR"
	line "#MON FOR YOU!"
	done

Route5UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

; itemballs
Route5SilkScarf:
	itemball SILK_SCARF

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 27, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  8, 29, ROUTE_5_SAFFRON_GATE, 1
	warp_event  9, 29, ROUTE_5_SAFFRON_GATE, 2
	warp_event  9, 23, DAY_CARE, 1
	warp_event  9, 19, DAY_CARE, 3

	def_coord_events

	def_bg_events
	bg_event 13, 23, BGEVENT_READ, Route5DayCareSign
	bg_event 15, 27, BGEVENT_READ, Route5UndergroundPathSign

	def_object_events
	object_event  7, 24, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Outside, EVENT_DAY_CARE_MAN_ON_ROUTE_5
	object_event  8, 16, SPRITE_DAY_CARE_MON_1, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, DayCareMon1Script, EVENT_DAY_CARE_MON_1
	object_event 11, 17, SPRITE_DAY_CARE_MON_2, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, DayCareMon2Script, EVENT_DAY_CARE_MON_2
	object_event 12,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route5SilkScarf, EVENT_ROUTE_5_SILK_SCARF

;\engine\gfx\color.asm handles SPRITE_DAY_CARE_MON colors over TREE and ROCK