	object_const_def
	const KURTSSONSHOUSE2F_KURTSSON
	const KURTSSONSHOUSE2F_APRICORN_BALL

KurtsSonsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, KurtsSonsHouse2FTilesCallback
	callback MAPCALLBACK_OBJECTS, KurtsSonsHouse2FApricornBallCallback

KurtsSonsHouse2FTilesCallback:
	changeblock 2, 0, $34 ; worktable
	changeblock 4, 0, $35 ; worktable/bookshelf
	changeblock 2, 2, $36 ; left table leg
	changeblock 4, 2, $37 ; right table leg
	changeblock 0, 4, $1b ; white bed
	endcallback

KurtsSonsHouse2FApricornBallCallback:
	disappear SILPHCO5F_APRICORN_BALL
;	setevent EVENT_KURTS_SON_APRICORN_BALL
	endcallback







KurtSonsHouse2FBookshelf:
	jumpstd DifficultBookshelfScript

KurtsSonsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, KURTS_SONS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, KurtSonsHouse2FBookshelf

	def_object_events
	object_event  2,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_ITEMBALL, 0, KurtsSonsHouse2FApricornBall, EVENT_KURTS_SON_APRICORN_BALL
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, KurtsSonsHouse2FKurtsSon, -1
