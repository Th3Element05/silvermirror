	object_const_def

SaffronPidgeyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronPidgeyHouseBoy:
	jumptextfaceplayer SaffronPidgeyHouseBoyText
SaffronPidgeyHouseBoyText:
;	text "My neighbor the"
;	line "COPYCAT lost her"
;	cont "favorite doll."
;
;	para "I tried to give"
;	line "her a new one,"
;	cont "but she only wants"
;	roll "her old doll back."
;	done
	text "My neighbor the"
	line "COPYCAT is cute!"

	para "I'm going to give"
	line "her a #DOLL!"
	done

SaffronPidgeyHouseLass:
	jumptextfaceplayer SaffronPidgeyHouseLassText
SaffronPidgeyHouseLassText:
	text "Thank you for"
	line "writing. I hope"
	cont "to see you soon!"

	para "Hey! Don't look"
	line "at my letter!"
	done

SaffronPidgeyHousePidgey:
	opentext
	writetext SaffronPidgeyHousePidgeyText
	cry PIDGEY
	waitbutton
	closetext
	end

SaffronPidgeyHousePidgeyText:
	text "PIDGEY: Kurukkoo!"
	done

SaffronPidgeyHousePaper:
	jumptext SaffronPidgeyHousePaperText
SaffronPidgeyHousePaperText:
	text "I was given a PP"
	line "UP as a gift."

	para "It's used for"
	line "increasing the PP"
	cont "of techniques!"
	done

SaffronPidgeyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 16
	warp_event  3,  7, SAFFRON_CITY, 16

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHouseBoy, -1
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHouseLass, -1
	object_event  6,  4, SPRITE_PIDGEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHousePidgey, -1
	object_event  3,  3, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPidgeyHousePaper, -1
