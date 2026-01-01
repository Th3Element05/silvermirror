	object_const_def
	const RADIOTOWER3F_BLUE

RadioTower3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RadioTower3FCardKeyShutterCallback

RadioTower3FCardKeyShutterCallback:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iffalse .StayOpen
	checkevent EVENT_USED_RADIO_TOWER_CARD_KEY
	iftrue .StayOpen
	changeblock 14, 2, $28 ; closed key slot
	changeblock 14, 4, $29 ; closed gate
.StayOpen
	endcallback

; takeover
RadioTower3FBlueScript:
	jumptextfaceplayer RadioTower3FBlueText
RadioTower3FBlueText:
	text "<RIVAL>: <PLAYER>!"
	
	para "GRAMPS is through"
	line "here, but the gate"
	cont "is locked!"
	done

; -1
RadioTower3FCooltrainerFScript:
	checkevent EVENT_GOT_NUGGET_FROM_RADIO_TOWER
	iftrue .GotNugget
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .SavedOak
	checkevent EVENT_USED_RADIO_TOWER_CARD_KEY
	iftrue .UsedCardKey
	checkevent EVENT_GOT_RADIO_TOWER_CARD_KEY
	iftrue .GotCardKey
	jumptextfaceplayer RadioTower3FCooltrainerFLockedGateText

.GotCardKey:
	jumptextfaceplayer RadioTower3FCooltrainerFHaveKeyText

.UsedCardKey:
	jumptextfaceplayer RadioTower3FCooltrainerFGateOpenText

.SavedOak:
	faceplayer
	opentext
	writetext RadioTower3FCooltrainerFYoureAHeroText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .NoRoom
	setevent EVENT_GOT_NUGGET_FROM_RADIO_TOWER
.NoRoom:
	closetext
	end

.GotNugget:
	jumptextfaceplayer RadioTower3FCooltrainerFYouWereMarvelousText

RadioTower3FCooltrainerFLockedGateText:
	text "Some maniac ran"
	line "through and locked"
	cont "the security gate"
	cont "behind him!"

	para "But the DIRECTOR"
	line "can open it."

	para "He's up on the"
	line "fifth floor."
	done

RadioTower3FCooltrainerFHaveKeyText:
	text "The DIRECTOR gave"
	line "you his card key?"

	para "Use it to open"
	line "the gate!"
	done

RadioTower3FCooltrainerFGateOpenText:
	text "You got the gate"
	line "open!"
	done

RadioTower3FCooltrainerFYoureAHeroText:
	text "Thank you!"
	line "You're a hero!"

	para "This is a token of"
	line "my appreciation."
	done

;RadioTower3FCooltrainerFBrightpowderText:
;	text "It's BRIGHTPOWDER."
;
;	para "A #MON will be"
;	cont "harder to hit if"
;	cont "it holds it."
;	done

RadioTower3FCooltrainerFYouWereMarvelousText:
	text "You were simply"
	line "marvelous!"
	done

; civilians
RadioTower3FGymGuideScript:
	jumptextfaceplayer RadioTower3FGymGuideText
RadioTower3FGymGuideText:
	text "We run 24 hours a"
	line "day to broadcast"
	cont "entertaining pro-"
	cont "grams."

	para "I'll do my best to"
	line "run around the"
	cont "clock too!"
	done

; after
RadioTower3FSuperNerdScript:
	jumptextfaceplayer RadioTower3FSuperNerdText
RadioTower3FSuperNerdText:
	text "We have recordings"
	line "of the cries of"
	cont "all #MON that"
	cont "have been found."

	para "We must have over"
	line "200 kinds."
	done

; misc
CardKeySlotScript:: ;export for using CARD KEY from bag
	opentext
	writetext RadioTower3FCardKeySlotText
	waitbutton
	checkevent EVENT_USED_RADIO_TOWER_CARD_KEY
	iftrue .EndCardKey
	checkitem CARD_KEY_R
	iftrue .Open
	checkitem CARD_KEY
	iftrue .WrongCardKey
	writetext RadioTower3FNeedCardKeyText
	waitbutton
.EndCardKey
	closetext
	end

.WrongCardKey:
	writetext RadioTower3FInsertedTheCardKeyText
	waitbutton
	playsound SFX_WRONG
	writetext RadioTower3FWrongCardKeyText
	waitbutton
	closetext
	end

.Open:
	writetext RadioTower3FInsertedTheCardKeyText
	waitbutton
	playsound SFX_ENTER_DOOR
	changeblock 14, 2, $2a ; open shutter
	changeblock 14, 4, $01 ; floor
	reloadmappart
	closetext
	setevent EVENT_USED_RADIO_TOWER_CARD_KEY
	waitsfx
	showemote EMOTE_SHOCK, RADIOTOWER3F_BLUE, 15
	turnobject RADIOTOWER3F_BLUE, UP
	opentext
	writetext RadioTower3FBlue_GateOpenText
	waitbutton
	closetext
	applymovement RADIOTOWER3F_BLUE, RadioTower3FBlueRunsUpstairsMovement
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER3F_BLUE
	clearevent EVENT_RADIO_TOWER_4F_BLUE
	end

RadioTower3FCardKeySlotText:
	text "It's the CARD KEY"
	line "slot."
	done

RadioTower3FNeedCardKeyText:
	text "You don't have a"
	line "CARD KEY."
	done

RadioTower3FInsertedTheCardKeyText:
	text "<PLAYER> inserted"
	line "the CARD KEY."
	done

RadioTower3FWrongCardKeyText:
	text "The CARD KEY from"
	line "SILPH CO. doesn't"
	cont "work here."
	done

RadioTower3FBlue_GateOpenText:
	text "<RIVAL>: You got"
	line "the gate open!"

	para "Let's go!"
	done

RadioTower3FBlueRunsUpstairsMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

RadioTower3FPersonnelSign:
	jumptext RadioTower3FPersonnelSignText
RadioTower3FPersonnelSignText:
	text "3F PERSONNEL"
	done

RadioTower3FPokemonMusicSign:
	jumptext RadioTower3FPokemonMusicSignText
RadioTower3FPokemonMusicSignText:
	text "#MON MUSIC with"
	line "Host DJ BEN"
	done

RadioTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_2F, 1 ;1
	warp_event  7,  0, RADIO_TOWER_4F, 2 ;2
	warp_event 17,  0, RADIO_TOWER_4F, 4 ;3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower3FPersonnelSign
	bg_event  9,  0, BGEVENT_READ, RadioTower3FPokemonMusicSign
	bg_event 14,  2, BGEVENT_UP, CardKeySlotScript

	def_object_events
	object_event 14,  4, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower3FBlueScript, EVENT_RADIO_TOWER_3F_BLUE
	object_event 11,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower3FCooltrainerFScript, -1
	object_event  3,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower3FGymGuideScript, EVENT_RADIO_TOWER_CIVILIANS
	object_event  7,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RadioTower3FSuperNerdScript, EVENT_RADIO_TOWER_CIVILIANS_AFTER
;	object_event  5,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM7, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event  6,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM8, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event 16,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM9, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	object_event  9,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerScientistMarc, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
