	object_const_def
	const VIRIDIANFOREST_ORAN_BERRY
	const VIRIDIANFOREST_PECHA_BERRY

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, ViridianForestFruittrees

ViridianForestFruittrees:
.Berry:
	checkflag ENGINE_DAILY_VIRIDIAN_FOREST_FRUIT
	iftrue .NoFruit
	appear VIRIDIANFOREST_ORAN_BERRY
	appear VIRIDIANFOREST_PECHA_BERRY
.NoFruit:
	endcallback

; fruit
ViridianForest_OranBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, ORAN_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem ORAN_BERRY, 2
	iffalse .NoRoomInBag
	disappear VIRIDIANFOREST_ORAN_BERRY
	setflag ENGINE_DAILY_VIRIDIAN_FOREST_FRUIT
.NoRoomInBag
	closetext
	end

ViridianForest_PechaBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, PECHA_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem PECHA_BERRY, 2
	iffalse .NoRoomInBag
	disappear VIRIDIANFOREST_PECHA_BERRY
	setflag ENGINE_DAILY_VIRIDIAN_FOREST_FRUIT
.NoRoomInBag
	closetext
	end

ViridianForest_NoFruit:
	farsjump Std_NoFruitScript

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

; items
ViridianForestHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION

ViridianForestHiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE

ViridianForestAntidote:
	itemball ANTIDOTE

ViridianForestPotion:
	itemball POTION

ViridianForestPokeball:
	itemball POKE_BALL

ViridianForestSilverPowder:
	itemball SILVERPOWDER

ViridianForestTMSilverWind:
	itemball TM_SILVER_WIND

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  3, VIRIDIAN_FOREST_GATE_N, 3
	warp_event 16, 39, VIRIDIAN_FOREST_GATE_S, 1
	warp_event 17, 39, VIRIDIAN_FOREST_GATE_S, 2

	def_coord_events

	def_bg_events
	bg_event 21,  2, BGEVENT_READ, ViridianForest_NoFruit
	bg_event 23,  2, BGEVENT_READ, ViridianForest_NoFruit
	bg_event  4,  5, BGEVENT_READ, ViridianForestLeavingSign
	bg_event 24, 14, BGEVENT_READ, ViridianForestTrainerTips2
	bg_event  4, 20, BGEVENT_READ, ViridianForestTrainerTips3
	bg_event 16, 26, BGEVENT_READ, ViridianForestUseAntidoteSign
	bg_event 24, 32, BGEVENT_READ, ViridianForestTrainerTips1
	bg_event 18, 37, BGEVENT_READ, ViridianForestTrainerTips4
	bg_event  1, 15, BGEVENT_ITEM, ViridianForestHiddenPotion
	bg_event 16, 34, BGEVENT_ITEM, ViridianForestHiddenAntidote

	def_object_events
	object_event 21,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForest_OranBerry, EVENT_VIRIDIAN_FOREST_ORAN_BERRY
	object_event 23,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, ViridianForest_PechaBerry, EVENT_VIRIDIAN_FOREST_PECHA_BERRY
	object_event 16, 35, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestYoungster1, -1
	object_event 27, 32, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForestYoungster2, -1
	object_event  2, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherBenny, -1
	object_event 28, 17, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherEd, -1
	object_event 30, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherRob, -1
	object_event 24, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestAntidote, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	object_event 11, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion, EVENT_VIRIDIAN_FOREST_POTION
	object_event  2, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPokeball, EVENT_VIRIDIAN_FOREST_POKE_BALL
	object_event 16, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestSilverPowder, EVENT_VIRIDIAN_FOREST_SILVER_POWDER
	object_event 19, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, ViridianForestTMSilverWind, EVENT_VIRIDIAN_FOREST_TM_SILVER_WIND

;.PinkOverYellowOBPalette