	object_const_def

BlackthornPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

BlackthornPokecenter1FGentlemanScript:
	jumptextfaceplayer BlackthornPokecenter1FGentlemanText
BlackthornPokecenter1FGentlemanText:
	text "High up on the"
	line "INDIGO PLATEAU is"
	cont "#MON LEAGUE."

	para "I hear the best"
	line "trainers gather"
	cont "there from around"
	cont "the region."
	done

BlackthornPokecenter1FTwinScript:
	jumptextfaceplayer BlackthornPokecenter1FTwinText
BlackthornPokecenter1FTwinText:
	text "I came to see the"
	line "MOVE REMINDER."

	para "He can help #-"
	line "MON remember moves"
	cont "they forgot."
	done

BlackthornPokecenter1FCooltrainerMScript:
	jumpstd HappinessCheckScript

BlackthornPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, BLACKTHORN_CITY, 5
	warp_event  4,  7, BLACKTHORN_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FNurseScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FGentlemanScript, -1
	object_event  1,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FTwinScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FCooltrainerMScript, -1
