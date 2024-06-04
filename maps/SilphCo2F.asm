	object_const_def

SilphCo2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo2FDoorsCallback

SilphCo2FDoorsCallback:
	checkevent EVENT_SILPH_CO_2F_DOOR_1
	iffalse .Next
	changeblock 4, 4, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_2F_DOOR_2
	iffalse .End
	changeblock 4, 10, $3c ; open door
.End
	endcallback

SilphCo2F_Door1:
	conditional_event EVENT_SILPH_CO_2F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 4, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_2F_DOOR_1
	end

SilphCo2F_Door2:
	conditional_event EVENT_SILPH_CO_2F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 10, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_2F_DOOR_2
	end

SilphCo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 26,  0, SILPH_CO_3F, 3
	warp_event 24,  0, SILPH_CO_1F, 2
	warp_event  3,  3, SILPH_CO_3F, 5 ; 2F-4
	warp_event 13,  3, SILPH_CO_8F, 7 ; 2F-5
	warp_event  9, 15, SILPH_CO_6F, 5 ; 2F-6
	warp_event 27, 15, SILPH_CO_8F, 4 ; 2F-7

	def_coord_events

	def_bg_events
	bg_event  4,  4, BGEVENT_IFNOTSET, SilphCo2F_Door1
	bg_event  5,  4, BGEVENT_IFNOTSET, SilphCo2F_Door1
	bg_event  4, 10, BGEVENT_IFNOTSET, SilphCo2F_Door2
	bg_event  5, 10, BGEVENT_IFNOTSET, SilphCo2F_Door2
	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
