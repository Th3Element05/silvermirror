	object_const_def

TinTower6F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTower6FMaxPotion:
	itemball MAX_POTION

TinTower6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  9, TIN_TOWER_7F, 1
	warp_event  9, 15, TIN_TOWER_5F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower6FMaxPotion, EVENT_TIN_TOWER_6F_MAX_POTION
