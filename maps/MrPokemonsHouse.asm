	object_const_def
	const MRPOKEMONSHOUSE_OAK
	const MRPOKEMONSHOUSE_GENTLEMAN

MrPokemonsHouse_MapScripts:
	def_scene_scripts
	scene_script MrPokemonsHouseMeetMrPokemonScene, SCENE_MRPOKEMONSHOUSE_MEET_MR_POKEMON
	scene_script MrPokemonsHouseNoopScene,          SCENE_MRPOKEMONSHOUSE_NOOP

	def_callbacks
;	callback MAPCALLBACK_TILES, MrPokemonsHouseTilesCallback ;this was for shared map (removed), unnecessary now

;MrPokemonsHouseTilesCallback: ;this was for shared map (removed), unnecessary now
;	changeblock 2, 0, $54 ; couch
;	changeblock 4, 0, $55 ; couch
;	endcallback

MrPokemonsHouseMeetMrPokemonScene:
	sdefer MrPokemonsHouseMrPokemonEventScript
MrPokemonsHouseNoopScene:
	end

MrPokemonsHouseMrPokemonEventScript:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_OAK, 15
	turnobject MRPOKEMONSHOUSE_OAK, DOWN
	playmusic MUSIC_PROF_OAK
	opentext
	writetext MrPokemonsHouse_OakIntroText
	waitbutton
	closetext
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemonMovement
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	opentext
	writetext MrPokemonText_Intro
	waitbutton
	closetext
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayerMovement
	turnobject PLAYER, LEFT
	opentext
	writetext MrPokemonsHouse_OakExplainsVisitText
	waitbutton
	closetext
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToMrPokemonMovement
	opentext
	writetext MrPokemonsHouse_OakSaysFarewellText
	waitbutton
	closetext
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakLeavesMovement
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, UP
	opentext
	writetext MrPokemonText_Invaluable
	promptbutton
	writetext MrPokemonText_VisitElm
	waitbutton
	closetext
	setevent EVENT_OAKS_LAB_OAK ;disappear
	clearevent EVENT_RADIO_TOWER_4F_OAK ;appear
	clearevent EVENT_ELMS_LAB_ELM ;appear
	setscene SCENE_MRPOKEMONSHOUSE_NOOP
	setmapscene ROUTE_30, SCENE_ROUTE30_HOOH_FLYOVER
	setmapscene NEW_BARK_TOWN, SCENE_NEWBARKTOWN_RIVAL_ENCOUNTER
	setmapscene ELMS_LAB, SCENE_ELMSLAB_NOOP
	setmapscene RADIO_TOWER_4F, SCENE_RADIOTOWER4F_RECORDING
	end

MrPokemonsHouse_OakIntroText:
	ntag "PROF.OAK:"
	text "<PLAYER>!"
	line "Come in!"

	para "Meet my friend,"
	line "people call him"
	cont "MR.#MON."
	done

MrPokemonsHouse_PlayerWalksToMrPokemonMovement:
	step RIGHT
	step UP
	step UP
	step_end

MrPokemonText_Intro:
	ntag "MR.#MON:"
	text "Hello, hello! You"
	line "must be <PLAYER>."

	para "PROF.OAK was just"
	line "talking about you."

	para "He says you're a"
	line "very impressive"
	cont "young trainer!"

	para "I'm very happy to"
	line "meet you!"
	done

MrPokemonsHouse_OakWalksToPlayerMovement:
	step DOWN
	turn_head RIGHT
	step_end

MrPokemonsHouse_OakExplainsVisitText:
	ntag "PROF.OAK:"
	text "I travel to JOHTO"
	line "from time to time"
	cont "to tape segments"
	roll "for my RADIO show."

	para "Speaking of which,"
	line "I must be going."

	para "I need to get to"
	line "the RADIO TOWER"
	cont "in GOLDENROD."
	done

MrPokemonsHouse_OakWalksToMrPokemonMovement:
	step UP
	turn_head RIGHT
	step_end

MrPokemonsHouse_OakSaysFarewellText:
	ntag "PROF.OAK:"
	text "MR.#MON,"
	line "I wish I had more"
	cont "time to chat, but"
	roll "I must be going."

	para "Farewell!"
	done

MrPokemonsHouse_OakLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step_sleep 2
	step_end

MrPokemonText_Invaluable:
	ntag "MR.#MON:"
	text "PROF.OAK told me"
	line "that you've been"
	cont "helping with his"
	roll "#DEX project."

	para "He said your cont-"
	line "ributions have"
	cont "been invaluable."

	para "PROF.ELM also does"
	line "#MON research."

	para "I'm sure he would"
	line "love to meet you."
	done

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkevent EVENT_SHOWED_RAINBOW_WING_TO_MR_POKEMON
	iftrue .SkipRainbowWing
	checkitem RAINBOW_WING
	iffalse .SkipRainbowWing
	writetext MrPokemonText_RainbowWing
	promptbutton
	setevent EVENT_SHOWED_RAINBOW_WING_TO_MR_POKEMON
	sjump .GoVisitElm

.SkipRainbowWing:
	checkevent EVENT_SHOWED_SILVER_WING_TO_MR_POKEMON
	iftrue .SkipSilverWing
	checkitem SILVER_WING
	iffalse .SkipSilverWing
	writetext MrPokemonText_SilverWing
	waitbutton
	closetext
	setevent EVENT_SHOWED_SILVER_WING_TO_MR_POKEMON
	sjump .AlwaysNewDiscoveries

.SkipSilverWing:
	checkevent EVENT_MET_PROF_ELM
	iffalse .GoVisitElm
	checkevent EVENT_CLEARED_RADIO_TOWER
	iffalse .GoSaveOak
	checkitem GOLD_SCALE
	iftrue .GoldScale
	; fallthrough

.AlwaysNewDiscoveries:
	writetext MrPokemonText_AlwaysNewDiscoveries
	waitbutton
	closetext
	end

.GoVisitElm:
	writetext MrPokemonText_VisitElm
	waitbutton
	closetext
	end

.GoSaveOak:
	writetext MrPokemonText_SaveOak
	waitbutton
	closetext
	end

.GoldScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse .refused
	verbosegiveitem LUCKY_EGG
	iffalse .full
	takeitem GOLD_SCALE
	sjump .AlwaysNewDiscoveries

.refused
	writetext MrPokemonText_Disappointed
	waitbutton
.full
	closetext
	end

MrPokemonText_AlwaysNewDiscoveries:
	ntag "MR.#MON:"
	text "Life is delight-"
	line "ful! Always, new"
	cont "discoveries to be"
	line "made!"

	para "If you find any-"
	line "thing rare, please"
	cont "show it to me!"
	done

MrPokemonText_RainbowWing:
	ntag "MR.#MON:"
	text "What's that?"
	line "A rainbow-colored"
	cont "#MON flew by?"

	para "That sounds like"
	line "the #MON from"
	cont "the legend of the"
	roll "TIN TOWER in"
	cont "ECRUTEAK CITY!"

	para "PROF.ELM claims he"
	line "saw that #MON"
	cont "when he was young."

	para "Hm? That FEATHER!"
	line "It came from the"
	cont "#MON you saw?"

	para "PROF.ELM would"
	line "love to see that!"
	done

MrPokemonText_SilverWing:
	ntag "MR.#MON:"
	text "Hm? That FEATHER?"
	line "It's silver!"

	para "It reminds me of"
	line "the legend of a"
	cont "#MON from the"
	roll "BRASS TOWER in"
	cont "ECRUTEAK CITY."

	para "But that tower"
	line "burned down, and"
	cont "the #MON hasn't"
	roll "been seen since."

	para "I wonder, where"
	line "has it been hiding"
	cont "all this time?"
	done

MrPokemonText_GimmeTheScale:
	ntag "MR.#MON:"
	text "Hm? That SCALE!"
	line "What's that?"
	cont "A gold MAGIKARP?"

	para "I've always loved"
	line "MAGIKARP!"

	para "That SCALE is so"
	line "unique, I wish it"
	cont "were mine."

	para "<PLAYER>, would you"
	line "care to trade it?"

	para "I can offer this"
	line "LUCKY EGG I got"
	cont "from PROF.OAK."
	done

MrPokemonText_Disappointed:
	ntag "MR.#MON:"
	text "That's disappoint-"
	line "ing. That happens"
	cont "to be very rare."
	done

MrPokemonText_SaveOak:
	ntag "MR.#MON:"
	text "There's trouble at"
	line "the RADIO TOWER?"

	para "I hope PROF.OAK"
	line "is okay!"
	done

MrPokemonText_VisitElm:
	ntag "MR.#MON:"
	text "You should pay"
	line "PROF.ELM a visit."

	para "His lab is nearby,"
	line "in NEW BARK TOWN."

	para "If you go south to"
	line "CHERRYGROVE first,"
	cont "NEW BARK is east"
	roll "from there."
	done

MrPokemonsHouse_ForeignMagazines:
	jumptext MrPokemonsHouse_ForeignMagazinesText
MrPokemonsHouse_ForeignMagazinesText:
	text "It's packed with"
	line "foreign magazines."

	para "Can't even read"
	line "their titles…"
	done

MrPokemonsHouse_BrokenComputer:
	jumptext MrPokemonsHouse_BrokenComputerText
MrPokemonsHouse_BrokenComputerText:
	text "It's a big com-"
	line "puter. Hmm. It's"
	cont "broken."
	done

MrPokemonsHouse_StrangeCoins:
	jumptext MrPokemonsHouse_StrangeCoinsText
MrPokemonsHouse_StrangeCoinsText:
	text "A whole pile of"
	line "strange coins!"

	para "Maybe they're from"
	line "another country…"
	done

MrPokemonsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_30, 2
	warp_event  3,  7, ROUTE_30, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  1,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  6,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  7,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  6,  4, BGEVENT_READ, MrPokemonsHouse_StrangeCoins
;	bg_event  7,  4, BGEVENT_UP, MrPokemonsHouse_BrokenComputer

	def_object_events
	object_event  2,  4, SPRITE_OAK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
	object_event  3,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, EVENT_MET_PROF_ELM
	object_event  6,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN | DAY, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, EVENT_MR_POKEMONS_HOUSE_MR_POKEMON
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, EVE | NITE, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, EVENT_MR_POKEMONS_HOUSE_MR_POKEMON

; MORN | DAY | EVE | NITE