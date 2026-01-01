	object_const_def

IcePathB2FBlackthornSide_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathB2FBlackthornSideTMRest:
	itemball ICE_HEAL

;IcePathB2FBlackthornSideHiddenIceHeal:
;	hiddenitem ICE_HEAL, EVENT_ICE_PATH_B2F_BLACKTHORN_SIDE_HIDDEN_ICE_HEAL

IcePathB2FBlackthornSide_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ICE_PATH_B1F, 8 ;1
	warp_event  3,  3, ICE_PATH_B3F, 2 ;2

	def_coord_events

	def_bg_events
;	bg_event  2, 10, BGEVENT_ITEM, IcePathB2FBlackthornSideHiddenIceHeal

	def_object_events
	object_event  9, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB2FBlackthornSideTMRest, EVENT_ICE_PATH_B2F_BLACKTHORN_SIDE_ICE_HEAL
