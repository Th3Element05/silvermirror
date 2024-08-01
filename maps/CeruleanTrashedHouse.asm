	object_const_def

CeruleanTrashedHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTrashedHouseManScript:
	checkevent EVENT_BEAT_GRUNTM_4
	iftrue .Skip
	jumptextfaceplayer CeruleanTrashedHouseManText1
.Skip
	jumptextfaceplayer CeruleanTrashedHouseManText2

CeruleanTrashedHouseWomanScript:
	jumptextfaceplayer CeruleanTrashedHouseWomanText

CeruleanTrashedHouseWallHole:
	jumptext CeruleanTrashedHouseWallHoleText

CeruleanTrashedHouseManText1:
	text "Those miserable"
	line "ROCKETs!"

	para "Look what they"
	line "did here!"

	para "They stole a TM"
	line "for teaching"
	cont "#MON how to"
	cont "DIG holes!"

	para "That cost me a"
	line "bundle, it did!"
	done

CeruleanTrashedHouseManText2:
	text "I figured what's"
	line "lost is lost!"

	para "I decided to teach"
	line "DIGLETT how to"
	cont "DIG without a TM!"
	done

CeruleanTrashedHouseWomanText:
	text "TEAM ROCKET must"
	line "be trying to DIG"
	cont "their way into no"
	cont "good!"
	done

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
	bg_event  3,  0, BGEVENT_READ, CeruleanTrashedHouseWallHole

	def_object_events
	object_event  2,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouseManScript, -1
	object_event  5,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouseWomanScript, -1
