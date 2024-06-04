	object_const_def

SilphCo6F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo6FDoorsCallback

SilphCo6FDoorsCallback:
	checkevent EVENT_SILPH_CO_6F_DOOR_1
	iffalse .End
	changeblock 4, 12, $3e ; open door
.End
	endcallback

SilphCo6F_Door1:
	conditional_event EVENT_SILPH_CO_6F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_6F_DOOR_1
	end

SilphCo6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 22,  0, SILPH_CO_7F, 3
	warp_event 20,  0, SILPH_CO_5F, 2
	warp_event  3,  3, SILPH_CO_4F, 4 ; 6F-4
	warp_event 23,  3, SILPH_CO_2F, 6 ; 6F-5

	def_coord_events

	def_bg_events
	bg_event  5, 12, BGEVENT_IFNOTSET, SilphCo6F_Door1
	bg_event  5, 13, BGEVENT_IFNOTSET, SilphCo6F_Door1

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
