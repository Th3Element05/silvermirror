	object_const_def
	const ROUTE_12SUPERRODHOUSE_FISHING_GURU

Route12SuperRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route12SuperRodHouseFishingGuruScript:
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .GotSuperRod
	faceplayer
	opentext
	writetext OfferSuperRodText
	yesorno
	iffalse .Refused
	writetext GiveSuperRodText
	promptbutton
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iftrue .SuperRod2
	verbosegiveitem SUPER_ROD
	iffalse .NoRoom
	setevent EVENT_GOT_SUPER_ROD
	writetext GaveSuperRodText
	waitbutton
	closetext
	end

.SuperRod2
	verbosegiveitem SUPER_ROD_2
	iffalse .NoRoom
	setevent EVENT_GOT_SUPER_ROD
	writetext GaveSuperRodText
	waitbutton
	closetext
	end

.GotSuperRod:
	jumptextfaceplayer Route12SuperRodHouseTryFishingText

.Refused:
	writetext DontWantSuperRodText
	waitbutton
.NoRoom:
	closetext
	end

SuperRodHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

OfferSuperRodText:
	text "I'm the FISHING"
	line "GURU's brother!"

	para "I simply Looove"
	line "fishing!"

	para "Do you like to"
	line "fish?"
	done

GiveSuperRodText:
	text "Grand! I like"
	line "your style!"

	para "Take this and"
	line "fish, young one!"
	done

GaveSuperRodText:
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"
	cont "and land the big"
	cont "one!"
	done

DontWantSuperRodText:
	text "Oh… That's so"
	line "disappointing…"
	done

Route12SuperRodHouseTryFishingText:
	text "Hello there,"
	line "<PLAYER>!"

	para "Use the SUPER ROD"
	line "in any water!"
	cont "You can catch"
	cont "different kinds"
	cont "of #MON."

	para "Try fishing"
	line "wherever you can!"

Route12SuperRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_12, 1
	warp_event  3,  7, ROUTE_12, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1
