	object_const_def
	const SEAFOAM1F_BOULDER1
	const SEAFOAM1F_BOULDER2

SeafoamIslands_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, SeafoamIslands1FSetUpStoneTableCallback

SeafoamIslands1FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 6, SEAFOAM1F_BOULDER1, .Boulder1
	stonetable 7, SEAFOAM1F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAM1F_BOULDER1
	clearevent EVENT_SEAFOAM_B1F_BOULDER_1
	sjump .Fall

.Boulder2:
	disappear SEAFOAM1F_BOULDER2
	clearevent EVENT_SEAFOAM_B1F_BOULDER_2
	sjump .Fall

.Fall:
	pause 30
	playsound SFX_STRENGTH
	earthquake 60
	opentext
	writetext SeafoamIslands1FBoulderFellText
	waitbutton
	closetext
	end

SeafoamIslands1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

SeafoamIslands1FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslands_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 15, ROUTE_20, 1 ; 1 out
	warp_event 27, 17, ROUTE_20, 2 ; 2 out
	warp_event  7,  5, SEAFOAM_ISLANDS_B1F, 1 ; 3 down
	warp_event 25,  3, SEAFOAM_ISLANDS_B1F, 2 ; 4 down
	warp_event 25, 17, SEAFOAM_ISLANDS_B1F, 3 ; 5 down
	warp_event 16,  7, SEAFOAM_ISLANDS_B1F, 10 ; 6 pit
	warp_event 24,  7, SEAFOAM_ISLANDS_B1F, 11 ; 7 pit

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1FBoulder, EVENT_SEAFOAM_1F_BOULDER_1
	object_event 26,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1FBoulder, EVENT_SEAFOAM_1F_BOULDER_2
