	object_const_def
	const ECRUTEAKCITY_GRAMPS

EcruteakCity_MapScripts:
	def_scene_scripts
	scene_script EcruteakCityNoop1Scene,      SCENE_ECRUTEAKCITY_LOST_GIRL
	scene_script EcruteakCityNoop2Scene,      SCENE_ECRUTEAKCITY_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, EcruteakCityFlypointCallback

EcruteakCityNoop1Scene:
EcruteakCityNoop2Scene:
	end

EcruteakCityFlypointCallback:
	setflag ENGINE_FLYPOINT_ECRUTEAK
	endcallback

EcruteakCityLostGirlScript:
	showemote EMOTE_SHOCK, ECRUTEAKCITY_GRAMPS, 15
	turnobject PLAYER, UP
	; fallthrough
EcruteakCityGramps1Script:
	checkevent EVENT_FOUND_GIRL_IN_BURNED_TOWER
	iftrue .FoundGirl
	faceplayer
	opentext
	writetext EcruteakCityGramps1BeforeText
	waitbutton
	closetext
	setscene SCENE_ECRUTEAKCITY_NOOP
	end

.FoundGirl
	jumptextfaceplayer EcruteakCityGramps1AfterText

EcruteakCityGramps1BeforeText:
	text "Oh, no. Oh, no…"

	para "My granddaughter"
	line "is missing."

	para "No… She couldn't"
	line "have gone to the"
	cont "BURNED TOWER."

	para "I told her not to"
	line "go near it…"

	para "People seem to"
	line "disappear there…"

	para "Oh, what should I"
	line "do…?"
	done

EcruteakCityGramps1AfterText:
	text "In the distant"
	line "past…"

	para "This tower burned"
	line "in a fire. Three"
	cont "nameless #MON"
	cont "perished in it."

	para "A rainbow-colored"
	line "#MON descended"
	cont "from the sky and"
	cont "resurrected them…"

	para "It's a legend that"
	line "has been passed"
	cont "down by ECRUTEAK"
	cont "GYM LEADERS."

	para "Me?"

	para "I was a trainer"
	line "way back when."
	cont "Hohoho!"
	done

EcruteakCityGirlScript:
	jumptextfaceplayer EcruteakCityGirlText
EcruteakCityGirlText:
	text "After grandpa ran"
	line "into the tower,"
	cont "three big #MON"
	cont "ran out!"

	para "Were those the"
	line "legendary #MON"
	cont "I was looking for?"
	done

EcruteakCityGramps2Script:
	jumptextfaceplayer EcruteakCityGramps1Text
EcruteakCityGramps1Text:
	text "ECRUTEAK used to"
	line "have two towers:"

	para "one each in the"
	line "east and west."
	done

EcruteakCityLass1Script:
	jumptextfaceplayer EcruteakCityLass1Text
EcruteakCityLass1Text:
	text "I'm going to prac-"
	line "tice at the DANCE"

	para "THEATER. Care to"
	line "join me?"
	done

EcruteakCityLass2Script:
	faceplayer
	opentext
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue .ReleasedBeasts
	writetext EcruteakCityLass2Text
	waitbutton
	closetext
	end

.ReleasedBeasts:
	writetext EcruteakCityLass2Text_ReleasedBeasts
	waitbutton
	closetext
	end

EcruteakCityLass2Text:
	text "The tower that"
	line "used to be here…"

	para "My grandma told me"
	line "it used to be much"
	cont "taller."
	done

EcruteakCityLass2Text_ReleasedBeasts:
	text "Three big #MON"
	line "ran off in differ-"
	cont "ent directions."

	para "What were they?"
	done

EcruteakCityFisherScript:
	jumptextfaceplayer EcruteakCityFisherText
EcruteakCityFisherText:
	text "OLIVINE LIGHTHOUSE"
	line "uses a #MON as"
	cont "the beacon."

	para "The light allows"
	line "boats to sail"
	cont "at night."
	done

;EcruteakCityYoungsterScript:
;	jumptextfaceplayer EcruteakCityYoungsterText
;EcruteakCityYoungsterText:
;	text "I hear #MON are"
;	line "rampaging at the"
;
;	para "LAKE OF RAGE. I'd"
;	line "like to see that."
;	done

;EcruteakCityGramps3Script:
;	jumptextfaceplayer EcruteakCityGramps3Text
;EcruteakCityGramps3Text:
;	text "Ah, child."
;	line "Have you learned"
;
;	para "to dance like the"
;	line "KIMONO GIRLS?"
;
;	para "If you go to their"
;	line "DANCE THEATER, an"
;
;	para "odd old man will"
;	line "give you something"
;	cont "nice, I hear."
;	done

EcruteakCityPokecenterSign:
	jumpstd PokecenterSignScript

EcruteakCityMartSign:
	jumpstd MartSignScript


EcruteakCitySign:
	jumptext EcruteakCitySignText
EcruteakCitySignText:
	text "ECRUTEAK CITY"
	line "A Historical City"

	para "Where the Past"
	line "Meets the Present"
	done

TinTowerSign:
	jumptext TinTowerSignText
TinTowerSignText:
	text "TIN TOWER"

	para "A legendary #-"
	line "MON is said to"
	cont "roost here."
	done

EcruteakGymSign:
	jumptext EcruteakGymSignText
EcruteakGymSignText:
	text "ECRUTEAK CITY"
	line "#MON GYM"
	cont "LEADER: MORTY"

	para "The Mystic Seer of"
	line "the Future"
	done

EcruteakDanceTheaterSign:
	jumptext EcruteakDanceTheaterSignText
EcruteakDanceTheaterSignText:
	text "ECRUTEAK DANCE"
	line "THEATER"
	done

BurnedTowerSign:
	jumptext BurnedTowerSignText
BurnedTowerSignText:
	text "BURNED TOWER"

	para "It was destroyed"
	line "by a mysterious"
	cont "fire."

	para "Please stay away,"
	line "as it is unsafe."
	done

EcruteakCityHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ECRUTEAK_CITY_HIDDEN_HYPER_POTION

EcruteakCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35, 26, ROUTE_42_ECRUTEAK_GATE, 1
	warp_event 35, 27, ROUTE_42_ECRUTEAK_GATE, 2
	warp_event 18, 11, ECRUTEAK_TIN_TOWER_ENTRANCE, 1
	warp_event 20,  2, WISE_TRIOS_ROOM, 1
	warp_event 20,  3, WISE_TRIOS_ROOM, 2
	warp_event 23, 27, ECRUTEAK_POKECENTER_1F, 1
	warp_event  5, 21, ECRUTEAK_LUGIA_SPEECH_HOUSE, 1
	warp_event 23, 21, DANCE_THEATER, 1
	warp_event 29, 21, ECRUTEAK_MART, 2
	warp_event  6, 27, ECRUTEAK_GYM, 1
	warp_event 13, 27, ECRUTEAK_ITEMFINDER_HOUSE, 1
	warp_event 37,  7, TIN_TOWER_1F, 1
	warp_event  5,  5, BURNED_TOWER_1F, 1
	warp_event  0, 18, ROUTE_38_ECRUTEAK_GATE, 3
	warp_event  0, 19, ROUTE_38_ECRUTEAK_GATE, 4

	def_coord_events
	coord_event  5, 10, SCENE_ECRUTEAKCITY_LOST_GIRL, EcruteakCityLostGirlScript

	def_bg_events
	bg_event 24, 27, BGEVENT_READ, EcruteakCityPokecenterSign
	bg_event 30, 21, BGEVENT_READ, EcruteakCityMartSign
	bg_event 15, 21, BGEVENT_READ, EcruteakCitySign
	bg_event 38, 10, BGEVENT_READ, TinTowerSign
	bg_event  8, 28, BGEVENT_READ, EcruteakGymSign
	bg_event 21, 21, BGEVENT_READ, EcruteakDanceTheaterSign
	bg_event  2, 10, BGEVENT_READ, BurnedTowerSign
	bg_event 23, 14, BGEVENT_ITEM, EcruteakCityHiddenHyperPotion

	def_object_events
	object_event  5,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps1Script, -1
	object_event  4,  9, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, EcruteakCityGirlScript, EVENT_ECRUTEAK_CITY_GIRL
	object_event 19, 15, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps2Script, -1
	object_event 21, 29, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EcruteakCityLass1Script, -1
	object_event 10, 12, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityLass2Script, -1
	object_event  9, 22, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakCityFisherScript, -1
;	object_event 10, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakCityYoungsterScript, -1
;	object_event 20, 21, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps3Script, -1
