	object_const_def
	const GOLDENRODHAPPINESSRATER_TEACHER
	const GOLDENRODHAPPINESSRATER_POKEFAN_M
	const GOLDENRODHAPPINESSRATER_TWIN

GoldenrodHappinessRater_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodHappinessRaterTeacherScript:
	faceplayer
	opentext
	special GetFirstPokemonHappiness
	writetext GoldenrodHappinessRaterIntroText
	promptbutton
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
;	sjump .LooksMean

.LooksMean:
	writetext GoldenrodHappinessRatingText_LooksMean
	waitbutton
	closetext
	end

.NotUsedToYou:
	writetext GoldenrodHappinessRatingText_NotUsedToYou
	waitbutton
	closetext
	end

.QuiteCute:
	writetext GoldenrodHappinessRatingText_QuiteCute
	waitbutton
	closetext
	end

.SortOfHappy:
	writetext GoldenrodHappinessRatingText_SortOfHappy
	waitbutton
	closetext
	end

.ReallyTrustsYou:
	writetext GoldenrodHappinessRatingText_ReallyTrustsYou
	waitbutton
	closetext
	end

.LovesYouALot:
	writetext GoldenrodHappinessRatingText_LovesYouALot
	waitbutton
	closetext
	end

GoldenrodHappinessRaterIntroText:
	ntag "LADY:"
	text "If you treat your"
	line "#MON nicely,"
	cont "they will love you"
	roll "in return."

	para "Oh? Let me see"
	line "your @"
	text_ram wStringBuffer3
	text "…"
	done

GoldenrodHappinessRatingText_LooksMean:
	ntag "LADY:"
	text "It doesn't seem to"
	line "like you at all."
	cont "It looks mean."
	done

GoldenrodHappinessRatingText_NotUsedToYou:
	ntag "LADY:"
	text "It's not used to"
	line "you yet. You still"
	cont "need to earn its"
	roll "respect."
	done

GoldenrodHappinessRatingText_QuiteCute:
	ntag "LADY:"
	text "It's quite cute."
	done

GoldenrodHappinessRatingText_SortOfHappy:
	ntag "LADY:"
	text "It's friendly to-"
	line "ward you. It looks"
	cont "sort of happy."
	done

GoldenrodHappinessRatingText_ReallyTrustsYou:
	ntag "LADY:"
	text "I get the feeling"
	line "that it really"
	cont "trusts you."
	done

GoldenrodHappinessRatingText_LovesYouALot:
	ntag "LADY:"
	text "It looks really"
	line "happy! It must"
	cont "love you a lot."
	done

GoldenrodHappinessRaterPokefanMScript:
	jumptextfaceplayer GoldenrodHappinessRaterPokefanMText
GoldenrodHappinessRaterPokefanMText:
	ntag "#FAN:"
	text "I keep losing in"
	line "battles, and my"
	cont "#MON end up"
	roll "fainting…"

	para "Maybe that's why"
	line "my #MON don't"
	cont "like me much…"
	done

GoldenrodHappinessRaterTwinScript:
	jumptextfaceplayer GoldenrodHappinessRaterTwinText
GoldenrodHappinessRaterTwinText:
	ntag "GIRL:"
	text "When I use an item"
	line "on my #MON, it"
	cont "acts really glad!"
	done

HappinessRatersHouseBookshelf:
	jumpstd DifficultBookshelfScript

HappinessRatersHouseRadio:
	jumpstd Radio2Script


GoldenrodHappinessRater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 9
	warp_event  3,  7, GOLDENROD_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, HappinessRatersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, HappinessRatersHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, HappinessRatersHouseRadio

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterTeacherScript, -1
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterPokefanMScript, -1
	object_event  5,  6, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterTwinScript, -1
