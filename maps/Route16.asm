	object_const_def
	const ROUTE16_SNORLAX

Route16_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 10, .CanWalk
	readvar VAR_XCOORD
	ifgreater 17, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

Route16Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .PlayRadio
	checkitem POKE_FLUTE
	iftrue .PlayPokeFlute
	writetext Route16SnorlaxSleepingText
	waitbutton
	closetext
	end

.PlayPokeFlute:
	writetext Route16PlayPokeFluteAskText
	yesorno
	iffalse .LetSleep
	writetext Route16PlayPokeFluteText
	special FadeOutMusic
	playsound SFX_POKEFLUTE
	waitsfx
	writetext Route16SnorlaxWokeUpText
	promptbutton
	sjump Route16SnorlaxBattleScript

.LetSleep:
	jumptext Route16LetSnorlaxSleepText

.PlayRadio:
	writetext Route16RadioNearSnorlaxText
	promptbutton
	writetext Route16SnorlaxWokeUpText
	promptbutton
	; fallthrough

Route16SnorlaxBattleScript:
	pause 15
	cry SNORLAX
	writetext Route16SnorlaxAttackedText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 32
	startbattle
	reloadmapafterbattle
	disappear ROUTE12_SNORLAX
	setevent EVENT_WOKE_SNORLAX
;	reloadmappart
	special CheckBattleCaughtResult
	iffalse .nocatch
	setflag ENGINE_PLAYER_CAUGHT_SNORLAX
	end
	
.nocatch
	opentext
	writetext Route16SnorlaxWentHomeText
	waitbutton
	closetext
	end

Route16SnorlaxSleepingText:
	text "A sleeping #MON"
	line "blocks the way!"
	done

Route16PlayPokeFluteAskText:
	text "SNORLAX is sound"
	line "asleep."
	
	para "Play the"
	line "# FLUTE?"
	done

Route16PlayPokeFluteText:
	text "<PLAYER> played"
	line "the # FLUTE!"
;	cont "for SNORLAX!"
	done

Route16RadioNearSnorlaxText:
	text "SNORLAX can hear"
	line "the music from"
	cont "<PLAYER>'s #GEAR."

	para "…"
	done

Route16SnorlaxWokeUpText:
	text "SNORLAX woke up!"
	done

Route16SnorlaxAttackedText:
	text "It attacked in a"
	line "grumpy rage!"
	done

Route16LetSnorlaxSleepText:
	text "<PLAYER> let the"
	line "SNORLAX sleep."
	done

Route16SnorlaxWentHomeText:
	text "SNORLAX calmed"
	line "down! With a big"
	cont "yawn, it returned"
	cont "to the mountains!"
	done

TrainerBikerAiden:
	trainer BIKER, AIDEN1, EVENT_BEAT_BIKER_AIDEN, BikerAidenSeenText, BikerAidenBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerAidenAfterBattleText

BikerAidenSeenText:
	text "Sure, I'll go!"
	done

BikerAidenBeatenText:
	text "Don't make"
	line "me mad!"
	done

BikerAidenAfterBattleText:
	text "I like harassing"
	line "people with my"
	cont "vicious #MON!"
	done

TrainerJugglerOtis:
	trainer JUGGLER, OTIS, EVENT_BEAT_JUGGLER_OTIS, JugglerOtisSeenText, JugglerOtisBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerOtisAfterBattleText

JugglerOtisSeenText:
	text "I'm feeling"
	line "hungry and mean!"
	done

JugglerOtisBeatenText:
	text "Bad,"
	line "bad, bad!"
	done

JugglerOtisAfterBattleText:
	text "I like my #MON"
	line "ferocious! They"
	cont "tear up enemies!"
	done

TrainerBikerJoseph:
	trainer BIKER, JOSEPH, EVENT_BEAT_BIKER_JOSEPH, BikerJosephSeenText, BikerJosephBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerJosephAfterBattleText

BikerJosephSeenText:
	text "Hey, you just"
	line "bumped me!"
	done

BikerJosephBeatenText:
	text "Kaboom!"
	done

BikerJosephAfterBattleText:
	text "You can also get"
	line "to FUCHSIA from"
	cont "VERMILION using a"
	cont "coastal road."
	done

TrainerJugglerBurt:
	trainer JUGGLER, BURT, EVENT_BEAT_JUGGLER_BURT, JugglerBurtSeenText, JugglerBurtBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerBurtAfterBattleText

JugglerBurtSeenText:
	text "Come out and play,"
	line "little mouse!"
	done

JugglerBurtBeatenText:
	text "You"
	line "little rat!"
	done

JugglerBurtAfterBattleText:
	text "I hate losing!"
	line "Get away from me!"
	done

TrainerJugglerFinnley:
	trainer JUGGLER, FINNLEY, EVENT_BEAT_JUGGLER_FINNLEY, JugglerFinnleySeenText, JugglerFinnleyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer JugglerFinnleyAfterBattleText

JugglerFinnleySeenText:
	text "Nice BIKE!"
	line "Hand it over!"
	done

JugglerFinnleyBeatenText:
	text "Knock out!"
	done

JugglerFinnleyAfterBattleText:
	text "Forget it, who"
	line "needs your BIKE!"
	done

TrainerBikerTeddy:
	trainer BIKER, TEDDY, EVENT_BEAT_BIKER_TEDDY, BikerTeddySeenText, BikerTeddyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerTeddyAfterBattleText

BikerTeddySeenText:
	text "What do you want?"
	done

BikerTeddyBeatenText:
	text "Don't you"
	line "dare laugh!"
	done

BikerTeddyAfterBattleText:
	text "We like just"
	line "hanging here,"
	cont "what's it to you?"
	done

; itemballs
Route16SharpBeak:
	itemball SHARP_BEAK

Route16TMSleepTalk:
	itemball TM_SLEEP_TALK

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
	line "CELADON CITY -"
	cont "FUCHSIA CITY"
	done

Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event 22, 12, ROUTE_16_GATE, 3
	warp_event 22, 13, ROUTE_16_GATE, 4
	warp_event 17, 12, ROUTE_16_GATE, 1
	warp_event 17, 13, ROUTE_16_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 27, 13, BGEVENT_READ, CyclingRoadSign
	bg_event  5, 19, BGEVENT_READ, Route16Sign

	def_object_events
	object_event 24, 12, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Snorlax, EVENT_ROUTE_16_SNORLAX
	object_event  3, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerAiden, -1
	object_event  6, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerOtis, -1
	object_event  9, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBikerJoseph, -1
	object_event 11, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerBurt, -1
	object_event 14, 15, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerFinnley, -1
	object_event 17, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerTeddy, -1
	object_event  4,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route16SharpBeak, EVENT_ROUTE_16_SHARP_BEAK
	object_event 19, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route16TMSleepTalk, EVENT_ROUTE_16_TM_SLEEP_TALK
