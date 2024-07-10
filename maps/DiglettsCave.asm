	object_const_def
;	const DIGLETTSCAVE_POKEFAN_M

DiglettsCave_MapScripts:
	def_scene_scripts

	def_callbacks

DiglettsCavePokefanMScript:
	jumptextfaceplayer DiglettsCavePokefanMText
DiglettsCavePokefanMText:
	text "A bunch of DIGLETT"
	line "popped out of the"

	para "ground! That was"
	line "shocking."
	done

; itemballs
DiglettsCaveSoftSand:
	itemball SOFT_SAND

DiglettsCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  5, ROUTE_11, 1
	warp_event 25,  3, DIGLETTS_CAVE, 5
	warp_event 33,  5, ROUTE_2_NORTH, 4
;	warp_event 33,  5, ROUTE_2, 7
	warp_event 35,  3, DIGLETTS_CAVE, 6
	warp_event 35, 29, DIGLETTS_CAVE, 2
	warp_event  3,  3, DIGLETTS_CAVE, 4

	def_coord_events

	def_bg_events
;	bg_event  6, 13, BGEVENT_ITEM, DiglettsCaveHiddenMaxRevive

	def_object_events
	object_event 23,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCavePokefanMScript, -1
	object_event 18, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DiglettsCaveSoftSand, EVENT_DIGLETTS_CAVE_SOFT_SAND
