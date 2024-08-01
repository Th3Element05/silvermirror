	object_const_def

BillsBrothersHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BillsBrothersHouseTilesCallback

BillsBrothersHouseTilesCallback:
	changeblock 6, 0, $1c ; pc
	endcallback

BillsGrandpaScript:
	jumptextfaceplayer BillsGrandpaText
BillsGrandpaText:
	text "Hmm? You've met"
	line "BILL?"

	para "He's my grandson!"

	para "He always liked"
	line "collecting things"
	cont "even as a child!"
	done

BillsMomScript:
	jumptextfaceplayer BillsMomText
BillsMomText:
	text "SAFARI ZONE's"
	line "WARDEN is old,"
	cont "but still active!"

	para "All his teeth are"
	line "false, though."
	done

BillsBrotherScript:
	jumptextfaceplayer BillsBrotherText
BillsBrotherText:
	text "BILL files his"
	line "own #MON data"
	cont "on his PC!"

	para "Did he show you?"
	done

BillsBrothersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 7
	warp_event  3,  7, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsGrandpaScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsMomScript, -1
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsBrotherScript, -1
