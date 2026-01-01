	object_const_def
;	const CHERRYGROVECITY_GRAMPS
;	const CHERRYGROVECITY_GEODUDE
;	const CHERRYGROVECITY_ROCK

CherrygroveCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CherrygroveCityFlypointCallback

CherrygroveCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	endcallback

; script
;CherrygroveRockSmashGuyScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_TM58_ROCK_SMASH
;	iftrue .AlreadyGotRockSmash
;	writetext CherrygroveRockSmashGuyIntroText
;	cry GEODUDE
;	promptbutton
;	closetext
;	turnobject CHERRYGROVECITY_GRAMPS, RIGHT
;	pause 20
;	scall CherrygroveCityGeodudeScript
;	applymovement CHERRYGROVECITY_GEODUDE, CherrygroveGeodudeRockSmashMovement
;	pause 10
;	applymovement CHERRYGROVECITY_ROCK, CherrygroveGeodudeSmashesRockMovement
;	pause 20
;	setlasttalked CHERRYGROVECITY_GRAMPS
;	faceplayer
;	opentext
;	writetext CherrygroveRockSmashGuyGiveTMText
;	promptbutton
;	verbosegiveitem TM_ROCK_SMASH
;	setevent EVENT_GOT_TM58_ROCK_SMASH
;	promptbutton
;	writetext CherrygroveRockSmashGuyGivePagerText
;	promptbutton
;	stringtotext .pagercardname, MEM_BUFFER_1
;	scall .JumpstdReceiveItem
;	setflag ENGINE_PAGER_ROCK_SMASH
;	writetext GotRockSmashPagerText
;	promptbutton
;.AlreadyGotRockSmash:
;	writetext CherrygroveRockSmashGuyCallAnytimeText
;	waitbutton
;	closetext
;	end
;
;.JumpstdReceiveItem:
;	jumpstd ReceiveItemScript
;	end
;
;.pagercardname
;	db "ROCKSMASH PAGER@"
;
;CherrygroveRockSmashGuyIntroText:
;	text "My GEODUDE loves"
;	line "smashing rocks!"
;
;	para "Look!"
;	done
;
;CherrygroveRockSmashGuyGiveTMText:
;	text "Here, you should"
;	line "take this!"
;	done
;
;CherrygroveRockSmashGuyGivePagerText:
;	text "Now you can teach"
;	line "ROCK SMASH to your"
;	cont "own #MON!"
;
;	para "And you can have"
;	line "this, too!"
;	done
;
;GotRockSmashPagerText:
;	text "GEODUDE was"
;	line "added to the PPS!"
;	done
;
;CherrygroveRockSmashGuyCallAnytimeText:
;	text "Call GEODUDE"
;	line "whenever you need"
;	cont "to use ROCK SMASH!"
;	done
;
;CherrygroveGeodudeRockSmashMovement: ;test?
;	step_shake 10;needs time specified? or displacement?
;	step_end
;
;CherrygroveGeodudeSmashesRockMovement:
;	rock_smash 10
;	step_end
;
;CherrygroveCityGeodudeScript:
;	opentext
;	writetext CherrygroveCityGeodudeText
;	cry GEODUDE
;	waitbutton
;	closetext
;	end
;
;CherrygroveCityGeodudeText:
;	text "GEODUDE: Geo!"
;	line "Geo-dude!"
;	done

; npc
CherrygroveTeacherScript:
	jumptextfaceplayer CherrygroveTeacherText_HaveMapCard
;	faceplayer
;	opentext
;	checkflag ENGINE_MAP_CARD
;	iftrue .HaveMapCard
;	writetext CherrygroveTeacherText_NoMapCard
;	waitbutton
;	closetext
;	end

;.HaveMapCard:
;	writetext CherrygroveTeacherText_HaveMapCard
;	waitbutton
;	closetext
;	end

;CherrygroveTeacherText_NoMapCard:
;	text "Did you talk to"
;	line "the old man by the"
;	cont "#MON CENTER?"
;
;	para "He'll put a MAP of"
;	line "JOHTO on your"
;	cont "#GEAR."
;	done

CherrygroveTeacherText_HaveMapCard:
	text "When you're with"
	line "#MON, going"
	cont "anywhere is fun."
	done

CherrygroveYoungsterScript:
	jumptextfaceplayer CherrygroveYoungsterText_HavePokedex
;	faceplayer
;	opentext
;	checkflag ENGINE_POKEDEX
;	iftrue .HavePokedex
;	writetext CherrygroveYoungsterText_NoPokedex
;	waitbutton
;	closetext
;	end

;.HavePokedex:
;	writetext CherrygroveYoungsterText_HavePokedex
;	waitbutton
;	closetext
;	end

;CherrygroveYoungsterText_NoPokedex:
;	text "MR.#MON's house"
;	line "is still farther"
;	cont "up ahead."
;	done

CherrygroveYoungsterText_HavePokedex:
	text "I battled the"
	line "trainers on the"
	cont "road."

	para "My #MON lost."
	line "They're a mess! I"
	cont "must take them to"
	cont "a #MON CENTER."
	done

MysticWaterGuy:
	faceplayer
	opentext
	writetext MysticWaterGuy_FishingText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
;	iftrue .After
;	writetext MysticWaterGuyTextBefore
;	promptbutton
;	verbosegiveitem MYSTIC_WATER
;	iffalse .Exit
;	setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
;.After:
;	writetext MysticWaterGuyTextAfter
;	waitbutton
;.Exit:
;	closetext
;	end

;MysticWaterGuyTextBefore:
;	text "A #MON I caught"
;	line "had an item."
;
;	para "I think it's"
;	line "MYSTIC WATER."
;
;	para "I don't need it,"
;	line "so do you want it?"
;	done

;MysticWaterGuyTextAfter:
;	text "Back to fishing"
;	line "for me, then."
;	done

MysticWaterGuy_FishingText:
	text "Fishing is very"
	line "relaxing."
	done

; bg text
CherrygroveCitySign:
	jumptext CherrygroveCitySignText
CherrygroveCitySignText:
	text "CHERRYGROVE CITY"

	para "The City of Cute,"
	line "Fragrant Flowers"
	done

CherrygroveCityPokecenterSign:
	jumpstd PokecenterSignScript

CherrygroveCityMartSign:
	jumpstd MartSignScript

;CherrygroveCityRock:
;	jumpstd SmashRockScript

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, CHERRYGROVE_MART, 2
	warp_event 29,  3, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 17,  7, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 25,  9, GUIDE_GENTS_HOUSE, 1
	warp_event 31, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 30,  8, BGEVENT_READ, CherrygroveCitySign
	bg_event 24,  3, BGEVENT_READ, CherrygroveCityMartSign
	bg_event 30,  3, BGEVENT_READ, CherrygroveCityPokecenterSign

	def_object_events
;	object_event 22,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveRockSmashGuyScript, -1
;	object_event 23,  8, SPRITE_GEODUDE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, CherrygroveCityGeodudeScript, -1
;	object_event 23,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityRock, -1
	object_event 27, 12, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event 27,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	object_event  7, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy, -1

;.GrayOverTreeOBPalette <-
;\engine\tilesets\tileset_palettes.asm
;\gfx\overworld\npc_sprites_special.pal
;