	object_const_def
	const GOLDENRODMAGNETTRAINSTATION_OFFICER
	const GOLDENRODMAGNETTRAINSTATION_GENTLEMAN

GoldenrodMagnetTrainStation_MapScripts:
	def_scene_scripts
	scene_script GoldenrodMagnetTrainStationNoopScene, SCENE_GOLDENRODMAGNETTRAINSTATION_ARRIVE_FROM_SAFFRON

	def_callbacks

GoldenrodMagnetTrainStationNoopScene:
	end

GoldenrodMagnetTrainStationOfficerScript:
	faceplayer
	opentext
;	checkflag ENGINE_REACHED_GOLDENROD ;for saffron station
;	iffalse .ClosedForRepairs
	writetext GoldenrodMagnetTrainStationOfficer_AreYouComingAboardText
	yesorno
	iffalse .DecidedNotToRide
	checkitem RAIL_PASS
	iffalse .BuyPass ;.PassNotInBag
	writetext SaffronMagnetTrainStationOfficer_RightThisWayText
	waitbutton
	closetext
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerApproachAndEnterTrainMovement
	setval FALSE ;to saffron?
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
	sjump GoldenrodMagnetTrainStationOfficerScript

.NotEnoughMoney
	writetext SaffronMagnetTrainStation_NotEnoughMoneyText
	waitbutton
.Refused
	closetext
	end

GoldenrodMagnetTrainStationOfficer_AreYouComingAboardText:
	ntag "CONDUCTOR:"
	text "We'll soon depart"
	line "for SAFFRON."

	para "Are you coming"
	line "aboard?"
	done

;GoldenrodMagnetTrainStationOfficer_RightThisWayText:
;	text "May I see your"
;	line "RAIL PASS, please?"
;
;	para "OK. Right this"
;	line "way, please."
;	done

;GoldenrodMagnetTrainStationOfficer_HopeToSeeYouAgainText:
;	text "We hope to see you"
;	line "again!"
;	done

;GoldenrodMagnetTrainStation_OfficerSellsPassText:
;	text "You don't have a"
;	line "RAIL PASS."
;
;	para "Would you like to"
;	line "buy one?"
;
;	para "Ride as often as"
;	line "you like for ¥500?"
;	done

;GoldenrodMagnetTrainStationOfficer_BoughtPassText:
;	text "Thank you! Here is"
;	line "your RAIL PASS."
;	done

Script_ArriveFromSaffron:
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerReturnToBoardingGateMovement
	opentext
	writetext GoldenrodMagnetTrainStationOfficer_ArrivedInGoldenrodText
	waitbutton
	closetext
	end

GoldenrodMagnetTrainStationOfficer_ArrivedInGoldenrodText:
	ntag "CONDUCTOR:"
	text "We have arrived in"
	line "GOLDENROD."

	para "We hope to see you"
	line "again."
	done

;GoldenrodMagnetTrainStationPlayerApproachAndEnterTrainMovement:
;	step UP
;	step UP
;	step UP
;	step LEFT
;	step LEFT
;	step LEFT
;	step UP
;	step UP
;	step_end

;GoldenrodMagnetTrainStationOfficerApproachTrainDoorMovement:
;	step UP
;	step UP
;	step RIGHT
;	turn_head LEFT
;	step_end

;GoldenrodMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement:
;	step LEFT
;	step LEFT
;	step DOWN
;	step DOWN
;	step DOWN
;	step DOWN
;	turn_head UP
;	step_end

;GoldenrodMagnetTrainStationOfficerReturnToBoardingGateMovement:
;	step LEFT
;	step DOWN
;	step DOWN
;	step_end

GoldenrodMagnetTrainStationGentlemanScript:
	faceplayer
	opentext
	writetext GoldenrodMagnetTrainStationGentlemanText
	checkitem RAIL_PASS
	iftrue .AlreadyHavePass
	promptbutton
	writetext GoldenrodMagnetTrainStationGentleman_DoYouLikeTrainsText
	yesorno
	iffalse .DontLikeTrains
	writetext GoldenrodMagnetTrainStationGentleman_TrainsText
	waitbutton
	playsound SFX_KEY_ITEM
	verbosegiveitem RAIL_PASS
	waitsfx
;	itemnotify
	closetext
	end

.DontLikeTrains:
	writetext GoldenrodMagnetTrainStationGentleman_DisappointedText
.AlreadyHavePass:
	waitbutton
	closetext
	end

GoldenrodMagnetTrainStationGentleman_DisappointedText:
	text "Oh, that's"
	line "disappointing…"
	done

GoldenrodMagnetTrainStationGentlemanText:
	ntag "GENTLEMAN:"
	text "I'm the owner of"
	line "this railway."

	para "My dream was to"
	line "build a train that"
	cont "is faster than any"
	roll "#MON."

	para "It really brings"
	line "JOHTO much closer"
	cont "to KANTO."
	done

GoldenrodMagnetTrainStationGentleman_DoYouLikeTrainsText:
	ntag "GENTLEMAN:"
	text "Do you like trains"
	line "as much as I do?"
	done

GoldenrodMagnetTrainStationGentleman_TrainsText:
	ntag "GENTLEMAN:"
	text "Wonderful! Let me"
	line "tell you more!"

	para "Smooth… hovering…"
	line "frictionless…"
	cont "travel… advanced…"

	para "Oh, and… faster…"
	line "electromagnetic…"
	cont "quiet… high-tech…"

	para "Did I mention?"
	line "Streamlined…"
	cont "modern… powerful…"
	roll "high-speed…"
	
	para "Oops! Look at the"
	line "time! I've kept"
	cont "you too long!"

	para "I enjoyed talking"
	line "with you! I want"
	cont "you to have this!"
	done

GoldenrodMagnetTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, GOLDENROD_CITY, 7
	warp_event  9, 17, GOLDENROD_CITY, 7
	warp_event  6,  5, SAFFRON_MAGNET_TRAIN_STATION, 4
	warp_event 11,  5, SAFFRON_MAGNET_TRAIN_STATION, 3

	def_coord_events
	coord_event 11,  6, SCENE_GOLDENRODMAGNETTRAINSTATION_ARRIVE_FROM_SAFFRON, Script_ArriveFromSaffron

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationOfficerScript, -1
	object_event 11, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationGentlemanScript, -1
