	object_const_def
	const FASTSHIPCAPTAINSCABIN_CAPTAIN
	const FASTSHIPCAPTAINSCABIN_ROCKETGIRL
	const FASTSHIPCAPTAINSCABIN_ROCKET

FastShipCaptainsCabin_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerRocketGruntM30:
	trainer GRUNTM, GRUNTM_30, EVENT_BEAT_GRUNTM_30, GruntM30SeenText, GruntM30BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM30AfterBattleText
	waitbutton
	closetext
	end

GruntM30SeenText:
	text "I thought I told"
	line "you to stay out"
	cont "of our way!"
	done

GruntM30BeatenText:
	text "What? How?"
	done

GruntM30AfterBattleText:
	text "You can't stop"
	line "TEAM ROCKET!"
	done

TrainerRocketExecutiveF2:
	trainer EXECUTIVEF, EXECUTIVEF_2, EVENT_BEAT_EXECUTIVEF_2, ExecutiveF2SeenText, ExecutiveF2BeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext ExecutiveF2AfterBattleText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear FASTSHIPCAPTAINSCABIN_ROCKETGIRL
	disappear FASTSHIPCAPTAINSCABIN_ROCKET
	playsound SFX_ESCAPE_ROPE
	waitsfx
	special FadeInQuickly
	readvar VAR_FACING
	ifnotequal UP, .DontNeedToMove
	applymovement PLAYER, FastShipCaptainsCabinStepForwardMovement
.DontNeedToMove
	turnobject PLAYER, UP
	turnobject FASTSHIPCAPTAINSCABIN_CAPTAIN, DOWN
;
	scall SSAquaCaptainSaved
;
	opentext
	writetext FastShipCaptainExcuseMeText
	waitbutton
	closetext
	waitsfx
	playsound SFX_ELEVATOR_END
	pause 30
	opentext
	writetext FastShipArrivedOlivineText ;SSAquaHasArrivedOlivineText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

ExecutiveF2SeenText:
	text "We're taking over"
	line "this ship for"
	cont "TEAM ROCKET!"

	para "We're going to"
	line "JOHTO to regroup"
	cont "until our BOSS"
	roll "returns!"
	done

ExecutiveF2BeatenText:
	text "No!"
	done

ExecutiveF2AfterBattleText:
	text "Fine."
	line "Keep your ship!"

	para "Once our BOSS is"
	line "back, TEAM ROCKET"
	cont "will rise again!"
	done

SSAquaCaptain:
	faceplayer
SSAquaCaptainSaved:
	opentext
	checkevent EVENT_BEAT_EXECUTIVEF_2
	iffalse .HelpCaptain
	checkevent EVENT_GOT_SMOKE_BALL_FROM_CAPTAIN_ON_SS_AQUA
	iffalse .GiveMetalCoat
	checkevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	iftrue .LaterTrip
	writetext SSAquaCaptainThanksText
	waitbutton
	closetext
	end

.HelpCaptain
	writetext SSAquaCaptainHelpText
	waitbutton
	closetext
	end

.GiveMetalCoat
	writetext SSAquaCaptainTakeThisText
	promptbutton
	verbosegiveitem SMOKE_BALL
	iffalse .NoRoom
	setevent EVENT_GOT_SMOKE_BALL_FROM_CAPTAIN_ON_SS_AQUA
	writetext SSAquaCaptainSmokeBallText
	waitbutton
.NoRoom:
	closetext
	end

.LaterTrip:
	writetext SSAquaCaptainHowDoYouLikeText
	waitbutton
	closetext
	end

SSAquaCaptainTakeThisText:
	ntag "CAPTAIN:"
	text "I don't know what"
	line "we would have done"
	cont "if you hadn't been"
	roll "here!"

	para "Please, take this!"
	done

SSAquaCaptainSmokeBallText:
	ntag "CAPTAIN:"
	text "A #MON holding"
	line "that SMOKE BALL"
	cont "can flee from any"
	roll "wild #MON."

	para "Too bad it doesn't"
	line "work on trainers!"

	para "I could have given"
	line "those ROCKETs the"
	cont "slip!"
	done

SSAquaCaptainThanksText:
	ntag "CAPTAIN:"
	text "We owe everything"
	line "to you for saving"
	cont "the ship!"

	para "Please sail with"
	line "us again any time!"
	done

SSAquaCaptainHelpText:
	ntag "CAPTAIN:"
	text "These ROCKETs are"
	line "taking control of"
	cont "the ship!"

	para "What are we going"
	line "to do!"
	done

SSAquaCaptainHowDoYouLikeText:
	ntag "CAPTAIN:"
	text "How do you like"
	line "S.S.AQUA's ride?"

	para "She practically"
	line "skates across the"
	cont "waves."
	done

FastShipCaptainExcuseMeText:
	ntag "CAPTAIN:"
	text "Oh! It looks like"
	line "we've arrived in"
	cont "OLIVINE during the"
	roll "commotion!"

	para "Please excuse me"
	line "while I make the"
	cont "announcement!"
	done

;SSAquaHasArrivedOlivineText:
;	ntag "CAPTAIN:"
;	text "FAST SHIP S.S.AQUA"
;	line "has arrived in"
;	cont "OLIVINE CITY."
;	done

FastShipCaptainsCabinStepForwardMovement:
	step UP
	step_end

FastShipCaptainsCabinTrashcan:
	jumpstd TrashCanScript

FastShipCaptainsCabin_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  7, FAST_SHIP_1F, 12
	warp_event 21,  7, FAST_SHIP_1F, 12

	def_coord_events

	def_bg_events
	bg_event 20,  2, BGEVENT_READ, FastShipCaptainsCabinTrashcan

	def_object_events
	object_event 23,  3, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SSAquaCaptain, -1
	object_event 23,  6, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketExecutiveF2, EVENT_FAST_SHIP_CAPTAINS_CABIN_ROCKETS
	object_event 20,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM30, EVENT_FAST_SHIP_CAPTAINS_CABIN_ROCKETS
