	object_const_def

RocketHideoutB2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerRocketGruntM11:
	trainer GRUNTM, GRUNTM_11, EVENT_BEAT_GRUNTM_11, RocketGruntM11SeenText, RocketGruntM11BeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer RocketGruntM11AfterBattleText

RocketGruntM11SeenText:
	text "BOSS said you can"
	line "see GHOSTs with"
	cont "the SILPH SCOPE!"
	done

RocketGruntM11BeatenText:
	text "I surrender!"
	done

RocketGruntM11AfterBattleText:
	text "The TEAM ROCKET"
	line "HIDEOUT has four"
	cont "basement floors."

	para "Can you reach our"
	roll "BOSS?"
	done

RocketHideoutB2FNugget:
	itemball NUGGET

RocketHideoutB2FMoonStone:
	itemball MOON_STONE

RocketHideoutB2FTMSharpen:
	itemball TM_SHARPEN

RocketHideoutB2FSuperPotion:
	itemball SUPER_POTION

RocketHideoutB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 15, ROCKET_HIDEOUT_ELEVATOR, 1 ; 1
	warp_event 24, 15, ROCKET_HIDEOUT_ELEVATOR, 1 ; 2
	warp_event 27,  2, ROCKET_HIDEOUT_B1F, 4 ; 3
	warp_event 21, 16, ROCKET_HIDEOUT_B1F, 5 ; 4
	warp_event 21,  2, ROCKET_HIDEOUT_B3F, 3 ; 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 20,  6, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM11, -1
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FNugget, EVENT_ROCKET_HIDEOUT_B2F_NUGGET
	object_event  1,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FMoonStone, EVENT_ROCKET_HIDEOUT_B2F_MOON_STONE
	object_event  6,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FTMSharpen, EVENT_ROCKET_HIDEOUT_B2F_TM_SHARPEN
	object_event  3, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FSuperPotion, EVENT_ROCKET_HIDEOUT_B2F_SUPER_POTION
