	object_const_def
	const ROUTE43_PERSIM_BERRY
	const ROUTE43_BLU_APRICORN

Route43_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route43Fruittrees

Route43Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_43_FRUIT
	iftrue .NoFruit
	appear ROUTE43_PERSIM_BERRY
	appear ROUTE43_BLU_APRICORN
.NoFruit:
	endcallback

; fruit
Route43_PersimBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, PERSIM_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem PERSIM_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE43_PERSIM_BERRY
	setflag ENGINE_DAILY_ROUTE_43_FRUIT
.NoRoomInBag
	closetext
	end

Route43_BLUApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, BLU_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem BLU_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE43_BLU_APRICORN
	setflag ENGINE_DAILY_ROUTE_43_FRUIT
.NoRoomInBag
	closetext
	end

Route43_NoFruit:
	farsjump Std_NoFruitScript

; trainers
TrainerPokemaniacMax:
	trainer POKEMANIAC, MAX, EVENT_BEAT_POKEMANIAC_MAX, PokemaniacMaxSeenText, PokemaniacMaxBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacMaxAfterBattleText
	waitbutton
	closetext
	end

PokemaniacMaxSeenText:
	text "I love #MON!"

	para "That's why I"
	line "started--and why"
	cont "I'll keep on col-"
	roll "lecting #MON!"
	done

PokemaniacMaxBeatenText:
	text "How could you do"
	line "this to me?"
	done

PokemaniacMaxAfterBattleText:
	text "What else do I"
	line "like besides"
	cont "#MON?"

	para "MARY on the radio."
	line "I bet she's cute!"
	done

TrainerPokemaniacJulius:
	trainer POKEMANIAC, JULIUS, EVENT_BEAT_POKEMANIAC_JULIUS, PokemaniacJuliusSeenText, PokemaniacJuliusBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacJuliusAfterBattleText
	waitbutton
	closetext
	end

PokemaniacJuliusSeenText:
	text "Hey! Do you have"
	line "any rare #MON?"
	done

PokemaniacJuliusBeatenText:
	text "Oh, my poor #-"
	line "MON! Darlings!"
	done

PokemaniacJuliusAfterBattleText:
	text "I'd be happy just"
	line "to own a single"
	cont "rare #MON."
	done

TrainerPicnickerMegan:
	trainer PICNICKER, MEGAN, EVENT_BEAT_PICNICKER_MEGAN, PicnickerMeganSeenText, PicnickerMeganBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerMeganAfterBattleText
	waitbutton
	closetext
	end

PicnickerMeganSeenText:
	text "Are you going to"
	line "LAKE OF RAGE too?"

	para "Let's play for a "
	line "little while!"
	done

PicnickerMeganBeatenText:
	text "I played too much!"
	done

PicnickerMeganAfterBattleText:
	text "I'm having a pic-"
	line "nic with #MON."

	para "Won't you join us?"
	done

TrainerCamperSpencer:
	trainer CAMPER, SPENCER, EVENT_BEAT_CAMPER_SPENCER, CamperSpencerSeenText, CamperSpencerBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperSpencerAfterBattleText
	waitbutton
	closetext
	end

CamperSpencerSeenText:
	text "I can do so much"
	line "with my #MON--"
	cont "it's super-fun!"
	done

CamperSpencerBeatenText:
	text "Losing isn't fun"
	line "at all…"
	done

CamperSpencerAfterBattleText:
	text "Are you going to"
	line "LAKE OF RAGE?"
;	text "What is going on"
;	line "at LAKE OF RAGE?"

	para "We were planning"
	line "to camp there."
	done

;TrainerPokemaniacRon:
;	trainer POKEMANIAC, RON, EVENT_BEAT_POKEMANIAC_RON, PokemaniacRonSeenText, PokemaniacRonBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext PokemaniacRonAfterBattleText
;	waitbutton
;	closetext
;	end

;PokemaniacRonSeenText:
;	text "Would you get"
;	line "this?"
;
;	para "Some guy made fun"
;	line "of my #MON!"
;
;	para "Darn it! My #-"
;	line "MON's great!"
;	done
;
;PokemaniacRonBeatenText:
;	text "My NIDOKING did"
;	line "pretty right on!"
;	done
;
;PokemaniacRonAfterBattleText:
;	text "It's okay for"
;	line "people to like"
;	cont "different types"
;	roll "of #MON."
;
;	para "#MON isn't just"
;	line "about having the"
;	cont "most powerful one."
;	done

;TrainerFisherMarvin:
;	trainer FISHER, MARVIN, EVENT_BEAT_FISHER_MARVIN, FisherMarvinSeenText, FisherMarvinBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext FisherMarvinAfterBattleText
;	waitbutton
;	closetext
;	end

;FisherMarvinSeenText:
;	text "I'm in a slump."
;
;	para "Maybe it's the"
;	line "gear I'm using."
;
;	para "Let's battle for a"
;	line "change of pace!"
;	done
;
;FisherMarvinBeatenText:
;	text "I lost, but I feel"
;	line "better anyway."
;	done
;
;FisherMarvinAfterBattleText:
;	text "KURT's LURE BALL"
;	line "is the best for"
;	cont "catching hooked"
;	roll "#MON."
;
;	para "It's much more"
;	line "effective than a"
;	cont "ULTRA BALL."
;	done

Route43Sign1:
Route43Sign2:
	jumptext Route43SignText
Route43SignText:
	text "ROUTE 43"

	para "LAKE OF RAGE -"
	line "MAHOGANY TOWN"
	done

Route43TrainerTips:
	jumptext Route43TrainerTipsText
Route43TrainerTipsText:
	text "TRAINER TIPS"

	para "All #MON have"
	line "pros and cons"
	cont "depending on their"
	roll "types."

	para "If their types"
	line "differ, a higher-"
	cont "level #MON may"
	roll "lose in battle."

	para "Learn which types"
	line "are strong and"
	cont "weak against your"
	roll "#MON's type."
	done

Route43MaxEther:
	itemball MAX_ETHER

Route43_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 51, ROUTE_43_MAHOGANY_GATE, 1
	warp_event 10, 51, ROUTE_43_MAHOGANY_GATE, 2
	warp_event 17, 35, ROUTE_43_GATE, 3
	warp_event 17, 31, ROUTE_43_GATE, 1
	warp_event 18, 31, ROUTE_43_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  1, 26, BGEVENT_READ, Route43_NoFruit
	bg_event  1, 25, BGEVENT_READ, Route43_NoFruit
	bg_event 13,  3, BGEVENT_READ, Route43Sign1
	bg_event 11, 49, BGEVENT_READ, Route43Sign2
	bg_event 16, 38, BGEVENT_READ, Route43TrainerTips

	def_object_events
	object_event  1, 26, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route43_PersimBerry, EVENT_ROUTE_43_PERSIM_BERRY
	object_event  1, 25, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route43_BLUApricorn, EVENT_ROUTE_43_BLU_APRICORN
	object_event 12,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacMax, -1 ;ben
	object_event 13, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacJulius, -1 ;brent
	object_event  9, 25, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerMegan, -1 ;tiffany
	object_event 13, 40, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperSpencer, -1 ;spencer
;	object_event 14,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacRon, -1 ;ron
;	object_event  4, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherMarvin, -1 ;marvin
	object_event 12, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route43MaxEther, EVENT_ROUTE_43_MAX_ETHER

;.PinkOverYellowOBPalette