	object_const_def
	const HALLOFFAME_OAK

HallOfFame_MapScripts:
	def_scene_scripts
	scene_script HallOfFameEnterScene, SCENE_HALLOFFAME_ENTER
	scene_script HallOfFameNoopScene,  SCENE_HALLOFFAME_NOOP

	def_callbacks

HallOfFameEnterScene:
	sdefer HallOfFameEnterScript
	end

HallOfFameNoopScene:
	end

HallOfFameEnterScript:
	follow HALLOFFAME_OAK, PLAYER
	applymovement HALLOFFAME_OAK, HallOfFame_WalkUpWithOak
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext HallOfFame_OakText
	waitbutton
	closetext
	turnobject HALLOFFAME_OAK, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_HALLOFFAME_NOOP
	pause 15
	setval HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_INDIGO_POKECENTER_GYM_GUIDE
;	setmapscene MAHOGANY_MART_1F, SCENE_MAHOGANYMART1F_NINJA
;	setevent EVENT_TELEPORT_GUY
	clearevent EVENT_OAK_IN_MT_SILVER
	special RespawnOneOffs
	special HealParty
;	checkevent EVENT_GOT_DRAGON_FANG
;	iftrue .SkipDragonFang
;	clearevent EVENT_INDIGO_POKECENTER_LANCE
;	setmapscene INDIGO_PLATEAU_POKECENTER_1F, SCENE_INDIGOPLATEAUPOKECENTER1F_LANCE
;.SkipDragonFang
	checkevent EVENT_GOT_SS_TICKET_FROM_OAK
	iftrue .SkipPhoneCall
	specialphonecall SPECIALCALL_SSTICKET
	setmapscene VERMILION_CITY, SCENE_VERMILIONCITY_SSAQUA_FIRST_TIME
.SkipPhoneCall:
	halloffame
	end

HallOfFame_WalkUpWithOak:
;	step UP
;	step UP
;	step UP
;	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

HallOfFame_SlowlyApproachMachine:
	slow_step UP
	step_end

HallOfFame_OakText:
	ntag "PROF.OAK:"
	text "Er-hem!"
	line "Congratulations"
	cont "<PLAYER>!"

	para "This is the"
	line "#MON LEAGUE"
	cont "HALL OF FAME!"

	para "#MON LEAGUE"
	line "CHAMPIONs are"
	cont "honored for their"
	roll "achievments here!"

	para "Their #MON are"
	line "also recorded in"
	cont "the HALL OF FAME!"

	para "<PLAYER>! You have"
	line "endeavored hard"
	cont "to become the new"
	roll "LEAGUE CHAMPION!"

	para "Congratulations,"
	line "<PLAYER>, you and"
	cont "your #MON are"
	roll "HALL OF FAMERs!"
	done

HallOfFame_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, E4_LANCES_ROOM, 3
	warp_event  5,  9, E4_LANCES_ROOM, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  8, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
