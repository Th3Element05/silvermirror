	object_const_def

Route27West_MapScripts:
	def_scene_scripts

	def_callbacks

TohjoFallsWestSign:
	jumptext TohjoFallsWestSignText
TohjoFallsWestSignText:
	text "TOHJO FALLS"

	para "THE LINK BETWEEN"
	line "KANTO AND JOHTO"
	done

Route27West_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  5, TOHJO_FALLS, 1

	def_coord_events

	def_bg_events
	bg_event 25,  7, BGEVENT_READ, TohjoFallsWestSign

	def_object_events
;	object_event 48,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermBlake, -1