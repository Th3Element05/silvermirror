	object_const_def

CeruleanPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CeruleanPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

CeruleanPokecenter1FBenchGuyScript:
	jumptext CeruleanPokecenter1FBenchGuyText
CeruleanPokecenter1FBenchGuyText:
	text "BILL has lots of"
	line "#MON!"

	para "He collects rare"
	line "ones too!"
	done

CeruleanPokecenter1FGentlemanScript:
	jumptextfaceplayer CeruleanPokecenter1FGentlemanText
CeruleanPokecenter1FGentlemanText:
	text "Have you heard"
	line "about BILL?"

	para "Everyone calls"
	line "him a #MANIAC!"

	para "I think people"
	line "are just jealous"
	cont "of BILL, though."

	para "Who wouldn't want"
	line "to boast about"
	cont "their #MON?"
	done

CeruleanPokecenter1FSuperNerdScript:
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText
CeruleanPokecenter1FSuperNerdText:
	text "That BILL!"

	para "I heard that"
	line "he'll do whatever"
	cont "it takes to get"
	cont "rare #MON!"
	done

CeruleanPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 6
	warp_event  4,  7, CERULEAN_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FBenchGuyScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FGentlemanScript, -1
	object_event 10,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FSuperNerdScript, -1
