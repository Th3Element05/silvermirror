	object_const_def
	const SILPHCO11F_GIOVANNI

SilphCo11F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo11FDoorsCallback

SilphCo11FDoorsCallback:
	checkevent EVENT_SILPH_CO_11F_DOOR_1
	iffalse .End
	changeblock 6, 12, $3d ; open door
.End
	endcallback

SilphCo11F_Door1:
	conditional_event EVENT_SILPH_CO_11F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_11F_DOOR_1
	end

SilphCoGiovanniScript:
	end

SilphCo11F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  0, SILPH_CO_ELEVATOR, 1
	warp_event 14,  0, SILPH_CO_10F, 2
	warp_event  3,  3, SILPH_CO_7F, 5 ; 11F-3

	def_coord_events

	def_bg_events
	bg_event  6, 13, BGEVENT_IFNOTSET, SilphCo11F_Door1
	bg_event  7, 13, BGEVENT_IFNOTSET, SilphCo11F_Door1

	def_object_events
	object_event  6,  9, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCoGiovanniScript, EVENT_BEAT_GIOVANNI_SILPHCO
