	object_const_def

LavenderSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderSpeechHouseTeacherScript:
	checkevent EVENT_MR_FUJIS_HOUSE_MR_FUJI
	iffalse .GhostGone
	jumptextfaceplayer LavenderSpeechHouseRocketsText
.GhostGone
	jumptextfaceplayer LavenderSpeechHouseGhostText

LavenderSpeechHouseRocketsText:
	text "I hate those"
	line "horrible ROCKETs!"

	para "That poor CUBONE's"
	line "mother…"

	para "It was killed"
	line "trying to escape"
	cont "from TEAM ROCKET!"
	done

LavenderSpeechHouseGhostText:
	text "The GHOST of"
	line "#MON TOWER is"
	cont "gone!"

	para "Someone must have"
	line "soothed its"
	cont "restless soul!"
	done

LavenderSpeechHouseCubone:
	opentext
	writetext LavenderSpeechHouseCuboneText
	cry CUBONE
	waitbutton
	closetext
	end

LavenderSpeechHouseCuboneText:
	text "CUBONE: Kyarugoo!"
	done

LavenderSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

LavenderSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 3
	warp_event  3,  7, LAVENDER_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, LavenderSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, LavenderSpeechHouseBookshelf

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderSpeechHouseTeacherScript, -1
	object_event  3,  5, SPRITE_CUBONE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LavenderSpeechHouseCubone, -1
