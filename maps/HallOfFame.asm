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
;	setevent EVENT_TELEPORT_GUY
;	setevent EVENT_RIVAL_SPROUT_TOWER
;	clearevent EVENT_RED_IN_MT_SILVER
;	setevent EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
;	clearevent EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
	special RespawnOneOffs
;	setmapscene SPROUT_TOWER_3F, SCENE_SPROUTTOWER3F_NOOP
	special HealParty
;	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
;	iftrue .SkipPhoneCall
;	specialphonecall SPECIALCALL_SSTICKET
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
	text "OAK: Er-hem!"
	line "Congratulations"
	cont "<PLAYER>!"

	para "This is the"
	line "#MON LEAGUE"
	cont "HALL OF FAME!"

	para "#MON LEAGUE"
	line "champions are"
	cont "honored for their"
	cont "achievments here!"

	para "Their #MON are"
	line "also recorded in"
	cont "the HALL OF FAME!"

	para "<PLAYER>! You have"
	line "endeavored hard"
	cont "to become the new"
	cont "LEAGUE champion!"

	para "Congratulations,"
	line "<PLAYER>, you and"
	cont "your #MON are"
	cont "HALL OF FAMERs!"
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
