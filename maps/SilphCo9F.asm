	object_const_def

SilphCo9F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo9FDoorsCallback

SilphCo9FDoorsCallback:
	checkevent EVENT_SILPH_CO_9F_DOOR_1
	iffalse .Next
	changeblock 18, 4, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_9F_DOOR_2
	iffalse .Next2
	changeblock 2, 8, $3e ; open door
.Next2
	checkevent EVENT_SILPH_CO_9F_DOOR_3
	iffalse .Next3
	changeblock 18, 10, $3c ; open door
.Next3
	checkevent EVENT_SILPH_CO_9F_DOOR_4
	iffalse .End
	changeblock 10, 12, $3e ; open door
.End
	endcallback

SilphCo9F_Door1:
	conditional_event EVENT_SILPH_CO_9F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 18, 4, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_1
	end

SilphCo9F_Door2:
	conditional_event EVENT_SILPH_CO_9F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 2, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_2
	end

SilphCo9F_Door3:
	conditional_event EVENT_SILPH_CO_9F_DOOR_3, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 18, 10, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_3
	end

SilphCo9F_Door4:
	conditional_event EVENT_SILPH_CO_9F_DOOR_4, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 10, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_4
	end

; hidden items
SilphCo9FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILPH_CO_9F_HIDDEN_MAX_POTION

SilphCo9F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 20,  0, SILPH_CO_10F, 3
	warp_event 22,  0, SILPH_CO_8F, 2
	warp_event  9,  3, SILPH_CO_3F, 6 ; 9F-4
	warp_event 17, 15, SILPH_CO_5F, 7 ; 9F-5

	def_coord_events

	def_bg_events
	bg_event 18,  4, BGEVENT_IFNOTSET, SilphCo9F_Door1
	bg_event 19,  4, BGEVENT_IFNOTSET, SilphCo9F_Door1
	bg_event  3,  8, BGEVENT_IFNOTSET, SilphCo9F_Door2
	bg_event  3,  9, BGEVENT_IFNOTSET, SilphCo9F_Door2
	bg_event 18, 10, BGEVENT_IFNOTSET, SilphCo9F_Door3
	bg_event 19, 10, BGEVENT_IFNOTSET, SilphCo9F_Door3
	bg_event 11, 12, BGEVENT_IFNOTSET, SilphCo9F_Door4
	bg_event 11, 13, BGEVENT_IFNOTSET, SilphCo9F_Door4
	bg_event  2, 15, BGEVENT_ITEM, SilphCo9FHiddenMaxPotion

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
