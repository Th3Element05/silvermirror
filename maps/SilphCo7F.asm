	object_const_def
	const SILPHCO7F_RIVAL

SilphCo7F_MapScripts:
	def_scene_scripts
	scene_script SilphCo7FNoop1Scene, SCENE_SILPHCO7F_RIVAL_BATTLE
	scene_script SilphCo7FNoop2Scene, SCENE_SILPHCO7F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo7FDoorsCallback

SilphCo7FDoorsCallback:
	checkevent EVENT_SILPH_CO_7F_DOOR_1
	iffalse .Next
	changeblock 20, 4, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_7F_DOOR_2
	iffalse .Next2
	changeblock 10, 6, $3c ; open door
.Next2
	checkevent EVENT_SILPH_CO_7F_DOOR_3
	iffalse .End
	changeblock 20, 12, $3c ; open door
.End
	endcallback

SilphCo7FNoop1Scene:
SilphCo7FNoop2Scene:
	end

SilphCo7F_Door1:
	conditional_event EVENT_SILPH_CO_7F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 20, 4, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_7F_DOOR_1
	end

SilphCo7F_Door2:
	conditional_event EVENT_SILPH_CO_7F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 10, 6, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_7F_DOOR_2
	end

SilphCo7F_Door3:
	conditional_event EVENT_SILPH_CO_7F_DOOR_3, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 20, 12, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_7F_DOOR_3
	end

SilphCo7FRivalEncounterHigh:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SilphCo7FRivalSeenText
	waitbutton
	closetext
	applymovement SILPHCO7F_RIVAL, SilphCo7FRivalApproachMovementLong
	sjump SilphCo7FRivalScript

SilphCo7FRivalEncounterLow:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SilphCo7FRivalSeenText
	waitbutton
	closetext
	applymovement SILPHCO7F_RIVAL, SilphCo7FRivalApproachMovementShort
	; fallthrough
SilphCo7FRivalScript:
	opentext
	writetext SilphCo7FRivalBeforeBattleText
	waitbutton
	closetext
	setlasttalked SILPHCO7F_RIVAL
	winlosstext SilphCo7FRivalBattleWinText, SilphCo7FRivalBattleLossText
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .RivalBulbasaur
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .RivalCharmander
	loadtrainer RIVAL2, RIVAL2_3_SQUIRTLE
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalBulbasaur
	loadtrainer RIVAL2, RIVAL2_3_BULBASAUR
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalCharmander
	loadtrainer RIVAL2, RIVAL2_3_CHARMANDER
	startbattle
	reloadmapafterbattle
;	sjump .FinishRival
	; fallthrough
.FinishRival
	opentext
	writetext SilphCo7FRivalAfterBattleText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	scall SilphCo7FRivalGoesAroundScript
	playsound SFX_WARP_FROM
	disappear SILPHCO7F_RIVAL
	waitsfx
	setscene SCENE_SILPHCO7F_NOOP
	special RestartMapMusic
	end

SilphCo7FRivalGoesAroundScript:
	readvar VAR_YCOORD
	ifequal 2, .Short
	applymovement SILPHCO7F_RIVAL, SilphCo7FRivalLeavesMovementLong
	end
.Short
	applymovement SILPHCO7F_RIVAL, SilphCo7FRivalLeavesMovementShort
	end

SilphCo7FRivalSeenText:
	text "<RIVAL>: What"
	line "kept you <PLAYER>?"
	done

SilphCo7FRivalBeforeBattleText:
	text "<RIVAL>: Hahaha!"
	line "I thought you'd"
	cont "turn up if I"
	cont "waited here!"

	para "I guess TEAM"
	line "ROCKET slowed you"
	cont "down!"

	para "Not that I care!"

	para "I saw you in"
	line "SAFFRON, so I"
	cont "decided to see if"
	cont "you got better!"
	done

SilphCo7FRivalBattleWinText:
	text "Oh ho!"
	line "So, you are ready"
	cont "for BOSS ROCKET!"
	done

SilphCo7FRivalBattleLossText:
	text "<RIVAL>: How can"
	line "I put this?"

	para "You're not good"
	line "enough to play"
	cont "with us big boys!"
	done

SilphCo7FRivalAfterBattleText:
	text "Well, <PLAYER>!"

	para "I'm moving on up"
	line "and ahead!"

	para "By checking my"
	line "#DEX, I'm"
	cont "starting to see"
	cont "what's strong and"
	cont "how they evolve!"

	para "I'm going to the"
	line "#MON LEAGUE"
	cont "to boot out the"
	cont "ELITE FOUR!"

	para "I'll become the"
	line "world's most"
	cont "powerful trainer!"

	para "<PLAYER>, well"
	line "good luck to you!"
	cont "Don't sweat it!"
	cont "Smell ya!"
	done

SilphCo7FLaprasGiftScript:
	checkevent EVENT_GOT_LAPRAS_FROM_SILPH_CO
	iftrue .GotLapras
	faceplayer
	opentext
	writetext SilphCo7FGiveLaprasText
	promptbutton
	givepoke LAPRAS, 15
	setevent EVENT_GOT_LAPRAS_FROM_SILPH_CO
	writetext SilphCo7FExplainLaprasText
	waitbutton
	closetext
	end

.GotLapras
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo7FClerkText
.Cleared
	jumptextfaceplayer SilphCo7FClerkSavedText

SilphCo7FGiveLaprasText:
	text "Oh! Hi! You're"
	line "not a ROCKET! You"
	cont "came to save us?"
	cont "Why, thank you!"

	para "I want you to"
	line "have this #MON"
	cont "for saving us."
	done

SilphCo7FExplainLaprasText:
	text "It's LAPRAS. It's"
	line "very intelligent."

	para "We kept it in our"
	line "lab, but it will"
	cont "be much better"
	cont "off with you!"

	para "I think you will"
	line "be a good trainer"
	cont "for LAPRAS!"
	done

SilphCo7FClerkText:
	text "TEAM ROCKET's"
	line "BOSS went to the"
	cont "boardroom! Is our"
	cont "PRESIDENT OK?"
	done

SilphCo7FClerkSavedText:
	text "Saved at last!"
	line "Thank you!"
	done

SilphCo7FReceptionist:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo7FReceptionistText
.Cleared
	jumptextfaceplayer SilphCo7FReceptionistSavedText

SilphCo7FReceptionistText:
	text "You! It's really"
	line "dangerous here!"
	cont "You came to save"
	cont "me? You can't!"
	done

SilphCo7FReceptionistSavedText:
	text "Safe at last!"
	line "Oh thank you!"
	done

SilphCo7FClerk1:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo7FClerk1Text
.Cleared
	jumptextfaceplayer SilphCo7FClerk1SavedText

SilphCo7FClerk1Text:
	text "TEAM ROCKET was"
	line "after the MASTER"
	cont "BALL which will"
	cont "catch any #MON!"
	done

SilphCo7FClerk1SavedText:
	text "We canceled the"
	line "MASTER BALL"
	cont "project because"
	cont "of TEAM ROCKET."
	done

SilphCo7FClerk2:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo7FClerk2Text
.Cleared
	jumptextfaceplayer SilphCo7FClerk2SavedText

SilphCo7FClerk2Text:
	text "It would be bad"
	line "if TEAM ROCKET"
	cont "took over SILPH"
	cont "or our #MON!"
	done

SilphCo7FClerk2SavedText:
	text "Wow! You chased"
	line "off TEAM ROCKET"
	cont "all by yourself?"
	done

TrainerRocketGruntM23:
	trainer GRUNTM, GRUNTM_23, EVENT_BEAT_GRUNTM_23, GruntM23SeenText, GruntM23BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM23AfterBattleText
	waitbutton
	closetext
	end

GruntM23SeenText:
	text "Oh ho! I smell a"
	line "little rat!"
	done

GruntM23BeatenText:
	text "Lights out!"
	done

GruntM23AfterBattleText:
	text "You won't find my"
	line "BOSS by just"
	cont "scurrying around!"
	done

TrainerRocketGruntF7:
	trainer GRUNTF, GRUNTF_7, EVENT_BEAT_GRUNTF_8, GruntF7SeenText, GruntF7BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntF7AfterBattleText
	waitbutton
	closetext
	end

GruntF7SeenText:
	text "A child intruder?"
	line "That must be you!"
	done

GruntF7BeatenText:
	text "Fine!"
	line "I lost!"
	done

GruntF7AfterBattleText:
	text "Go on home"
	line "before my BOSS"
	cont "gets ticked off!"
	done

TrainerScientistDannie:
	trainer SCIENTIST, DANNIE, EVENT_BEAT_SCIENTIST_DANNIE, ScientistDannieSeenText, ScientistDannieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistDannieAfterBattleText
	waitbutton
	closetext
	end

ScientistDannieSeenText:
	text "Heheh!"

	para "You mistook me for"
	line "a SILPH worker?"
	done

ScientistDannieBeatenText:
	text "I'm done!"
	done

ScientistDannieAfterBattleText:
	text "Despite your age,"
	line "you are a skilled"
	cont "trainer!"
	done

TrainerRocketGruntM24:
	trainer GRUNTM, GRUNTM_24, EVENT_BEAT_GRUNTM_24, GruntM24SeenText, GruntM24BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM24AfterBattleText
	waitbutton
	closetext
	end

GruntM24SeenText:
	text "I am one of the 4"
	line "ROCKET BROTHERS!"
	done

GruntM24BeatenText:
	text "Aack!"
	line "Brothers, I lost!"
	done

GruntM24AfterBattleText:
	text "Doesn't matter."
	line "My brothers will"
	cont "repay the favor!"
	done

SilphCo7FRivalApproachMovementLong:
	slow_step UP
SilphCo7FRivalApproachMovementShort:
	slow_step UP
	slow_step UP
	step_end

SilphCo7FRivalLeavesMovementLong:
	slow_step LEFT
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step DOWN
	teleport_from
	step_end

SilphCo7FRivalLeavesMovementShort:
	slow_step RIGHT
	slow_step RIGHT
	teleport_from
	step_end

; itemballs
SilphCo7FCalcium:
	itemball CALCIUM

SilphCo7FTMSwordsDance:
	itemball TM_SWORDS_DANCE

SilphCo7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 20,  0, SILPH_CO_8F, 3
	warp_event 22,  0, SILPH_CO_6F, 2
	warp_event  5,  3, SILPH_CO_3F, 7 ; 7F-4
	warp_event  5,  7, SILPH_CO_11F, 3 ; 7F-5
	warp_event 21, 15, SILPH_CO_5F, 4 ; 7F-6

	def_coord_events
	coord_event  3,  2, SCENE_SILPHCO7F_RIVAL_BATTLE, SilphCo7FRivalEncounterHigh
	coord_event  3,  3, SCENE_SILPHCO7F_RIVAL_BATTLE, SilphCo7FRivalEncounterLow

	def_bg_events
	bg_event 20,  4, BGEVENT_IFNOTSET, SilphCo7F_Door1
	bg_event 21,  4, BGEVENT_IFNOTSET, SilphCo7F_Door1
	bg_event 10,  6, BGEVENT_IFNOTSET, SilphCo7F_Door2
	bg_event 11,  6, BGEVENT_IFNOTSET, SilphCo7F_Door2
	bg_event 20, 12, BGEVENT_IFNOTSET, SilphCo7F_Door3
	bg_event 21, 12, BGEVENT_IFNOTSET, SilphCo7F_Door3

	def_object_events
	object_event  3,  6, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo7FRivalScript, EVENT_SILPH_CO_7F_RIVAL
	object_event 13,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM23, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 19,  2, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGruntF7, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  2, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistDannie, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 19, 14, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM24, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  1,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilphCo7FLaprasGiftScript, -1
	object_event 10,  8, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCo7FReceptionist, -1
	object_event 13, 13, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilphCo7FClerk1, -1
	object_event  7, 10, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilphCo7FClerk2, -1
	object_event  1,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo7FCalcium, EVENT_SILPH_CO_7F_CALCIUM
	object_event 24, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SilphCo7FTMSwordsDance, EVENT_SILPH_CO_7F_TM_SWORDS_DANCE
