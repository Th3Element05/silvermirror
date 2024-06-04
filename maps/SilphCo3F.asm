	object_const_def

SilphCo3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo3FDoorsCallback

SilphCo3FDoorsCallback:
	checkevent EVENT_SILPH_CO_3F_DOOR_1
	iffalse .Next
	changeblock 8, 8, $3e ; open door
.Next
	checkevent EVENT_SILPH_CO_3F_DOOR_2
	iffalse .End
	changeblock 16, 8, $3e ; open door
.End
	endcallback

SilphCo3F_Door1:
	conditional_event EVENT_SILPH_CO_3F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 8, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_3F_DOOR_1
	end

SilphCo3F_Door2:
	conditional_event EVENT_SILPH_CO_3F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 16, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_3F_DOOR_2
	end

SilphCo3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 24,  0, SILPH_CO_4F, 3
	warp_event 26,  0, SILPH_CO_2F, 2
	warp_event  3,  3, SILPH_CO_5F, 5 ; 3F-4
	warp_event 27,  3, SILPH_CO_2F, 4 ; 3F-5
	warp_event  3, 11, SILPH_CO_9F, 4 ; 3F-6
	warp_event 11, 11, SILPH_CO_7F, 4 ; 3F-7
	warp_event 23, 11, SILPH_CO_3F, 10 ; 3F-8
	warp_event  3, 15, SILPH_CO_5F, 6 ; 3F-9
	warp_event 27, 15, SILPH_CO_3F, 8 ; 3F-10

	def_coord_events

	def_bg_events
	bg_event  9,  8, BGEVENT_IFNOTSET, SilphCo3F_Door1
	bg_event  9,  9, BGEVENT_IFNOTSET, SilphCo3F_Door1
	bg_event 17,  8, BGEVENT_IFNOTSET, SilphCo3F_Door2
	bg_event 17,  9, BGEVENT_IFNOTSET, SilphCo3F_Door2

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
