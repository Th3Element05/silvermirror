	object_const_def
	const SILPHCO11F_GIOVANNI
	const SILPHCO11F_EXECUTIVE
	const SILPHCO11F_GRUNT

SilphCo11F_MapScripts:
	def_scene_scripts
	scene_script SilphCo11FNoop1Scene, SCENE_SILPHCO11F_GIOVANNI
	scene_script SilphCo11FNoop2Scene, SCENE_SILPHCO11F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo11FDoorsCallback

SilphCo11FDoorsCallback:
	checkevent EVENT_SILPH_CO_11F_DOOR_1
	iffalse .Next
	changeblock 6, 12, $3d ; open door
.Next
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iffalse .End
	changeblock 12, 8, $3e ; open door
.End
	endcallback

SilphCo11FNoop1Scene:
SilphCo11FNoop2Scene:
	end

SilphCo11F_Door1:
	conditional_event EVENT_SILPH_CO_11F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_11F_DOOR_1
	end

SilphCo11F_Door2:
	conditional_event EVENT_BEAT_GIOVANNI_SILPHCO, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .StillLocked
	jumpstd SilphCoNoCardKeyScript
.StillLocked
	jumptext SilphCo11FLockedDoorText
SilphCo11FLockedDoorText:
	text "The CARD KEY"
	line "doesn't work!"

	para "It's locked from"
	line "the other side!"
	done

SilphCo11FGiovanniEncounter:
	opentext
	writetext SilphCo11FGiovanniIntroText
	waitbutton
	closetext
	applymovement SILPHCO11F_GIOVANNI, SilphCo11FGiovanniApproachMovement
	readvar VAR_XCOORD
	ifequal 6, .Skip
	turnobject SILPHCO11F_GIOVANNI, RIGHT
	turnobject PLAYER, LEFT
.Skip
	winlosstext SilphCo11FGiovanniBeatenText, 0
	setlasttalked SILPHCO11F_GIOVANNI
	loadtrainer ROCKET_BOSS, GIOVANNI_SILPHCO
	startbattle
	reloadmap
	opentext
	writetext SilphCo11FGiovanniAfterBattleText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playsound SFX_ESCAPE_ROPE
	disappear SILPHCO11F_GIOVANNI
	disappear SILPHCO11F_EXECUTIVE
	disappear SILPHCO11F_GRUNT
	changeblock 12, 8, $3e ; open door
;	reloadmappart
	waitsfx
	special FadeInQuickly
	setflag ENGINE_ROCKETS_IN_SILPH_CO
	setscene SCENE_SILPHCO11F_NOOP
	setevent EVENT_BEAT_GIOVANNI_SILPHCO
	setevent EVENT_SAFFRON_CITY_ROCKETS
	clearevent EVENT_SAFFRON_CITY_CIVILIANS
	special PlayMapMusic
	end

SilphCo11FGiovanniIntroText:
	text "Ah <PLAYER>!"
	line "So we meet again!"

	para "The PRESIDENT and"
	line "I are discussing"
	cont "a vital business"
	cont "proposition."

	para "Keep your nose"
	line "out of grown-up"
	cont "matters..."

	para "Or, experience a"
	line "world of pain!"
	done

SilphCo11FGiovanniBeatenText:
	text "Arrgh!!"
	line "I lost again!?"
	done

SilphCo11FGiovanniAfterBattleText:
	text "Blast it all!"
	line "You ruined our"
	cont "plans for SILPH!"

	para "But, TEAM ROCKET"
	line "will never fall!"

	para "<PLAYER>! Never"
	line "forget that all"
	cont "#MON exist"
	cont "for TEAM ROCKET!"

	para "I must go, but I"
	line "shall return!"
	done

SilphCo11FReceptionist:
	jumptextfaceplayer SilphCo11FReceptionistText
SilphCo11FReceptionistText:
	text "SECRETARY: Thank"
	line "you for rescuing"
	cont "all of us!"

	para "We admire your"
	line "courage."
	done

SilphCo11FPresident:
	faceplayer
	opentext
	checkevent EVENT_GOT_MASTER_BALL_FROM_SILPH_CO
	iftrue .GotMasterBall
	writetext SilphCo11FPresidentThanksText
	promptbutton
	verbosegiveitem MASTER_BALL
	iffalse .End
	setevent EVENT_GOT_MASTER_BALL_FROM_SILPH_CO
.GotMasterBall
	writetext SilphCo11FPresidentMasterBallText
	waitbutton
.End
	closetext
	end

SilphCo11FPresidentThanksText:
	text "PRESIDENT: Thank"
	line "you for saving"
	cont "SILPH!"

	para "I will never"
	line "forget you saved"
	cont "us in our moment"
	cont "of peril!"

	para "I have to thank"
	line "you in some way!"

	para "Because I am rich,"
	line "I can give you"
	cont "anything!"

	para "Here, maybe this"
	line "will do!"
	done

SilphCo11FPresidentMasterBallText:
	text "PRESIDENT: You"
	line "can't buy that"
	cont "anywhere!"

	para "It's our secret"
	line "prototype MASTER"
	cont "BALL!"

	para "It will catch any"
	line "#MON without"
	cont "fail!"

	para "You should be"
	line "quiet about using"
	cont "it, though."
	done

TrainerRocketExecutiveM2:
	trainer EXECUTIVEM, EXECUTIVEM_2, EVENT_BEAT_EXECUTIVEM_2, ExecutiveM2SeenText, ExecutiveM2BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ExecutiveM2AfterBattleText
	waitbutton
	closetext
	end

ExecutiveM2SeenText:
	text "Halt! Do you have"
	line "an appointment"
	cont "with my BOSS?"
	done

ExecutiveM2BeatenText:
	text "Gaah!"
	line "Demolished!"
	done

ExecutiveM2AfterBattleText:
	text "Watch your step,"
	line "my BOSS likes his"
	cont "#MON tough!"
	done

TrainerRocketGruntM28:
	trainer GRUNTM, GRUNTM_28, EVENT_BEAT_GRUNTM_28, GruntM28SeenText, GruntM28BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM28AfterBattleText
	waitbutton
	closetext
	end

GruntM28SeenText:
	text "Stop right there!"
	line "Don't you move!"
	done

GruntM28BeatenText:
	text "Don't..."
	line "Please!"
	done

GruntM28AfterBattleText:
	text "So, you want to"
	line "see my BOSS?"
	done

SilphCo11FComputer:
	opentext
	writetext SilphCo11FComputerText
	promptbutton
	setval PORYGON
	special ShowPokedexEntry
	closetext
	end

SilphCo11FComputerText:
	text "The monitor has"
	line "a #MON on it!"
	done

SilphCo11FGiovanniApproachMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end

SilphCo11F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  0, SILPH_CO_ELEVATOR, 1
	warp_event 14,  0, SILPH_CO_10F, 2
	warp_event  3,  3, SILPH_CO_7F, 5 ; 11F-3

	def_coord_events
	coord_event  6, 13, SCENE_SILPHCO11F_GIOVANNI, SilphCo11FGiovanniEncounter
	coord_event  7, 12, SCENE_SILPHCO11F_GIOVANNI, SilphCo11FGiovanniEncounter

	def_bg_events
	bg_event  6, 13, BGEVENT_IFNOTSET, SilphCo11F_Door1
	bg_event  7, 13, BGEVENT_IFNOTSET, SilphCo11F_Door1
	bg_event 13,  8, BGEVENT_IFNOTSET, SilphCo11F_Door2
	bg_event 13,  9, BGEVENT_IFNOTSET, SilphCo11F_Door2
	bg_event 10, 12, BGEVENT_UP, SilphCo11FComputer
	bg_event 11, 12, BGEVENT_UP, SilphCo11FComputer

	def_object_events
	object_event  6,  9, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo11FGiovanniEncounter, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  3, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketExecutiveM2, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 15,  9, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM28, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 10,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilphCo11FReceptionist, -1
	object_event  7,  5, SPRITE_BUSINESSMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCo11FPresident, -1
