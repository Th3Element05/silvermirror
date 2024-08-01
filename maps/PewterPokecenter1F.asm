	object_const_def

PewterPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

PewterPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

PewterPokecenter1FBenchGuyScript:
	jumptext PewterPokecenter1FBenchGuyText
PewterPokecenter1FBenchGuyText:
	text "Yawn!"

	para "When JIGGLYPUFF"
	line "sings, #MON"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

PewterPokecenterJigglypuff:
	opentext
	writetext PewterJigglypuffText
;	cry JIGGLYPUFF
	playmusic MUSIC_JIGGLYPUFF_SONG
	pause 200
	special RestartMapMusic
	closetext
	end

PewterJigglypuffText:
	text "JIGGLYPUFF: Puu"
	line "pupuu."
	done

PewterPokecenter1FGentlemanScript:
	opentext
	writetext PewterPokecenter1FGentlemanText1
	waitbutton
	faceplayer
	writetext PewterPokecenter1FGentlemanText2
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end
	
PewterPokecenter1FGentlemanText1:
	text "What!?"

	para "TEAM ROCKET is"
	line "at MT.MOON? Huh?"
	done

PewterPokecenter1FGentlemanText2:
	text "I'm on the phone!"

	para "Scram!"
	done

;Chris:
;	faceplayer
;	opentext
;	trade NPC_TRADE_CHRIS
;	waitbutton
;	closetext
;	end

PewterPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 4
	warp_event  4,  7, PEWTER_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FBenchGuyScript, -1
	object_event  1,  3, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, PewterPokecenterJigglypuff, -1
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FGentlemanScript, -1

;.PinkOverRockOBPalette