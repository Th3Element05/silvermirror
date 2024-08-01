	object_const_def

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterAsher:
	trainer YOUNGSTER, ASHER, EVENT_BEAT_YOUNGSTER_ASHER, YoungsterAsherSeenText, YoungsterAsherBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterAsherAfterBattleText
	waitbutton
	closetext
	end

YoungsterAsherSeenText:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

YoungsterAsherBeatenText:
	text "I don't"
	line "believe it!"
	done

YoungsterAsherAfterBattleText:
	text "Are you storing"
	line "your #MON on"
	cont "PC? Each BOX can"
	cont "hold 20 #MON!"
	done

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterBattleText
	waitbutton
	closetext
	end

LassBridgetSeenText:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

LassBridgetBeatenText:
	text "Be nice!"
	done

LassBridgetAfterBattleText:
	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

TrainerBugCatcherAl:
	trainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAlAfterBattleText
	waitbutton
	closetext
	end

BugCatcherAlSeenText:
	text "Are you a trainer?"
	line "Let's fight!"
	done

BugCatcherAlBeatenText:
	text "If I had"
	line "new #MON I"
	cont "would've won!"
	done

BugCatcherAlAfterBattleText:
	text "If a #MON BOX"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another BOX!"
	done

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetext
	end

BugCatcherJoshSeenText:
	text "Hey! I just caught"
	line "new #MON in"
	cont "VIRIDIAN FOREST!"
	done

BugCatcherJoshBeatenText:
	text "I should train"
	line "some more!"
	done

BugCatcherJoshAfterBattleText:
	text "There are other"
	line "kinds of #MON"
	cont "than those found"
	cont "in the forest!"
	done

TrainerBugCatcherDion:
	trainer BUG_CATCHER, DION, EVENT_BEAT_BUG_CATCHER_DION, BugCatcherDionSeenText, BugCatcherDionBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDionAfterBattleText
	waitbutton
	closetext
	end

BugCatcherDionSeenText:
	text "You can fight my"
	line "new #MON!"
	done

BugCatcherDionBeatenText:
	text "Done"
	line "like dinner!"
	done

BugCatcherDionAfterBattleText:
	text "Trained #MON"
	line "are stronger than"
	cont "the wild ones!"
	done

TrainerLassColette:
	trainer LASS, COLETTE, EVENT_BEAT_LASS_COLETTE, LassColetteSeenText, LassColetteBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassColetteAfterBattleText
	waitbutton
	closetext
	end

LassColetteSeenText:
	text "Shouldn't you be"
	line "at school?"
	done

LassColetteBeatenText:
	text "You must have"
	line "studied #MON!"
	done

LassColetteAfterBattleText:
	text "There's always"
	line "more to learn"
	cont "about #MON!"
	done

TrainerYoungsterBilly:
	trainer YOUNGSTER, BILLY1, EVENT_BEAT_YOUNGSTER_BILLY, YoungsterBillySeenText, YoungsterBillyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterBillyAfterBattleText
	waitbutton
	closetext
	end

YoungsterBillySeenText:
	text "Hey! You're not"
	line "wearing shorts!"
	done

YoungsterBillyBeatenText:
	text "Lost!"
	line "Lost! Lost!"
	done

YoungsterBillyAfterBattleText:
	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

TrainerLassEvelyn:
	trainer LASS, EVELYN, EVENT_BEAT_LASS_EVELYN, LassEvelynSeenText, LassEvelynBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassEvelynAfterBattleText
	waitbutton
	closetext
	end

LassEvelynSeenText:
	text "Eek! Did you"
	line "touch me?"
	done

LassEvelynBeatenText:
	text "That's it?"
	done

LassEvelynAfterBattleText:
	text "ROUTE 4 is at the"
	line "foot of MT.MOON."
	done

Route3CooltrainerScript:
	jumptextfaceplayer Route3CooltrainerText
Route3CooltrainerText:
	text "Ouch! I tripped"
	line "over a rocky"
	cont "#MON, GEODUDE!"
	done

Route3SuperNerdScript:
	jumptextfaceplayer Route3SuperNerdText
Route3SuperNerdText:
	text "Whew... I better"
	line "take a rest..."
	cont "Groan..."

	para "That tunnel from"
	line "CERULEAN takes a"
	cont "lot out of you!"
	done

Route3MtMoonSign:
	jumptext Route3MtMoonSignText
Route3MtMoonSignText:
	text "MT.MOON"
	line "Tunnel Entrance"
	done

Route3Sign:
	jumptext Route3SignText
Route3SignText:
	text "ROUTE 3"
	line "MT.MOON AHEAD"
	done

Route3MtMoonPokecenterSign:
	jumpstd PokecenterSignScript

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 56,  5, MOUNT_MOON, 4
	warp_event 49,  5, MOUNT_MOON_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 55,  7, BGEVENT_READ, Route3MtMoonSign
	bg_event 49, 27, BGEVENT_READ, Route3Sign
	bg_event 50,  5, BGEVENT_READ, Route3MtMoonPokecenterSign

	def_object_events
	object_event 10, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterAsher, -1
	object_event 19, 22, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassBridget, -1
	object_event 15, 23, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherAl, -1
	object_event  6, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherJosh, -1
	object_event 20, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDion, -1
	object_event 12, 27, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassColette, -1
	object_event 18, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterBilly, -1
	object_event 27, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassEvelyn, -1
	object_event 47, 29, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route3SuperNerdScript, -1
	object_event 47,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route3CooltrainerScript, -1
