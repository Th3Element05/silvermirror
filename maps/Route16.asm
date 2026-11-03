	object_const_def
	const ROUTE16_SITRUS_BERRY
	const ROUTE16_SNORLAX

Route16_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback
	callback MAPCALLBACK_OBJECTS, Route16Fruittrees

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 10, .CanWalk
	readvar VAR_XCOORD
	ifgreater 21, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

; fruit
Route16Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_16_FRUIT
	iftrue .NoFruit
	appear ROUTE16_SITRUS_BERRY
.NoFruit:
	endcallback

Route16_SitrusBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, SITRUS_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	giveitem SITRUS_BERRY, 2
	iffalse .Route16_NoRoomInBag
	farwritetext _PickedBerriesText
	disappear ROUTE16_SITRUS_BERRY
	setflag ENGINE_DAILY_ROUTE_16_FRUIT
	playsound SFX_ITEM
	waitsfx
	promptbutton
	farwritetext _BerriesInBerryPocketText
	waitbutton
	closetext
	end

.Route16_NoRoomInBag:
	farwritetext _FruitPackIsFullText
	waitbutton
	closetext
	end

Route16_NoFruit:
	farsjump Std_NoFruitScript


; scripts
Route16Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .PlayRadio
	checkitem POKE_FLUTE
	iftrue .PlayPokeFlute
	farwritetext Route11_SnorlaxSleepingText
	waitbutton
	closetext
	end

.PlayPokeFlute:
	farwritetext Route11_PlayPokeFluteAskText
	yesorno
	iftrue Route16SnorlaxBattleScript
	farwritetext Route11_LetSnorlaxSleepText
	waitbutton
	closetext
	end

.PlayRadio:
	farwritetext Route11_RadioNearSnorlaxText
	promptbutton
	sjump Route16RadioWakesSnorlax

Route16SnorlaxBattleScript:: ;export for pokeflute from pack
	special FadeOutMusic
	farwritetext Route11_PlayPokeFluteText
	playsound SFX_POKEFLUTE
	waitsfx
Route16RadioWakesSnorlax:
	farwritetext Route11_SnorlaxWokeUpText
	promptbutton
	pause 15
	cry SNORLAX
	farwritetext Route11_SnorlaxAttackedText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 30
	startbattle
	reloadmapafterbattle
	disappear ROUTE16_SNORLAX
	setevent EVENT_WOKE_SNORLAX
;	reloadmappart
	special CheckBattleCaughtResult
	iftrue .caught
	opentext
	farwritetext Route11_SnorlaxWentHomeText
	waitbutton
	closetext
.caught
	checkevent EVENT_ROUTE_12_SNORLAX
	iffalse .notboth
	setflag ENGINE_PLAYER_WOKE_BOTH_SNORLAX
.notboth
	end

;Route16SnorlaxSleepingText:
;	text "A sleeping #MON"
;	line "blocks the way!"
;	done
;
;Route16RadioNearSnorlaxText:
;	text "SNORLAX can hear"
;	line "the music from"
;	cont "the #GEAR."
;
;	para "…"
;	done
;
;Route16PlayPokeFluteAskText:
;	text "SNORLAX is sound"
;	line "asleep."
;	
;	para "Will you play the"
;	line "#FLUTE?"
;	done
;
;Route16PlayPokeFluteText:
;	text "<PLAYER> played"
;	line "the #FLUTE for"
;	cont "SNORLAX!"
;	done
;
;Route16SnorlaxWokeUpText:
;	text "SNORLAX woke up!"
;	done
;
;Route16SnorlaxAttackedText:
;	text "It attacked in a"
;	line "grumpy rage!"
;	done
;
;Route16LetSnorlaxSleepText:
;	text "<PLAYER> let the"
;	line "SNORLAX sleep."
;	done
;
;Route16SnorlaxWentHomeText:
;	text "SNORLAX calmed"
;	line "down! With a big"
;	cont "yawn, it returned"
;	roll "to the mountains!"
;	done


TrainerBikerAiden:
	trainer BIKER, AIDEN1, EVENT_BEAT_BIKER_AIDEN, BikerAidenSeenText, BikerAidenBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	jumptextfaceplayer BikerAidenAfterBattleText

	loadvar VAR_CALLERID, PHONE_BIKER_AIDEN
	opentext
	checkflag ENGINE_AIDEN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIKER_AIDEN
	iftrue .AidenDefeated
	checkevent EVENT_AIDEN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
;	writetext BikerAidenAfterBattleText
;	waitbutton
	setevent EVENT_AIDEN_ASKED_FOR_PHONE_NUMBER
	scall Route17AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route17AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BIKER_AIDEN
	ifequal PHONE_CONTACTS_FULL, Route17PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route17NumberDeclined
	gettrainername STRING_BUFFER_3, BIKER, AIDEN1
	scall Route17RegisteredNumber
	jump Route17NumberAccepted

.WantsBattle:
	scall Route17Rematch
	winlosstext BikerAidenBeatenText, 0
	loadtrainer BIKER, AIDEN_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer BIKER, AIDEN_2
	readvar VAR_BADGES
	ifgreater 3, .LoadFight ;4_BADGES
	loadtrainer BIKER, AIDEN1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_AIDEN_READY_FOR_REMATCH
	end

.AidenDefeated:
	writetext BikerAidenAfterBattleText
	waitbutton
	closetext
	end

;Route17AskNumber1:
;	jumpstd AskNumber1MScript
;	end
;
;Route17AskNumber2:
;	jumpstd AskNumber2MScript
;	end
;
;Route17RegisteredNumber:
;	jumpstd RegisteredNumberMScript
;	end
;
;Route17NumberAccepted:
;	jumpstd NumberAcceptedMScript
;	end
;
;Route17NumberDeclined:
;	jumpstd NumberDeclinedMScript
;	end
;
;Route17PhoneFull:
;	jumpstd PhoneFullMScript
;	end
;
;Route17Rematch:
;	jumpstd RematchMScript
;	end

BikerAidenSeenText:
	ntag "BIKER:"
	text "Hey, who told you"
	line "you could ride up"
	cont "and down this"
	roll "road?"
	done

BikerAidenBeatenText:
	ntag "AIDEN:"
	text "Crash!"
	done

BikerAidenAfterBattleText:
	ntag "AIDEN:"
	text "See you later!"
	line "Come back anytime!"
	done


TrainerCyclistOtis:
	trainer CYCLIST, OTIS, EVENT_BEAT_CYCLIST_OTIS, CyclistOtisSeenText, CyclistOtisBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistOtisAfterBattleText

CyclistOtisSeenText:
	ntag "CYCLIST:"
	text "I'm feeling"
	line "hungry!"
	done

CyclistOtisBeatenText:
	ntag "OTIS:"
	text "Bad, bad, bad!"
	done

CyclistOtisAfterBattleText:
	ntag "CYCLIST:"
	text "My #MON are"
	line "ravenous!"
	cont "They chew through"
	roll "enemies!"
	done


TrainerBikerJoseph:
	trainer BIKER, JOSEPH, EVENT_BEAT_BIKER_JOSEPH, BikerJosephSeenText, BikerJosephBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerJosephAfterBattleText

BikerJosephSeenText:
	ntag "BIKER:"
	text "Hey, you just"
	line "bumped me!"
	done

BikerJosephBeatenText:
	ntag "JOSEPH:"
	text "Kaboom!"
	done

BikerJosephAfterBattleText:
	ntag "BIKER:"
	text "I could belly-"
	line "bump you outta"
	cont "here!"
	done


TrainerCyclistBurt:
	trainer CYCLIST, BURT, EVENT_BEAT_CYCLIST_BURT, CyclistBurtSeenText, CyclistBurtBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistBurtAfterBattleText

CyclistBurtSeenText:
	ntag "CYCLIST:"
	text "Come out to play,"
	line "little mouse!"
	done

CyclistBurtBeatenText:
	ntag "BURT:"
	text "You little rat!"
	done

CyclistBurtAfterBattleText:
	ntag "CYCLIST:"
	text "I hate losing!"
	line "Get away from me!"
	done


TrainerCyclistFinnley:
	trainer CYCLIST, FINNLEY, EVENT_BEAT_CYCLIST_FINNLEY, CyclistFinnleySeenText, CyclistFinnleyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer CyclistFinnleyAfterBattleText

CyclistFinnleySeenText:
	ntag "CYCLIST:"
	text "Nice BIKE!"
	done

CyclistFinnleyBeatenText:
	ntag "FINNLEY:"
	text "Knock out!"
	done

CyclistFinnleyAfterBattleText:
	ntag "CYCLIST:"
	text "I like my BIKE"
	line "better!"
	done


TrainerBikerTeddy:
	trainer BIKER, TEDDY, EVENT_BEAT_BIKER_TEDDY, BikerTeddySeenText, BikerTeddyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerTeddyAfterBattleText

BikerTeddySeenText:
	ntag "BIKER:"
	text "What do you want?"
	done

BikerTeddyBeatenText:
	ntag "TEDDY:"
	text "Don't you"
	line "dare laugh!"
	done

BikerTeddyAfterBattleText:
	ntag "BIKER:"
	text "We like just"
	line "hanging here,"
	cont "what's it to you?"
	done


; itemballs
Route16TMAerialAce:
	itemball TM_AERIAL_ACE


; signs
CyclingRoadSign:
	jumptext CyclingRoadSignText
CyclingRoadSignText:
	text "CYCLING ROAD"

	para "DOWNHILL COASTING"
	line "ALL THE WAY!"
	done

Route16Sign:
	jumptext Route16SignText
Route16SignText:
	text "ROUTE 16"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
	done


Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  7, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event 24, 12, ROUTE_16_GATE, 3
	warp_event 24, 13, ROUTE_16_GATE, 4
	warp_event 19, 12, ROUTE_16_GATE, 1
	warp_event 19, 13, ROUTE_16_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 25,  5, BGEVENT_READ, Route16_NoFruit
	bg_event 29, 13, BGEVENT_READ, CyclingRoadSign
	bg_event  7, 19, BGEVENT_READ, Route16Sign

	def_object_events
	object_event 25,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route16_SitrusBerry, EVENT_ROUTE_16_SITRUS_BERRY
	object_event 26, 12, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Snorlax, EVENT_ROUTE_16_SNORLAX
	object_event  5, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerAiden, -1
	object_event  8, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCyclistOtis, -1
	object_event 11, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBikerJoseph, -1
	object_event 13, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCyclistBurt, -1
	object_event 16, 15, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCyclistFinnley, -1
	object_event 19, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerTeddy, -1
	object_event  6,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route16TMAerialAce, EVENT_ROUTE_16_TM_AERIAL_ACE
