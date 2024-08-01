	object_const_def

Route14_MapScripts:
	def_scene_scripts

	def_callbacks

;Kim:
;	faceplayer
;	opentext
;	trade NPC_TRADE_KIM
;	waitbutton
;	closetext
;	end

TrainerBikerHarris:
	trainer BIKER, HARRIS, EVENT_BEAT_BIKER_HARRIS, BikerHarrisSeenText, BikerHarrisBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerHarrisAfterBattleText

BikerHarrisSeenText:
	text "Perfect! I need to"
	line "burn some time!"
	done

BikerHarrisBeatenText:
	text "What?"
	line "You!?"
	done

BikerHarrisAfterBattleText:
	text "Raising #MON"
	line "is a drag, man."
	done

TrainerBikerZeke:
	trainer BIKER, ZEKE, EVENT_BEAT_BIKER_ZEKE, BikerZekeSeenText, BikerZekeBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerZekeAfterBattleText

BikerZekeSeenText:
	text "We ride out here"
	line "because there's"
	cont "more room!"
	done

BikerZekeBeatenText:
	text "Wipe out!"
	done

BikerZekeAfterBattleText:
	text "It's cool you"
	line "made your #MON"
	cont "so strong!"

	para "Might is right!"
	line "And you know it!"
	done

TrainerBikerCharles:
	trainer BIKER, CHARLES, EVENT_BEAT_BIKER_CHARLES, BikerCharlesSeenText, BikerCharlesBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerCharlesAfterBattleText

BikerCharlesSeenText:
	text "#MON fight?"
	line "Cool! Rumble!"
	done

BikerCharlesBeatenText:
	text "Blown away!"
	done

BikerCharlesAfterBattleText:
	text "You know who'd"
	line "win, you and me"
	cont "one on one!"
	done

TrainerBirdKeeperHank:
	trainer BIRD_KEEPER, HANK, EVENT_BEAT_BIRD_KEEPER_HANK, BirdKeeperHankSeenText, BirdKeeperHankBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperHankAfterBattleText

BirdKeeperHankSeenText:
	text "Have you heard of"
	line "the legendary"
	cont "#MON?"
	done

BirdKeeperHankBeatenText:
	text "Why?"
	line "Why'd I lose?"
	done

BirdKeeperHankAfterBattleText:
	text "The 3 legendary"
	line "#MON are all"
	cont "birds of prey."
	done

TrainerBikerReese:
	trainer BIKER, REESE1, EVENT_BEAT_BIKER_REESE, BikerReeseSeenText, BikerReeseBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerReeseAfterBattleText

BikerReeseSeenText:
	text "C'mon, c'mon."
	line "Let's go, let's"
	cont "go, let's go!"
	done

BikerReeseBeatenText:
	text "Arrg!"
	line "Lost! Get lost!"
	done

BikerReeseAfterBattleText:
	text "What, what, what?"
	line "What do you want?"
	done

TrainerBirdKeeperTheo:
	trainer BIRD_KEEPER, THEO, EVENT_BEAT_BIRD_KEEPER_THEO, BirdKeeperTheoSeenText, BirdKeeperTheoBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperTheoAfterBattleText

BirdKeeperTheoSeenText:
	text "I'm not into it,"
	line "but OK! Let's go!"
	done

BirdKeeperTheoBeatenText:
	text "I knew it!"
	done

BirdKeeperTheoAfterBattleText:
	text "Winning, losing,"
	line "it doesn't matter"
	cont "in the long run!"
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerHarris, -1
	object_event 15, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerZeke, -1
	object_event  4, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerCharles, -1
	object_event 15, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperHank, -1
	object_event  5, 21, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerReese, -1
	object_event  6, 31, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperTheo, -1
	object_event 14, -4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
