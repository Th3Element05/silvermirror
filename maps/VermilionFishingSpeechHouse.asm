	object_const_def

VermilionFishingSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FishingGuruOld:
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotOldRod
	faceplayer
	opentext
	writetext FishingGuruOldQuestionText
	yesorno
	iffalse .Refused
	writetext FishingGuruOldYesText
	promptbutton
	verbosegiveitem OLD_ROD
	writetext FishingGuruOldGiveRodText
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.GotOldRod:
	jumptextfaceplayer FishingGuruOldAfterText

.Refused:
	writetext FishingGuruOldRefusedText
	waitbutton
	closetext
	end

FishingGuruOldQuestionText:
	text "I'm the FISHING"
	line "GURU!"

	para "I simply Looove"
	line "fishing!"

	para "Do you like to"
	line "fish?"
	done

FishingGuruOldYesText:
	text "Grand! I like"
	line "your style!"

	para "Take this and"
	line "fish, young one!"
	done

FishingGuruOldGiveRodText:
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"
	cont "and land the big"
	cont "one, young one!"
	done

FishingGuruOldRefusedText:
	text "Oh... That's so"
	line "disappointing..."
	done

FishingGuruOldAfterText:
	text "Hello there,"
	line "<PLAYER>!"

	para "How are the fish"
	line "biting?"
	done

FishingDudesHousePhoto:
	jumptext FishingDudesHousePhotoText
FishingDudesHousePhotoText:
	text "It's a photo of"
	line "people fishing…"

	para "They're having a"
	line "great time…"
	done

VermilionFishingSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 1
	warp_event  3,  7, VERMILION_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, FishingDudesHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FishingGuruOld, -1
