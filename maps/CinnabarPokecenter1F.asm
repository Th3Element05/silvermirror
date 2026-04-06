	object_const_def

CinnabarPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CinnabarPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

CinnabarPokecenter1FBenchGuyScript:
	jumptext CinnabarPokecenter1FBenchGuyText
CinnabarPokecenter1FBenchGuyText:
	text "#MON can still"
	line "learn techniques"
	cont "after canceling"
	roll "evolution."

	para "Evolution can wait"
	line "until new moves"
	cont "have been learned."
	done

CinnabarPokecenter1FGentlemanScript:
	jumptextfaceplayer CinnabarPokecenter1FGentlemanText
CinnabarPokecenter1FGentlemanText:
;	text "#MON you get"
;	line "in trades grow"
;	cont "very quickly."
;
;	para "I think it's"
;	line "worth a try!"
;	done
;
	text "Evolved #MON"
	line "typically learn"
	cont "moves more slowly."

	para "You might want to"
	line "postpone evolution"
	cont "to learn certain"
	roll "attacks sooner!"
	done

CinnabarPokecenter1FCooltrainerFScript:
	jumptextfaceplayer CinnabarPokecenter1FCooltrainerFText
CinnabarPokecenter1FCooltrainerFText:
	text "You can cancel"
	line "evolution."

	para "When a #MON is"
	line "evolving, you can"
	cont "stop it and leave"
	roll "it the way it is."
	done

CinnabarPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 3
	warp_event  4,  7, CINNABAR_ISLAND, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FBenchGuyScript, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FGentlemanScript, -1
	object_event  9,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FCooltrainerFScript, -1
