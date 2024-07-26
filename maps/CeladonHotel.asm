	object_const_def

CeladonHotel_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CeladonHotelTilesCallback

CeladonHotelTilesCallback:
	changeblock  0, 0, $0B ; trees
	changeblock  2, 0, $09 ; blank wall
	changeblock  6, 0, $0B ; trees
	changeblock 12, 2, $05 ; counter
	changeblock 12, 4, $04 ; blank floor
	endcallback

CeladonHotelReceptionistScript:
	jumptext CeladonHotelReceptionistText
CeladonHotelReceptionistText:
	text "#MON? No, this"
	line "is a hotel for"
	cont "people."

	para "We're full up."
	done

CeladonHotelDoormanScript:
	jumptext CeladonHotelDoormanText
CeladonHotelDoormanText:
	text "I'm sorry."
	line "Only hotel guests"
	cont "allowed inside."
	done

CeladonHotelBeautyScript:
	jumptextfaceplayer CeladonHotelBeautyText
CeladonHotelBeautyText:
	text "I'm on vacation"
	line "with my brother"
	cont "and boy friend."

	para "CELADON is such a"
	line "pretty city!"
	done

CeladonHotelSuperNerdScript:
	jumptextfaceplayer CeladonHotelSuperNerdText
CeladonHotelSuperNerdText:
	text "Why did she bring"
	line "her brother?"
	done

CeladonHotelBenchGuyScript:
	jumptext CeladonHotelBenchGuyText
CeladonHotelBenchGuyText:
	text "My sis brought me"
	line "on this vacation!"
	done

CeladonHotelPCScript:
	jumpstd PCScript

CeladonHotel_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 11
	warp_event  4,  7, CELADON_CITY, 11

	def_coord_events

	def_bg_events
	bg_event 13,  3, BGEVENT_UP, CeladonHotelPCScript

	def_object_events
	object_event  3,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonHotelReceptionistScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonHotelDoormanScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonHotelBenchGuyScript, -1
	object_event  2,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonHotelBeautyScript, -1
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonHotelSuperNerdScript, -1
