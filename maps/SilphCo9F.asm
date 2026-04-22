	object_const_def

SilphCo9F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo9FDoorsCallback

SilphCo9FDoorsCallback:
	checkevent EVENT_SILPH_CO_9F_DOOR_1
	iffalse .Next
	changeblock 18, 4, $3c ; open door
.Next
	checkevent EVENT_SILPH_CO_9F_DOOR_2
	iffalse .Next2
	changeblock 2, 8, $3e ; open door
.Next2
	checkevent EVENT_SILPH_CO_9F_DOOR_3
	iffalse .Next3
	changeblock 18, 10, $3c ; open door
.Next3
	checkevent EVENT_SILPH_CO_9F_DOOR_4
	iffalse .End
	changeblock 10, 12, $3e ; open door
.End
	endcallback

SilphCo9F_Door1:
	conditional_event EVENT_SILPH_CO_9F_DOOR_1, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 18, 4, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_1
	end

SilphCo9F_Door2:
	conditional_event EVENT_SILPH_CO_9F_DOOR_2, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 2, 8, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_2
	end

SilphCo9F_Door3:
	conditional_event EVENT_SILPH_CO_9F_DOOR_3, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 18, 10, $3c ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_3
	end

SilphCo9F_Door4:
	conditional_event EVENT_SILPH_CO_9F_DOOR_4, .LockedDoor
.LockedDoor
	checkitem CARD_KEY
	iftrue .OpenDoor
	jumpstd SilphCoNoCardKeyScript
.OpenDoor
	farscall SilphCoOpenDoorScript
	changeblock 10, 12, $3e ; open door
	reloadmappart
	playsound SFX_ENTER_DOOR
	setevent EVENT_SILPH_CO_9F_DOOR_4
	end

SilphCo9FNurseScript:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	opentext
	writetext SilphCo9FNurseText1
	waitbutton
	closetext
;	special StubbedTrainerRankings_Healings
;	special FadeOutPalettes
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 70
;	special FadeInPalettes
	special FadeInQuickly
	special RestartMapMusic
	jumptext SilphCo9FNurseText2
.Cleared
	jumptext SilphCo9FNurseSavedText

SilphCo9FNurseText1:
	text "You look tired!"
	line "You should take a"
	cont "quick nap!"
	done

SilphCo9FNurseText2:
	text "Don't give up!"
	done

SilphCo9FNurseSavedText:
	text "Thank you so"
	line "much!"
	done

TrainerRocketGruntM26:
	trainer GRUNTM, GRUNTM_26, EVENT_BEAT_GRUNTM_26, GruntM26SeenText, GruntM26BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntM26AfterBattleText
	waitbutton
	closetext
	end

GruntM26SeenText:
	text "I am one of four"
	line "ROCKET BROTHERS!"
	done

GruntM26BeatenText:
	text "Warg!"
	line "Brothers, I lost!"
	done

GruntM26AfterBattleText:
	text "My brothers will"
	line "avenge me!"
	done

TrainerScientistIsaiah:
	trainer SCIENTIST, ISAIAH, EVENT_BEAT_SCIENTIST_ISAIAH, ScientistIsaiahSeenText, ScientistIsaiahBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistIsaiahAfterBattleText
	waitbutton
	closetext
	end

ScientistIsaiahSeenText:
	text "Your #MON have"
	line "weak points! I"
	cont "can nail them!"
	done

ScientistIsaiahBeatenText:
	text "You hammered me!"
	done

ScientistIsaiahAfterBattleText:
	text "Exploiting weak"
	line "spots does work!"
	cont "Think about"
	roll "element types!"
	done

TrainerRocketGruntF9:
	trainer GRUNTF, GRUNTF_9, EVENT_BEAT_GRUNTF_9, GruntF9SeenText, GruntF9BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GruntF9AfterBattleText
	waitbutton
	closetext
	end

GruntF9SeenText:
	text "Your #MON seem"
	line "to adore you, kid!"
	done

GruntF9BeatenText:
	text "Ghaaah!"
	done

GruntF9AfterBattleText:
	text "If I had started"
	line "as a trainer at"
	cont "your age…"
	done

; hidden items
SilphCo9FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILPH_CO_9F_HIDDEN_MAX_POTION

SilphCo9F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event 20,  0, SILPH_CO_10F, 3
	warp_event 22,  0, SILPH_CO_8F, 2
	warp_event  9,  3, SILPH_CO_3F, 6 ; 9F-4
	warp_event 17, 15, SILPH_CO_5F, 7 ; 9F-5

	def_coord_events

	def_bg_events
	bg_event 18,  4, BGEVENT_IFNOTSET, SilphCo9F_Door1
	bg_event 19,  4, BGEVENT_IFNOTSET, SilphCo9F_Door1
	bg_event  3,  8, BGEVENT_IFNOTSET, SilphCo9F_Door2
	bg_event  3,  9, BGEVENT_IFNOTSET, SilphCo9F_Door2
	bg_event 18, 10, BGEVENT_IFNOTSET, SilphCo9F_Door3
	bg_event 19, 10, BGEVENT_IFNOTSET, SilphCo9F_Door3
	bg_event 11, 12, BGEVENT_IFNOTSET, SilphCo9F_Door4
	bg_event 11, 13, BGEVENT_IFNOTSET, SilphCo9F_Door4
	bg_event  2, 15, BGEVENT_ITEM, SilphCo9FHiddenMaxPotion

	def_object_events
	object_event  2,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntM26, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 21, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistIsaiah, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 13, 16, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGruntF9, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  3, 14, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilphCo9FNurseScript, -1
