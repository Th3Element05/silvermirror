	object_const_def

CianwoodCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CianwoodCityFlypointCallback

CianwoodCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CIANWOOD
	endcallback

CianwoodCityChucksWife:
	checkevent EVENT_ROUTE_42_BOULDERS_CLEARED
	iftrue .ChuckIsBack
	jumptextfaceplayer CianwoodCityChucksWifeChuckGoneText
	
.ChuckIsBack:
	checkevent EVENT_BEAT_CHUCK
	iftrue .BeatChuck
	jumptextfaceplayer CianwoodCityChucksWifeChuckBackText
	
.BeatChuck:
	checkevent EVENT_GOT_TM64_ENDURE
	iftrue .GotEndure
	writetext ChucksWifeGiveTMText
	promptbutton
	verbosegiveitem TM_ENDURE
	promptbutton
	writetext ChucksWifeEndureSpeechText
	waitbutton
	closetext
	end

.GotEndure:
	jumptextfaceplayer ChucksWifeChubbyText
ChucksWifeChubbyText:
	text "My husband lost to"
	line "you, so he needs"
	cont "to train harder."

	para "That's good, since"
	line "he was getting a"
	cont "little chubby."
	done

CianwoodCityChucksWifeChuckGoneText:
	text "The gym leader"
	line "isn't here right"
	cont "now."

	para "Boulders fell from"
	line "MT.MORTAR and"
	cont "blocked ROUTE 42."

	para "He went with his"
	line "#MON to help."
	done

CianwoodCityChucksWifeChuckBackText:
	text "My husband just"
	line "got back from"
	cont "MAHOGANY TOWN."

	para "He's in the gym"
	line "if you'd like to"
	cont "challenge him."

	para "Come see me again"
	line "if you beat him."

	para "I'll have a nice"
	line "gift for you."
	done

ChucksWifeGiveTMText:
	text "That's CIANWOOD's"
	line "GYM BADGE!"

	para "Then you should"
	line "take this."
	done

ChucksWifeEndureSpeechText:
	text "That's ENDURE."

	para "A #MON will"
	line "endure any attack"
	cont "after using it."

	para "But it might fail"
	line "if you use it too"
	cont "often."
	done

CianwoodCityYoungster:
	jumptextfaceplayer CianwoodCityYoungsterText
CianwoodCityYoungsterText:
	text "There are several"
	line "islands between"
	cont "here and OLIVINE."

	para "A mythical sea"
	line "creature supposed-"
	cont "ly lives there."
	done

;	text "The water around"
;	line "WHIRL ISLANDS is"
;	cont "dangerous."
;
;	para "You need a strong"
;	line "#MON to cross"
;	cont "the whirlpools!"
;	done

CianwoodCityPokefanM:
	jumptextfaceplayer CianwoodCityPokefanMText
CianwoodCityPokefanMText:
	text "Boulders to the"
	line "north of town can"
	cont "be crushed."

	para "They may be hiding"
	line "something."

	para "Your #MON could"
	line "use ROCK SMASH to"
	cont "break them."
	done

CianwoodCityLass:
	jumptextfaceplayer CianwoodCityLassText
CianwoodCityLassText:
	text "CHUCK, the GYM"
	line "LEADER, spars with"

	para "his fighting #-"
	line "MON."
	done

CianwoodCitySign:
	jumptext CianwoodCitySignText
CianwoodCitySignText:
	text "CIANWOOD CITY"

	para "A Port Surrounded"
	line "by Rough Seas"
	done

CianwoodGymSign:
	jumptext CianwoodGymSignText
CianwoodGymSignText:
	text "CIANWOOD CITY"
	line "#MON GYM"

	para "LEADER: CHUCK"

	para "His Roaring Fists"
	line "Do the Talking"
	done

CianwoodPharmacySign:
	jumptext CianwoodPharmacySignText
CianwoodPharmacySignText:
	text "500 Years of"
	line "Tradition"

	para "CIANWOOD CITY"
	line "PHARMACY"

	para "We Await Your"
	line "Medicinal Queries"
	done

CianwoodPhotoStudioSign:
	jumptext CianwoodPhotoStudioSignText
CianwoodPhotoStudioSignText:
	text "CIANWOOD CITY"
	line "PHOTO STUDIO"

	para "Take a Snapshot as"
	line "a Keepsake!"
	done

CianwoodPokeSeerSign:
	jumptext CianwoodPokeSeerSignText
CianwoodPokeSeerSignText:
	text "THE # SEER"
	line "AHEAD"
	done

CianwoodPokecenterSign:
	jumpstd PokecenterSignScript

CianwoodCityRock:
	jumpstd SmashRockScript

CianwoodCityHiddenRevive:
	hiddenitem REVIVE, EVENT_CIANWOOD_CITY_HIDDEN_REVIVE

CianwoodCityHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_CIANWOOD_CITY_HIDDEN_MAX_ETHER

CianwoodCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 41, MANIAS_HOUSE, 1
	warp_event  8, 43, CIANWOOD_GYM, 1
	warp_event 23, 43, CIANWOOD_POKECENTER_1F, 1
	warp_event 15, 47, CIANWOOD_PHARMACY, 1
	warp_event  9, 31, CIANWOOD_PHOTO_STUDIO, 1
	warp_event 15, 37, CIANWOOD_LUGIA_SPEECH_HOUSE, 1
	warp_event  5, 17, POKE_SEERS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 20, 34, BGEVENT_READ, CianwoodCitySign
	bg_event  9, 43, BGEVENT_READ, CianwoodGymSign
	bg_event 24, 43, BGEVENT_READ, CianwoodPokecenterSign
	bg_event 19, 47, BGEVENT_READ, CianwoodPharmacySign
	bg_event  8, 32, BGEVENT_READ, CianwoodPhotoStudioSign
	bg_event  8, 24, BGEVENT_READ, CianwoodPokeSeerSign
	bg_event  4, 19, BGEVENT_ITEM, CianwoodCityHiddenRevive
	bg_event  5, 29, BGEVENT_ITEM, CianwoodCityHiddenMaxEther

	def_object_events
	object_event 17, 33, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityPokefanM, -1
	object_event 21, 37, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodCityYoungster, -1
	object_event 14, 42, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityLass, -1
	object_event 10, 46, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityChucksWife, -1
	object_event  8, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  9, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  4, 25, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  5, 29, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 10, 27, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  4, 19, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
