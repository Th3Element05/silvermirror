	object_const_def

LavenderNameRater_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderNameRaterNoopScene:
	end

LavenderNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

LavenderNameRaterDifficultBookshelf:
	jumpstd DifficultBookshelfScript

LavenderNameRater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 4
	warp_event  3,  7, LAVENDER_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event 0, 1, BGEVENT_READ, LavenderNameRaterDifficultBookshelf
	bg_event 1, 1, BGEVENT_READ, LavenderNameRaterDifficultBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, LavenderNameRater, -1
