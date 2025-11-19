	object_const_def

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route17AlwaysOnBikeCallback

Route17AlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

TrainerJugglerDustin:
	trainer JUGGLER, DUSTIN, EVENT_BEAT_JUGGLER_DUSTIN, JugglerDustinSeenText, JugglerDustinBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerDustinAfterBattleText

JugglerDustinSeenText:
	text "What do you want,"
	line "kiddo?"
	done

JugglerDustinBeatenText:
	text "Whoo!"
	done

JugglerDustinAfterBattleText:
	text "I could belly-"
	line "bump you outta"
	cont "here!"
	done

TrainerBikerMarkey:
	trainer BIKER, MARKEY, EVENT_BEAT_BIKER_MARKEY, BikerMarkeySeenText, BikerMarkeyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerMarkeyAfterBattleText

BikerMarkeySeenText:
	text "You heading to"
	line "FUCHSIA?"
	done

BikerMarkeyBeatenText:
	text "Crash and"
	line "burn!"
	done

BikerMarkeyAfterBattleText:
	text "I love racing"
	line "downhill!"
	done

TrainerJugglerLyle:
	trainer JUGGLER, LYLE, EVENT_BEAT_JUGGLER_LYLE, JugglerLyleSeenText, JugglerLyleBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerLyleAfterBattleText

JugglerLyleSeenText:
	text "There's no money"
	line "in fighting kids!"
	done

JugglerLyleBeatenText:
	text "Burned out!"
	done

JugglerLyleAfterBattleText:
	text "Good stuff is"
	line "lying around on"
	cont "CYCLING ROAD!"
	done

TrainerBikerRiley:
	trainer BIKER, RILEY, EVENT_BEAT_BIKER_RILEY, BikerRileySeenText, BikerRileyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerRileyAfterBattleText

BikerRileySeenText:
	text "We're BIKERs!"
	line "Highway stars!"
	done

BikerRileyBeatenText:
	text "Smoked!"
	done

BikerRileyAfterBattleText:
	text "Are you looking"
	line "for adventure?"
	done

TrainerBikerTheron:
	trainer BIKER, THERON, EVENT_BEAT_BIKER_THERON, BikerTheronSeenText, BikerTheronBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerTheronAfterBattleText

BikerTheronSeenText:
	text "Let VOLTORB"
	line "electrify you!"
	done

BikerTheronBeatenText:
	text "Grounded"
	line "out!"
	done

BikerTheronAfterBattleText:
	text "I got my VOLTORB"
	line "at the abandoned"
	cont "POWER PLANT."
	done

TrainerJugglerDarius:
	trainer JUGGLER, DARIUS, EVENT_BEAT_JUGGLER_DARIUS, JugglerDariusSeenText, JugglerDariusBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerDariusAfterBattleText

JugglerDariusSeenText:
	text "My #MON won't"
	line "evolve! Why?"
	done

JugglerDariusBeatenText:
	text "Why, you!"
	done

JugglerDariusAfterBattleText:
	text "Maybe some #MON"
	line "need element"
	cont "STONEs to evolve."
	done

TrainerJugglerJulien:
	trainer JUGGLER, JULIEN, EVENT_BEAT_JUGGLER_JULIEN, JugglerJulienSeenText, JugglerJulienBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerJulienAfterBattleText

JugglerJulienSeenText:
	text "I need a little"
	line "exercise!"
	done

JugglerJulienBeatenText:
	text "Whew!"
	line "Good workout!"
	done

JugglerJulienAfterBattleText:
	text "I'm sure I lost"
	line "weight there!"
	done

TrainerBikerEoin:
	trainer BIKER, EOIN1, EVENT_BEAT_BIKER_EOIN, BikerEoinSeenText, BikerEoinBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerEoinAfterBattleText

BikerEoinSeenText:
	text "Nice BIKE!"
	line "How's it handle?"
	done

BikerEoinBeatenText:
	text "Shoot!"
	done

BikerEoinAfterBattleText:
	text "The slope makes"
	line "it hard to steer!"
	done

TrainerJugglerMaximo:
	trainer JUGGLER, MAXIMO, EVENT_BEAT_JUGGLER_MAXIMO, JugglerMaximoSeenText, JugglerMaximoBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerMaximoAfterBattleText

JugglerMaximoSeenText:
	text "Be a rebel!"
	done

JugglerMaximoBeatenText:
	text "Aaaargh!"
	done

JugglerMaximoAfterBattleText:
	text "Be ready to fight"
	line "for your beliefs!"
	done

TrainerBikerNolan:
	trainer BIKER, NOLAN, EVENT_BEAT_BIKER_NOLAN, BikerNolanSeenText, BikerNolanBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerNolanAfterBattleText

BikerNolanSeenText:
	text "Get lost kid!"
	line "I'm bushed!"
	done

BikerNolanBeatenText:
	text "Are you"
	line "satisfied?"
	done

BikerNolanAfterBattleText:
	text "I need to catch"
	line "a few Zs!"
	done

Route17NoticeSign:
	jumptext Route17NoticeSignText
Route17NoticeSignText:
	text "It's a notice!"

	para "Watch out for"
	line "discarded items!"
	done

Route17TrainerTips1:
	jumptext Route17TrainerTips1Text
Route17TrainerTips1Text:
	text "TRAINER TIPS"

	para "All #MON are"
	line "unique."

	para "Even #MON of"
	line "the same type and"
	cont "level grow at"
	cont "different rates."
	done

Route17TrainerTips2:
	jumptext Route17TrainerTips2Text
Route17TrainerTips2Text:
	text "TRAINER TIPS"

	para "Press the A or B"
	line "Button to stay in"
	cont "place while on a"
	cont "slope."
	done

Route17Sign:
	jumptext Route17SignText
Route17SignText:
	text "ROUTE 17"
	line "CELADON CITY -"
	cont "FUCHSIA CITY"
	done

Route17NoticeSign2:
	jumptext Route17NoticeSign2Text
Route17NoticeSign2Text:
	text "It's a notice!"

	para "Don't throw the"
	line "game, throw #"
	cont "BALLs instead!"
	done

Route17CyclingRoadEndsSign:
	jumptext Route17CyclingRoadEndsSignText
Route17CyclingRoadEndsSignText:
	text "CYCLING ROAD"
	line "Slope ends here!"
	done

; hidden items
Route17HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_ROUTE_17_HIDDEN_RARE_CANDY

Route17HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_17_HIDDEN_FULL_RESTORE

Route17HiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_ROUTE_17_HIDDEN_MAX_REVIVE

Route17HiddenPPUp:
	hiddenitem PP_UP, EVENT_ROUTE_17_HIDDEN_PP_UP

Route17HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 51, BGEVENT_READ, Route17NoticeSign
	bg_event  9, 63, BGEVENT_READ, Route17TrainerTips1
	bg_event  9, 75, BGEVENT_READ, Route17TrainerTips2
	bg_event  9, 87, BGEVENT_READ, Route17Sign
	bg_event  9, 109, BGEVENT_READ, Route17NoticeSign2
	bg_event  9, 137, BGEVENT_READ, Route17CyclingRoadEndsSign
	bg_event 15, 14, BGEVENT_ITEM, Route17HiddenRareCandy
	bg_event  8, 45, BGEVENT_ITEM, Route17HiddenFullRestore
	bg_event 17, 72, BGEVENT_ITEM, Route17HiddenPPUp
	bg_event  4, 91, BGEVENT_ITEM, Route17HiddenMaxRevive
	bg_event  8, 119, BGEVENT_ITEM, Route17HiddenMaxElixer

	def_object_events
	object_event 11, 16, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerDustin, -1
	object_event  4, 18, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerMarkey, -1
	object_event 12, 19, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerJugglerLyle, -1
	object_event  7, 32, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRiley, -1
	object_event 14, 34, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerTheron, -1
	object_event 17, 58, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerDarius, -1
	object_event  2, 68, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerJulien, -1
	object_event  5, 98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerEoin, -1
	object_event 14, 98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerMaximo, -1
	object_event 10, 116, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerNolan, -1
