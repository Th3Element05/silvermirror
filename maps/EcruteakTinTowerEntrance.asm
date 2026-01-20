	object_const_def
	const ECRUTEAKTINTOWERENTRANCE_SAGE_LEFT
	const ECRUTEAKTINTOWERENTRANCE_SAGE_RIGHT

EcruteakTinTowerEntrance_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TinTowerEntranceBlockingSagesCallback

TinTowerEntranceBlockingSagesCallback:
	checkevent EVENT_TIN_TOWER_ENTRANCE_ACCESS_GRANTED
	iftrue .NotBlocked
	moveobject ECRUTEAKTINTOWERENTRANCE_SAGE_LEFT, 4, 6
	moveobject ECRUTEAKTINTOWERENTRANCE_SAGE_RIGHT, 5, 6
.NotBlocked
	endcallback

; scripts
TinTowerEntranceSageScript:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .AccessGranted
	checkevent EVENT_WISE_TRIO_EXPLAINED_CLEAR_BELL
	iftrue .WhatSoothesTheSoul
	checkevent EVENT_TIN_TOWER_ENTRANCE_ACCESS_GRANTED
	iftrue .AccessGranted
	checkevent EVENT_ROUTE_30_SAW_HOOH
	iftrue .HoohReturned
	jumptextfaceplayer TinTowerEntranceAccessDeniedText

.AccessGranted
	jumptext TinTowerEntrancePleaseDoGoInText

.WhatSoothesTheSoul
	jumptext TinTowerEntranceSoothTheSoulText

.HoohReturned
	faceplayer
	opentext
	writetext TinTowerEntranceNoRainbowWingText
	checkitem RAINBOW_WING
	iftrue .HaveRainbowWing
	waitbutton
	closetext
	end

.HaveRainbowWing
	promptbutton
	writetext TinTowerEntranceHaveRainbowWingText
	waitbutton
	closetext
	applymovement ECRUTEAKTINTOWERENTRANCE_SAGE_LEFT, TinTowerEntranceSageLeftMovement
	applymovement ECRUTEAKTINTOWERENTRANCE_SAGE_RIGHT, TinTowerEntranceSageRightMovement
	setevent EVENT_TIN_TOWER_ENTRANCE_ACCESS_GRANTED
	end

TinTowerEntranceAccessDeniedText:
	text "I beg your pardon,"
	line "but I must ask you"
	cont "to leave."

	para "Our wisest sages"
	line "have seen signs"
	cont "that a momentous"
	roll "event will soon"
	cont "occur."

	para "They forbid anyone"
	line "from entering TIN"
	cont "TOWER right now."
	done

TinTowerEntranceNoRainbowWingText:
	text "A momentous event"
	line "has occurred!"

	para "The rainbow-winged"
	line "#MON returned"
	cont "to TIN TOWER!"

	para "Our wisest sages"
	line "forbid anyone from"
	cont "approaching TIN"
	roll "TOWER right now."
	done

TinTowerEntranceHaveRainbowWingText:
	text "Wait…"
	line "What is that?"

	para "<……> <……>"

	para "That RAINBOW WING!"

	para "The WISE TRIO will"
	line "want to see this."

	para "Please, go speak"
	line "with them right"
	cont "away!"
	done

TinTowerEntrancePleaseDoGoInText:
	text "Please, do go in."
	done

TinTowerEntranceSoothTheSoulText:
	text "…What soothes the"
	line "soul…"

	para "The WISE TRIO say"
	line "things that are so"
	cont "very difficult to"
	roll "understand…"
	done

TinTowerEntranceSageLeftMovement:
	step UP
	step LEFT
	turn_head RIGHT
	step_end

TinTowerEntranceSageRightMovement:
	step UP
	step RIGHT
	turn_head LEFT
	step_end


; npc
TinTowerEntranceWanderingSageScript:
	jumptextfaceplayer TinTowerEntranceWanderingSageText

TinTowerEntranceWanderingSageText:
	text "In the past, there"
	line "were two nine-tier"
	cont "towers here."

	para "The BRASS TOWER,"
	line "which was said to"
	cont "awaken #MON,"
	roll "and the TIN TOWER,"
	cont "where #MON were"
	roll "said to rest."

	para "The view from the"
	line "tops of the TOWERs"
	cont "must have been"
	roll "magnificent."

	para "However…"

	para "About 150 years"
	line "ago, a lightning"
	cont "bolt struck the"
	roll "BRASS TOWER."

	para "It was engulfed in"
	line "flames that raged"
	cont "for days, and"
	roll "three #MON died"
	cont "in the blaze."

	para "A sudden downpour"
	line "finally put out"
	cont "the flames."

	para "And that is how"
	line "the BURNED TOWER"
	cont "came to be."
	done

TinTowerEntranceGrampsScript:
	checkevent EVENT_ROUTE_30_SAW_HOOH
	iftrue .HoohReturned
	jumptextfaceplayer TinTowerEntranceGrampsTowersText

.HoohReturned:
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .Beasts
	jumptextfaceplayer TinTowerEntranceGrampsHoohReturnedText

.Beasts
	jumptextfaceplayer TinTowerEntranceGrampsBeastsText

TinTowerEntranceGrampsTowersText:
	text "Two towers…"
	line "Two #MON…"

	para "But when one"
	line "burned down, both"
	cont "#MON flew away,"
	roll "never to return."
	done

TinTowerEntranceGrampsHoohReturnedText:
	text "The TIN TOWER"
	line "shook! A #MON"
	cont "must have returned"
	roll "to the top!"
	done

TinTowerEntranceGrampsBeastsText:
	text "The BURNED TOWER…"

	para "They say the three"
	line "#MON that died"
	cont "in that fire would"
	roll "be resurrected"
	cont "someday…"

	para "Legends name them"
	line "RAIKOU, ENTEI,"
	cont "and SUICUNE."
	done


EcruteakTinTowerEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 3
	warp_event  5, 17, ECRUTEAK_CITY, 3
	warp_event  5,  3, ECRUTEAK_TIN_TOWER_ENTRANCE, 4
	warp_event 17, 15, ECRUTEAK_TIN_TOWER_ENTRANCE, 3
	warp_event 17,  3, WISE_TRIOS_ROOM, 3

	def_coord_events
;	coord_event  4,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_BADGE_CHECK, TinTowerEntranceLeftBadgeCheckScript
;	coord_event  5,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_BADGE_CHECK, TinTowerEntranceRightBadgeCheckScript

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTowerEntranceSageScript, -1
	object_event  6,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTowerEntranceSageScript, -1
	object_event  6,  9, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTowerEntranceWanderingSageScript, -1
	object_event  3, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTowerEntranceGrampsScript, -1

;off limits until you get fogbadge
;after seeing ho-oh, explain clear bell in mahogany
;that's it, that's this map
;EVENT_ROUTE_30_SAW_HOOH
