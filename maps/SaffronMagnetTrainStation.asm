	object_const_def
	const SAFFRONMAGNETTRAINSTATION_OFFICER
	const SAFFRONMAGNETTRAINSTATION_GYM_GUIDE
	const SAFFRONMAGNETTRAINSTATION_TEACHER
	const SAFFRONMAGNETTRAINSTATION_LASS

SaffronMagnetTrainStation_MapScripts:
	def_scene_scripts
	scene_script SaffronMagnetTrainStationNoopScene, SCENE_SAFFRONMAGNETTRAINSTATION_ARRIVE_FROM_GOLDENROD

	def_callbacks

SaffronMagnetTrainStationNoopScene:
	end

SaffronMagnetTrainStationOfficerScript:
	faceplayer
	opentext
	checkflag ENGINE_REACHED_GOLDENROD
	iffalse .ClosedForRepairs
	writetext SaffronMagnetTrainStationOfficer_AreYouComingAboardText
	yesorno
	iffalse .DecidedNotToRide
	checkitem RAIL_PASS
	iffalse .BuyPass ;.PassNotInBag
	writetext SaffronMagnetTrainStationOfficer_RightThisWayText
	waitbutton
	closetext
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerApproachAndEnterTrainMovement
	setval TRUE ;to goldenrod?
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.MovementBoardTheTrain:
	turn_head DOWN
	step_end

.DecidedNotToRide:
	writetext SaffronMagnetTrainStationOfficer_HopeToSeeYouAgainText
	waitbutton
	closetext
	end

.BuyPass:
	writetext SaffronMagnetTrainStation_OfficerSellsPassText
	promptbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .NotEnoughMoney
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	waitsfx
	writetext SaffronMagnetTrainStationOfficer_BoughtPassText
	giveitem RAIL_PASS
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
;	setevent EVENT_GOT_MAGNET_TRAIN_PASS
	waitbutton
	sjump SaffronMagnetTrainStationOfficerScript

.ClosedForRepairs:
	writetext SaffronMagnetTrainStationOfficer_ClosedForRepairsText
	waitbutton
	closetext
	end

.NotEnoughMoney
	writetext SaffronMagnetTrainStation_NotEnoughMoneyText
	waitbutton
.Refused
	closetext
	end

SaffronMagnetTrainStationOfficer_ClosedForRepairsText:
	text "I'm sorry, but the"
	line "MAGNET TRAIN isn't"
	cont "operating now."

	para "We need to perform"
	line "regular tune-ups"
	cont "to make sure its"
	roll "safe to ride."
	done

SaffronMagnetTrainStationOfficer_AreYouComingAboardText:
	text "We'll soon depart"
	line "for GOLDENROD."

	para "Are you coming"
	line "aboard?"
	done

SaffronMagnetTrainStation_OfficerSellsPassText:
	text "You don't have a"
	line "RAIL PASS."

	para "Would you like to"
	line "buy one?"

	para "Ride as often as"
	line "you like for ¥500?"
	done

SaffronMagnetTrainStation_NotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done

SaffronMagnetTrainStationOfficer_BoughtPassText:
	text "Thank you! Here is"
	line "your RAIL PASS."
	done


SaffronMagnetTrainStationOfficer_RightThisWayText:
	text "May I see your"
	line "RAIL PASS?"

	para "OK. Right this"
	line "way, please."
	done

SaffronMagnetTrainStationOfficer_HopeToSeeYouAgainText:
	text "We hope to see you"
	line "again!"
	done

Script_ArriveFromGoldenrod:
	applymovement SAFFRONMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement
	applymovement SAFFRONMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerReturnToBoardingGateMovement
	opentext
	writetext SaffronMagnetTrainStationOfficer_ArrivedInSaffronText
	waitbutton
	closetext
	end

SaffronMagnetTrainStationOfficer_ArrivedInSaffronText:
	text "We have arrived in"
	line "SAFFRON."

	para "We hope to see you"
	line "again."
	done

SaffronMagnetTrainStationPlayerApproachAndEnterTrainMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

SaffronMagnetTrainStationOfficerApproachTrainDoorMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

SaffronMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

SaffronMagnetTrainStationOfficerReturnToBoardingGateMovement:
	step LEFT
	step DOWN
	step DOWN
	step_end

SaffronMagnetTrainStationGymGuideScript:
	faceplayer
	opentext
	writetext SaffronMagnetTrainStationGymGuideText1
	promptbutton
	checkflag ENGINE_REACHED_GOLDENROD
	iftrue .AfterGoldenrod
	writetext SaffronMagnetTrainStationGymGuideText2A
	waitbutton
	closetext
	end

.AfterGoldenrod:
	writetext SaffronMagnetTrainStationGymGuideText2B
	waitbutton
	closetext
	end

SaffronMagnetTrainStationGymGuideText1:
	text "The MAGNET TRAIN"
	line "is super-modern."

	para "It uses magnets"
	line "and electricity to"
	cont "reach incredible"
	roll "speeds!"
	done

SaffronMagnetTrainStationGymGuideText2A:
	para "They need to"
	line "perform regular"
	cont "maintainance to"
	roll "keep everything"
	cont "running smoothly…"
	done

SaffronMagnetTrainStationGymGuideText2B:
	text "Whew…"

	para "How many times"
	line "have I gone back"
	cont "and forth between"
	roll "KANTO and JOHTO?"
	done

SaffronMagnetTrainStationLassScript:
	faceplayer
	opentext
	writetext SaffronMagnetTrainStationLassText
	checkflag ENGINE_REACHED_GOLDENROD
	iftrue .Done
	promptbutton
	writetext SaffronMagentTrainStationLassText2
.Done
	waitbutton
	closetext
	end
	
SaffronMagnetTrainStationLassText:
	text "Hi. Do you have a"
	line "RAIL PASS?"

	para "All the people in"
	line "SAFFRON who ride"
	cont "the MAGNET TRAIN"
	roll "have a RAIL PASS."
	done

SaffronMagentTrainStationLassText2:
	text "But we can't ride"
	line "while the train is"
	cont "being serviced."
	done

;SaffronMagnetTrainStationTeacherScript:
;	jumptextfaceplayer SaffronMagnetTrainStationTeacherText
;SaffronMagnetTrainStationTeacherText:
;	text "Before the MAGNET"
;	line "TRAIN STATION was"
;
;	para "built, there was a"
;	line "house there."
;
;	para "A little girl"
;	line "named COPYCAT used"
;	cont "to live there."
;	done

SaffronMagnetTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, SAFFRON_CITY, 15
	warp_event  9, 17, SAFFRON_CITY, 15
	warp_event  6,  5, GOLDENROD_MAGNET_TRAIN_STATION, 4
	warp_event 11,  5, GOLDENROD_MAGNET_TRAIN_STATION, 3

	def_coord_events
	coord_event 11,  6, SCENE_SAFFRONMAGNETTRAINSTATION_ARRIVE_FROM_GOLDENROD, Script_ArriveFromGoldenrod

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationOfficerScript, -1
	object_event 11, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationGymGuideScript, -1
	object_event  6, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationLassScript, -1 ;EVENT_SAFFRON_TRAIN_STATION_POPULATION
;	object_event  6, 13, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationTeacherScript, -1 ;EVENT_SAFFRON_TRAIN_STATION_POPULATION

;	special MagnetTrain
;	wait 8
;	warpfacing DOWN, PALLET_TOWN, 5, 5
;	wait 5
;	end