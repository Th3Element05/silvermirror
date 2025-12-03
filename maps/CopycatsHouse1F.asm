	object_const_def

CopycatsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

CopycatsHouse1FPokefanMScript:
	jumptextfaceplayer CopycatsHouse1FPokefanMText

CopycatsHouse1FPokefanFScript:
	jumptextfaceplayer CopycatsHouse1FPokefanFText

CopycatsHouse1FChanseyScript:
	faceplayer
	opentext
	writetext CopycatsHouse1FChanseyText
	cry CHANSEY
	waitbutton
	closetext
	end

CopycatsHouse1FPokefanMText:
	text "My daughter likes"
	line "to mimic people."

	para "Her mimicry has"
	line "earned her the"
	cont "nickname COPYCAT"
	cont "around here."
	done

CopycatsHouse1FPokefanFText:
	text "My daughter is so"
	line "self-centered…"

	para "She only has a few"
	line "friends."
	done

CopycatsHouse1FChanseyText:
	text "CHANSEY: Chan-si!"
	done

CopycatsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 7
	warp_event  3,  7, SAFFRON_CITY, 7
	warp_event  7,  0, COPYCATS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanMScript, -1
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanFScript, -1
	object_event  1,  5, SPRITE_CHANSEY_MOVE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FChanseyScript, -1

;.PinkOverYellowOBPalette