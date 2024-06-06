	object_const_def

SilphCo10F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo10FDoorsCallback

SilphCo10FDoorsCallback:
	checkevent EVENT_SILPH_CO_10F_DOOR_1
	iffalse .End
	changeblock 10, 8, $3e ; open door
.End
	endcallback

SilphCo10F_Door1:
	conditional_event EVENT_SILPH_CO_10F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 10, 8, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_10F_DOOR_1
	end

SilphCo10FReceptionist:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo10FReceptionistText
.Cleared
	jumptextfaceplayer SilphCo10FReceptionistSavedText

SilphCo10FReceptionistText:
	text "Waaaaa!"
	line "I'm scared!"
	done

SilphCo10FReceptionistSavedText:
	text "Please keep quiet"
	line "about my crying!"
	done

TrainerScientistWeston:
	trainer SCIENTIST, WESTON, EVENT_BEAT_SCIENTIST_WESTON, ScientistWestonSeenText, ScientistWestonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistWestonAfterBattleText
	waitbutton
	closetext
	end

ScientistWestonSeenText:
	text "Enough of your"
	line "silly games!"
	done

ScientistWestonBeatenText:
	text "No continues"
	line "left!"
	done

ScientistWestonAfterBattleText:
	text "Are you satisfied"
	line "with beating me?"
	cont "Then go on home!"
	done

TrainerRocketGruntM27:
	trainer GRUNTM, GRUNTM_27, EVENT_BEAT_GRUNTM_27, GruntM27SeenText, GruntM27BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM27AfterBattleText
	waitbutton
	closetext
	end

GruntM27SeenText:
	text "Welcome to the"
	line "10F! So good of"
	cont "you to join me!"
	done

GruntM27BeatenText:
	text "I'm stunned!"
	done

GruntM27AfterBattleText:
	text "Nice try, but the"
	line "boardroom is up"
	cont "one more floor!"
	done

; itemballs
SilphCo10FCarbos:
	itemball CARBOS

SilphCo10FTMEarthquake:
	itemball TM_EARTHQUAKE

SilphCo10FRareCandy:
	itemball RARE_CANDY

SilphCo10F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, SILPH_CO_ELEVATOR, 1
	warp_event 12,  0, SILPH_CO_11F, 2
	warp_event 10,  0, SILPH_CO_9F, 2
	warp_event 13,  7, SILPH_CO_4F, 6 ; 10F-4
	warp_event  9, 11, SILPH_CO_4F, 5 ; 10F-5
	warp_event 13, 15, SILPH_CO_4F, 7 ; 10F-6

	def_coord_events

	def_bg_events
	bg_event 10,  8, BGEVENT_IFNOTSET, SilphCo10F_Door1
	bg_event 11,  8, BGEVENT_IFNOTSET, SilphCo10F_Door1

	def_object_events
	object_event 11,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerScientistWeston, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  1,  9, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM27, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  9, 15, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilphCo10FReceptionist, -1
	object_event  5, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo10FCarbos, EVENT_SILPH_CO_10F_CARBOS
	object_event  2, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SilphCo10FTMEarthquake, EVENT_SILPH_CO_10F_TM_EARTHQUAKE
	object_event  4, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo10FRareCandy, EVENT_SILPH_CO_10F_RARE_CANDY
