	object_const_def

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route17AlwaysOnBikeCallback

Route17AlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback


; trainers
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
	text "Crash and burn!"
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
	text "Grounded out!"
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
;	endifjustbattled
;	jumptextfaceplayer BikerEoinAfterBattleText

	loadvar VAR_CALLERID, PHONE_BIKER_EOIN
	opentext
	checkflag ENGINE_EOIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIKER_EOIN
	iftrue .EoinDefeated
	checkevent EVENT_EOIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext BikerEoinAfterBattleText
	waitbutton
	setevent EVENT_EOIN_ASKED_FOR_PHONE_NUMBER
	scall Route17AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route17AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BIKER_EOIN
	ifequal PHONE_CONTACTS_FULL, Route17PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route17NumberDeclined
	gettrainername STRING_BUFFER_3, BIKER, EOIN1
	scall Route17RegisteredNumber
	jump Route17NumberAccepted

.WantsBattle:
	scall Route17Rematch
	winlosstext BikerEoinBeatenText, 0
	loadtrainer BIKER, EOIN_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer BIKER, EOIN_2
	readvar VAR_BADGES
	ifgreater 3, .LoadFight ;4_BADGES
	loadtrainer BIKER, EOIN1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_EOIN_READY_FOR_REMATCH
	end

.EoinDefeated:
	writetext BikerEoinAfterBattleText
	waitbutton
	closetext
	end

Route17AskNumber1:
	jumpstd AskNumber1MScript
	end

Route17AskNumber2:
	jumpstd AskNumber2MScript
	end

Route17RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

Route17NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

Route17NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

Route17PhoneFull:
	jumpstd PhoneFullMScript
	end

Route17Rematch:
	jumpstd RematchMScript
	end


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
	text "Are you satisfied?"
	done

BikerNolanAfterBattleText:
	text "I need to catch"
	line "a few Zs!"
	done


; bg text
Route17NoticeSign:
	jumptext Route17NoticeSignText
Route17NoticeSignText:
	text "     NOTICE!"

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
	roll "different rates."
	done

Route17TrainerTips2:
	jumptext Route17TrainerTips2Text
Route17TrainerTips2Text:
	text "TRAINER TIPS"

	para "Press the A or B"
	line "Button to stay in"
	cont "place while on a"
	roll "slope."
	done

Route17Sign:
	jumptext Route17SignText
Route17SignText:
	text "ROUTE 17"
	line "CELADON CITY -"
	cont "FUCHSIA CITY"
	done

;Route17NoticeSign2:
;	jumptext Route17NoticeSign2Text
;Route17NoticeSign2Text:
;	text "It's a notice!"
;
;	para "Don't throw the"
;	line "game, throw #"
;	cont "BALLs instead!"
;	done

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


; itemballs
Route17SharpBeak:
	itemball SHARP_BEAK

Route17TMRollout:
	itemball TM_ROLLOUT


Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 13, 49, BGEVENT_READ, Route17NoticeSign
	bg_event 13, 61, BGEVENT_READ, Route17TrainerTips1
	bg_event 11, 73, BGEVENT_READ, Route17TrainerTips2
	bg_event  7, 31, BGEVENT_READ, Route17Sign
;	bg_event  9, 109, BGEVENT_READ, Route17NoticeSign2
	bg_event 11, 129, BGEVENT_READ, Route17CyclingRoadEndsSign
	bg_event 17, 12, BGEVENT_ITEM, Route17HiddenRareCandy
	bg_event 12, 41, BGEVENT_ITEM, Route17HiddenFullRestore
	bg_event 20, 80, BGEVENT_ITEM, Route17HiddenPPUp
	bg_event  4, 80, BGEVENT_ITEM, Route17HiddenMaxRevive
	bg_event 12, 118, BGEVENT_ITEM, Route17HiddenMaxElixer

	def_object_events
	object_event  7,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerDustin, -1
	object_event  6, 21, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerMarkey, -1
	object_event 12, 17, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerJugglerLyle, -1
	object_event  6, 33, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRiley, -1
	object_event 16, 31, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerTheron, -1
	object_event 17, 60, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerJugglerDarius, -1
	object_event  4, 58, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerJulien, -1
	object_event  6, 97, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerEoin, -1
	object_event 18, 91, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerJugglerMaximo, -1
	object_event 11, 114, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerNolan, -1
	object_event 18, 54, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route17SharpBeak, EVENT_ROUTE_17_SHARP_BEAK
	object_event 19, 111, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route17TMRollout, EVENT_ROUTE_17_TM_ROLLOUT
