	object_const_def

SilphCo7F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo7FDoorsCallback

SilphCo7FDoorsCallback:
	checkevent EVENT_SILPH_CO_7F_DOOR_1
	iffalse .Next
	changeblock 20, 4, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_7F_DOOR_2
	iffalse .Next2
	changeblock 10, 6, $3c ; open door
.Next2
	checkevent EVENT_SILPH_CO_7F_DOOR_3
	iffalse .End
	changeblock 20, 12, $3c ; open door
.End
	endcallback

SilphCo7F_Door1:
	conditional_event EVENT_SILPH_CO_7F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 20, 4, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_7F_DOOR_1
	end

SilphCo7F_Door2:
	conditional_event EVENT_SILPH_CO_7F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 10, 6, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_7F_DOOR_2
	end

SilphCo7F_Door3:
	conditional_event EVENT_SILPH_CO_7F_DOOR_3, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 20, 12, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_7F_DOOR_3
	end

SilphCo7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 20,  0, SILPH_CO_8F, 3
	warp_event 22,  0, SILPH_CO_6F, 2
	warp_event  5,  3, SILPH_CO_3F, 7 ; 7F-4
	warp_event  5,  7, SILPH_CO_11F, 3 ; 7F-5
	warp_event 21, 15, SILPH_CO_5F, 4 ; 7F-6

	def_coord_events

	def_bg_events
	bg_event 20,  4, BGEVENT_IFNOTSET, SilphCo7F_Door1
	bg_event 21,  4, BGEVENT_IFNOTSET, SilphCo7F_Door1
	bg_event 10,  6, BGEVENT_IFNOTSET, SilphCo7F_Door2
	bg_event 11,  6, BGEVENT_IFNOTSET, SilphCo7F_Door2
	bg_event 20, 12, BGEVENT_IFNOTSET, SilphCo7F_Door3
	bg_event 21, 12, BGEVENT_IFNOTSET, SilphCo7F_Door3

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
