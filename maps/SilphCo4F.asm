	object_const_def

SilphCo4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo4FDoorsCallback

SilphCo4FDoorsCallback:
	checkevent EVENT_SILPH_CO_4F_DOOR_1
	iffalse .Next
	changeblock 12, 8, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_4F_DOOR_2
	iffalse .End
	changeblock 4, 12, $3c ; open door
.End
	endcallback

SilphCo4F_Door1:
	conditional_event EVENT_SILPH_CO_4F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 12, 8, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_4F_DOOR_1
	end

SilphCo4F_Door2:
	conditional_event EVENT_SILPH_CO_4F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 12, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_4F_DOOR_2
	end

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 26,  0, SILPH_CO_5F, 3
	warp_event 24,  0, SILPH_CO_3F, 2
	warp_event 17,  3, SILPH_CO_6F, 4 ; 4F-4
	warp_event 11,  7, SILPH_CO_10F, 5 ; 4F-5
	warp_event 17, 11, SILPH_CO_10F, 4 ; 4F-6
	warp_event  3, 15, SILPH_CO_10F, 6 ; 4F-7

	def_coord_events

	def_bg_events
	bg_event 12,  8, BGEVENT_IFNOTSET, SilphCo4F_Door1
	bg_event 13,  8, BGEVENT_IFNOTSET, SilphCo4F_Door1
	bg_event  4, 12, BGEVENT_IFNOTSET, SilphCo4F_Door2
	bg_event  5, 12, BGEVENT_IFNOTSET, SilphCo4F_Door2

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
