	object_const_def

FastShipCabins_South_MapScripts:
	def_scene_scripts

	def_callbacks

; trainers
TrainerCooltrainerMAdam:
	trainer COOLTRAINERM, ADAM, EVENT_BEAT_COOLTRAINERM_ADAM, CooltrainerMAdamSeenText, CooltrainerMAdamBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMAdamAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMAdamSeenText:
	text "I'm on a trip to"
	line "test my skills at"
	cont "#MON GYMs all"
	roll "over the world!"
	done

CooltrainerMAdamBeatenText:
	text "I wanted to win!"
	done

CooltrainerMAdamAfterBattleText:
	text "A great trainer"
	line "should never stop"
	cont "striving to earn"
	roll "more GYM BADGEs!"
	done

TrainerGuitaristEdgar:
	trainer GUITARIST, EDGAR, EVENT_BEAT_GUITARIST_EDGAR, GuitaristEdgarSeenText, GuitaristEdgarBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GuitaristEdgarAfterBattleText
	waitbutton
	closetext
	end

GuitaristEdgarSeenText:
	text "We're going on"
	line "tour!"
	done

GuitaristEdgarBeatenText:
	text "Yowza!"
	line "Total distortion!"
	done

GuitaristEdgarAfterBattleText:
	text "Rock & Roll!"

	para "Trashing the room?"

	para "What are you"
	line "talking about?"
	done

TrainerJugglerRodney:
	trainer JUGGLER, RODNEY, EVENT_BEAT_JUGGLER_RODNEY, JugglerRodneySeenText, JugglerRodneyBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext JugglerRodneyAfterBattleText
	waitbutton
	closetext
	end

JugglerRodneySeenText:
	text "I'm in charge of"
	line "the pyrotechnics"
	cont "for our show!"
	done

JugglerRodneyBeatenText:
	text "Fizzle… The"
	line "flame's tiny…"
	done

JugglerRodneyAfterBattleText:
	text "I should have been"
	line "a FIREBREATHER."
	done

TrainerGentlemanVictor:
	trainer GENTLEMAN, VICTOR, EVENT_BEAT_GENTLEMAN_VICTOR, GentlemanVictorSeenText, GentlemanVictorBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanVictorAfterBattleText
	waitbutton
	closetext
	end

GentlemanVictorSeenText:
	text "Oh, no. I've lost"
	line "something that's"
	cont "very important."
	done

GentlemanVictorBeatenText:
	text "I… I can't find"
	line "it…"
	done

GentlemanVictorAfterBattleText:
	text "I give up."
	line "You don't have to"
	cont "look. Just forget"
	roll "about it!"
	done

TrainerBurglarJerry:
	trainer BURGLAR, JERRY, EVENT_BEAT_BURGLAR_JERRY, BurglarJerrySeenText, BurglarJerryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BurglarJerryAfterBattleText
	waitbutton
	closetext
	end

BurglarJerrySeenText:
	text "What do you mean"
	line "this isn't my room?"
	done

BurglarJerryBeatenText:
	text "I lost!"
	done

BurglarJerryAfterBattleText:
	text "This isn't your"
	line "room, either!"
	done

; npcs
FastShipCabinsSouthCooltrainerF:
	jumptextfaceplayer FastShipCabinsSouthCooltrainerFText
FastShipCabinsSouthCooltrainerFText:
	text "My partner is"
	line "always battling"
	cont "other trainers to"
	roll "test himself."

	para "But when I'm on a"
	line "trip, I just like"
	cont "to relax."
	done

FastShipCabinsSouthGentleman:
	jumptextfaceplayer FastShipCabinsSouthGentlemanText
FastShipCabinsSouthGentlemanText:
	text "I never had the"
	line "time to travel"
	cont "before I retired."
	done

; bg events
FastShipCabinsSouth_Trashcan:
	jumpstd TrashCanScript


FastShipCabins_South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FAST_SHIP_1F, 6
	warp_event 14,  7, FAST_SHIP_1F, 7
	warp_event 26,  7, FAST_SHIP_1F, 8
	warp_event 38,  7, FAST_SHIP_1F, 9
	warp_event  3,  7, FAST_SHIP_1F, 6
	warp_event 15,  7, FAST_SHIP_1F, 7
	warp_event 27,  7, FAST_SHIP_1F, 8
	warp_event 39,  7, FAST_SHIP_1F, 9

	def_coord_events

	def_bg_events
	bg_event  0,  2, BGEVENT_READ, FastShipCabinsSouth_Trashcan
	bg_event 18,  2, BGEVENT_READ, FastShipCabinsSouth_Trashcan
	bg_event 28,  2, BGEVENT_READ, FastShipCabinsSouth_Trashcan
	bg_event 42,  2, BGEVENT_READ, FastShipCabinsSouth_Trashcan

	def_object_events
	object_event  4,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMAdam, EVENT_FAST_SHIP_TRAINERS_1B
	object_event  2,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipCabinsSouthCooltrainerF, EVENT_FAST_SHIP_TRAINERS_1B
	object_event 16,  4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGuitaristEdgar, EVENT_FAST_SHIP_TRAINERS_2B
	object_event 13,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerRodney, EVENT_FAST_SHIP_TRAINERS_2B
	object_event 25,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, FastShipCabinsSouthGentleman, EVENT_FAST_SHIP_TRAINERS_3A
	object_event 28,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGentlemanVictor, EVENT_FAST_SHIP_TRAINERS_3B
	object_event 43,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerBurglarJerry, EVENT_FAST_SHIP_TRAINERS_4B
