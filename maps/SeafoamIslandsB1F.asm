	object_const_def
	const SEAFOAMB1F_BOULDER1
	const SEAFOAMB1F_BOULDER2

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, SeafoamIslandsB1FSetUpStoneTableCallback

SeafoamIslandsB1FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 8, SEAFOAMB1F_BOULDER1, .Boulder1
	stonetable 9, SEAFOAMB1F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMB1F_BOULDER1
	clearevent EVENT_SEAFOAM_B2F_BOULDER_1
	sjump .Fall

.Boulder2:
	disappear SEAFOAMB1F_BOULDER2
	clearevent EVENT_SEAFOAM_B2F_BOULDER_2
	sjump .Fall

.Fall:
	pause 30
	playsound SFX_STRENGTH
	earthquake 60
	opentext
	writetext SeafoamIslandsB1FBoulderFellText
	waitbutton
	closetext
	end

SeafoamIslandsB1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

SeafoamIslandsB1FBoulder:
	jumpstd StrengthBoulderScript

;SeafoamIslandsB1FHiddenIceHeal:
;	hiddenitem ICE_HEAL, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_ICE_HEAL

;SeafoamIslandsB1FBoulder:
;	jumpstd StrengthBoulderScript

;SeafoamIslandsB1FMaxElixer:
;	itemball MAX_ELIXER

;SeafoamIslandsB1FIceHeal:
;	itemball ICE_HEAL

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, SEAFOAM_ISLANDS, 3 ; 1 up
	warp_event 25,  3, SEAFOAM_ISLANDS, 4 ; 2 up
	warp_event 23, 17, SEAFOAM_ISLANDS, 5 ; 3 up
	warp_event  6,  5, SEAFOAM_ISLANDS_B2F, 1 ; 4 down
	warp_event 13,  9, SEAFOAM_ISLANDS_B2F, 2 ; 5 down
	warp_event 18, 17, SEAFOAM_ISLANDS_B2F, 3 ; 6 down
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 4 ; 7 down
	warp_event 18,  9, SEAFOAM_ISLANDS_B2F, 10 ; 8 pit
	warp_event 23,  8, SEAFOAM_ISLANDS_B2F, 11 ; 9 pit
	warp_event 17,  8, SEAFOAM_ISLANDS, 6 ; 10 fall
	warp_event 24,  7, SEAFOAM_ISLANDS, 7 ; 11 fall

	def_coord_events

	def_bg_events
;	bg_event 14, 10, BGEVENT_ITEM, SeafoamIslandsB1FHiddenIceHeal

	def_object_events
	object_event 17,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, EVENT_SEAFOAM_B1F_BOULDER_1
	object_event 24,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, EVENT_SEAFOAM_B1F_BOULDER_2
;	object_event 21,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FMaxElixer, EVENT_SEAFOAM_ISLANDS_B1F_MAX_ELIXER
;	object_event 11,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FIceHeal, EVENT_SEAFOAM_ISLANDS_B1F_ICE_HEAL
