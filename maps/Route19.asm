	object_const_def

Route19_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerMSimon:
	trainer SWIMMERM, SIMON, EVENT_BEAT_SWIMMERM_SIMON, SwimmerMSimonSeenText, SwimmerMSimonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMSimonAfterBattleText
	waitbutton
	closetext
	end

SwimmerMSimonSeenText:
	text "Have to warm up"
	line "before my swim!"
	done

SwimmerMSimonBeatenText:
	text "All warmed up!"
	done

SwimmerMSimonAfterBattleText:
	text "Thanks, kid! I'm"
	line "ready for a swim!"
	done

TrainerSwimmerMRandall:
	trainer SWIMMERM, RANDALL, EVENT_BEAT_SWIMMERM_RANDALL, SwimmerMRandallSeenText, SwimmerMRandallBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMRandallAfterBattleText
	waitbutton
	closetext
	end

SwimmerMRandallSeenText:
	text "Wait! You'll have"
	line "a heart attack!"
	done

SwimmerMRandallBeatenText:
	text "Ooh!"
	line "That's chilly!"
	done

SwimmerMRandallAfterBattleText:
	text "Watch out for"
	line "TENTACOOL!"
	done

TrainerSwimmerMCharlie:
	trainer SWIMMERM, CHARLIE, EVENT_BEAT_SWIMMERM_CHARLIE, SwimmerMCharlieSeenText, SwimmerMCharlieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMCharlieAfterBattleText
	waitbutton
	closetext
	end

SwimmerMCharlieSeenText:
	text "I look at the"
	line "sea to forget!"
	done

SwimmerMCharlieBeatenText:
	text "Ooh!"
	line "Traumatic!"
	done

SwimmerMCharlieAfterBattleText:
	text "I'm looking at the"
	line "sea to forget!"
	done

TrainerSwimmerMGeorge:
	trainer SWIMMERM, GEORGE, EVENT_BEAT_SWIMMERM_GEORGE, SwimmerMGeorgeSeenText, SwimmerMGeorgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMGeorgeAfterBattleText
	waitbutton
	closetext
	end

SwimmerMGeorgeSeenText:
	text "I love swimming!"
	line "What about you?"
	done

SwimmerMGeorgeBeatenText:
	text "Belly flop!"
	done

SwimmerMGeorgeAfterBattleText:
	text "I can beat #MON"
	line "at swimming!"
	done

TrainerSwimmerMBerke:
	trainer SWIMMERM, BERKE, EVENT_BEAT_SWIMMERM_BERKE, SwimmerMBerkeSeenText, SwimmerMBerkeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMBerkeAfterBattleText
	waitbutton
	closetext
	end

SwimmerMBerkeSeenText:
	text "What's beyond the"
	line "horizon?"
	done

SwimmerMBerkeBeatenText:
	text "Glub!"
	done

SwimmerMBerkeAfterBattleText:
	text "I see a couple of"
	line "islands!"
	done

TrainerSwimmerMKirk:
	trainer SWIMMERM, KIRK, EVENT_BEAT_SWIMMERM_KIRK, SwimmerMKirkSeenText, SwimmerMKirkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMKirkAfterBattleText
	waitbutton
	closetext
	end

SwimmerMKirkSeenText:
	text "I tried diving"
	line "for #MON, but"
	cont "it was a no go!"
	done

SwimmerMKirkBeatenText:
	text "Help!"
	done

SwimmerMKirkAfterBattleText:
	text "You have to fish"
	line "for sea #MON!"
	done

TrainerSwimmerMMatthew:
	trainer SWIMMERM, MATTHEW, EVENT_BEAT_SWIMMERM_MATTHEW, SwimmerMMatthewSeenText, SwimmerMMatthewBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMMatthewAfterBattleText
	waitbutton
	closetext
	end

SwimmerMMatthewSeenText:
	text "These waters are"
	line "treacherous!"
	done

SwimmerMMatthewBeatenText:
	text "Ooh!"
	line "Dangerous!"
	done

SwimmerMMatthewAfterBattleText:
	text "I got a cramp!"
	line "Glub, glub..."
	done

TrainerSwimmerFElaine:
	trainer SWIMMERF, ELAINE, EVENT_BEAT_SWIMMERF_ELAINE, SwimmerFElaineSeenText, SwimmerFElaineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFElaineAfterBattleText
	waitbutton
	closetext
	end

SwimmerFElaineSeenText:
	text "Oh, I just love"
	line "your ride! Can I"
	cont "have it if I win?"
	done

SwimmerFElaineBeatenText:
	text "Oh!"
	line "I lost!"
	done

SwimmerFElaineAfterBattleText:
	text "It's still a long"
	line "way to go to"
	cont "SEAFOAM ISLANDS."
	done

TrainerSwimmerFPaula:
	trainer SWIMMERF, PAULA, EVENT_BEAT_SWIMMERF_PAULA, SwimmerFPaulaSeenText, SwimmerFPaulaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFPaulaAfterBattleText
	waitbutton
	closetext
	end

SwimmerFPaulaSeenText:
	text "Swimming's great!"
	line "Sunburns aren't!"
	done

SwimmerFPaulaBeatenText:
	text "Shocker!"
	done

SwimmerFPaulaAfterBattleText:
	text "My boy friend"
	line "wanted to swim to"
	cont "SEAFOAM ISLANDS."
	done

TrainerSwimmerFKaylee:
	trainer SWIMMERF, KAYLEE, EVENT_BEAT_SWIMMERF_KAYLEE, SwimmerFKayleeSeenText, SwimmerFKayleeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFKayleeAfterBattleText
	waitbutton
	closetext
	end

SwimmerFKayleeSeenText:
	text "I swam here, but"
	line "I'm tired."
	done

SwimmerFKayleeBeatenText:
	text "I'm exhausted..."
	done

SwimmerFKayleeAfterBattleText:
	text "LAPRAS is so big,"
	line "it must keep you"
	cont "dry on water."
	done

Route19Sign:
	jumptext Route19SignText
Route19SignText:
	text "SEA ROUTE 19"
	line "FUCHSIA CITY -"
	cont "SEAFOAM ISLANDS"
	done

Route19_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  3, ROUTE_19_FUCHSIA_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 11, 13, BGEVENT_READ, Route19Sign

	def_object_events
	object_event  8, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMSimon, -1
	object_event 13, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMRandall, -1
	object_event  9, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMCharlie, -1
	object_event 13, 25, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMGeorge, -1
	object_event  4, 27, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMBerke, -1
	object_event 15, 31, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMKirk, -1
	object_event  9, 39, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMMatthew, -1
	object_event  8, 40, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerSwimmerFElaine, -1
	object_event 11, 40, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmerFPaula, -1
	object_event 10, 41, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmerFKaylee, -1
