	object_const_def

SilphCo2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo2FDoorsCallback

SilphCo2FDoorsCallback:
	checkevent EVENT_SILPH_CO_2F_DOOR_1
	iffalse .Next
	changeblock 4, 4, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_2F_DOOR_2
	iffalse .End
	changeblock 4, 10, $3c ; open door
.End
	endcallback

SilphCo2F_Door1:
	conditional_event EVENT_SILPH_CO_2F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 4, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_2F_DOOR_1
	end

SilphCo2F_Door2:
	conditional_event EVENT_SILPH_CO_2F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 10, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_2F_DOOR_2
	end

SilphCo2FReceptionist:
	opentext
	checkevent EVENT_GOT_TM36_SELFDESTRUCT
	iftrue .GotSelfdestruct
	writetext SilphCo2FReceptionistEeekText
	waitbutton
	faceplayer
	writetext SilphCo2FReceptionistTakeThisText
	promptbutton
	verbosegiveitem TM_SELFDESTRUCT
	promptbutton
	setevent EVENT_GOT_TM36_SELFDESTRUCT
.GotSelfdestruct
	writetext SilphCo2FReceptionistExplainText
	waitbutton
	closetext
	end
	
SilphCo2FReceptionistEeekText:
	text "Eeek!"
	line "No! Stop! Help!"
	done

SilphCo2FReceptionistTakeThisText:
	text "Oh, you're not"
	line "with TEAM ROCKET."
	cont "I thought..."
	cont "I'm sorry. Here,"
	cont "please take this!"
	done

SilphCo2FReceptionistExplainText:
	text "TM36 is"
	line "SELFDESTRUCT!"

	para "It's powerful, but"
	line "the #MON that"
	cont "uses it faints!"
	cont "Be careful."
	done

TrainerRocketGruntM16:
	trainer GRUNTM, GRUNTM_16, EVENT_BEAT_GRUNTM_16, GruntM16SeenText, GruntM16BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM16AfterBattleText
	waitbutton
	closetext
	end

GruntM16SeenText:
	text "Hey kid! What are"
	line "you doing here?"
	done

GruntM16BeatenText:
	text "I goofed!"
	done

GruntM16AfterBattleText:
	text "SILPH CO. will"
	line "be merged with"
	cont "TEAM ROCKET!"
	done

TrainerRocketGruntM17:
	trainer GRUNTM, GRUNTM_17, EVENT_BEAT_GRUNTM_17, GruntM17SeenText, GruntM17BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM17AfterBattleText
	waitbutton
	closetext
	end

GruntM17SeenText:
	text "No kids are"
	line "allowed in here!"
	done

GruntM17BeatenText:
	text "Tough!"
	done

GruntM17AfterBattleText:
	text "Diamond shaped"
	line "tiles are"
	cont "teleport blocks!"

	para "They're hi-tech"
	line "transporters!"
	done

TrainerScientistRoss:
	trainer SCIENTIST, ROSS, EVENT_BEAT_SCIENTIST_ROSS, ScientistRossSeenText, ScientistRossBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistRossAfterBattleText
	waitbutton
	closetext
	end

ScientistRossSeenText:
	text "Help! I'm a SILPH"
	line "employee."
	done

ScientistRossBeatenText:
	text "How did you know"
	line "I was a ROCKET?"
	done

ScientistRossAfterBattleText:
	text "I work for both"
	line "SILPH and TEAM"
	cont "ROCKET!"
	done

TrainerScientistMitch:
	trainer SCIENTIST, MITCH, EVENT_BEAT_SCIENTIST_MITCH, ScientistMitchSeenText, ScientistMitchBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistMitchAfterBattleText
	waitbutton
	closetext
	end

ScientistMitchSeenText:
	text "It's off limits"
	line "here! Go home!"
	done

ScientistMitchBeatenText:
	text "You're good."
	done

ScientistMitchAfterBattleText:
	text "The warp panels"
	line "can be confusing!"

	para "Unless you know"
	line "where they go!"
	done

SilphCo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 26,  0, SILPH_CO_3F, 3
	warp_event 24,  0, SILPH_CO_1F, 2
	warp_event  3,  3, SILPH_CO_3F, 5 ; 2F-4
	warp_event 13,  3, SILPH_CO_8F, 7 ; 2F-5
	warp_event  9, 15, SILPH_CO_6F, 5 ; 2F-6
	warp_event 27, 15, SILPH_CO_8F, 4 ; 2F-7

	def_coord_events

	def_bg_events
	bg_event  4,  4, BGEVENT_IFNOTSET, SilphCo2F_Door1
	bg_event  5,  4, BGEVENT_IFNOTSET, SilphCo2F_Door1
	bg_event  4, 10, BGEVENT_IFNOTSET, SilphCo2F_Door2
	bg_event  5, 10, BGEVENT_IFNOTSET, SilphCo2F_Door2
	def_object_events
	object_event 24,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM16, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 16, 11, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM17, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  5, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistRoss, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 24, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerScientistMitch, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 10,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilphCo2FReceptionist, -1
