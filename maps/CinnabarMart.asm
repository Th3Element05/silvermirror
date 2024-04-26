	object_const_def
;	const LAVENDERMART_CLERK
;	const LAVENDERMART_POKEFAN_M
;	const LAVENDERMART_ROCKER

CinnabarMart_MapScripts:
	def_scene_scripts

	def_callbacks

;CinnabarMartClerkScript:
;	opentext
;	pokemart MARTTYPE_STANDARD, MART_LAVENDER
;	closetext
;	end

CinnabarMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 5
	warp_event  4,  7, CINNABAR_ISLAND, 5

	def_coord_events

	def_bg_events

	def_object_events
;	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartClerkScript, -1
;	object_event  6,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderMartPokefanMScript, -1
;	object_event  9,  2, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartRockerScript, -1
