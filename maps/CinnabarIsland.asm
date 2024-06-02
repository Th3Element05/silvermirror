	object_const_def

CinnabarIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CinnabarIslandFlypointCallback
	callback MAPCALLBACK_TILES, CinnabarGymDoorCallback

CinnabarIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_CINNABAR
	endcallback

CinnabarGymDoorCallback:
	checkevent EVENT_CINNABAR_GYM_LEADER_RETURNED
	iftrue .GymOpen
	endcallback
.GymOpen:
	changeblock 18, 4, $12 ; DOOR
	endcallback



CinnabarGymDoorLocked:
	conditional_event EVENT_CINNABAR_GYM_LEADER_RETURNED, .LockedDoor
.LockedDoor
	jumptext CinnabarGymDoorLockedText
CinnabarGymDoorLockedText:
	text "The GYM's doors"
	line "are locked..."
	done

CinnabarIslandLockedDoorText:
	text "The door is"
	line "locked..."
	done

CinnabarIslandGirl:
	jumptextfaceplayer CinnabarIslandGirlText
CinnabarIslandGirlText:
	text "CINNABAR GYM's"
	line "BLAINE is an odd"
	cont "man who has lived"
	cont "here for decades."
	done

CinnabarIslandGramps:
	jumptextfaceplayer CinnabarIslandGrampsText
CinnabarIslandGrampsText:
	text "Scientists conduct"
	line "experiments in"
	cont "the burned out"
	cont "building."
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

CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  5, POKEMON_MANSION_1F, 1     ;1
	warp_event 18,  5, CINNABAR_GYM, 1           ;2
	warp_event 11, 13, CINNABAR_POKECENTER_1F, 1 ;3
	warp_event 15, 13, CINNABAR_MART, 1          ;4
;	warp_event 11, 15, CINNABAR_LAB, 1           ;5

	def_coord_events

	def_bg_events
	bg_event  9,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event 13,  5, BGEVENT_READ, CinnabarIslandGymSign
	bg_event 12, 13, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event 16, 13, BGEVENT_READ, CinnabarIslandMartSign
	bg_event  9, 13, BGEVENT_READ, CinnabarIslandLabSign
	bg_event 18,  5, BGEVENT_IFNOTSET, CinnabarGymDoorLocked

	def_object_events
	object_event 12,  7, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CinnabarIslandGirl, -1
	object_event 14,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CinnabarIslandGramps, -1
