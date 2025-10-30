	object_const_def

CianwoodPharmacy_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPharmacist:
	faceplayer
	opentext
	pokemart MARTTYPE_PHARMACY, MART_UNDERGROUND
	closetext
	end

CianwoodPharmacyBookshelf:
	jumpstd DifficultBookshelfScript

CianwoodPharmacy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CIANWOOD_CITY, 4
	warp_event  4,  7, CIANWOOD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodPharmacyBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodPharmacyBookshelf

	def_object_events
	object_event  2,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodPharmacist, -1
