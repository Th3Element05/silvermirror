	object_const_def

SilphCo4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo4FDoorsCallback

SilphCo4FDoorsCallback:
	checkevent EVENT_SILPH_CO_4F_DOOR_1
	iffalse .Next
	changeblock 12, 8, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_4F_DOOR_2
	iffalse .End
	changeblock 4, 12, $3c ; open door
.End
	endcallback

SilphCo4F_Door1:
	conditional_event EVENT_SILPH_CO_4F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 12, 8, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_4F_DOOR_1
	end

SilphCo4F_Door2:
	conditional_event EVENT_SILPH_CO_4F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 12, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_4F_DOOR_2
	end

SilphCo4FClerk:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	faceplayer
	opentext
	writetext SilphCo4FClerkText
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end
.Cleared
	jumptextfaceplayer SilphCo4FClerkSavedText

SilphCo4FClerkText:
	text "Sssh! Can't you"
	line "see I'm hiding?"
	done

SilphCo4FClerkSavedText:
	text "Huh? TEAM ROCKET"
	line "is gone?"
	done

TrainerScientistMarc:
	trainer SCIENTIST, MARC, EVENT_BEAT_SCIENTIST_MARC, ScientistMarcSeenText, ScientistMarcBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistMarcAfterBattleText
	waitbutton
	closetext
	end

ScientistMarcSeenText:
	text "My #MON are my"
	line "loyal soldiers!"
	done

ScientistMarcBeatenText:
	text "Darn!"
	line "You weak #MON!"
	done

ScientistMarcAfterBattleText:
	text "The doors are"
	line "electronically"
	cont "locked! A CARD"
	roll "KEY opens them!"
	done

TrainerRocketGruntM19:
	trainer GRUNTM, GRUNTM_19, EVENT_BEAT_GRUNTM_19, GruntM19SeenText, GruntM19BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM19AfterBattleText
	waitbutton
	closetext
	end

GruntM19SeenText:
	text "Intruder spotted!"
	done

GruntM19BeatenText:
	text "Who are you?"
	done

GruntM19AfterBattleText:
	text "I better tell the"
	line "BOSS on 11F!"
	done

TrainerRocketGruntM20:
	trainer GRUNTM, GRUNTM_20, EVENT_BEAT_GRUNTM_20, GruntM20SeenText, GruntM20BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM20AfterBattleText
	waitbutton
	closetext
	end

GruntM20SeenText:
	text "TEAM ROCKET has"
	line "taken command of"
	cont "SILPH CO.!"
	done

GruntM20BeatenText:
	text "Arrgh!"
	done

GruntM20AfterBattleText:
	text "Fwahahaha!"
	line "My BOSS has been"
	cont "after this place!"
	done

; itemballs
SilphCo4FFullHeal:
	itemball FULL_HEAL

SilphCo4FMaxRevive:
	itemball MAX_REVIVE

SilphCo4FEscapeRope:
	itemball ESCAPE_ROPE

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 26,  0, SILPH_CO_5F, 3
	warp_event 24,  0, SILPH_CO_3F, 2
	warp_event 17,  3, SILPH_CO_6F, 4 ; 4F-4
	warp_event 11,  7, SILPH_CO_10F, 5 ; 4F-5
	warp_event 17, 11, SILPH_CO_10F, 4 ; 4F-6
	warp_event  3, 15, SILPH_CO_10F, 6 ; 4F-7

	def_coord_events

	def_bg_events
	bg_event 12,  8, BGEVENT_IFNOTSET, SilphCo4F_Door1
	bg_event 13,  8, BGEVENT_IFNOTSET, SilphCo4F_Door1
	bg_event  4, 12, BGEVENT_IFNOTSET, SilphCo4F_Door2
	bg_event  5, 12, BGEVENT_IFNOTSET, SilphCo4F_Door2

	def_object_events
	object_event 14,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistMarc, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 26, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM19, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  9, 14, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM20, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  6,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilphCo4FClerk, -1
	object_event  3,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo4FFullHeal, EVENT_SILPH_CO_4F_FULL_HEAL
	object_event  4,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo4FMaxRevive, EVENT_SILPH_CO_4F_MAX_REVIVE
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo4FEscapeRope, EVENT_SILPH_CO_4F_ESCAPE_ROPE
