	object_const_def
;	const GOLDENRODCITY_MOVETUTOR

GoldenrodCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GoldenrodCityFlypointCallback
;	callback MAPCALLBACK_OBJECTS, GoldenrodCityMoveTutorCallback

GoldenrodCityFlypointCallback:
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_REACHED_GOLDENROD
	endcallback

;GoldenrodCityMoveTutorCallback:
;	checkevent EVENT_CLEARED_RADIO_TOWER
;	iffalse .MoveTutorDone
;	checkitem COIN_CASE
;	iffalse .MoveTutorDisappear
;	checkflag ENGINE_DAILY_MOVE_TUTOR
;	iftrue .MoveTutorDone
;	appear GOLDENRODCITY_MOVETUTOR
;	jump .MoveTutorDone
;.MoveTutorDisappear:
;	disappear GOLDENRODCITY_MOVETUTOR
;.MoveTutorDone:
;	endcallback

;MoveTutorScript:
;	faceplayer
;	opentext
;	writetext GoldenrodCityMoveTutorAskTeachAMoveText
;	yesorno
;	iffalse .Refused
;	special DisplayCoinCaseBalance
;	writetext GoldenrodCityMoveTutorAsk4000CoinsOkayText
;	yesorno
;	iffalse .Refused2
;	checkcoins 4000
;	ifequal HAVE_LESS, .NotEnoughMoney
;	writetext GoldenrodCityMoveTutorWhichMoveShouldITeachText
;	loadmenu .MoveMenuHeader
;	verticalmenu
;	closewindow
;	ifequal MOVETUTOR_FLAMETHROWER, .Flamethrower
;	ifequal MOVETUTOR_THUNDERBOLT, .Thunderbolt
;	ifequal MOVETUTOR_ICE_BEAM, .IceBeam
;	sjump .Incompatible

;.Flamethrower:
;	setval MOVETUTOR_FLAMETHROWER
;	writetext GoldenrodCityMoveTutorMoveText
;	special MoveTutor
;	ifequal FALSE, .TeachMove
;	sjump .Incompatible

;.Thunderbolt:
;	setval MOVETUTOR_THUNDERBOLT
;	writetext GoldenrodCityMoveTutorMoveText
;	special MoveTutor
;	ifequal FALSE, .TeachMove
;	sjump .Incompatible

;.IceBeam:
;	setval MOVETUTOR_ICE_BEAM
;	writetext GoldenrodCityMoveTutorMoveText
;	special MoveTutor
;	ifequal FALSE, .TeachMove
;	sjump .Incompatible

;.MoveMenuHeader:
;	db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 2, 15, TEXTBOX_Y - 1
;	dw .MenuData
;	db 1 ; default option

;.MenuData:
;	db STATICMENU_CURSOR ; flags
;	db 4 ; items
;	db "FLAMETHROWER@"
;	db "THUNDERBOLT@"
;	db "ICE BEAM@"
;	db "CANCEL@"

;.Refused:
;	writetext GoldenrodCityMoveTutorAwwButTheyreAmazingText
;	waitbutton
;	closetext
;	end

;.Refused2:
;	writetext GoldenrodCityMoveTutorHmTooBadText
;	waitbutton
;	closetext
;	end

;.TeachMove:
;	writetext GoldenrodCityMoveTutorIfYouUnderstandYouveMadeItText
;	promptbutton
;	takecoins 4000
;	waitsfx
;	playsound SFX_TRANSACTION
;	special DisplayCoinCaseBalance
;	writetext GoldenrodCityMoveTutorFarewellKidText
;	waitbutton
;	closetext
;	end

;.Incompatible:
;	writetext GoldenrodCityMoveTutorBButText
;	waitbutton
;	closetext
;	end

;.NotEnoughMoney:
;	writetext GoldenrodCityMoveTutorYouDontHaveEnoughCoinsText
;	waitbutton
;	closetext
;	end
;
;GoldenrodCityMoveTutorAskTeachAMoveText:
;	text "I can teach your"
;	line "#MON amazing"
;
;	para "moves if you'd"
;	line "like."
;
;	para "Should I teach a"
;	line "new move?"
;	done
;
;GoldenrodCityMoveTutorAsk4000CoinsOkayText:
;	text "It will cost you"
;	line "4000 coins. Okay?"
;	done
;
;GoldenrodCityMoveTutorAwwButTheyreAmazingText:
;	text "Aww… But they're"
;	line "amazing…"
;	done
;
;GoldenrodCityMoveTutorWhichMoveShouldITeachText:
;	text "Wahahah! You won't"
;	line "regret it!"
;
;	para "Which move should"
;	line "I teach?"
;	done
;
;GoldenrodCityMoveTutorHmTooBadText:
;	text "Hm, too bad. I'll"
;	line "have to get some"
;	cont "cash from home…"
;	done
;
;GoldenrodCityMoveTutorIfYouUnderstandYouveMadeItText:
;	text "If you understand"
;	line "what's so amazing"
;	cont "about this move,"
;	
;	para "then you've made"
;	line "it as a trainer."
;	done
;
;GoldenrodCityMoveTutorFarewellKidText:
;	text "Wahahah!"
;	line "Take care, kid!"
;	done
;
;GoldenrodCityMoveTutorBButText:
;	text "B-but…"
;	done
;
;GoldenrodCityMoveTutorYouDontHaveEnoughCoinsText:
;	text "…You don't have"
;	line "enough coins here…"
;	done
;
;GoldenrodCityMoveTutorMoveText:
;	text_start
;	done

GoldenrodCityPokefanMScript:
	jumptextfaceplayer GoldenrodCityPokefanMText
GoldenrodCityPokefanMText:
	text "They built a new"
	line "RADIO TOWER to"
	cont "replace the old,"
	cont "creaky one."
	done

GoldenrodCityYoungster1Script:
	jumptextfaceplayer GoldenrodCityYoungster1Text
GoldenrodCityYoungster1Text:
	text "A new BIKE SHOP"
	line "will open soon!"

	para "I can't wait!"
	done

GoldenrodCityCooltrainerF2Script:
	jumptextfaceplayer GoldenrodCityCooltrainerF2Text
GoldenrodCityCooltrainerF2Text:
	text "The RADIO TOWER in"
	line "GOLDENROD CITY is"
	cont "a landmark."

	para "Oh, your #GEAR"
	line "works as a radio!"
	done

GoldenrodCityYoungster2Script:
	jumptextfaceplayer GoldenrodCityYoungster2Text
GoldenrodCityYoungster2Text:
	text "E-he-he-he…"

	para "I got in trouble"
	line "for playing in the"
	cont "basement of the"
	cont "DEPT.STORE."
	done

GoldenrodCityLassScript:
	jumptextfaceplayer GoldenrodCityLassText
GoldenrodCityLassText:
	text "The man at that"
	line "house rates your"
	cont "#MON names."

	para "He can even rename"
	line "your #MON."
	done

GoldenrodCityGrampsScript:
	jumptextfaceplayer GoldenrodCityGrampsText
GoldenrodCityGrampsText:
	text "Whew! This is one"
	line "big town."

	para "I don't know where"
	line "anything is."
	done

;GoldenrodCityCooltrainerF1Script:
;	faceplayer
;	opentext
;	checkevent EVENT_CLEARED_RADIO_TOWER
;	iftrue .ClearedRadioTower
;	writetext GoldenrodCityCooltrainerF1Text
;	waitbutton
;	closetext
;	end
;
;.ClearedRadioTower:
;	writetext GoldenrodCityCooltrainerF1Text_ClearedRadioTower
;	waitbutton
;	closetext
;	end
;
;GoldenrodCityCooltrainerF1Text:
;	text "Is that man in"
;	line "black dressed up"
;	cont "like a TEAM ROCKET"
;	cont "member? How silly!"
;	done
;
;GoldenrodCityCooltrainerF1Text_ClearedRadioTower:
;	text "Was that man in"
;	line "black really part"
;	cont "of TEAM ROCKET? I"
;	cont "can't believe it!"
;	done

;GoldenrodCityRocketScoutScript:
;	opentext
;	writetext GoldenrodCityRocketScoutText1
;	promptbutton
;	faceplayer
;	writetext GoldenrodCityRocketScoutText2
;	waitbutton
;	closetext
;	turnobject LAST_TALKED, UP
;	end
;
;GoldenrodCityRocketScoutText1:
;	text "So this is the"
;	line "RADIO TOWER…"
;	done
;
;GoldenrodCityRocketScoutText2:
;	text "What do you want,"
;	line "you pest? Scram!"
;	done

;GoldenrodCityRocketScript:
;	random 6
;	ifequal 1, .GoldenrodRocket1
;	ifequal 2, .GoldenrodRocket2
;	ifequal 3, .GoldenrodRocket3
;	ifequal 4, .GoldenrodRocket4
;	ifequal 5, .GoldenrodRocket5
;	ifequal 0, .GoldenrodRocket6
;.GoldenrodRocket1
;	jumptextfaceplayer GoldenrodRocketText1
;.GoldenrodRocket2
;	jumptextfaceplayer GoldenrodRocketText2
;.GoldenrodRocket3
;	jumptextfaceplayer GoldenrodRocketText3
;.GoldenrodRocket4
;	jumptextfaceplayer GoldenrodRocketText4
;.GoldenrodRocket5
;	jumptextfaceplayer GoldenrodRocketText5
;.GoldenrodRocket6
;	jumptextfaceplayer GoldenrodRocketText6
;
;GoldenrodRocketText1:
;	text "Stay out of the"
;	line "way! Beat it!"
;	done
;
;GoldenrodRocketText2:
;	text "Take over the"
;	line "RADIO TOWER…"
;
;	para "What? It's none of"
;	line "your business!"
;	done
;
;GoldenrodRocketText3:
;	text "#MON?"
;	line "They're nothing"
;	cont "more than tools!"
;	done
;
;GoldenrodRocketText4:
;	text "Our dream will"
;	line "soon come true…"
;
;	para "It was such a long"
;	line "struggle…"
;	done
;
;GoldenrodRocketText5:
;	text "Hey, brat! You"
;	line "don't belong here!"
;	cont "Get lost!"
;	done
;
;GoldenrodRocketText6:
;	text "Come taste the"
;	line "true power of"
;	cont "TEAM ROCKET!"
;	done

GoldenrodCityStationSign:
	jumptext GoldenrodCityStationSignText
GoldenrodCityStationSignText:
	text "GOLDENROD CITY"
	line "STATION"
	done

GoldenrodCityRadioTowerSign:
	jumptext GoldenrodCityRadioTowerSignText
GoldenrodCityRadioTowerSignText:
	text "GOLDENROD CITY"
	line "RADIO TOWER"
	done

GoldenrodDeptStoreSign:
	jumptext GoldenrodDeptStoreSignText
GoldenrodDeptStoreSignText:
	text "Full Selection of"
	line "#MON Goods!"

	para "GOLDENROD CITY"
	line "DEPT.STORE"
	done

GoldenrodGymSign:
	jumptext GoldenrodGymSignText
GoldenrodGymSignText:
	text "GOLDENROD CITY"
	line "#MON GYM"
	cont "LEADER: WHITNEY"

	para "The Incredibly"
	line "Pretty Girl!"
	done

GoldenrodCitySign:
	jumptext GoldenrodCitySignText
GoldenrodCitySignText:
	text "GOLDENROD CITY"

	para "The Festive City"
	line "of Opulent Charm"
	done

GoldenrodCityBikeShopSign:
	jumptext GoldenrodCityBikeShopSignText
GoldenrodCityBikeShopSignText:
	text "There's a sign on"
	line "the door."

	para "BIKE SHOP"
	line "Coming soon!"
	done

GoldenrodCityGameCornerSign:
	jumptext GoldenrodCityGameCornerSignText
GoldenrodCityGameCornerSignText:
	text "GOLDENROD CITY"
	line "GAME CORNER"
	done

GoldenrodCityNameRaterSign:
	jumptext GoldenrodCityNameRaterSignText
GoldenrodCityNameRaterSignText:
	text "NAME RATER"

	para "Get Your #MON"
	line "Nicknames Rated"
	done

GoldenrodCityFlowerShopSign:
	jumptext GoldenrodCityFlowerShopSignText
GoldenrodCityFlowerShopSignText:
	text "Blooming Beautiful"
	line "FLOWER SHOP"
	done

GoldenrodCityPokecenterSign:
	jumpstd PokecenterSignScript


GoldenrodCityUndergroundSignNorth:
	jumptext GoldenrodCityUndergroundSignText

GoldenrodCityUndergroundSignSouth:
	jumptext GoldenrodCityUndergroundSignText

GoldenrodCityUndergroundSignText:
	text "UNDERGROUND"
	line "ENTRANCE"
	done

GoldenrodCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  1, ROUTE_35_GOLDENROD_GATE, 3 ;1
	warp_event  9,  5, GOLDENROD_UNDERGROUND, 1 ;2
	warp_event 15,  7, GOLDENROD_NAME_RATER, 1 ;3
	warp_event 24,  7, GOLDENROD_GYM, 1 ;4
	warp_event 29,  5, GOLDENROD_FLOWER_SHOP, 1 ;5
	warp_event  5, 15, RADIO_TOWER_1F, 1 ;6
	warp_event 10, 13, GOLDENROD_MAGNET_TRAIN_STATION, 2 ;7
	warp_event 14, 21, GOLDENROD_GAME_CORNER, 1 ;8
	warp_event 31, 21, GOLDENROD_HAPPINESS_RATER, 1 ;9
	warp_event  5, 25, BILLS_FAMILYS_HOUSE, 1 ;10
	warp_event 15, 27, GOLDENROD_POKECENTER_1F, 1 ;11
	warp_event 24, 27, GOLDENROD_DEPT_STORE_1F, 3 ;12
	warp_event 11, 29, GOLDENROD_UNDERGROUND, 4 ;13
;	warp_event 33,  9, GOLDENROD_PP_SPEECH_HOUSE, 1 ;14

	def_coord_events

	def_bg_events
	bg_event 12, 14, BGEVENT_READ, GoldenrodCityStationSign
	bg_event  4, 17, BGEVENT_READ, GoldenrodCityRadioTowerSign
	bg_event 26, 27, BGEVENT_READ, GoldenrodDeptStoreSign
	bg_event 26,  9, BGEVENT_READ, GoldenrodGymSign
	bg_event 22, 18, BGEVENT_READ, GoldenrodCitySign
	bg_event 29, 29, BGEVENT_READ, GoldenrodCityBikeShopSign
	bg_event 16, 22, BGEVENT_READ, GoldenrodCityGameCornerSign
	bg_event 13,  7, BGEVENT_READ, GoldenrodCityNameRaterSign
	bg_event  8,  6, BGEVENT_READ, GoldenrodCityUndergroundSignNorth
	bg_event 12, 30, BGEVENT_READ, GoldenrodCityUndergroundSignSouth
	bg_event 16, 27, BGEVENT_UP, GoldenrodCityPokecenterSign
	bg_event 30,  6, BGEVENT_READ, GoldenrodCityFlowerShopSign

	def_object_events
;	object_event 12, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MoveTutorScript, EVENT_GOLDENROD_CITY_MOVE_TUTOR
	object_event  7, 18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityPokefanMScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 30, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityYoungster1Script, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 20, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityCooltrainerF2Script, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 19, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodCityYoungster2Script, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 17, 10, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodCityLassScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 11, 27, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityGrampsScript, EVENT_GOLDENROD_CITY_CIVILIANS
;	object_event 12, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodCityCooltrainerF1Script, EVENT_GOLDENROD_CITY_CIVILIANS
;
;	object_event  4, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScoutScript, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
;	object_event 28, 20, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScript, EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
;	object_event  8, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScript, EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
;	object_event 17, 22, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event 29, 20, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event 29,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event 31, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
