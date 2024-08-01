	object_const_def

CeruleanGymBadgeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CeruleanGymBadgeHouseTilesCallback

CeruleanGymBadgeHouseTilesCallback:
	changeblock 2, 0, $37 ; back door
	changeblock 2, 2, $28 ; chair
	changeblock 4, 2, $2a ; table
	changeblock 2, 4, $2e ; chair
	changeblock 4, 4, $2b ; table
	endcallback

CeruleanGymBadgeSpeechHousePokefanMScript:
	jumptextfaceplayer CeruleanGymBadgeSpeechHousePokefanMText
CeruleanGymBadgeSpeechHousePokefanMText:
	text "Are you collecting"
	line "GYM BADGES?"
	done

CeruleanGymBadgeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3
	warp_event  3,  0, CERULEAN_CITY, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
