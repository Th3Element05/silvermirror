	object_const_def

CopycatsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

CopycatsHouse1FPokefanMScript:
	jumptextfaceplayer CopycatsHouse1FPokefanMText
CopycatsHouse1FPokefanMText:
	text "My daughter likes"
	line "to mimic people."

	para "Her mimicry has"
	line "earned her the"
	cont "nickname COPYCAT"
	roll "around here."
	done

CopycatsHouse1FPokefanFScript:
	jumptextfaceplayer CopycatsHouse1FPokefanFText
CopycatsHouse1FPokefanFText:
	text "My daughter is so"
	line "self-centered…"

	para "She only has a few"
	line "friends."
	done

CopycatsHouse1FChanseyScript:
	faceplayer
	opentext
	writetext CopycatsHouse1FChanseyText
	cry CHANSEY
	waitbutton
	closetext
	end

CopycatsHouse1FChanseyText:
	ntag "CHANSEY:"
	text "Chan-si!"
	done

CopycatsHouse1FStoveScript:
	jumptext CopycatsHouse1FStoveText
CopycatsHouse1FStoveText:
	text "It's the stove."
	done

CopycatsHouse1FSinkScript:
	jumptext CopycatsHouse1FSinkText
CopycatsHouse1FSinkText:
	text "The sink is nice"
	line "and clean."
	done

CopycatsHouse1FFridgeScript:
	jumptext CopycatsHouse1FFridgeText
CopycatsHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "Tasty LEMONADE!"
	done

CopycatsHouse1FTV:
	jumpstd TVScript

CopycatsHouse1FBookshelf:
	jumpstd PictureBookshelfScript
;	jumpstd MagazineBookshelfScript

CopycatsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAFFRON_CITY, 7
	warp_event  5,  7, SAFFRON_CITY, 7
	warp_event  9,  0, COPYCATS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CopycatsHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, CopycatsHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, CopycatsHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, CopycatsHouse1FTV
	bg_event  6,  1, BGEVENT_READ, CopycatsHouse1FBookshelf
	bg_event  7,  1, BGEVENT_READ, CopycatsHouse1FBookshelf

	def_object_events
	object_event  7,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanMScript, -1
	object_event  4,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanFScript, -1
	object_event  2,  5, SPRITE_CHANSEY_MOVE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FChanseyScript, -1

;.PinkOverYellowOBPalette