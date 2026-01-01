	object_const_def

SilphCo8F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo8FDoorsCallback

SilphCo8FDoorsCallback:
	checkevent EVENT_SILPH_CO_8F_DOOR_1
	iffalse .End
	changeblock 6, 8, $3e ; open door
.End
	endcallback

SilphCo8F_Door1:
	conditional_event EVENT_SILPH_CO_8F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_8F_DOOR_1
	end

SilphCo8FClerk:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo8FClerkText
.Cleared
	jumptextfaceplayer SilphCo8FClerkSavedText

SilphCo8FClerkText:
	text "I wonder if SILPH"
	line "is finished…"
	done

SilphCo8FClerkSavedText:
	text "Thanks for saving"
	line "us!"
	done

TrainerScientistLinden:
	trainer SCIENTIST, LINDEN, EVENT_BEAT_SCIENTIST_LINDEN, ScientistLindenSeenText, ScientistLindenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistLindenAfterBattleText
	waitbutton
	closetext
	end

ScientistLindenSeenText:
	text "You're causing us"
	line "problems!"
	done

ScientistLindenBeatenText:
	text "Huh?"
	line "I lost?"
	done

ScientistLindenAfterBattleText:
	text "So, what do you"
	line "think of SILPH's"
	cont "teleporters?"
	done

TrainerRocketGruntF8:
	trainer GRUNTF, GRUNTF_8, EVENT_BEAT_GRUNTF_8, GruntF8SeenText, GruntF8BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntF8AfterBattleText
	waitbutton
	closetext
	end

GruntF8SeenText:
	text "That's as far as"
	line "you'll go!"
	done

GruntF8BeatenText:
	text "Not enough"
	line "grit!"
	done

GruntF8AfterBattleText:
	text "If you don't turn"
	line "back, I'll call"
	cont "for backup!"
	done

TrainerRocketGruntM25:
	trainer GRUNTM, GRUNTM_25, EVENT_BEAT_GRUNTM_25, GruntM25SeenText, GruntM25BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM25AfterBattleText
	waitbutton
	closetext
	end

GruntM25SeenText:
	text "I am one of the 4"
	line "ROCKET BROTHERS!"
	done

GruntM25BeatenText:
	text "Whoo!"
	line "Oh brothers!"
	done

GruntM25AfterBattleText:
	text "I'll leave you up"
	line "to my brothers!"
	done

SilphCo8F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 22,  0, SILPH_CO_9F, 3
	warp_event 20,  0, SILPH_CO_7F, 2
	warp_event 11,  5, SILPH_CO_2F, 7 ; 8F-4
	warp_event 11,  9, SILPH_CO_8F, 6 ; 8F-5
	warp_event  3, 11, SILPH_CO_8F, 5 ; 8F-6
	warp_event  3, 15, SILPH_CO_2F, 5 ; 8F-7

	def_coord_events

	def_bg_events
	bg_event  7,  8, BGEVENT_IFNOTSET, SilphCo8F_Door1
	bg_event  7,  9, BGEVENT_IFNOTSET, SilphCo8F_Door1

	def_object_events
	object_event 10,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerScientistLinden, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 19,  2, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntF8, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 13, 15, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM25, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo8FClerk, -1
