	object_const_def

RocketHideoutB3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerRocketGruntM12:
	trainer GRUNTM, GRUNTM_12, EVENT_BEAT_GRUNTM_12, RocketGruntM12SeenText, RocketGruntM12BeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer RocketGruntM12AfterBattleText

RocketGruntM12SeenText:
	text "We got word from"
	line "upstairs that you"
	cont "were coming!"
	done

RocketGruntM12BeatenText:
	text "What?"
	line "I lost? No!"
	done

RocketGruntM12AfterBattleText:
	text "Go ahead and go!"
	line "But, you need the"
	cont "LIFT KEY to run"
	roll "the elevator!"
	done

TrainerRocketGruntM13:
	trainer GRUNTM, GRUNTM_13, EVENT_BEAT_GRUNTM_13, RocketGruntM13SeenText, RocketGruntM13BeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer RocketGruntM13AfterBattleText

RocketGruntM13SeenText:
	text "Stop meddling in"
	line "TEAM ROCKET's"
	cont "affairs!"
	done

RocketGruntM13BeatenText:
	text "Oof!"
	line "Taken down!"
	done

RocketGruntM13AfterBattleText:
	text "SILPH SCOPE?"
	line "The machine the"
	cont "BOSS stole. It's"
	roll "here somewhere."
	done

RocketHideoutB3FRareCandy:
	itemball RARE_CANDY

RocketHideoutB3FTMDoubleEdge:
	itemball TM_DOUBLE_EDGE

RocketHideoutB3FHiddenNugget:
	hiddenitem NUGGET, EVENT_ROCKET_HIDEOUT_B3F_HIDDEN_NUGGET

RocketHideoutB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, ROCKET_HIDEOUT_ELEVATOR, 1 ; 1
	warp_event 16, 15, ROCKET_HIDEOUT_ELEVATOR, 1 ; 2
	warp_event 19,  2, ROCKET_HIDEOUT_B2F, 5 ; 3
	warp_event 11, 18, ROCKET_HIDEOUT_B4F, 3 ; 4

	def_coord_events

	def_bg_events
	bg_event 19, 13, BGEVENT_ITEM, RocketHideoutB3FHiddenNugget

	def_object_events
	object_event 18,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM12, -1
	object_event  2, 18, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGruntM13, -1
	object_event 12, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FRareCandy, EVENT_ROCKET_HIDEOUT_B3F_RARE_CANDY
	object_event 18, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FTMDoubleEdge, EVENT_ROCKET_HIDEOUT_B3F_TM_DOUBLE_EDGE
