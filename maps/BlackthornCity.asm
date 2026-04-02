	object_const_def
;	const BLACKTHORNCITY_SANTOS

BlackthornCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, BlackthornCityFlypointCallback
;	callback MAPCALLBACK_OBJECTS, BlackthornCitySantosCallback

BlackthornCityFlypointCallback:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	clearevent EVENT_OAK_REMIND_ABOUT_WATERFALL
	endcallback

;BlackthornCitySantosCallback:
;	readvar VAR_WEEKDAY
;	ifequal SATURDAY, .SantosAppears
;	disappear BLACKTHORNCITY_SANTOS
;	endcallback
;
;.SantosAppears:
;	appear BLACKTHORNCITY_SANTOS
;	endcallback

;SantosScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
;	iftrue .Saturday
;	readvar VAR_WEEKDAY
;	ifnotequal SATURDAY, .NotSaturday
;	checkevent EVENT_MET_SANTOS_OF_SATURDAY
;	iftrue .MetSantos
;	writetext MeetSantosText
;	promptbutton
;	setevent EVENT_MET_SANTOS_OF_SATURDAY
;.MetSantos:
;	writetext SantosGivesGiftText
;	promptbutton
;	verbosegiveitem SPELL_TAG
;	iffalse .Done
;	setevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
;	writetext SantosGaveGiftText
;	waitbutton
;	closetext
;	end
;
;.Saturday:
;	writetext SantosSaturdayText
;	waitbutton
;.Done:
;	closetext
;	end
;
;.NotSaturday:
;	writetext SantosNotSaturdayText
;	waitbutton
;	closetext
;	end

;MeetSantosText:
;	text "SANTOS: …"
;
;	para "It's Saturday…"
;
;	para "I'm SANTOS of"
;	line "Saturday…"
;	done

;SantosGivesGiftText:
;	text "You can have this…"
;	done

;SantosGaveGiftText:
;	text "SANTOS: …"
;
;	para "SPELL TAG…"
;
;	para "Ghost-type moves"
;	line "get stronger…"
;
;	para "It will frighten"
;	line "you…"
;	done

;SantosSaturdayText:
;	text "SANTOS: …"
;
;	para "See you again on"
;	line "another Saturday…"
;
;	para "I won't have any"
;	line "more gifts…"
;	done

;SantosNotSaturdayText:
;	text "SANTOS: Today's"
;	line "not Saturday…"
;	done

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText
BlackthornGrampsRefusesEntryText:
	text "No. Only chosen"
	line "trainers may enter"
	cont "the DRAGON's DEN."

	para "Please leave."
	done

BlackthornGramps2Script:
	jumptextfaceplayer BlackthornGrampsGrantsEntryText
BlackthornGrampsGrantsEntryText:
;	text "If CLAIR allows"
;	line "it, her grand-"
;	cont "father--our MASTER"
;	cont "--will also."
;
	text "CLAIR has granted"
	line "you permission."

	para "You may enter."
	done

BlackthornSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BeatClair
	checkevent EVENT_CLAIR_RETURNED_TO_GYM
	iftrue .ClairReturned
	writetext Text_ClairIsOut
	waitbutton
	closetext
	end

.ClairReturned:
	writetext Text_ClairIsIn
	waitbutton
	closetext
	end

.BeatClair:
	writetext Text_ClairIsBeaten
	waitbutton
	closetext
	end

Text_ClairIsOut:
	text "Our LEADER isn't"
	line "here right now."

	para "You might be able"
	line "to find her at"
	cont "LAKE OF RAGE."

	para "Its north from"
	line "MAHOGANY TOWN."
	done

;	text "I am sorry."
;
;	para "CLAIR, our GYM"
;	line "LEADER, entered"
;
;	para "the DRAGON's DEN"
;	line "behind the GYM."
;
;	para "I have no idea"
;	line "when our LEADER"
;	cont "will return."
;	done

Text_ClairIsIn:
	text "CLAIR, our GYM"
	line "LEADER, is waiting"
	cont "for you."

	para "However, it would"
	line "be impossible for"
	cont "any old trainer to"
	cont "to beat her."
	done

Text_ClairIsBeaten:
	text "You defeated"
	line "CLAIR?"

	para "That's amazing!"

	para "I've never heard"
	line "of her losing to"
	cont "anyone other than"
	cont "LANCE."
	done

BlackthornYoungsterScript:
	jumptextfaceplayer BlackthornYoungsterText
BlackthornYoungsterText:
	text "Dragon masters all"
	line "come from the city"
	cont "of BLACKTHORN."
	done

BlackthornBlackBeltScript:
	jumptextfaceplayer BlackBeltText_VoicesInMyHead
BlackBeltText_VoicesInMyHead:
	text "Arooo! Voices in"
	line "my head!"

	para "Huh? I'm listening"
	line "to my radio!"
	done

BlackthornCooltrainerF1Script:
	jumptextfaceplayer BlackthornCooltrainerF1Text
BlackthornCooltrainerF1Text:
	text "Whew, I just came"
	line "through ICE PATH."

	para "It was tough, but"
	line "it's the only way"
	cont "out of MAHOGANY"
	cont "until ROUTE 42 is"
	cont "cleared."
	done

;BlackthornCooltrainerF2Script:
;	jumptextfaceplayer BlackthornCooltrainerF2Text
;BlackthornCooltrainerF2Text:
;	text "Are you going to"
;	line "make your #MON"
;	cont "forget some moves?"
;	done

BlackthornCitySign:
	jumptext BlackthornCitySignText
BlackthornCitySignText:
	text "BLACKTHORN CITY"

	para "A Quiet Mountain"
	line "Retreat"
	done

BlackthornGymSign:
	jumptext BlackthornGymSignText
BlackthornGymSignText:
	text "BLACKTHORN CITY"
	line "#MON GYM"
	cont "LEADER: CLAIR"

	para "The Blessed User"
	line "of Dragon #MON"
	done

BlackthornMovesHouseSign:
	jumptext BlackthornMovesHouseSignText
BlackthornMovesHouseSignText:
	text "MOVE DELETER and"
	line "REMINDER's HOUSE"
	done

DragonDensSign:
	jumptext DragonDensSignText
DragonDensSignText:
	text "DRAGON's DEN"
	done

BlackthornCityTrainerTips:
	jumptext BlackthornCityTrainerTipsText
BlackthornCityTrainerTipsText:
	text "TRAINER TIPS"

	para "A #MON holding"
	line "a LUM BERRY will"
	cont "cure itself of any"
	roll "status problem."
	done

BlackthornCityPokecenterSign:
	jumpstd PokecenterSignScript

BlackthornCityMartSignScript:
	jumpstd MartSignScript

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 11, BLACKTHORN_GYM_1F, 1
	warp_event 13, 21, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 29, 23, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 15, 29, BLACKTHORN_MART, 2
	warp_event 21, 29, BLACKTHORN_POKECENTER_1F, 1
	warp_event  9, 31, BLACKTHORN_MOVES_HOUSE, 1
	warp_event 36,  9, ICE_PATH_1F, 2
	warp_event 20,  1, DRAGONS_DEN_1F, 1

	def_coord_events

	def_bg_events
	bg_event 34, 24, BGEVENT_READ, BlackthornCitySign
	bg_event 19, 11, BGEVENT_READ, BlackthornGymSign
	bg_event  7, 31, BGEVENT_READ, BlackthornMovesHouseSign
	bg_event 21,  3, BGEVENT_READ, DragonDensSign
	bg_event  5, 25, BGEVENT_READ, BlackthornCityTrainerTips
	bg_event 16, 29, BGEVENT_READ, BlackthornCityMartSignScript
	bg_event 22, 29, BGEVENT_READ, BlackthornCityPokecenterSign

	def_object_events
;	object_event 22, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, EVENT_BLACKTHORN_CITY_SANTOS_OF_SATURDAY
	object_event 17, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, -1
	object_event 20,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	object_event 21,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	object_event 10, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 25, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event 36, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
;	object_event  9, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
