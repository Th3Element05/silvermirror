	object_const_def

SilphCo8F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo8FDoorsCallback

SilphCo8FDoorsCallback:
	checkevent EVENT_SILPH_CO_8F_DOOR_1
	iffalse .End
	changeblock 6, 8, $3e ; open door
.End
	endcallback

SilphCo8F_Door1:
	conditional_event EVENT_SILPH_CO_8F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_8F_DOOR_1
	end

SilphCo8F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 22,  0, SILPH_CO_9F, 3
	warp_event 20,  0, SILPH_CO_7F, 2
	warp_event 11,  5, SILPH_CO_2F, 7 ; 8F-4
	warp_event 11,  9, SILPH_CO_8F, 6 ; 8F-5
	warp_event  3, 11, SILPH_CO_8F, 5 ; 8F-6
	warp_event  3, 15, SILPH_CO_2F, 5 ; 8F-7

	def_coord_events

	def_bg_events
	bg_event  7,  8, BGEVENT_IFNOTSET, SilphCo8F_Door1
	bg_event  7,  9, BGEVENT_IFNOTSET, SilphCo8F_Door1

	def_object_events
;	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
;	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
