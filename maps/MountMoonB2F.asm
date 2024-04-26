	object_const_def
	const MOUNTMOONB2F_SUPER_NERD
	const MOUNTMOONB2F_DOME_FOSSIL
	const MOUNTMOONB2F_HELIX_FOSSIL

MountMoonB2F_MapScripts:
	def_scene_scripts
	scene_script MountMoonB2FChooseFossilScene, SCENE_MOUNTMOONB2F_CHOOSE_FOSSIL
	scene_script MountMoonB2FNoopScene,         SCENE_MOUNTMOONB2F_NOOP

	def_callbacks

MountMoonB2FChooseFossilScene:
MountMoonB2FNoopScene:
	end

MtMoonB2FFossilNerdScript:
	checkevent EVENT_MT_MOON_OBTAINED_FOSSIL
	iftrue .CinnabarLab
	checkevent EVENT_BEAT_SUPER_NERD_SAM
	iftrue .TakeOne
	faceplayer
	opentext
	writetext MtMoonB2FSuperNerdStopText
	waitbutton
	closetext
	winlosstext MtMoonB2FSuperNerdBeatenText, 0
	loadtrainer SUPER_NERD, SAM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_SAM
	setscene SCENE_MOUNTMOONB2F_NOOP
	sjump .Finish

.CinnabarLab
	jumptextfaceplayer MtMoonB2FSuperNerdCinnabarLabText

.TakeOne
	jumptextfaceplayer MtMoonB2FSuperNerdTakeOneText

.Finish
	end

MtMoonB2FSuperNerdStopText:
	text "Hey, stop!"

	para "I found these"
	line "fossils! They're"
	cont "both mine!"
	done

MtMoonB2FSuperNerdBeatenText:
	text "OK!"
	line "I'll share!"
	done

MtMoonB2FSuperNerdTakeOneText:
	text "We'll each take"
	line "one!"
	cont "No being greedy!"
	done

MtMoonB2FSuperNerdCinnabarLabText:
	text "Far away, on"
	line "CINNABAR ISLAND,"
	cont "there's a #MON"
	cont "LAB."

	para "They do research"
	line "on regenerating"
	cont "fossils."
	done

MtMoonDomeFossilScript:
	opentext
	writetext MtMoonB2FWantDomeFossilText
	yesorno
	iffalse MtMoonB2FDidntChooseFossilScript
	verbosegiveitem DOME_FOSSIL
	iffalse NoRoomForFossil
;	closetext
	disappear MOUNTMOONB2F_DOME_FOSSIL
	setevent EVENT_MT_MOON_OBTAINED_FOSSIL
	applymovement MOUNTMOONB2F_SUPER_NERD, MtMoonB2FSuperNerdTakesHelixMovement
	sjump MtMoonB2FSuperNerdTakesFossilScript
	
MtMoonHelixFossilScript:
	opentext
	writetext MtMoonB2FWantHelixFossilText
	yesorno
	iffalse MtMoonB2FDidntChooseFossilScript
	verbosegiveitem HELIX_FOSSIL
	iffalse NoRoomForFossil
;	closetext
	disappear MOUNTMOONB2F_HELIX_FOSSIL
	setevent EVENT_MT_MOON_OBTAINED_FOSSIL
	sjump MtMoonB2FSuperNerdTakesFossilScript

NoRoomForFossil:
	closetext
	end

MtMoonB2FDidntChooseFossilScript:
	closetext
	end

MtMoonB2FSuperNerdTakesFossilScript:
	applymovement MOUNTMOONB2F_SUPER_NERD, MtMoonB2FSuperNerdTakesFossilMovement
	opentext
	writetext MtMoonB2FSuperNerdTakesFossilText
	waitbutton
	closetext
	disappear MOUNTMOONB2F_DOME_FOSSIL
	disappear MOUNTMOONB2F_HELIX_FOSSIL
	end

MtMoonB2FWantDomeFossilText:
	text "You want the"
	line "DOME FOSSIL?"
	done

MtMoonB2FWantHelixFossilText:
	text "You want the"
	line "HELIX FOSSIL?"
	done

MtMoonB2FSuperNerdTakesFossilText:
	text "All right. Then"
	line "this is mine!"
	done

TrainerRocketGruntM1:
	trainer GRUNTM, GRUNTM_1, EVENT_BEAT_GRUNTM_1, RocketGruntM1SeenText, RocketGruntM1BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext RocketGruntM1AfterBattleText
	waitbutton
	closetext
	end

RocketGruntM1SeenText:
	text "We're pulling a"
	line "big job here!"
	cont "Get lost, kid!"
	done

RocketGruntM1BeatenText:
	text "So, you"
	line "are good."
	done

RocketGruntM1AfterBattleText:
	text "If you find a"
	line "fossil, give it"
	cont "to me and scram!"
	done

TrainerRocketGruntM2:
	trainer GRUNTM, GRUNTM_2, EVENT_BEAT_GRUNTM_2, RocketGruntM2SeenText, RocketGruntM2BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext RocketGruntM2AfterBattleText
	waitbutton
	closetext
	end

RocketGruntM2SeenText:
	text "TEAM ROCKET will"
	line "find the fossils,"
	cont "revive and sell"
	cont "them for cash!"
	done

RocketGruntM2BeatenText:
	text "Urgh!"
	line "Now I'm mad!"
	done

RocketGruntM2AfterBattleText:
	text "You made me mad!"
	line "TEAM ROCKET will"
	cont "blacklist you!"
	done

TrainerRocketGruntF1:
	trainer GRUNTF, GRUNTF_1, EVENT_BEAT_GRUNTF_1, RocketGruntF1SeenText, RocketGruntF1BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext RocketGruntF1AfterBattleText
	waitbutton
	closetext
	end

RocketGruntF1SeenText:
	text "Little kids"
	line "should leave"
	cont "grown-ups alone!"
	done

RocketGruntF1BeatenText:
	text "I'm"
	line "steamed!"
	done

RocketGruntF1AfterBattleText:
	text "#MON lived"
	line "here long before"
	cont "people came."
	done

TrainerRocketGruntM3:
	trainer GRUNTM, GRUNTM_3, EVENT_BEAT_GRUNTM_3, RocketGruntM3SeenText, RocketGruntM3BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext RocketGruntM3AfterBattleText
	waitbutton
	closetext
	end

RocketGruntM3SeenText:
	text "We, TEAM ROCKET,"
	line "are #MON"
	cont "gangsters!"
	done

RocketGruntM3BeatenText:
	text "I blew"
	line "it!"
	done

RocketGruntM3AfterBattleText:
	text "Darn it all! My"
	line "associates won't"
	cont "stand for this!"
	done

MtMoonB2FSuperNerdTakesHelixMovement:
	step RIGHT
	step_end

MtMoonB2FSuperNerdTakesFossilMovement:
	step UP
	step_end

MtMoonB2FTMDynamicPunch:
	itemball TM_DYNAMICPUNCH

MtMoonB2FHPUp:
	itemball HP_UP

MtMoonB2FHiddenEther:
	hiddenitem ETHER, EVENT_MT_MOON_B2F_HIDDEN_ETHER

MtMoonB2FHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_MT_MOON_B2F_HIDDEN_MOON_STONE

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, MOUNT_MOON, 10 ; 1
	warp_event 25,  9, MOUNT_MOON, 11 ; 2
	warp_event 21, 17, MOUNT_MOON, 8  ; 3
	warp_event 17, 27, MOUNT_MOON, 12 ; 4

	def_coord_events
	coord_event 12,  8, SCENE_MOUNTMOONB2F_CHOOSE_FOSSIL, MtMoonB2FFossilNerdScript

	def_bg_events
	bg_event 35,  9, BGEVENT_ITEM, MtMoonB2FHiddenEther
	bg_event 18, 12, BGEVENT_ITEM, MtMoonB2FHiddenMoonStone

	def_object_events
	object_event 11,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2FFossilNerdScript, -1
	object_event 11,  6, SPRITE_DOME_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonDomeFossilScript, EVENT_MT_MOON_OBTAINED_FOSSIL
	object_event 12,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonHelixFossilScript, EVENT_MT_MOON_OBTAINED_FOSSIL
	object_event 31, 11, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM1, -1
	object_event 11, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGruntM2, -1
	object_event 28, 17, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntF1, -1
	object_event 17, 23, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM3, -1
	object_event 31,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FTMDynamicPunch, EVENT_MT_MOON_B2F_TM_DYNAMICPUNCH
	object_event 25, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FHPUp, EVENT_MT_MOON_B2F_HP_UP
