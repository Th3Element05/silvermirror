	object_const_def

SilphCo5F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo5FDoorsCallback

SilphCo5FDoorsCallback:
	checkevent EVENT_SILPH_CO_5F_DOOR_1
	iffalse .Next
	changeblock 6, 4, $3e ; open door
.Next
	checkevent EVENT_SILPH_CO_5F_DOOR_2
	iffalse .Next2
	changeblock 14, 10, $3e ; open door
.Next2
	checkevent EVENT_SILPH_CO_5F_DOOR_3
	iffalse .End
	changeblock 6, 12, $3e ; open door
.End
	endcallback

SilphCo5F_Door1:
	conditional_event EVENT_SILPH_CO_5F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 4, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_5F_DOOR_1
	end

SilphCo5F_Door2:
	conditional_event EVENT_SILPH_CO_5F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 14, 10, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_5F_DOOR_2
	end

SilphCo5F_Door3:
	conditional_event EVENT_SILPH_CO_5F_DOOR_3, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 6, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_5F_DOOR_3
	end


SilphCo5FClerk:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo5FClerkText
.Cleared
	jumptextfaceplayer SilphCo5FClerkSavedText

SilphCo5FClerkText:
	ntag "MAN:"
	text "TEAM ROCKET is"
	line "in an uproar over"
	cont "some intruder."
	roll "That's you right?"
	done

SilphCo5FClerkSavedText:
	ntag "MAN:"
	text "TEAM ROCKET took"
	line "off! You're our"
	cont "hero! Thank you!"
	done

TrainerScientistRich:
	trainer SCIENTIST, RICH, EVENT_BEAT_SCIENTIST_RICH, ScientistRichSeenText, ScientistRichBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistRichAfterBattleText
	waitbutton
	closetext
	end

ScientistRichSeenText:
	ntag "SCIENTIST:"
	text "We study #BALL"
	line "technology on this"
	cont "floor!"
	done

ScientistRichBeatenText:
	ntag "RICH:"
	text "Dang!"
	line "Blast it!"
	done

ScientistRichAfterBattleText:
	ntag "SCIENTIST:"
	text "We worked on the"
	line "ultimate #BALL"
	cont "which could catch"
	roll "anything!"
	done

TrainerRocketGruntM21:
	trainer GRUNTM, GRUNTM_21, EVENT_BEAT_GRUNTM_21, GruntM21SeenText, GruntM21BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM21AfterBattleText
	waitbutton
	closetext
	end

GruntM21SeenText:
	ntag "ROCKET:"
	text "Show TEAM ROCKET"
	line "a little respect!"
	done

GruntM21BeatenText:
	ntag "ROCKET:"
	text "Cough…"
	line "Cough…"
	done

GruntM21AfterBattleText:
	ntag "ROCKET:"
	text "Which reminds me."

	para "KOFFING evolves"
	line "into WEEZING!"
	done

TrainerJugglerFritz:
	trainer JUGGLER, FRITZ, EVENT_BEAT_JUGGLER_FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext JugglerFritzAfterBattleText
	waitbutton
	closetext
	end

JugglerFritzSeenText:
	ntag "JUGGLER:"
	text "Whaaat? There"
	line "shouldn't be any"
	cont "children here?"
	done

JugglerFritzBeatenText:
	ntag "FRITZ:"
	text "Oh goodness!"
	done

JugglerFritzAfterBattleText:
	ntag "JUGGLER:"
	text "It's not smart"
	line "to pick a fight"
	cont "with TEAM ROCKET!"
	done

TrainerRocketGruntF5:
	trainer GRUNTF, GRUNTF_5, EVENT_BEAT_GRUNTF_5, GruntF5SeenText, GruntF5BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntF5AfterBattleText
	waitbutton
	closetext
	end

GruntF5SeenText:
	ntag "ROCKET:"
	text "I heard a kid was"
	line "wandering around."
	done

GruntF5BeatenText:
	ntag "ROCKET:"
	text "Boom!"
	done

GruntF5AfterBattleText:
	ntag "ROCKET:"
	text "You're only on 5F."
	line "It's a long way"
	cont "to my BOSS!"
	done

SilphCo5FReport1:
	jumptext SilphCo5FReport1Text
SilphCo5FReport1Text:
	text "It's a #MON"
	line "REPORT!"

	para "#MON LAB"
	line "created PORYGON,"
	cont "the first virtual"
	roll "reality #MON."
	done

SilphCo5FReport2:
	jumptext SilphCo5FReport2Text
SilphCo5FReport2Text:
	text "It's a #MON"
	line "REPORT!"

	para "Over 200 #MON"
	line "techniques have"
	cont "been confirmed."
	done

SilphCo5FReport3:
	jumptext SilphCo5FReport3Text
SilphCo5FReport3Text:
	text "It's a #MON"
	line "REPORT!"

	para "Some #MON will"
	line "evolve when traded"
	cont "by link-cable."
	done


; itemballs
SilphCo5FProtein:
	itemball PROTEIN

SilphCo5FTMSubmission:
	itemball TM_SUBMISSION

SilphCo5FCardKey:
	itemball CARD_KEY


; hidden items
SilphCo5FHiddenElixer:
	hiddenitem ELIXER, EVENT_SILPH_CO_5F_HIDDEN_ELIXER


SilphCoPokeballPCScript:
	jumptext SilphCoPokeballPCText
SilphCoPokeballPCText:
	text "It's #BALL"
	line "research data."
	done


SilphCo5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 26,  0, SILPH_CO_6F, 3
	warp_event 24,  0, SILPH_CO_4F, 2
	warp_event 27,  3, SILPH_CO_7F, 6 ; 5F-4
	warp_event 11,  5, SILPH_CO_3F, 4 ; 5F-5
	warp_event  3, 15, SILPH_CO_3F, 9 ; 5F-6
	warp_event  9, 15, SILPH_CO_9F, 5 ; 5F-7

	def_coord_events

	def_bg_events
	bg_event 20,  0, BGEVENT_READ, SilphCoElevatorButton
	bg_event  7,  4, BGEVENT_IFNOTSET, SilphCo5F_Door1
	bg_event  7,  5, BGEVENT_IFNOTSET, SilphCo5F_Door1
	bg_event 15, 10, BGEVENT_IFNOTSET, SilphCo5F_Door2
	bg_event 15, 11, BGEVENT_IFNOTSET, SilphCo5F_Door2
	bg_event  7, 12, BGEVENT_IFNOTSET, SilphCo5F_Door3
	bg_event  7, 13, BGEVENT_IFNOTSET, SilphCo5F_Door3
	bg_event 12,  3, BGEVENT_ITEM, SilphCo5FHiddenElixer
	bg_event 17,  5, BGEVENT_READ, SilphCoCopierScript
	bg_event  2,  4, BGEVENT_UP, SilphCoPokeballPCScript
	bg_event  3,  4, BGEVENT_UP, SilphCoPokeballPCScript
	bg_event 12, 12, BGEVENT_UP, SilphCoPokeballPCScript
	bg_event 13, 12, BGEVENT_UP, SilphCoPokeballPCScript

	def_object_events
	object_event  8,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistRich, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 28,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM21, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 18, 10, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerJugglerFritz, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  8, 16, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRocketGruntF5, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 13,  9, SPRITE_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FClerk, -1
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5FProtein, EVENT_SILPH_CO_5F_PROTEIN
	object_event  2, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SilphCo5FTMSubmission, EVENT_SILPH_CO_5F_TM_SUBMISSION
	object_event 21, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5FCardKey, EVENT_SILPH_CO_5F_CARD_KEY
	object_event 23,  6, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FReport3, -1
	object_event 25, 10, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FReport2, -1
	object_event 22, 12, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FReport1, -1
