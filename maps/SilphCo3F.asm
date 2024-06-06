	object_const_def

SilphCo3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo3FDoorsCallback

SilphCo3FDoorsCallback:
	checkevent EVENT_SILPH_CO_3F_DOOR_1
	iffalse .Next
	changeblock 8, 8, $3e ; open door
.Next
	checkevent EVENT_SILPH_CO_3F_DOOR_2
	iffalse .End
	changeblock 16, 8, $3e ; open door
.End
	endcallback

SilphCo3F_Door1:
	conditional_event EVENT_SILPH_CO_3F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 8, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_3F_DOOR_1
	end

SilphCo3F_Door2:
	conditional_event EVENT_SILPH_CO_3F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 16, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_3F_DOOR_2
	end

SilphCo3FClerk:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo3FClerkText
.Cleared
	jumptextfaceplayer SilphCo3FClerkSavedText

SilphCo3FClerkText:
	text "I work for SILPH."
	line "What should I do?"
	done

SilphCo3FClerkSavedText:
	text "<PLAYER>! You"
	line "and your #MON"
	cont "saved us!"
	done

TrainerRocketGruntM18:
	trainer GRUNTM, GRUNTM_18, EVENT_BEAT_GRUNTM_18, GruntM18SeenText, GruntM18BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM18AfterBattleText
	waitbutton
	closetext
	end

GruntM18SeenText:
	text "Quit messing with"
	line "us, kid!"
	done

GruntM18BeatenText:
	text "I give up!"
	done

GruntM18AfterBattleText:
	text "You can only open"
	line "the doors with a"
	cont "CARD KEY!"
	done

TrainerScientistJed:
	trainer SCIENTIST, JED, EVENT_BEAT_SCIENTIST_JED, ScientistJedSeenText, ScientistJedBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistJedAfterBattleText
	waitbutton
	closetext
	end

ScientistJedSeenText:
	text "I support TEAM"
	line "ROCKET more than"
	cont "I support SILPH!"
	done

ScientistJedBeatenText:
	text "You really"
	line "got me!"
	done

ScientistJedAfterBattleText:
	text "Humph..."

	para "TEAM ROCKET said"
	line "that if I helped"
	cont "them, they'd let"
	cont "me study #MON!"
	done

;  itemballs
SilphCo3FHyperPotion:
	itemball HYPER_POTION

SilphCo3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 24,  0, SILPH_CO_4F, 3
	warp_event 26,  0, SILPH_CO_2F, 2
	warp_event  3,  3, SILPH_CO_5F, 5 ; 3F-4
	warp_event 27,  3, SILPH_CO_2F, 4 ; 3F-5
	warp_event  3, 11, SILPH_CO_9F, 4 ; 3F-6
	warp_event 11, 11, SILPH_CO_7F, 4 ; 3F-7
	warp_event 23, 11, SILPH_CO_3F, 10 ; 3F-8
	warp_event  3, 15, SILPH_CO_5F, 6 ; 3F-9
	warp_event 27, 15, SILPH_CO_3F, 8 ; 3F-10

	def_coord_events

	def_bg_events
	bg_event  9,  8, BGEVENT_IFNOTSET, SilphCo3F_Door1
	bg_event  9,  9, BGEVENT_IFNOTSET, SilphCo3F_Door1
	bg_event 17,  8, BGEVENT_IFNOTSET, SilphCo3F_Door2
	bg_event 17,  9, BGEVENT_IFNOTSET, SilphCo3F_Door2

	def_object_events
	object_event 20,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGruntM18, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  6,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistJed, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 24,  8, SPRITE_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCo3FClerk, -1
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo3FHyperPotion, EVENT_SILPH_CO_3F_HYPER_POTION
