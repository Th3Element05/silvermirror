	object_const_def
	const SEAFOAMB2F_BOULDER1
	const SEAFOAMB2F_BOULDER2

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, SeafoamIslandsB2FSetUpStoneTableCallback

SeafoamIslandsB2FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 8, SEAFOAMB2F_BOULDER1, .Boulder1
	stonetable 9, SEAFOAMB2F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMB2F_BOULDER1
	clearevent EVENT_SEAFOAM_B3F_BOULDER_X1
	sjump .Fall

.Boulder2:
	disappear SEAFOAMB2F_BOULDER2
	clearevent EVENT_SEAFOAM_B3F_BOULDER_X2
	sjump .Fall

.Fall:
	pause 30
	playsound SFX_STRENGTH
	earthquake 60
	opentext
	writetext SeafoamIslandsB2FBoulderFellText
	waitbutton
	closetext
	end

SeafoamIslandsB2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

SeafoamIslandsB2FBoulder:
	jumpstd StrengthBoulderScript

; hidden items
SeafoamIslandsB2FHiddenNugget:
	hiddenitem NUGGET, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_NUGGET

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 4 ; 1 up
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 5 ; 2 up
	warp_event 19, 15, SEAFOAM_ISLANDS_B1F, 6 ; 3 up
	warp_event 25, 11, SEAFOAM_ISLANDS_B1F, 7 ; 4 up
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1 ; 5 down
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 2 ; 6 down
	warp_event 24, 13, SEAFOAM_ISLANDS_B3F, 3 ; 7 down
	warp_event 16,  7, SEAFOAM_ISLANDS_B3F, 9 ; 8 pit
	warp_event 21,  6, SEAFOAM_ISLANDS_B3F, 10 ; 9 pit
	warp_event 17,  6, SEAFOAM_ISLANDS_B1F, 8 ; 10 fall
	warp_event 22,  6, SEAFOAM_ISLANDS_B1F, 9 ; 11 fall

	def_coord_events

	def_bg_events
	bg_event 13, 15, BGEVENT_ITEM, SeafoamIslandsB2FHiddenNugget

	def_object_events
	object_event 17,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_SEAFOAM_B2F_BOULDER_1
	object_event 22,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_SEAFOAM_B2F_BOULDER_2
;	object_event 12, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB2FWaterStone, EVENT_SEAFOAM_ISLANDS_B2F_WATER_STONE
