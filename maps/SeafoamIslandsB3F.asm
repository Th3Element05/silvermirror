	object_const_def
	const SEAFOAMB3F_BOULDER1

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, SeafoamIslandsB3FSetUpStoneTableCallback

SeafoamIslandsB3FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 7, SEAFOAMB3F_BOULDER1, .Boulder1
	db -1 ; end

.Boulder1:
	disappear SEAFOAMB3F_BOULDER1
	clearevent EVENT_SEAFOAM_B4F_BOULDER_X1
	pause 30
	playsound SFX_STRENGTH
	earthquake 60
	opentext
	writetext SeafoamIslandsB3FBoulderFellText
	waitbutton
	closetext
	end

SeafoamIslandsB3FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

SeafoamIslandsB3FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB3FBoulderLand:
	jumptext SeafoamIslandsB3FBoulderLandText
SeafoamIslandsB3FBoulderLandText:
	text "The boulder"
	line "landed here."
	done

; hidden items
SeafoamIslandsB3FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_MAX_ELIXER

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, SEAFOAM_ISLANDS_B2F, 5 ; 1 up
	warp_event 25,  3, SEAFOAM_ISLANDS_B2F, 6 ; 2 up
	warp_event 25, 15, SEAFOAM_ISLANDS_B2F, 7 ; 3 up
	warp_event  8,  9, SEAFOAM_ISLANDS_B4F, 1 ; 4 down
	warp_event 25,  1, SEAFOAM_ISLANDS_B4F, 2 ; 5 down
	warp_event  3, 18, SEAFOAM_ISLANDS_B4F, 3 ; 6 pit
	warp_event  6, 19, SEAFOAM_ISLANDS_B4F, 4 ; 7 pit
	warp_event 21, 17, SEAFOAM_ISLANDS_B4F, 5 ; 8 pit
	warp_event 17, 13, SEAFOAM_ISLANDS_B2F, 8 ; 9 fall
	warp_event 23, 11, SEAFOAM_ISLANDS_B2F, 9 ; 10 fall

	def_coord_events

	def_bg_events
	bg_event  9, 18, BGEVENT_ITEM, SeafoamIslandsB3FHiddenMaxElixer

	def_object_events
	object_event  8, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, EVENT_SEAFOAM_B3F_BOULDER_1
	object_event 18, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulderLand, EVENT_SEAFOAM_B3F_BOULDER_X1
	object_event 23, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulderLand, EVENT_SEAFOAM_B3F_BOULDER_X2
	object_event  9, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1
	object_event  3, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1
