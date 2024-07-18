	object_const_def
	const SEAFOAMB4F_ARTICUNO
	const SEAFOAMB4F_ICE_BEAM

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsArticuno:
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 20
	closetext
;	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	loadwildmon ARTICUNO, 50
	startbattle
	disappear SEAFOAMB4F_ARTICUNO
	setevent EVENT_FOUGHT_ARTICUNO
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .NoCatch
	setflag ENGINE_PLAYER_CAUGHT_ARTICUNO
.NoCatch
	checkevent EVENT_GOT_TM13_ICE_BEAM
	iftrue .GotIceBeam
	appear SEAFOAMB4F_ICE_BEAM
	setevent EVENT_GOT_TM13_ICE_BEAM
.GotIceBeam
	end

ArticunoText:
	text "Gyaoo!"
	done

SeafoamIslandsB4FBoulderLand:
	jumptext SeafoamIslandsB4FBoulderLandText
SeafoamIslandsB4FBoulderLandText:
	text "The boulder"
	line "landed here."
	done

; itemballs
SeafoamTMIceBeam:
	itemball TM_ICE_BEAM

SeafoamB4FNevermeltice:
	itemball NEVERMELTICE

; hidden items
SeafoamIslandsB4FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SEAFOAM_ISLANDS_B4F_HIDDEN_ULTRA_BALL

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  7, SEAFOAM_ISLANDS_B3F, 4 ; 1 up
	warp_event 25,  1, SEAFOAM_ISLANDS_B3F, 5 ; 2 up
	warp_event  3, 15, SEAFOAM_ISLANDS_B3F, 6 ; 3 fall
	warp_event  6, 16, SEAFOAM_ISLANDS_B3F, 7 ; 4 fall
	warp_event 21, 15, SEAFOAM_ISLANDS_B3F, 8 ; 5 fall

	def_coord_events

	def_bg_events
	bg_event 24, 17, BGEVENT_ITEM, SeafoamIslandsB4FHiddenUltraBall

	def_object_events
	object_event  8,  1, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0,  SeafoamIslandsArticuno, EVENT_ARTICUNO_APPEAR
	object_event  7,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SeafoamTMIceBeam, EVENT_SEAFOAM_B4F_TM_ICE_BEAM
	object_event  6, 17, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FBoulderLand, EVENT_SEAFOAM_B4F_BOULDER_X1
	object_event 28,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamB4FNevermeltice, EVENT_SEAFOAM_B4F_NEVERMELTICE
