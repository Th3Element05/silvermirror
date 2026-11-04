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
TrainerCyclistDustin:
	trainer CYCLIST, DUSTIN, EVENT_BEAT_CYCLIST_DUSTIN, CyclistDustinSeenText, CyclistDustinBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistDustinAfterBattleText

CyclistDustinSeenText:
	ntag "CYCLIST:"
	text "What do you want,"
	line "kiddo?"
	done

CyclistDustinBeatenText:
	ntag "DUSTIN:"
	text "Whoo!"
	done

CyclistDustinAfterBattleText:
	ntag "CYCLIST:"
	text "You can also get"
	line "to FUCHSIA from"
	cont "VERMILION using a"
	roll "coastal road."
	done


TrainerBikerMarkey:
	trainer BIKER, MARKEY, EVENT_BEAT_BIKER_MARKEY, BikerMarkeySeenText, BikerMarkeyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerMarkeyAfterBattleText

BikerMarkeySeenText:
	ntag "BIKER:"
	text "You heading to"
	line "FUCHSIA?"
	done

BikerMarkeyBeatenText:
	ntag "MARKEY:"
	text "Crash and burn!"
	done

BikerMarkeyAfterBattleText:
	ntag "BIKER:"
	text "I love racing"
	line "downhill!"
	done


TrainerCyclistLyle:
	trainer CYCLIST, LYLE, EVENT_BEAT_CYCLIST_LYLE, CyclistLyleSeenText, CyclistLyleBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistLyleAfterBattleText

CyclistLyleSeenText:
	ntag "CYCLIST:"
	text "I'm tired from my"
	line "workout!"
	done

CyclistLyleBeatenText:
	ntag "LYLE:"
	text "Burned out!"
	done

CyclistLyleAfterBattleText:
	ntag "CYCLIST:"
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
	ntag "BIKER:"
	text "We're BIKERs!"
	line "Highway stars!"
	done

BikerRileyBeatenText:
	ntag "RILEY:"
	text "Smoked!"
	done

BikerRileyAfterBattleText:
	ntag "BIKER:"
	text "Are you looking"
	line "for adventure?"
	done


TrainerBikerTheron:
	trainer BIKER, THERON, EVENT_BEAT_BIKER_THERON, BikerTheronSeenText, BikerTheronBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerTheronAfterBattleText

BikerTheronSeenText:
	ntag "BIKER:"
	text "Let VOLTORB"
	line "electrify you!"
	done

BikerTheronBeatenText:
	ntag "THERON:"
	text "Grounded out!"
	done

BikerTheronAfterBattleText:
	ntag "BIKER:"
	text "I got my VOLTORB"
	line "at the abandoned"
	cont "POWER PLANT."
	done


TrainerCyclistDarius:
	trainer CYCLIST, DARIUS, EVENT_BEAT_CYCLIST_DARIUS, CyclistDariusSeenText, CyclistDariusBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistDariusAfterBattleText

CyclistDariusSeenText:
	ntag "CYCLIST:"
	text "My #MON won't"
	line "evolve! Why?"
	done

CyclistDariusBeatenText:
	ntag "DARIUS:"
	text "Why, you!"
	done

CyclistDariusAfterBattleText:
	ntag "CYCLIST:"
	text "Maybe some #MON"
	line "need element"
	cont "STONEs to evolve."
	done


TrainerCyclistJulien:
	trainer CYCLIST, JULIEN, EVENT_BEAT_CYCLIST_JULIEN, CyclistJulienSeenText, CyclistJulienBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistJulienAfterBattleText

CyclistJulienSeenText:
	ntag "CYCLIST:"
	text "I need a little"
	line "exercise!"
	done

CyclistJulienBeatenText:
	ntag "JULIEN:"
	text "Whew!"
	line "Good workout!"
	done

CyclistJulienAfterBattleText:
	ntag "CYCLIST:"
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
;	writetext BikerEoinAfterBattleText
;	waitbutton
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
	ntag "BIKER:"
	text "Nice BIKE!"
	line "How's it handle?"
	done

BikerEoinBeatenText:
	ntag "EOIN:"
	text "Shoot!"
	done

BikerEoinAfterBattleText:
	ntag "EOIN:"
	text "The slope makes"
	line "it hard to steer!"
	done


TrainerCyclistFritz:
	trainer CYCLIST, FRITZ, EVENT_BEAT_CYCLIST_FRITZ, CyclistFritzSeenText, CyclistFritzBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistFritzAfterBattleText

CyclistFritzSeenText:
	ntag "CYCLIST:"
	text "Be a rebel!"
	done

CyclistFritzBeatenText:
	ntag "FRITZ:"
	text "Aaaargh!"
	done

CyclistFritzAfterBattleText:
	ntag "CYCLIST:"
	text "Be ready to fight"
	line "for your beliefs!"
	done


TrainerBikerNolan:
	trainer BIKER, NOLAN, EVENT_BEAT_BIKER_NOLAN, BikerNolanSeenText, BikerNolanBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerNolanAfterBattleText

BikerNolanSeenText:
	ntag "BIKER:"
	text "Get lost kid!"
	line "I'm bushed!"
	done

BikerNolanBeatenText:
	ntag "NOLAN:"
	text "Are you satisfied?"
	done

BikerNolanAfterBattleText:
	ntag "BIKER:"
	text "I need to catch"
	line "a few Zs!"
	done


; bg text
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
	line "CYCLING ROAD"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
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
	object_event  7,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCyclistDustin, -1
	object_event  6, 21, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerMarkey, -1
	object_event 12, 17, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCyclistLyle, -1
	object_event  6, 33, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRiley, -1
	object_event 16, 31, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerTheron, -1
	object_event 17, 60, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCyclistDarius, -1
	object_event  4, 58, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCyclistJulien, -1
	object_event  6, 97, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerEoin, -1
	object_event 18, 91, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCyclistFritz, -1
	object_event 11, 114, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerNolan, -1
	object_event 18, 54, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route17SharpBeak, EVENT_ROUTE_17_SHARP_BEAK
	object_event 19, 111, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route17TMRollout, EVENT_ROUTE_17_TM_ROLLOUT
