	object_const_def
	const ROUTE24_ROCKET

Route24_MapScripts:
	def_scene_scripts
	scene_script Route24Noop1Scene, SCENE_ROUTE24_NUGGET_ROCKET
	scene_script Route24Noop2Scene, SCENE_ROUTE24_NOOP

	def_callbacks

Route24Noop1Scene:
Route24Noop2Scene:
	end

Route24NuggetRocketCoordScript:
	turnobject PLAYER, RIGHT
	; fallthrough
Route24NuggetRocketScript:
	faceplayer
	opentext
	writetext Route24NuggetRocketIntroText
	promptbutton
	verbosegiveitem NUGGET
	waitbutton
	writetext Route24NuggetRocketJoinText
	waitbutton
	closetext
	winlosstext Route24NuggetRocketBeatenText, 0
	setlasttalked ROUTE24_ROCKET
	loadtrainer GRUNTM, GRUNTM_5
	startbattle
	dontrestartmapmusic
	reloadmap
	opentext
	writetext Route24NuggetRocketAfterBattleText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear ROUTE24_ROCKET
	playsound SFX_ESCAPE_ROPE
	waitsfx
	special FadeInQuickly
	setscene SCENE_ROUTE24_NOOP
	playmapmusic
	end

Route24NuggetRocketIntroText:
	text "Congratulations!"
	line "You beat our 5"
	cont "contest trainers!"

	para "You just earned a"
	line "fabulous prize!"
	done

Route24NuggetRocketJoinText:
	text "By the way, would"
	line "you like to join"
	cont "TEAM ROCKET?"

	para "We're a group"
	line "dedicated to evil"
	cont "using #MON!"

	para "Want to join?"

	para "Are you sure?"

	para "Come on, join us!"

	para "I'm telling you"
	line "to join!"

	para "OK, you need"
	line "convincing!"

	para "I'll make you an"
	line "offer you can't"
	cont "refuse!"
	done

Route24NuggetRocketBeatenText:
	text "Arrgh!"
	line "You are good!"
	done

Route24NuggetRocketAfterBattleText:
	text "With your ability,"
	line "you could become"
	cont "a top leader in"
	cont "TEAM ROCKET!"
	done

TrainerCamperIvan:
	trainer CAMPER, IVAN, EVENT_BEAT_CAMPER_IVAN, CamperIvanSeenText, CamperIvanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NuggetBridgeAfterBattleText
	waitbutton
	closetext
	end

CamperIvanSeenText:
	text "OK! I'm No. 5!"
	line "I'll stomp you!"
	done

CamperIvanBeatenText:
	text "Whoa!"
	line "Too much!"
	done

TrainerLassLaura:
	trainer LASS, LAURA, EVENT_BEAT_LASS_LAURA, LassLauraSeenText, LassLauraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NuggetBridgeAfterBattleText
	waitbutton
	closetext
	end

LassLauraSeenText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

LassLauraBeatenText:
	text "I lost"
	line "too!"
	done

TrainerYoungsterAlbert:
	trainer YOUNGSTER, ALBERT, EVENT_BEAT_YOUNGSTER_ALBERT, YoungsterAlbertSeenText, YoungsterAlbertBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NuggetBridgeAfterBattleText
	waitbutton
	closetext
	end

YoungsterAlbertSeenText:
	text "Here's No. 3!"
	line "I won't be easy!"
	done

YoungsterAlbertBeatenText:
	text "Ow!"
	line "Stomped flat!"
	prompt

TrainerLassShannon:
	trainer LASS, SHANNON, EVENT_BEAT_LASS_SHANNON, LassShannonSeenText, LassShannonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NuggetBridgeAfterBattleText
	waitbutton
	closetext
	end

LassShannonSeenText:
	text "I'm second!"
	line "Now it's serious!"
	done

LassShannonBeatenText:
	text "How could I"
	line "lose?"
	prompt

TrainerBugCatcherWayne:
	trainer BUG_CATCHER, WAYNE, EVENT_BEAT_BUG_CATCHER_WAYNE, BugCatcherWayneSeenText, BugCatcherWayneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NuggetBridgeAfterBattleText
	waitbutton
	closetext
	end

BugCatcherWayneSeenText:
	text "This is NUGGET"
	line "BRIDGE! Beat us 5"
	cont "trainers and win"
	cont "a fabulous prize!"

	para "Think you got"
	line "what it takes?"
	done

BugCatcherWayneBeatenText:
	text "Whoo!"
	line "Good stuff!"
	done

NuggetBridgeAfterBattleText:
	text "I did my best, I"
	line "have no regrets!"
	done



TrainerCamperTanner:
	trainer CAMPER, TANNER1, EVENT_BEAT_CAMPER_TANNER, CamperTannerSeenText, CamperTannerBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperTannerAfterBattleText
	waitbutton
	closetext
	end

CamperTannerSeenText:
	text "I saw your feat"
	line "from the grass!"
	done

CamperTannerBeatenText:
	text "I thought"
	line "not!"
	done

CamperTannerAfterBattleText:
	text "I hid because the"
	line "people on the"
	cont "bridge scared me!"
	done

Route24TMThunderWave:
	itemball TM_THUNDER_WAVE

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 10, 15, SCENE_ROUTE24_NUGGET_ROCKET, Route24NuggetRocketCoordScript

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route24NuggetRocketScript, EVENT_NUGGET_BRIDGE_ROCKET
	object_event 11, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerCamperIvan, -1
	object_event 10, 22, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassLaura, -1
	object_event 11, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerYoungsterAlbert, -1
	object_event 10, 28, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassShannon, -1
	object_event 11, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherWayne, -1
	object_event  5, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCamperTanner, -1
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route24TMThunderWave, EVENT_ROUTE_24_TM_THUNDER_WAVE
	object_event 24,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerHikerRussell, -1
