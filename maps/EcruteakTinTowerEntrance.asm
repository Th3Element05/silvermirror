	object_const_def
	const ECRUTEAKTINTOWERENTRANCE_SAGE_LEFT
	const ECRUTEAKTINTOWERENTRANCE_SAGE_RIGHT

EcruteakTinTowerEntrance_MapScripts:
	def_scene_scripts
	scene_script EcruteakTinTowerEntranceNoop1Scene, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
	scene_script EcruteakTinTowerEntranceNoop2Scene, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP

	def_callbacks

EcruteakTinTowerEntranceNoop1Scene:
EcruteakTinTowerEntranceNoop2Scene:
	end

EcruteakTinTowerEntranceLeftSageScript:
	turnobject ECRUTEAKTINTOWERENTRANCE_SAGE_LEFT, RIGHT
	showemote EMOTE_SHOCK, ECRUTEAKTINTOWERENTRANCE_SAGE_LEFT, 15
	turnobject PLAYER, LEFT
	sjump EcruteakTinTowerEntranceBadgeCheck

EcruteakTinTowerEntranceRightSageScript:
	turnobject ECRUTEAKTINTOWERENTRANCE_SAGE_RIGHT, LEFT
	showemote EMOTE_SHOCK, ECRUTEAKTINTOWERENTRANCE_SAGE_RIGHT, 15
	turnobject PLAYER, RIGHT
;	sjump EcruteakTinTowerEntranceBadgeCheck
	; fallthrough
EcruteakTinTowerEntranceBadgeCheck:
	checkscene SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
	iftrue .AllowedThrough
	checkflag ENGINE_FOGBADGE
	iftrue .GotFogBadge
	writetext EcruteakTinTowerEntranceSageText
	waitbutton
	closetext
	applymovement PLAYER, PlayerTurnedAwayMovement
	end

.GotFogBadge
	setscene SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
	jumptextfaceplayer EcruteakTinTowerEntranceSageText_GotFogBadge
;	waitbutton
;	closetext
;	end

.AllowedThrough
	jumptextfaceplayer EcruteakTinTowerEntranceSageText_PleaseDoGoOn
;	waitbutton
;	closetext
;	end

EcruteakTinTowerEntranceSageText:
	text "TIN TOWER is off"
	line "limits to anyone"
	cont "without ECRUTEAK"
	cont "GYM's BADGE."

	para "Sorry, but you'll"
	line "have to leave."
	done

EcruteakTinTowerEntranceSageText_GotFogBadge:
	text "TIN TOWER is off"
	line "limits to anyone"
	cont "without ECRUTEAK"
	cont "GYM's BADGE."

	para "Ah!"

	para "ECRUTEAK's GYM"
	line "BADGE! Please, go"
	cont "right through."
	done

EcruteakTinTowerEntranceSageText_PleaseDoGoOn:
	text "Please, do go on."
	done

PlayerTurnedAwayMovement:
	step DOWN
	step_end

EcruteakTinTowerEntranceWanderingSageScript:
;	faceplayer
;	opentext
	checkevent EVENT_GOT_CLEAR_BELL ;(radio tower) got rainbow_wing instead?
	iftrue .GotClearBell
	jumptextfaceplayer EcruteakTinTowerEntranceWanderingSageText
;	waitbutton
;	closetext
;	end

.GotClearBell:
	jumptextfaceplayer EcruteakTinTowerEntranceWanderingSageText_GotClearBell
;	waitbutton
;	closetext
;	end

EcruteakTinTowerEntranceWanderingSageText:
	text "The TIN TOWER"
	line "ahead is a nine-"
	cont "tier tower of"
	cont "divine beauty."

	para "It soothes the"
	line "soul of all who"
	cont "see it."
	done

EcruteakTinTowerEntranceWanderingSageText_GotClearBell:
	text "The TIN TOWER"
	line "shook! A #MON"

	para "must have returned"
	line "to the top!"
	done

EcruteakTinTowerEntranceGrampsScript:
	jumptextfaceplayer EcruteakTinTowerEntranceGrampsText
EcruteakTinTowerEntranceGrampsText:
	text "Two towers…"
	line "Two #MON…"

	para "But when one"
	line "burned down, both"
	cont "#MON flew away,"
	cont "never to return."
	done

EcruteakTinTowerEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 3
	warp_event  5, 17, ECRUTEAK_CITY, 3
	warp_event  5,  3, ECRUTEAK_TIN_TOWER_ENTRANCE, 4
	warp_event 17, 15, ECRUTEAK_TIN_TOWER_ENTRANCE, 3
	warp_event 17,  3, WISE_TRIOS_ROOM, 3

	def_coord_events
	coord_event  4,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS, EcruteakTinTowerEntranceLeftSageScript
	coord_event  5,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS, EcruteakTinTowerEntranceRightSageScript

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceBadgeCheck, -1
	object_event  6,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceBadgeCheck, -1
	object_event  6, 10, SPRITE_SAGE, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceWanderingSageScript, -1
	object_event  3, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceGrampsScript, -1
