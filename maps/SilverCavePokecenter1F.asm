	object_const_def

SilverCavePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCavePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SilverCavePokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

SilverCavePokecenter1FBenchGuyScript:
	jumptext SilverCavePokecenter1FBenchGuyText
SilverCavePokecenter1FBenchGuyText:
	text "Powerful trainers"
	line "climb MT.SILVER"
	cont "despite its many"
	roll "dangers…"

	para "With their trusted"
	line "#MON, they must"
	cont "feel they can go"
	roll "anywhere…"
	done

;SilverCavePokecenter1FGrannyScript:
;	jumptextfaceplayer SilverCavePokecenter1FGrannyText
;SilverCavePokecenter1FGrannyText:
;	text "Powerful trainers"
;	line "climb MT.SILVER"
;	cont "despite its many"
;	roll "dangers…"
;
;	para "With their trusted"
;	line "#MON, they must"
;	cont "feel they can go"
;	roll "anywhere…"
;	done

SilverCavePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  4,  7, SILVER_CAVE_OUTSIDE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FBenchGuyScript, -1
;	object_event  7,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FGrannyScript, -1
