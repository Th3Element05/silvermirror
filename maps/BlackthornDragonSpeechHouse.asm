	object_const_def

BlackthornDragonSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornDragonSpeechHouseGrannyScript:
	jumptextfaceplayer BlackthornDragonSpeechHouseGrannyText
BlackthornDragonSpeechHouseGrannyText:
	text "A clan of trainers"
	line "who can freely"
	cont "command dragons"
	cont "live right here in"
	cont "BLACKTHORN."

	para "As a result, there"
	line "are many legends"
	cont "about dragons in"
	cont "this town."
	done

BlackthornDragonSpeechHouseDratiniScript:
	faceplayer
	opentext
	writetext BlackthornDragonSpeechHouseDratiniText
	cry DRATINI
	waitbutton
	closetext
	end

BlackthornDragonSpeechHouseDratiniText:
	text "DRATINI: Draa!"
	done

;BlackthornDragonSpeechHousePictureBookshelf: ; unreferenced
;	jumpstd PictureBookshelfScript

;BlackthornDragonSpeechHouseMagazineBookshelf: ; unreferenced
;	jumpstd MagazineBookshelfScript

BlackthornDragonSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 2
	warp_event  3,  7, BLACKTHORN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseGrannyScript, -1
	object_event  5,  5, SPRITE_DRATINI_MOVE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseDratiniScript, -1
