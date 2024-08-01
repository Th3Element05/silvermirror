	object_const_def

CinnabarIsland_MapScripts:
	def_scene_scripts
	scene_script CinnabarIslandNoop1Scene, SCENE_CINNABARISLAND_NOOP
	scene_script CinnabarIslandNoop2Scene, SCENE_CINNABARISLAND_MISSINGNO

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CinnabarIslandFlypointCallback
	callback MAPCALLBACK_TILES, CinnabarGymDoorCallback

CinnabarIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_CINNABAR
	clearevent EVENT_FOSSIL_SCIENTIST_WORKING
	endcallback

CinnabarGymDoorCallback:
	checkevent EVENT_CINNABAR_GYM_LEADER_RETURNED
	iftrue .GymOpen
	endcallback
.GymOpen:
	changeblock 18, 4, $12 ; DOOR
	endcallback

CinnabarIslandNoop1Scene:
CinnabarIslandNoop2Scene:
	end

CinnabarGymDoorLocked:
	conditional_event EVENT_CINNABAR_GYM_LEADER_RETURNED, .LockedDoor
.LockedDoor
	jumptext CinnabarGymDoorLockedText
CinnabarGymDoorLockedText:
	text "The GYM's doors"
	line "are locked..."

	para "There's a note!"

	para "I've gone to the"
	line "abandoned lab to"
	cont "investigate some-"
	cont "thing.    -BLAINE"
	done

CinnabarIslandGirl:
	jumptextfaceplayer CinnabarIslandGirlText
CinnabarIslandGirlText:
	text "The GYM LEADER,"
	line "BLAINE, is an odd"
	cont "man who has lived"
	cont "here for decades."
	done

CinnabarIslandGramps:
	jumptextfaceplayer CinnabarIslandGrampsText
CinnabarIslandGrampsText:
	text "The old laboratory"
	line "was abandoned"
	cont "because of some"
	cont "disaster."
	done

CinnabarIslandLabSign:
	jumptext CinnabarIslandLabSignText
CinnabarIslandLabSignText:
	text "#MON LAB"
	done

CinnabarIslandSign:
	jumptext CinnabarIslandSignText
CinnabarIslandSignText:
	text "CINNABAR ISLAND"

	para "The Fiery Town of"
	line "Burning Desire"
	done

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText
CinnabarIslandGymSignText:
	text "CINNABAR ISLAND"
	line "#MON GYM"
	cont "LEADER: BLAINE"

	para "The Hot-Headed"
	line "Quiz Master!"
	done

CinnabarIslandPokecenterSign:
	jumpstd PokecenterSignScript

CinnabarIslandMartSign:
	jumpstd MartSignScript

CinnabarIslandMissingNoScript:
	random 16
	ifnotequal 0, .End
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MISSINGNO, 30
	startbattle
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .nocatch
	setevent EVENT_CAUGHT_MISSINGNO
.nocatch
	setscene SCENE_CINNABARISLAND_NOOP
.End
	end

CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  5, POKEMON_MANSION_1F, 1     ;1
	warp_event 18,  5, CINNABAR_GYM, 1           ;2
	warp_event 11, 13, CINNABAR_POKECENTER_1F, 1 ;3
	warp_event 15, 13, CINNABAR_MART, 1          ;4
	warp_event  6, 11, CINNABAR_LAB, 1           ;5

	def_coord_events
	coord_event 21,  5, SCENE_CINNABARISLAND_MISSINGNO, CinnabarIslandMissingNoScript
	coord_event 21,  7, SCENE_CINNABARISLAND_MISSINGNO, CinnabarIslandMissingNoScript
	coord_event 21,  9, SCENE_CINNABARISLAND_MISSINGNO, CinnabarIslandMissingNoScript
	coord_event 21, 11, SCENE_CINNABARISLAND_MISSINGNO, CinnabarIslandMissingNoScript

	def_bg_events
	bg_event  9,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event 13,  5, BGEVENT_READ, CinnabarIslandGymSign
	bg_event 12, 13, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event 16, 13, BGEVENT_READ, CinnabarIslandMartSign
	bg_event  5, 13, BGEVENT_READ, CinnabarIslandLabSign
	bg_event 18,  5, BGEVENT_IFNOTSET, CinnabarGymDoorLocked

	def_object_events
	object_event 12,  7, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandGirl, -1
	object_event 14,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandGramps, -1
