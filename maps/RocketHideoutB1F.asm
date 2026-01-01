	object_const_def

RocketHideoutB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .RocketHideoutB1FDoorCallback

.RocketHideoutB1FDoorCallback:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT_B1F_DOOR
	iffalse .DoorClosed
	changeblock 16, 14, $64 ; door open
.DoorClosed
	endcallback

TrainerRocketGruntM7:
	trainer GRUNTM, GRUNTM_7, EVENT_BEAT_GRUNTM_7, RocketGruntM7SeenText, RocketGruntM7BeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer RocketGruntM7AfterBattleText

RocketGruntM7SeenText:
	text "You broke into"
	line "our operation?"
	done

RocketGruntM7BeatenText:
	text "Burnt!"
	done

RocketGruntM7AfterBattleText:
	text "You're not going"
	line "to get away with"
	cont "this, brat!"
	done

TrainerRocketGruntF2:
	trainer GRUNTF, GRUNTF_2, EVENT_BEAT_GRUNTF_2, RocketGruntF2SeenText, RocketGruntF2BeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer RocketGruntF2AfterBattleText

RocketGruntF2SeenText:
	text "Who are you? How"
	line "did you get here?"
	done

RocketGruntF2BeatenText:
	text "Oww!"
	line "Beaten!"
	done

RocketGruntF2AfterBattleText:
	text "Are you dissing"
	line "TEAM ROCKET?"
	done

TrainerRocketGruntM8:
	trainer GRUNTM, GRUNTM_8, EVENT_BEAT_GRUNTM_8, RocketGruntM8SeenText, RocketGruntM8BeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer RocketGruntM8AfterBattleText

RocketGruntM8SeenText:
	text "Intruder alert!"
	done

RocketGruntM8BeatenText:
	text "I can't do it!"
	done

RocketGruntM8AfterBattleText:
	text "SILPH SCOPE?"
	line "I don't know"
	cont "where it is!"
	done

TrainerRocketGruntM9:
	trainer GRUNTM, GRUNTM_9, EVENT_BEAT_GRUNTM_9, RocketGruntM9SeenText, RocketGruntM9BeatenText, 0, .Script
.Script:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT_B1F_DOOR
	iftrue .Skip
	playsound SFX_ENTER_DOOR
	changeblock 16, 14, $64 ; door open
	reloadmappart
	setevent EVENT_OPENED_ROCKET_HIDEOUT_B1F_DOOR
.Skip
	jumptext RocketGruntM9AfterBattleText

RocketGruntM9SeenText:
	text "Are you lost, you"
	line "little rat?"
	done

RocketGruntM9BeatenText:
	text "Why…?"
	done

RocketGruntM9AfterBattleText:
	text "Uh-oh, that fight"
	line "opened the door!"
	done

TrainerRocketGruntM10:
	trainer GRUNTM, GRUNTM_10, EVENT_BEAT_GRUNTM_10, RocketGruntM10SeenText, RocketGruntM10BeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer RocketGruntM10AfterBattleText

RocketGruntM10SeenText:
	text "Why did you come"
	line "here?"
	done

RocketGruntM10BeatenText:
	text "This won't do!"
	done

RocketGruntM10AfterBattleText:
	text "OK, I'll talk!"
	line "Take the elevator"
	cont "to see my BOSS!"
	done

RocketHideoutB1FEscapeRope:
	itemball ESCAPE_ROPE

RocketHideoutB1FHyperPotion:
	itemball HYPER_POTION

RocketHideoutB3FHiddenPPUp:
	hiddenitem PP_UP, EVENT_ROCKET_HIDEOUT_B1F_HIDDEN_PP_UP

RocketHideoutB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 17, ROCKET_HIDEOUT_ELEVATOR, 1 ; 1
	warp_event 16, 17, ROCKET_HIDEOUT_ELEVATOR, 1 ; 2
	warp_event 13,  2, CELADON_GAME_CORNER, 3     ; 3
	warp_event 15,  2, ROCKET_HIDEOUT_B2F, 3      ; 4
	warp_event 13, 20, ROCKET_HIDEOUT_B2F, 4      ; 5

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_ITEM, RocketHideoutB3FHiddenPPUp

	def_object_events
	object_event  4,  4, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM7, -1
	object_event 18,  6, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRocketGruntF2, -1
	object_event 10, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGruntM8, -1
	object_event 20, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM9, -1
	object_event  7, 21, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM10, -1
	object_event  3, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FEscapeRope, EVENT_ROCKET_HIDEOUT_B1F_ESCAPE_ROPE
	object_event  1, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FHyperPotion, EVENT_ROCKET_HIDEOUT_B1F_HYPER_POTION
