	object_const_def

ViridianNicknameSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianNicknameSpeechHouseSpearySign:
	jumptext ViridianNicknameSpeechHouseSpearySignText
ViridianNicknameSpeechHouseSpearySignText:
	text "SPEAROW"
	line "Name: SPEARY"
	done

ViridianNicknameSpeechHousePokefanMScript:
	jumptextfaceplayer ViridianNicknameSpeechHousePokefanMText
ViridianNicknameSpeechHousePokefanMText:
	text "Coming up with"
	line "nicknames is fun,"
	cont "but hard."

	para "Simple names are"
	line "the easiest to"
	cont "remember."
	done

ViridianNicknameSpeechHouseGirlScript:
	jumptextfaceplayer ViridianNicknameSpeechHouseGirlText
ViridianNicknameSpeechHouseGirlText:
	text "My Daddy loves"
	line "#MON too."
	done

ViridianNicknameSpeechHouseSpearyScript:
	opentext
	writetext ViridianNicknameSpeechHouseSpearyText
	cry SPEAROW
	waitbutton
	closetext
	end
ViridianNicknameSpeechHouseSpearyText:
	text "SPEARY: Tetweet!"
	done

ViridianNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 2
	warp_event  3,  7, VIRIDIAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  0, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianNicknameSpeechHouseSpearySign, -1
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianNicknameSpeechHousePokefanMScript, -1
	object_event  1,  4, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianNicknameSpeechHouseGirlScript, -1
	object_event  5,  5, SPRITE_SPEAROW, SPRITEMOVEDATA_POKEMON, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianNicknameSpeechHouseSpearyScript, -1
