	object_const_def

SilphCo10F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo10FDoorsCallback

SilphCo10FDoorsCallback:
	checkevent EVENT_SILPH_CO_10F_DOOR_1
	iffalse .End
	changeblock 10, 8, $3e ; open door
.End
	endcallback

SilphCo10F_Door1:
	conditional_event EVENT_SILPH_CO_10F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 10, 8, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_10F_DOOR_1
	end

SilphCo10F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, SILPH_CO_ELEVATOR, 1
	warp_event 12,  0, SILPH_CO_11F, 3
	warp_event 10,  0, SILPH_CO_9F, 2
	warp_event 13,  7, SILPH_CO_4F, 6 ; 10F-4
	warp_event  9, 11, SILPH_CO_4F, 5 ; 10F-5
	warp_event 13, 15, SILPH_CO_4F, 7 ; 10F-6

	def_coord_events

	def_bg_events
	bg_event 10,  8, BGEVENT_IFNOTSET, SilphCo10F_Door1
	bg_event 11,  8, BGEVENT_IFNOTSET, SilphCo10F_Door1

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
