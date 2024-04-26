	object_const_def
	const VIRIDIAN_FOREST_BERRY
	const VIRIDIAN_FOREST_APRICORN
;	const VIRIDIAN_FOREST_POKE_BALL1
;	const VIRIDIAN_FOREST_POKE_BALL2
;	const VIRIDIAN_FOREST_POKE_BALL3

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Fruittrees

.Fruittrees
.Berry:
	checkflag ENGINE_DAILY_VIRIDIAN_FOREST_BERRY
	iftrue .NoBerry
	appear VIRIDIAN_FOREST_BERRY
.NoBerry:
	;fallthrough

.Apricorn:
	checkflag ENGINE_DAILY_VIRIDIAN_FOREST_APRICORN
	iftrue .NoApricorn
	appear VIRIDIAN_FOREST_APRICORN
.NoApricorn:
	endcallback

ViridianForestBerryTree:
	opentext
	writetext ViridianForestBerryTreeText
	promptbutton
	writetext ViridianForestHeyItsBerryText
	promptbutton
	verbosegiveitem PECHA_BERRY
	iffalse .NoRoomInBag
	disappear VIRIDIAN_FOREST_BERRY
	setflag ENGINE_DAILY_VIRIDIAN_FOREST_BERRY
.NoRoomInBag
	closetext
	end

ViridianForestApricornTree:
	opentext
	writetext ViridianForestApricornTreeText
	promptbutton
	writetext ViridianForestHeyItsApricornText
	promptbutton
	verbosegiveitem PNK_APRICORN
	iffalse .NoRoomInBag
	disappear VIRIDIAN_FOREST_APRICORN
	setflag ENGINE_DAILY_VIRIDIAN_FOREST_APRICORN
.NoRoomInBag
	closetext
	end

ViridianForestNoBerry:
	opentext
	writetext ViridianForestBerryTreeText
	promptbutton
	writetext ViridianForestNothingHereText
	waitbutton
	closetext
	end

ViridianForestNoApricorn:
	opentext
	writetext ViridianForestApricornTreeText
	promptbutton
	writetext ViridianForestNothingHereText
	waitbutton
	closetext
	end

; trainers
TrainerBugCatcherBenny:
	trainer BUG_CATCHER, BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherBennyAfterBattleText
	waitbutton
	closetext
	end

BugCatcherBennySeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

BugCatcherBennyBeatenText:
	text "I"
	line "give! You're good"
	cont "at this!"
	done

BugCatcherBennyAfterBattleText:
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"
	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

TrainerBugCatcherEd:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcherEdSeenText, BugCatcherEdBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEdAfterBattleText
	waitbutton
	closetext
	end

BugCatcherEdSeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

BugCatcherEdBeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	done

BugCatcherEdAfterBattleText:
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

TrainerBugCatcherRob:
	trainer BUG_CATCHER, ROB1, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcherRobSeenText, BugCatcherRobBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRobAfterBattleText
	waitbutton
	closetext
	end

BugCatcherRobSeenText:
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle'em!"
	done

BugCatcherRobBeatenText:
	text "No!"
	line "CATERPIE can't"
	cont "cut it!"
	done

BugCatcherRobAfterBattleText:
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

; npc
ViridianForestYoungster1:
	jumptextfaceplayer ViridianForestYoungster1Text
ViridianForestYoungster1Text:
	text "I came here with"
	line "some friends!"
	para "They're out for"
	line "#MON fights!"
	done

ViridianForestYoungster2:
	jumptextfaceplayer ViridianForestYoungster2Text
ViridianForestYoungster2Text:
	text "I ran out of #"
	line "BALLs to catch"
	cont "#MON with!"
	para "You should carry"
	line "extras!"
	done

; bg text
ViridianForestTrainerTips1:
	jumptext ViridianForestTrainerTips1Text
ViridianForestTrainerTips1Text:
	text "TRAINER TIPS"

	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

ViridianForestUseAntidoteSign:
	jumptext ViridianForestUseAntidoteSignText
ViridianForestUseAntidoteSignText:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

ViridianForestTrainerTips2:
	jumptext ViridianForestTrainerTips2Text
ViridianForestTrainerTips2Text:
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

ViridianForestTrainerTips3:
	jumptext ViridianForestTrainerTips3Text
ViridianForestTrainerTips3Text:
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#MON!"
	done

ViridianForestTrainerTips4:
	jumptext ViridianForestTrainerTips4Text
ViridianForestTrainerTips4Text:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

ViridianForestLeavingSign:
	jumptext ViridianForestLeavingSignText
ViridianForestLeavingSignText:
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done

ViridianForestBerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

ViridianForestHeyItsBerryText:
	text "Hey! It's"
	line "PECHA BERRY!"
	done

ViridianForestApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

ViridianForestHeyItsApricornText:
	text "Hey! It's"
	line "PNK APRICORN!"
	done

ViridianForestNothingHereText:
	text "There's nothing"
	line "here…"
	done

; items
ViridianForestAntidote:
	itemball ANTIDOTE

ViridianForestPotion:
	itemball POTION

ViridianForestPokeball:
	itemball POKE_BALL

; hidden items
ViridianForestHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION

ViridianForestHiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, VIRIDIAN_FOREST_GATE_N, 3
	warp_event 16, 51, VIRIDIAN_FOREST_GATE_S, 1
	warp_event 17, 51, VIRIDIAN_FOREST_GATE_S, 2

	def_coord_events

	def_bg_events
	bg_event 17,  6, BGEVENT_READ, ViridianForestNoBerry
	bg_event 31,  6, BGEVENT_READ, ViridianForestNoApricorn
	bg_event  2,  5, BGEVENT_READ, ViridianForestLeavingSign
	bg_event 26, 21, BGEVENT_READ, ViridianForestTrainerTips2
	bg_event  4, 28, BGEVENT_READ, ViridianForestTrainerTips3
	bg_event 16, 36, BGEVENT_READ, ViridianForestUseAntidoteSign
	bg_event 24, 44, BGEVENT_READ, ViridianForestTrainerTips1
	bg_event 18, 49, BGEVENT_READ, ViridianForestTrainerTips4
	bg_event  1, 22, BGEVENT_ITEM, ViridianForestHiddenPotion
	bg_event 16, 46, BGEVENT_ITEM, ViridianForestHiddenAntidote

	def_object_events
	object_event 17,  6, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ViridianForestBerryTree, EVENT_VIRIDIAN_FOREST_BERRY
	object_event 31,  6, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ViridianForestApricornTree, EVENT_VIRIDIAN_FOREST_APRICORN
	object_event 16, 47, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestYoungster1, -1
	object_event 27, 44, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestYoungster2, -1
	object_event  2, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherBenny, -1
	object_event 30, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherEd, -1
	object_event 30, 37, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherRob, -1
	object_event 25, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestAntidote, EVENT_VIRIDIAN_FOREST_ANTIDOTE ; EVENT_VIRIDIAN_FOREST_MAX_ETHER
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion, EVENT_VIRIDIAN_FOREST_POTION ; EVENT_VIRIDIAN_FOREST_MAX_POTION
	object_event  1, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPokeball, EVENT_VIRIDIAN_FOREST_POKE_BALL ; EVENT_VIRIDIAN_FOREST_LEAF_STONE
