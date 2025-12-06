	object_const_def
	const AZALEATOWN_WHT_APRICORN
	const AZALEATOWN_KURT_OUTSIDE

AzaleaTown_MapScripts:
	def_scene_scripts
	scene_script AzaleaTownNoop1Scene, SCENE_AZALEATOWN_NOOP
	scene_script AzaleaTownNoop2Scene, SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AzaleaTownFlypointCallback
	callback MAPCALLBACK_OBJECTS, AzaleaTownFruittrees

AzaleaTownNoop1Scene:
AzaleaTownNoop2Scene:
	end

AzaleaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_AZALEA
;	clearflag ENGINE_KURT_MAKING_BALLS
	endcallback

AzaleaTownFruittrees:
	checkflag ENGINE_DAILY_AZALEA_TOWN_FRUIT
	iftrue .NoFruit
	appear AZALEATOWN_WHT_APRICORN
.NoFruit:
	endcallback

AzaleaTown_WHTApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, WHT_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem WHT_APRICORN
	iffalse .NoRoomInBag
	disappear AZALEATOWN_WHT_APRICORN
	setflag ENGINE_DAILY_AZALEA_TOWN_FRUIT
.NoRoomInBag
	closetext
	end

AzaleaTown_NoFruit:
	farsjump Std_NoFruitScript

; scripts
AzaleaTownCelebiScene:
	applymovement PLAYER, AzaleaTownPlayerLeavesKurtsHouseMovement
	opentext
	writetext AzaleaTownKurtText1
	promptbutton
	turnobject AZALEATOWN_KURT_OUTSIDE, RIGHT
	writetext AzaleaTownKurtText2
	promptbutton
	writetext AzaleaTownKurtText3
	waitbutton
	verbosegiveitem GS_BALL
	turnobject AZALEATOWN_KURT_OUTSIDE, LEFT
	setflag ENGINE_FOREST_IS_RESTLESS
	clearevent EVENT_ILEX_FOREST_LASS
	setevent EVENT_ROUTE_34_ILEX_FOREST_GATE_LASS
	setscene SCENE_AZALEATOWN_NOOP
	closetext
	end

AzaleaTownKurtText1:
	text "ILEX FOREST is"
	line "restless!"

	para "What is going on?"
	done

AzaleaTownKurtText2:
	text "<PLAYER>, here's"
	line "your GS BALL back!"
	done

AzaleaTownPlayerLeavesKurtsHouseMovement:
	step LEFT
	step LEFT
	step UP
	turn_head LEFT
	step_end

AzaleaTownKurtScript:
	faceplayer
	opentext
	writetext AzaleaTownKurtText3
	waitbutton
	turnobject AZALEATOWN_KURT_OUTSIDE, LEFT
	closetext
	end

AzaleaTownKurtText3:
	text "Could you go see"
	line "why ILEX FOREST is"
	cont "so restless?"
	done

AzaleaTownYoungsterScript:
	jumptextfaceplayer AzaleaTownYoungsterText
AzaleaTownYoungsterText:
	text "AZALEA is a quiet"
	line "town."

	para "It's sits between"
	line "ILEX FOREST and"
	cont "UNION CAVE."
	done

AzaleaTownGrampsScript:
	jumptextfaceplayer AzaleaTownGrampsText
AzaleaTownGrampsText:
	text "There is a cave"
	line "near here called"
	cont "SLOWPOKE WELL."

	para "The SLOWPOKE from"
	line "there often loaf"
	cont "around in town."
	done

AzaleaTownTeacherScript:
	jumptextfaceplayer AzaleaTownTeacherText
AzaleaTownTeacherText:
	text "Did you come to"
	line "get KURT to make"
	cont "some BALLS?"

	para "A lot of people do"
	line "just that."
	done

AzaleaTownSlowpokeScript:
	opentext
	writetext AzaleaTownSlowpokeText1
	pause 60
	writetext AzaleaTownSlowpokeText2
	cry SLOWPOKE
	waitbutton
	closetext
	end

AzaleaTownSlowpokeText1:
	text "SLOWPOKE: …"

	para "<……> <……> <……>"
	done

AzaleaTownSlowpokeText2:
	text "<……> <……>Yawn?"
	done

;UnusedWoosterScript: ; unreferenced
;	faceplayer
;	opentext
;	writetext WoosterText
;	cry QUAGSIRE
;	waitbutton
;	closetext
;	end

;WoosterText:
;	text "WOOSTER: Gugyoo…"
;	done

AzaleaTownSign:
	jumptext AzaleaTownSignText
AzaleaTownSignText:
	text "AZALEA TOWN"
	line "Where People and"

	para "#MON Live in"
	line "Happy Harmony"
	done

KurtsHouseSign:
	jumptext KurtsHouseSignText
KurtsHouseSignText:
	text "KURT'S HOUSE"
	done

AzaleaGymSign:
	jumptext AzaleaGymSignText
AzaleaGymSignText:
	text "AZALEA TOWN"
	line "#MON GYM"
	cont "LEADER: BUGSY"

	para "The Walking"
	line "Bug #MON"
	cont "Encyclopedia"
	done

SlowpokeWellSign:
	jumptext SlowpokeWellSignText
SlowpokeWellSignText:
	text "SLOWPOKE WELL"

	para "Also known as the"
	line "RAINMAKER WELL."

	para "Locals believe"
	line "that a SLOWPOKE's"
	cont "yawn summons rain."

	para "Records show that"
	line "a SLOWPOKE's yawn"
	cont "ended a drought"
	cont "400 years ago."
	done

CharcoalKilnSign:
	jumptext CharcoalKilnSignText
CharcoalKilnSignText:
	text "CHARCOAL KILN"
	done

AzaleaTownIlextForestSign:
	jumptext AzaleaTownIlexForestSignText
AzaleaTownIlexForestSignText:
	text "ILEX FOREST"

	para "Enter through the"
	line "gate."
	done

AzaleaTownPokecenterSign:
	jumpstd PokecenterSignScript

AzaleaTownMartSignScript:
	jumpstd MartSignScript

AzaleaTownHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_AZALEA_TOWN_HIDDEN_FULL_HEAL

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  9, AZALEA_POKECENTER_1F, 1
	warp_event 21, 13, CHARCOAL_KILN, 1
	warp_event 21,  5, AZALEA_MART, 2
	warp_event  9,  5, KURTS_HOUSE, 1
	warp_event 10, 15, AZALEA_GYM, 1
	warp_event 31,  7, SLOWPOKE_WELL_B1F, 1
	warp_event  2, 10, ILEX_FOREST_AZALEA_GATE, 3
	warp_event  2, 11, ILEX_FOREST_AZALEA_GATE, 4

	def_coord_events
	coord_event  9,  6, SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL, AzaleaTownCelebiScene

	def_bg_events
	bg_event  8,  2, BGEVENT_READ, AzaleaTown_NoFruit
	bg_event 19,  9, BGEVENT_READ, AzaleaTownSign
	bg_event 11,  9, BGEVENT_READ, KurtsHouseSign
	bg_event 15, 15, BGEVENT_READ, AzaleaGymSign
	bg_event 29,  7, BGEVENT_READ, SlowpokeWellSign
	bg_event 19, 13, BGEVENT_READ, CharcoalKilnSign
	bg_event 16,  9, BGEVENT_READ, AzaleaTownPokecenterSign
	bg_event 22,  5, BGEVENT_READ, AzaleaTownMartSignScript
	bg_event  3,  9, BGEVENT_READ, AzaleaTownIlextForestSign
	bg_event 31,  6, BGEVENT_ITEM, AzaleaTownHiddenFullHeal

	def_object_events
	object_event  8,  2, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, AzaleaTown_WHTApricorn, EVENT_AZALEA_TOWN_WHT_APRICORN
	object_event  6,  5, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownKurtScript, EVENT_AZALEA_TOWN_KURT
	object_event  7,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaTownYoungsterScript, -1
	object_event 22,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownGrampsScript, -1
	object_event 15, 13, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaTownTeacherScript, -1
	object_event  8, 17, SPRITE_SLOWPOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, -1
	object_event 18,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, -1
	object_event 29,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, -1
	object_event 16, 15, SPRITE_SLOWPOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, -1

;.PinkOverYellowOBPalette