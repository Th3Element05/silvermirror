	object_const_def
;	const CELADONCITY_ROCKETS

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeladonCityFlypointCallback

CeladonCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CELADON
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	endcallback

CeladonCityRocket1Script:
	jumptextfaceplayer CeladonCityRocket1Text
CeladonCityRocket1Text:
	text "Keep out of TEAM"
	line "ROCKET's way!"
	done

CeladonCityRocket2Script:
	jumptextfaceplayer CeladonCityRocket2Text
CeladonCityRocket2Text:
	text "What are you"
	line "staring at?"
	done

CeladonCityFisherScript:
	jumptextfaceplayer CeladonCityFisherText
CeladonCityFisherText:
	text "This is my trusted"
	line "pal, POLIWRATH!"

	para "It evolved from"
	line "POLIWHIRL when I"
	cont "used WATER STONE!"
	done

CeladonCityPoliwrath:
	opentext
	writetext CeladonCityPoliwrathText
	cry POLIWRATH
	waitbutton
	closetext
	end
CeladonCityPoliwrathText:
	text "POLIWRATH: Ribi"
	line "ribit!"
	done

CeladonCityGramps1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM41_SOFTBOILED
	iftrue .GotSoftboiled
	writetext CeladonCityGramps1GiveSoftboiledText
	promptbutton
	verbosegiveitem TM_SOFTBOILED
;	iffalse .NoRoomForSoftboiled
	setevent EVENT_GOT_TM41_SOFTBOILED
	; fallthrough
.GotSoftboiled:
	writetext CeladonCityGramps1TellSoftboiledText
	waitbutton
	; fallthrough
;.NoRoomForSoftboiled:
	closetext
	end

CeladonCityGramps1GiveSoftboiledText:
	text "Hello, there!"

	para "I've seen you,"
	line "but I never had a"
	cont "chance to talk!"

	para "Here's a gift for"
	line "dropping by!"
	done

CeladonCityGramps1TellSoftboiledText:
	text "TM41 teaches"
	line "SOFTBOILED!"

	para "Only one #MON"
	line "can use it!"

	para "That #MON is"
	line "CHANSEY!"
	done

CeladonCityGirlScript:
	jumptextfaceplayer CeladonCityGirlText
CeladonCityGirlText:
	text "I got my KOFFING"
	line "in CINNABAR!"

	para "It's nice, but it"
	line "breathes poison"
	cont "when it's angry!"
	done

CeladonCityLassScript:
	jumptextfaceplayer CeladonCityLassText
CeladonCityLassText:
	text "The GAME CORNER"
	line "is bad for our"
	cont "city's image!"
	done

CeladonCityGramps2Script:
	jumptextfaceplayer CeladonCityGramps2Text
CeladonCityGramps2Text:
	text "Moan! I blew it"
	line "all at the slots!"

	para "I knew I should"
	line "have cashed in my"
	cont "coins for prizes!"
	done

CeladonCityGramps3Script:
	jumptextfaceplayer CeladonCityGramps3Text
CeladonCityGramps3Text:
	text "Heheh! This GYM"
	line "is great! It's"
	cont "full of women!"
	done

CeladonCitySign:
	jumptext CeladonCitySignText
CeladonCitySignText:
	text "CELADON CITY"

	para "The City of"
	line "Rainbow Dreams"
	done

CeladonGymSign:
	jumptext CeladonGymSignText
CeladonGymSignText:
	text "CELADON CITY"
	line "#MON GYM"
	cont "LEADER: ERIKA"

	para "The Nature-Loving"
	line "Princess"
	done

CeladonCityMansionSign:
	jumptext CeladonCityMansionSignText
CeladonCityMansionSignText:
	text "CELADON MANSION"
	done

CeladonCityGameCornerSign:
	jumptext CeladonCityGameCornerSignText
CeladonCityGameCornerSignText:
	text "ROCKET GAME CORNER"
	line "The playground"
	cont "for grown-ups!"
	done

CeladonCityPrizeExchangeSign:
	jumptext CeladonCityPrizeExchangeSignText
CeladonCityPrizeExchangeSignText:
	text "Coins exchanged"
	line "for prizes!"
	cont "PRIZE EXCHANGE"
	done

CeladonCityTrainerTips1:
	jumptext CeladonCityTrainerTips1Text
CeladonCityTrainerTips1Text:
	text "TRAINER TIPS"

	para "X ACCURACY boosts"
	line "the accuracy of"
	cont "techniques!"

	para "DIRE HIT jacks up"
	line "the likelihood of"
	cont "critical hits!"

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCityTrainerTips2:
	jumptext CeladonCityTrainerTips2Text
CeladonCityTrainerTips2Text:
	text "TRAINER TIPS"

	para "GUARD SPEC."
	line "protects #MON"
	cont "against SPECIAL"
	cont "attacks such as"
	cont "fire and water!"

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCityDeptStoreSign:
	jumptext CeladonCityDeptStoreSignText
CeladonCityDeptStoreSignText:
	text "Find What You"
	line "Need at CELADON"
	cont "DEPT.STORE!"
	done

CeladonCityPokecenterSign:
	jumpstd PokecenterSignScript

; hidden items
CeladonCityHiddenPpUp:
	hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP

CeladonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 13, CELADON_DEPT_STORE_1F, 3 ;1
	warp_event 22,  9, CELADON_MANSION_1F, 1 ;2
	warp_event 22,  3, CELADON_MANSION_1F, 3 ;3
	warp_event 23,  3, CELADON_MANSION_1F, 3 ;4
	warp_event 39,  9, CELADON_POKECENTER_1F, 1 ;5
	warp_event 26, 19, CELADON_GAME_CORNER, 1 ;6
	warp_event 31, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1 ;7
	warp_event 10, 27, CELADON_GYM, 1 ;8
	warp_event 29, 27, CELADON_CAFE, 1 ;9
	warp_event 33, 27, CELADON_CHIEF_HOUSE, 1 ;10
	warp_event 41, 27, CELADON_HOTEL, 1 ;11

	def_coord_events

	def_bg_events
	bg_event 17, 15, BGEVENT_READ, CeladonCitySign
	bg_event 11, 29, BGEVENT_READ, CeladonGymSign
	bg_event 19,  9, BGEVENT_READ, CeladonCityMansionSign
	bg_event 25, 21, BGEVENT_READ, CeladonCityGameCornerSign
	bg_event 31, 21, BGEVENT_READ, CeladonCityPrizeExchangeSign
	bg_event 25, 15, BGEVENT_READ, CeladonCityTrainerTips1
	bg_event 37, 21, BGEVENT_READ, CeladonCityTrainerTips2
	bg_event 10, 13, BGEVENT_READ, CeladonCityDeptStoreSign
	bg_event 40,  9, BGEVENT_READ, CeladonCityPokecenterSign
	bg_event 46, 15, BGEVENT_ITEM, CeladonCityHiddenPpUp

	def_object_events
	object_event 40, 14, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityRocket1Script, EVENT_CELADON_CITY_ROCKETS
	object_event 30, 29, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityRocket2Script, EVENT_CELADON_CITY_ROCKETS
	object_event 30, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityFisherScript, -1
	object_event 28, 12, SPRITE_POLIWRATH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityPoliwrath, -1
	object_event 20, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps1Script, -1
	object_event  6, 17, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityGirlScript, -1
	object_event 14, 19, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityLassScript, -1
	object_event 23, 22, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps2Script, -1
	object_event  8, 28, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps3Script, -1
