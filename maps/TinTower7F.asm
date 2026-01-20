	object_const_def

TinTower7F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTower7FMaxRevive:
	itemball MAX_REVIVE

TinTower7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  9, TIN_TOWER_6F, 1
	warp_event  8, 15, TIN_TOWER_8F, 1
	warp_event 10,  7, TIN_TOWER_7F, 4
	warp_event  6,  3, TIN_TOWER_7F, 3
	warp_event  4,  9, TIN_TOWER_9F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower7FMaxRevive, EVENT_TIN_TOWER_7F_MAX_REVIVE
