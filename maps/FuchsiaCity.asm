	object_const_def
	const FUCHSIACITY_BERRY
	const FUCHSIACITY_APRICORN

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FuchsiaCityFlypointCallback
	callback MAPCALLBACK_OBJECTS, FuchsiaCityFruittrees

FuchsiaCityFlypointCallback:
	setflag ENGINE_FLYPOINT_FUCHSIA
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	endcallback

FuchsiaCityFruittrees:
;Berry:
	checkflag ENGINE_DAILY_FUCHSIA_BERRY
	iftrue .NoBerry
	appear FUCHSIACITY_BERRY
.NoBerry:
	;fallthrough

;Apricorn:
	checkflag ENGINE_DAILY_FUCHSIA_APRICORN
	iftrue .NoApricorn
	appear FUCHSIACITY_APRICORN
.NoApricorn:
	endcallback

FuchsiaDratiniExhibit:
	opentext
	writetext FuchsiaCityDratiniText
	promptbutton
	setval DRATINI
	special ShowPokedexEntry
	closetext
	end
FuchsiaCityDratiniText:
	text "DRATINI"

	para "Seen so rarely in"
	line "the wild, it is"
	cont "often call the"
	cont "MIRAGE #MON!"
	done

FuchsiaPinsirExhibit:
	opentext
	writetext FuchsiaCityPinsirText
	promptbutton
	setval PINSIR
	special ShowPokedexEntry
	closetext
	end
FuchsiaCityPinsirText:
	text "PINSIR"

	para "Its powerful horns"
	line "are for crushing"
	cont "its prey!"
	done

FuchsiaScytherExhibit:
	opentext
	writetext FuchsiaCityScytherText
	promptbutton
	setval SCYTHER
	special ShowPokedexEntry
	closetext
	end
FuchsiaCityScytherText:
	text "SCYTHER"

	para "Wields it's razor-"
	line "sharp blades with"
	cont "ninja-like agility"
	cont "and speed!"
	done

FuchsiaChanseyExhibit:
	opentext
	writetext FuchsiaCityChanseyText
	promptbutton
	setval CHANSEY
	special ShowPokedexEntry
	closetext
	end
FuchsiaCityChanseyText:
	text "CHANSEY"

	para "Catching one is"
	line "all up to chance."
	done

FuchsiaLaprasExhibit:
	opentext
	writetext FuchsiaCityLaprasText
	promptbutton
	setval LAPRAS
	special ShowPokedexEntry
	closetext
	end
FuchsiaCityLaprasText:
	text "LAPRAS"

	para "The king of"
	line "the seas."
	done

FuchsiaKangaskhanExhibit:
	opentext
	writetext FuchsiaCityKangaskhanText
	promptbutton
	setval KANGASKHAN
	special ShowPokedexEntry
	closetext
	end
FuchsiaCityKangaskhanText:
	text "KANGASKHAN"

	para "A maternal #MON"
	line "that raises its"
	cont "young in a pouch"
	cont "on its belly."
	done

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText
FuchsiaCityYoungsterText:
	text "Did you try the"
	line "SAFARI ZONE? Some"
	cont "#MON can only"
	cont "be caught there."
	done

FuchsiaCityPokefanM:
	jumptextfaceplayer FuchsiaCityPokefanMText
FuchsiaCityPokefanMText:
	text "ERIK: Where's"
	line "SARA? I said I'd"
	cont "meet her here."
	done

FuchsiaCityGramps:
	jumptextfaceplayer FuchsiaCityGrampsText
FuchsiaCityGrampsText:
	text "The SAFARI ZONE"
	line "is for catching"
	cont "#MON!"

	para "It has a zoo"
	line "out front!"
	done

FuchsiaCityPokemon:
	jumptextfaceplayer FuchsiaCityPokemonText
FuchsiaCityPokemonText:
	text "!"
	done

FuchsiaCitySign:
	jumptext FuchsiaCitySignText
FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSign:
	jumptext FuchsiaGymSignText
FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: KOGA"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneSign:
	jumptext SafariZoneSignText
SafariZoneSignText:
	text "SAFARI ZONE"

	para "CATCH RARE AND"
	line "EXOTIC #MON!"
	done

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText
SafariZoneOfficeSignText:
	text "SAFARI ZONE OFFICE"
	done

WardensHomeSign:
	jumptext WardensHomeSignText
WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityMartSign:
	jumpstd MartSignScript

FuchsiaBerryTree:
	opentext
	writetext FuchsiaBerryTreeText
	promptbutton
	writetext FuchsiaHeyItsBerryText
	promptbutton
	verbosegiveitem ASPEAR_BERRY
	iffalse .NoRoomInBag
	disappear FUCHSIACITY_BERRY
	setflag ENGINE_DAILY_FUCHSIA_BERRY
.NoRoomInBag
	closetext
	end

FuchsiaApricornTree:
	opentext
	writetext FuchsiaApricornTreeText
	promptbutton
	writetext FuchsiaHeyItsApricornText
	promptbutton
	verbosegiveitem RED_APRICORN
	iffalse .NoRoomInBag
	disappear FUCHSIACITY_APRICORN
	setflag ENGINE_DAILY_FUCHSIA_APRICORN
.NoRoomInBag
	closetext
	end

FuchsiaNoBerry:
	opentext
	writetext FuchsiaBerryTreeText
	promptbutton
	writetext FuchsiaNothingHereText
	waitbutton
	closetext
	end

FuchsiaNoApricorn:
	opentext
	writetext FuchsiaApricornTreeText
	promptbutton
	writetext FuchsiaNothingHereText
	waitbutton
	closetext
	end

FuchsiaBerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

FuchsiaHeyItsBerryText:
	text "Hey! It's"
	line "ASPEAR BERRY!"
	done

FuchsiaApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

FuchsiaHeyItsApricornText:
	text "Hey! It's"
	line "RED APRICORN!"
	done

FuchsiaNothingHereText:
	text "There's nothing"
	line "here…"
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  3, SAFARI_ZONE_ENTRANCE, 3     ; 1
	warp_event  5, 15, FUCHSIA_MART, 1             ; 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1  ; 3
	warp_event 37, 18, ROUTE_15_GATE, 1    ; 4
	warp_event 37, 19, ROUTE_15_GATE, 2    ; 5
	warp_event 10, 27, FUCHSIA_GYM, 1              ; 6
	warp_event 13, 27, BILLS_BROTHERS_HOUSE, 1     ; 7
	warp_event 17, 27, FUCHSIA_POKECENTER_1F, 1    ; 8
	warp_event 27, 29, SAFARI_ZONE_WARDENS_HOME, 1 ; 9
	warp_event 31, 29, FUCHSIA_GOOD_ROD_HOUSE, 1   ; 10
	warp_event 31, 27, FUCHSIA_GOOD_ROD_HOUSE, 3   ; 11
	warp_event 19, 35, ROUTE_19_GATE, 1    ; 12
	warp_event 20, 35, ROUTE_19_GATE, 2    ; 13

	def_coord_events

	def_bg_events
	bg_event 25, 17, BGEVENT_READ, FuchsiaCitySign
	bg_event  7, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 21, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 31, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneSign
	bg_event 18, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event  6, 15, BGEVENT_READ, FuchsiaCityMartSign
	bg_event 25,  7, BGEVENT_READ, FuchsiaDratiniExhibit
	bg_event 11,  7, BGEVENT_READ, FuchsiaPinsirExhibit
	bg_event  5,  7, BGEVENT_READ, FuchsiaScytherExhibit
	bg_event 33,  7, BGEVENT_READ, FuchsiaChanseyExhibit
	bg_event 11, 15, BGEVENT_READ, FuchsiaLaprasExhibit
	bg_event 29, 15, BGEVENT_READ, FuchsiaKangaskhanExhibit
	bg_event  6, 10, BGEVENT_READ, FuchsiaNoBerry
	bg_event  5, 10, BGEVENT_READ, FuchsiaNoApricorn

	def_object_events
	object_event  6, 10, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, FuchsiaBerryTree, EVENT_FUCHSIA_BERRY
	object_event  5, 10, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaApricornTree, EVENT_FUCHSIA_APRICORN
	object_event 25,  5, SPRITE_DRATINI_MOVE, SPRITEMOVEDATA_WANDER, 3, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokemon, -1
	object_event 12,  5, SPRITE_PINSIR_MOVE, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokemon, -1
	object_event  6,  5, SPRITE_SCYTHER_MOVE, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokemon, -1
	object_event 33,  5, SPRITE_CHANSEY_MOVE, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokemon, -1
	object_event 12, 13, SPRITE_SURF, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokemon, -1
	object_event 31, 13, SPRITE_KANGASKHAN_MOVE, SPRITEMOVEDATA_WANDER, 3, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokemon, -1
	object_event 10,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 28,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 19, 18, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityGramps, -1

; electabuzz
; magamar
; ditto