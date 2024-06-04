	object_const_def

SilphCo5F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo5FDoorsCallback

SilphCo5FDoorsCallback:
	checkevent EVENT_SILPH_CO_5F_DOOR_1
	iffalse .Next
	changeblock 6, 4, $3e ; open door
.Next
	checkevent EVENT_SILPH_CO_5F_DOOR_2
	iffalse .Next2
	changeblock 14, 10, $3e ; open door
.Next2
	checkevent EVENT_SILPH_CO_5F_DOOR_3
	iffalse .End
	changeblock 6, 12, $3e ; open door
.End
	endcallback

SilphCo5F_Door1:
	conditional_event EVENT_SILPH_CO_5F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 4, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_5F_DOOR_1
	end

SilphCo5F_Door2:
	conditional_event EVENT_SILPH_CO_5F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 14, 10, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_5F_DOOR_2
	end

SilphCo5F_Door3:
	conditional_event EVENT_SILPH_CO_5F_DOOR_3, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_5F_DOOR_3
	end

; hidden items
SilphCo5FHiddenElixer:
	hiddenitem ELIXER, EVENT_SILPH_CO_5F_HIDDEN_ELIXER

SilphCo5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 24,  0, SILPH_CO_6F, 3
	warp_event 26,  0, SILPH_CO_4F, 2
	warp_event 27,  3, SILPH_CO_7F, 6 ; 5F-4
	warp_event 11,  5, SILPH_CO_3F, 4 ; 5F-5
	warp_event  3, 15, SILPH_CO_3F, 9 ; 5F-6
	warp_event  9, 15, SILPH_CO_9F, 5 ; 5F-7

	def_coord_events

	def_bg_events
	bg_event  7,  4, BGEVENT_IFNOTSET, SilphCo5F_Door1
	bg_event  7,  5, BGEVENT_IFNOTSET, SilphCo5F_Door1
	bg_event 15, 10, BGEVENT_IFNOTSET, SilphCo5F_Door2
	bg_event 15, 11, BGEVENT_IFNOTSET, SilphCo5F_Door2
	bg_event  7, 12, BGEVENT_IFNOTSET, SilphCo5F_Door3
	bg_event  7, 13, BGEVENT_IFNOTSET, SilphCo5F_Door3
	bg_event 12,  3, BGEVENT_ITEM, SilphCo5FHiddenElixer

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
