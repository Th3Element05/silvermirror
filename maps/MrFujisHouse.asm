	object_const_def

MrFujisHouse_MapScripts:
	def_scene_scripts
	scene_script MrFujisHouseNoop1Scene, SCENE_MRFUJISHOUSE_NOOP
	scene_script MrFujisHousePokefluteScene, SCENE_MRFUJISHOUSE_POKEFLUTE

	def_callbacks

MrFujisHouseNoop1Scene:
	end

MrFujisHousePokefluteScene:
	opentext
	writetext MrFujisHouseMrFujiGivePokeFluteText
	promptbutton
	verbosegiveitem POKE_FLUTE
	writetext MrFujisHouseMrFujiExplainFluteText
	waitbutton
	closetext
	setscene SCENE_MRFUJISHOUSE_NOOP
	end

MrFujisHouseMrFujiScript:
	checkevent EVENT_WOKE_SNORLAX
	iftrue .FluteHelped
	jumptextfaceplayer MrFujisHouseMrFujiExplainFluteText
.FluteHelped
	jumptextfaceplayer MrFujisHouseMrFujiFluteHelpedText

MrFujisHouseMrFujiGivePokeFluteText:
	text "MR.FUJI: <PLAYER>."

	para "Your #DEX quest"
	line "may fail without"
	cont "love for your"
	cont "#MON."

	para "I think this may"
	line "help your quest."
	done

MrFujisHouseMrFujiExplainFluteText:
	text "MR.FUJI: Upon"
	line "hearing the #"
	cont "FLUTE, sleeping"
	cont "#MON will"
	cont "spring awake!"

	para "It works on any"
	line "sleeping #MON."
	done

MrFujisHouseMrFujiFluteHelpedText:
	text "MR.FUJI: Has my"
	line "FLUTE helped you?"
	done

MrFujisHouseNidorino:
	opentext
	writetext MrFujisHouseNidorinoText
	cry NIDORINO
	waitbutton
	closetext
	end
MrFujisHouseNidorinoText:
	text "NIDORINO: Gaoo!"
	done

MrFujisHouseGirlScript:
	checkevent EVENT_MR_FUJIS_HOUSE_MR_FUJI
	iftrue .GirlFujiGone
	jumptextfaceplayer MrFujisHouseGirlText
.GirlFujiGone
	jumptextfaceplayer MrFujisHouseGirlMrFujiGoneText

MrFujisHouseGirlText:
	text "It's so warm!"
	line "#MON are so"
	cont "nice to hug!"
	done

MrFujisHouseGirlMrFujiGoneText:
	text "This is really"
	line "MR.FUJI's house."

	para "He's really kind!"

	para "He looks after"
	line "abandoned and"
	cont "orphaned #MON!"
	done

MrFujisHousePsyduck:
	opentext
	writetext MrFujisHousePsyduckText
	cry PSYDUCK
	waitbutton
	closetext
	end
MrFujisHousePsyduckText:
	text "PSYDUCK: Gwappa!"
	done

MrFujisHouseSuperNerdScript:
	checkevent EVENT_MR_FUJIS_HOUSE_MR_FUJI
	iftrue .NerdFujiGone
	jumptextfaceplayer MrFujisHouseSuperNerdText
.NerdFujiGone
	jumptextfaceplayer MrFujisHouseSuperNerdMrFujiGoneText

MrFujisHouseSuperNerdText:
	text "MR.FUJI had been"
	line "praying alone for"
	cont "CUBONE's mother."
	done

MrFujisHouseSuperNerdMrFujiGoneText:
	text "That's odd, MR.FUJI"
	line "isn't here."
	cont "Where'd he go?"
	done

MrFujisHousePokedexScript:
	jumptext MrFujisHousePokedexText
MrFujisHousePokedexText:
	text "#MON Monthly"
	line "Grand Prize"
	cont "Drawing!"

	para "The application"
	line "form is..."

	para "Gone! It's been"
	line "clipped out!"
	done

MrFujisHouseBookshelf:
	jumpstd DifficultBookshelfScript

MrFujisHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 2
	warp_event  3,  7, LAVENDER_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrFujisHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MrFujisHouseBookshelf
	bg_event  8,  1, BGEVENT_READ, MrFujisHouseBookshelf
	bg_event  9,  1, BGEVENT_READ, MrFujisHouseBookshelf

	def_object_events
	object_event  4,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MrFujisHouseMrFujiScript, EVENT_MR_FUJIS_HOUSE_MR_FUJI
	object_event  1,  3, SPRITE_NIDORINO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MrFujisHouseNidorino, -1
	object_event  7,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MrFujisHouseGirlScript, -1
	object_event  7,  3, SPRITE_PSYDUCK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, MrFujisHousePsyduck, -1
	object_event  2,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFujisHouseSuperNerdScript, -1
	object_event  5,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHousePokedexScript, -1

;.YellowOverRockOBPalette