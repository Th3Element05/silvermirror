	object_const_def

FuchsiaGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, FuchsiaGoodRodHouseTilesCallback

FuchsiaGoodRodHouseTilesCallback:
	changeblock 2, 0, $37 ; back door
	changeblock 2, 2, $28 ; chair
	changeblock 4, 2, $2a ; table
	changeblock 2, 4, $2e ; chair
	changeblock 4, 4, $2b ; table
	endcallback

FishingGuruGood:
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .GotGoodRod
	faceplayer
	opentext
	writetext FishingGuruGoodQuestionText
	yesorno
	iffalse .Refused
	writetext FishingGuruGoodYesText
	promptbutton
	verbosegiveitem GOOD_ROD
	writetext FishingGuruGoodGiveRodText
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

.GotGoodRod:
	jumptextfaceplayer FishingGuruGoodAfterText

.Refused:
	writetext FishingGuruGoodRefusedText
	waitbutton
	closetext
	end

FishingGuruGoodQuestionText:
	text "I'm the FISHING"
	line "GURU's older"
	cont "brother!"

	para "I simply Looove"
	line "fishing!"

	para "Do you like to"
	line "fish?"
	done

FishingGuruGoodYesText:
	text "Grand! I like"
	line "your style!"

	para "Take this and"
	line "fish, young one!"
	done

FishingGuruGoodGiveRodText:
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"
	cont "and land the big"
	cont "one, young one!"
	done

FishingGuruGoodRefusedText:
	text "Oh... That's so"
	line "disappointing..."
	done

FishingGuruGoodAfterText:
	text "Hello there,"
	line "<PLAYER>!"

	para "How are the fish"
	line "biting?"
	done

FuchsiaGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 10
	warp_event  3,  7, FUCHSIA_CITY, 10
	warp_event  3,  0, FUCHSIA_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FishingGuruGood, -1
