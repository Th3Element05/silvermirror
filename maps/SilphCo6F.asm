	object_const_def

SilphCo6F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo6FDoorsCallback

SilphCo6FDoorsCallback:
	checkevent EVENT_SILPH_CO_6F_DOOR_1
	iffalse .End
	changeblock 4, 12, $3e ; open door
.End
	endcallback

SilphCo6F_Door1:
	conditional_event EVENT_SILPH_CO_6F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 4, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_6F_DOOR_1
	end

SilphCo6FClerk1:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo6FClerk1Text
.Cleared
	jumptextfaceplayer SilphCo6FClerk1SavedText

SilphCo6FClerk1Text:
	text "The ROCKETs came"
	line "and took over the"
	cont "building!"
	done

SilphCo6FClerk1SavedText:
	text "Well, better get"
	line "back to work!"
	done

SilphCo6FClerk2:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo6FClerk2Text
.Cleared
	jumptextfaceplayer SilphCo6FClerk2SavedText

SilphCo6FClerk2Text:
	text "Oh dear, oh dear."
	line "Help me please!"
	done

SilphCo6FClerk2SavedText:
	text "We got engaged!"
	line "Heheh!"
	done

SilphCo6FReceptionist1:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo6FReceptionist1Text
.Cleared
	jumptextfaceplayer SilphCo6FReceptionist1SavedText

SilphCo6FReceptionist1Text:
	text "Look at him! He's"
	line "such a coward!"
	done

SilphCo6FReceptionist1SavedText:
	text "I feel so sorry"
	line "for him, I have"
	cont "to marry him!"
	done

SilphCo6FReceptionist2:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo6FReceptionist2Text
.Cleared
	jumptextfaceplayer SilphCo6FReceptionist2SavedText

SilphCo6FReceptionist2Text:
	text "TEAM ROCKET is"
	line "trying to conquer"
	cont "the world with"
	roll "#MON!"
	done

SilphCo6FReceptionist2SavedText:
	text "TEAM ROCKET ran"
	line "because of you!"
	done

SilphCo6FClerk3:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo6FClerk3Text
.Cleared
	jumptextfaceplayer SilphCo6FClerk3SavedText

SilphCo6FClerk3Text:
	text "They must have"
	line "targeted SILPH"
	cont "for our #MON"
	roll "products."
	done

SilphCo6FClerk3SavedText:
	text "Come work for"
	line "SILPH when you"
	cont "get older!"
	done

TrainerRocketGruntF6:
	trainer GRUNTF, GRUNTF_6, EVENT_BEAT_GRUNTF_6, GruntF6SeenText, GruntF6BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntF6AfterBattleText
	waitbutton
	closetext
	end

GruntF6SeenText:
	text "You dare betray"
	line "TEAM ROCKET?"
	done

GruntF6BeatenText:
	text "You traitor!"
	done

GruntF6AfterBattleText:
	text "If you stand for"
	line "justice, you"
	cont "betray evil!"
	done

TrainerScientistLowell:
	trainer SCIENTIST, LOWELL, EVENT_BEAT_SCIENTIST_LOWELL, ScientistLowellSeenText, ScientistLowellBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistLowellAfterBattleText
	waitbutton
	closetext
	end

ScientistLowellSeenText:
	text "That rotten"
	line "PRESIDENT!"

	para "He shouldn't have"
	line "sent me to the"
	cont "TIKSI BRANCH!"
	done

ScientistLowellBeatenText:
	text "Shoot!"
	done

ScientistLowellAfterBattleText:
	text "TIKSI BRANCH?"
	line "It's in northern"
	cont "no man's land!"
	done

TrainerRocketGruntM22:
	trainer GRUNTM, GRUNTM_22, EVENT_BEAT_GRUNTM_22, GruntM22SeenText, GruntM22BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM22AfterBattleText
	waitbutton
	closetext
	end

GruntM22SeenText:
	text "I am one of the 4"
	line "ROCKET BROTHERS!"
	done

GruntM22BeatenText:
	text "Flame out!"
	done

GruntM22AfterBattleText:
	text "No matter!"
	line "My brothers will"
	cont "avenge me!"
	done

; itemballs
SilphCo6FHPUp:
	itemball HP_UP

SilphCo6FXAccuracy:
	itemball X_ACCURACY

SilphCo6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 22,  0, SILPH_CO_7F, 3
	warp_event 20,  0, SILPH_CO_5F, 2
	warp_event  3,  3, SILPH_CO_4F, 4 ; 6F-4
	warp_event 23,  3, SILPH_CO_2F, 6 ; 6F-5

	def_coord_events

	def_bg_events
	bg_event  5, 12, BGEVENT_IFNOTSET, SilphCo6F_Door1
	bg_event  5, 13, BGEVENT_IFNOTSET, SilphCo6F_Door1

	def_object_events
	object_event 17,  3, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGruntF6, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  7,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistLowell, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 14, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGruntM22, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 10,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilphCo6FClerk1, -1
	object_event 20,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilphCo6FClerk2, -1
	object_event 21,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilphCo6FReceptionist1, -1
	object_event 11, 10, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCo6FReceptionist2, -1
	object_event 18, 13, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCo6FClerk3, -1
	object_event  3, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo6FHPUp, EVENT_SILPH_CO_6F_HP_UP
	object_event  2, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo6FXAccuracy, EVENT_SILPH_CO_6F_X_ACCURACY
