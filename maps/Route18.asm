	object_const_def

Route18_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route18AlwaysOnBikeCallback

Route18AlwaysOnBikeCallback:
	readvar VAR_XCOORD
	ifgreater 35, .CanWalk
	readvar VAR_YCOORD
	ifgreater 9, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

TrainerBirdKeeperJose:
	trainer BIRD_KEEPER, JOSE1, EVENT_BEAT_BIRD_KEEPER_JOSE, BirdKeeperJoseSeenText, BirdKeeperJoseBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperJoseAfterBattleText

BirdKeeperJoseSeenText:
	text "I always check"
	line "every grassy area"
	cont "for new #MON."
	done

BirdKeeperJoseBeatenText:
	text "Tch!"
	done

BirdKeeperJoseAfterBattleText:
	text "I wish I had a"
	line "BIKE!"
	done

TrainerBirdKeeperBryan:
	trainer BIRD_KEEPER, BRYAN, EVENT_BEAT_BIRD_KEEPER_BRYAN, BirdKeeperBryanSeenText, BirdKeeperBryanBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperBryanAfterBattleText

BirdKeeperBryanSeenText:
	text "This is my turf!"
	line "Get out of here!"
	done

BirdKeeperBryanBeatenText:
	text "Darn!"
	done

BirdKeeperBryanAfterBattleText:
	text "This is my fave"
	line "#MON hunting"
	cont "area!"
	done

TrainerBirdKeeperPeter:
	trainer BIRD_KEEPER, PETER, EVENT_BEAT_BIRD_KEEPER_PETER, BirdKeeperPeterSeenText, BirdKeeperPeterBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperPeterAfterBattleText

BirdKeeperPeterSeenText:
	text "Kurukkoo!"
	line "How do you like"
	cont "my bird call?"
	done

BirdKeeperPeterBeatenText:
	text "I had to"
	line "bug you!"
	done

BirdKeeperPeterAfterBattleText:
	text "I also collect"
	line "sea #MON on"
	cont "weekends!"
	done

Route18CyclingRoadSign:
	jumptext Route18CyclingRoadSignText
Route18CyclingRoadSignText:
	text "CYCLING ROAD"
	line "No pedestrians"
	cont "permitted!"
	done

Route18Sign:
	jumptext Route18SignText
Route18SignText:
	text "ROUTE 18"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
	done

Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35,  8, ROUTE_18_GATE, 1
	warp_event 35,  9, ROUTE_18_GATE, 2
	warp_event 40,  8, ROUTE_18_GATE, 3
	warp_event 40,  9, ROUTE_18_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 35,  5, BGEVENT_READ, Route18CyclingRoadSign
	bg_event 43,  7, BGEVENT_READ, Route18Sign

	def_object_events
	object_event 36, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperJose, -1
	object_event 42, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBryan, -1
	object_event 40, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperPeter, -1
