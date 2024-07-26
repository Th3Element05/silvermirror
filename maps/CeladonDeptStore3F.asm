	object_const_def

CeladonDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore3FClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM18_COUNTER
	iffalse .GiveCounter
	pokemart MARTTYPE_STANDARD, MART_TMS_1
	closetext
	end

.GiveCounter
	writetext CeladonDeptStore3FFreeSampleText
	promptbutton
	verbosegiveitem TM_COUNTER
	setevent EVENT_GOT_TM18_COUNTER
	closetext
	end

CeladonDeptStore3FFreeSampleText:
	text "Welcome to the"
	line "TM SHOP!"

	para "We're giving away"
	line "free samples today!"
	done

CeladonDeptStore3FGameboyKid1Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid1Text
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

CeladonDeptStore3FGameboyKid1Text:
	text "#MON are"
	line "registered with"
	cont "an ID No. of the"
	cont "Original Trainer"
	cont "that caught it!"
	done

CeladonDeptStore3FGameboyKid2Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid2Text
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

CeladonDeptStore3FGameboyKid2Text:
	text "All right!"

	para "My buddy's going"
	line "to trade me his"
	cont "KANGASKHAN for my"
	cont "GRAVELER!"
	done

CeladonDeptStore3FGameboyKid3Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid3Text
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

CeladonDeptStore3FGameboyKid3Text:
	text "Come on GRAVELER!"

	para "I love GRAVELER!"
	line "I collect them!"

	para "Huh?"

	para "GRAVELER turned"
	line "into a different"
	cont "#MON!"
	done

CeladonDeptStore3FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore3FYoungsterText
CeladonDeptStore3FYoungsterText:
	text "I can't decide"
	line "which #MON I"
	cont "should use this TM"
	cont "on…"

	para "Lucky for me,"
	line "it's reusable!"
	done

CeladonDeptStore3FDirectory:
	jumptext CeladonDeptStore3FDirectoryText
CeladonDeptStore3FDirectoryText:
	text "3F: TM SHOP"

	para "New attacks for"
	line "your #MON!"
	done

CeladonDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1
	warp_event 12,  0, CELADON_DEPT_STORE_4F, 3
	warp_event 10,  0, CELADON_DEPT_STORE_2F, 2

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, CeladonDeptStore3FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore3FElevatorButton

	def_object_events
	object_event 11,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerkScript, -1
	object_event  3,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FYoungsterScript, -1
	object_event  7,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid1Script, -1
	object_event  7,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid2Script, -1
	object_event  8,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid3Script, -1
