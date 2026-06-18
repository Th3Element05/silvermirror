	object_const_def

CeruleanTrashedHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CeruleanTrashedHouseTilesCallback

CeladonChiefHouseTilesCallback:
	checkevent EVENT_BEAT_GRUNTM_4
	iffalse .TrashedHouse
	checkevent EVENT_BEAT_GIOVANNI
	iffalse .TrashedHouse
	changeblock 2, 0, $37 ; door
	endcallback

.TrashedHouse
	changeblock 2, 0, $39 ; wall hole
	changeblock 0, 2, $34 ; floor books
	changeblock 2, 4, $35 ; flipped chair
	changeblock 6, 4, $33 ; dirty floor
	changeblock 6, 6, $36 ; fallen plant
	endcallback


CeruleanTrashedHouseManScript:
	checkevent EVENT_BEAT_GRUNTM_4
	iffalse .Trashed
	checkevent EVENT_BEAT_GIOVANNI
	iffalse .LostIsLost
	jumptextfaceplayer CeruleanTrashedHouseManText3
.Trashed
	jumptextfaceplayer CeruleanTrashedHouseManText1
.LostIsLost
	jumptextfaceplayer CeruleanTrashedHouseManText2

CeruleanTrashedHouseManText1:
	ntag "MAN:"
	text "Those miserable"
	line "ROCKETs!"

	para "Look what they"
	line "did here!"

	para "They stole a TM"
	line "for teaching"
	cont "#MON how to"
	roll "DIG holes!"

	para "That cost me a"
	line "bundle, it did!"
	done

CeruleanTrashedHouseManText2:
	ntag "MAN:"
	text "I figured what's"
	line "lost is lost!"

	para "I decided to teach"
	line "DIGLETT how to"
	cont "DIG without a TM!"
	done

CeruleanTrashedHouseManText3:
	ntag "MAN:"
	text "I decided to make"
	line "use of that hole,"
	cont "so I installed a"
	roll "door!"
	done


CeruleanTrashedHouseWomanScript:
	checkevent EVENT_BEAT_GIOVANNI
	iffalse .UpToNoGood
	jumptextfaceplayer CeruleanTrashedHouseWomanText2
.UpToNoGood
	jumptextfaceplayer CeruleanTrashedHouseWomanText1

CeruleanTrashedHouseWomanText1:
	ntag "WOMAN:"
	text "TEAM ROCKET must"
	line "be trying to DIG"
	cont "their way into no"
	roll "good!"
	done

CeruleanTrashedHouseWomanText2:
	ntag "WOMAN:"
	text "We finally cleaned"
	line "everything up!"
	done


CeruleanTrashedHouseWallHole:
	conditional_event EVENT_BEAT_GIOVANNI, .WallHole
.WallHole
	jumptext CeruleanTrashedHouseWallHoleText

CeruleanTrashedHouseWallHoleText:
	text "TEAM ROCKET left"
	line "a way out!"
	done


CeruleanTrashedHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, CERULEAN_CITY, 1
	warp_event  2,  7, CERULEAN_CITY, 4
	warp_event  3,  7, CERULEAN_CITY, 4

	def_coord_events

	def_bg_events
;	bg_event  3,  0, BGEVENT_READ, CeruleanTrashedHouseWallHole
	bg_event  3,  0, BGEVENT_IFNOTSET, CeruleanTrashedHouseWallHole

	def_object_events
	object_event  2,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouseManScript, -1
	object_event  5,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouseWomanScript, -1
