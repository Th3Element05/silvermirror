	object_const_def
	const MAHOGANYMART1F_NINJA
	const MAHOGANYMART1F_GRANNY
	const MAHOGANYMART1F_GRANNY2
	const MAHOGANYMART1F_GRANNY3
	const MAHOGANYMART1F_GRANNY4
	const MAHOGANYMART1F_DUMMYRIGHT_M
	const MAHOGANYMART1F_DUMMYRIGHT_F
	const MAHOGANYMART1F_DUMMYDOWN_M
	const MAHOGANYMART1F_DUMMYDOWN_F

MahoganyMart1F_MapScripts:
	def_scene_scripts
	scene_script MahoganyMart1FNinjaScene, SCENE_MAHOGANYMART1F_NINJA
	scene_script MahoganyMart1FNoopScene,  SCENE_MAHOGANYMART1F_NOOP

	def_callbacks
;	callback MAPCALLBACK_TILES, MahoganyMart1FStaircaseCallback
	callback MAPCALLBACK_OBJECTS, MahoganyMart1FCheckDayOfWeekCallback

MahoganyMart1FNinjaScene:
;	appear MAHOGANYMART1F_GRANNY
MahoganyMart1FNoopScene:
	end

;MahoganyMart1FStaircaseCallback:
;	checkevent EVENT_UNCOVERED_STAIRCASE_IN_MAHOGANY_MART
;	iftrue .ShowStairs
;	endcallback
;
;.ShowStairs:
;	changeblock 6, 2, $28 ; stairs
;	endcallback

MahoganyMart1FCheckDayOfWeekCallback:
	disappear MAHOGANYMART1F_GRANNY2
	disappear MAHOGANYMART1F_GRANNY3
	disappear MAHOGANYMART1F_GRANNY4
	disappear MAHOGANYMART1F_DUMMYRIGHT_M
	disappear MAHOGANYMART1F_DUMMYRIGHT_F
	disappear MAHOGANYMART1F_DUMMYDOWN_M
	disappear MAHOGANYMART1F_DUMMYDOWN_F
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .NoGranny
	ifequal SUNDAY, .NoGranny
	readvar VAR_TIMEOFDAY
	ifequal NITE, .NoGranny
;else appear
	appear MAHOGANYMART1F_GRANNY
	endcallback
.NoGranny
	disappear MAHOGANYMART1F_GRANNY
	checkscene
	ifnotequal SCENE_MAHOGANYMART1F_NINJA, .Finished
	appear MAHOGANYMART1F_GRANNY
.Finished
	endcallback

; scripts
MahoganyMart1FNinjaScript:
	pause 1
	showemote EMOTE_SHOCK, MAHOGANYMART1F_NINJA, 15
	applymovement MAHOGANYMART1F_NINJA, MahoganyMart1FNinjaUsesStairsMovement
	playsound SFX_EXIT_BUILDING
	disappear MAHOGANYMART1F_NINJA
	waitsfx
	setscene SCENE_MAHOGANYMART1F_NOOP
	end

MahoganyMart1FNinjaUsesStairsMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step RIGHT
;	turn_head DOWN
	step_end

MahoganyMartMerchantScript:
	faceplayer
	opentext
	readvar VAR_TIMEOFDAY
	ifequal NITE, .Closed
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .Closed
	ifequal SATURDAY, .Closed
	pokemart MARTTYPE_BITTER, MART_UNDERGROUND
	closetext
	end

.Closed:
	writetext MahoganyMartMerchantClosedText
	waitbutton
	closetext
	end

MahoganyMartMerchantClosedText:
	text "Sorry, we're not"
	line "open right now."

	para "I need to get my"
	line "beauty sleep."

	para "Hehehehe…"
	done

MahoganyMartMerchantGoldenrodText:
	text "Sorry, we're not"
	line "open today."

	para "I need to get to"
	line "GOLDENROD."
	done

;ninja clan used to be at brass tower
;have silver wing (and clear bell?)

MahoganyMart1FSecretStairsConditional:
	conditional_event EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8, .Proceed
.Proceed
	opentext
	writetext MahoganyMart1FSomethingHereText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 6, 2, $28 ; stairs
	reloadmappart
	waitsfx
	checkevent EVENT_MAHOGANY_MART_GRANNY
	iffalse .YouSawNothing
;else
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

.YouSawNothing
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Kris
	readvar VAR_FACING
	ifequal DOWN, .chris_down
	appear MAHOGANYMART1F_DUMMYRIGHT_M
	applymovement PLAYER, MahoganyMart1F_CameraPanMovementShort
	sjump .Granny_movement

.chris_down
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	appear MAHOGANYMART1F_DUMMYDOWN_M
	applymovement PLAYER, MahoganyMart1F_CameraPanMovementLong
	sjump .Granny_movement

.Kris
	readvar VAR_FACING
	ifequal DOWN, .kris_down
	appear MAHOGANYMART1F_DUMMYRIGHT_F
	applymovement PLAYER, MahoganyMart1F_CameraPanMovementShort
	sjump .Granny_movement

.kris_down
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	appear MAHOGANYMART1F_DUMMYDOWN_F
	applymovement PLAYER, MahoganyMart1F_CameraPanMovementLong
;	sjump .Granny_movement
; fallthrough

.Granny_movement
	showemote EMOTE_SHOCK, MAHOGANYMART1F_GRANNY, 15
;	playsound SFX_RAZOR_WIND
	playsound SFX_CUT
	disappear MAHOGANYMART1F_GRANNY
	appear MAHOGANYMART1F_GRANNY2
	appear MAHOGANYMART1F_GRANNY3
	appear MAHOGANYMART1F_GRANNY4
	applymovement MAHOGANYMART1F_GRANNY2, MahoganyMart1FRockSmashMovement1
	applymovement MAHOGANYMART1F_GRANNY3, MahoganyMart1FRockSmashMovement2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	iftrue .skip
	turnobject MAHOGANYMART1F_GRANNY4, DOWN
.skip
	opentext
	writetext MahoganyMart1FYouSawNothingText
	special FadeOutMusic
	waitbutton
	closetext
	waitsfx
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
;	playsound SFX_VINE_WHIP
;	waitsfx
	playsound SFX_BEAT_UP
;	waitsfx
	pause 25
	playsound SFX_HEADBUTT
	pause 20
	warpfacing DOWN, MAHOGANY_TOWN, 11, 8
	end

MahoganyMart1FSomethingHereText:
	text "There's something"
	line "here…"
	done

MahoganyMart1FYouSawNothingText:
	text "You saw nothing."
	done

MahoganyMart1F_CameraPanMovementLong:
	hide_object
	big_step LEFT
MahoganyMart1F_CameraPanMovementShort:
	hide_object
	big_step LEFT
	big_step LEFT
	step_end

MahoganyMart1FRockSmashMovement1:
	rock_smash 3
	step_end

MahoganyMart1FRockSmashMovement2:
	rock_smash 6
	step_end

MahoganyMart1FSecretStairsItemfinderSpoof:
	hiddenitem ENERGYPOWDER, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8

MahoganyMart1FMural:
	opentext
	writetext MahoganyMart1FMuralDescriptionText
	promptbutton
	checkevent EVENT_MAHOGANY_MART_GRANNY
	iftrue .OldPainting
	closetext
	applymovement MAHOGANYMART1F_GRANNY, MahoganyMart1FGrannySpeechMovement
	opentext
	writetext MahoganyMart1FGrannyAreYouInterestedText
	yesorno
	iffalse .NotInterested
	special FadeOutMusic
	waitsfx
	playmusic MUSIC_BURNED_TOWER
	writetext MahoganyMart1FGrannyHistorySpeechText
	waitbutton
	special FadeOutMusic
	waitsfx
	special RestartMapMusic
.NotInterested
	closetext
	applymovement MAHOGANYMART1F_GRANNY, MahoganyMart1FGrannyReturnMovement
	end

.OldPainting
	writetext MahoganyMart1FOldMuralText
	waitbutton
	closetext
	end
	
MahoganyMart1FMuralDescriptionText:
	text "It's a painting of"
	line "ECRUTEAK CITY."

	para "It shows the city"
	line "with two towers"
	cont "standing tall."
	done
;
;	para "It shows the city"
;	line "before BRASS TOWER"
;	cont "burned down."
;	done

MahoganyMart1FOldMuralText:
	text "The painting looks"
	line "very old."
	done

MahoganyMart1FGrannyAreYouInterestedText:
	text "Are you interested"
	line "in that painting?"
	done

MahoganyMart1FGrannyHistorySpeechText:
	text "A long time ago,"
	line "my clan resided in"
	cont "ECRUTEAK CITY."

	para "BRASS TOWER was"
	line "the clan's temple,"
	cont "and a great flying"
	roll "#MON made its"
	cont "roost at the peak"
	roll "of the tower."

	para "This silver-winged"
	line "#MON blessed"
	cont "the clan…"
	roll "until…"

	para "The TOWER burned…"
	line "And that silver"
	cont "#MON left…"

	para "Our clan needed to"
	line "find a new home as"
	cont "well."

	para "That's when my"
	line "ancestors founded"
	cont "MAHOGANY TOWN."

	para "My clan has lived"
	line "here ever since."
	done

MahoganyMart1FGrannySpeechMovement:
	step UP
	step UP
	turn_head RIGHT
	step_end

MahoganyMart1FGrannyReturnMovement:
	step DOWN
	step DOWN
	turn_head RIGHT
	step_end

MahoganyMart1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, MAHOGANY_TOWN, 1
	warp_event  5,  7, MAHOGANY_TOWN, 1
	warp_event  7,  3, TEAM_ROCKET_BASE_B1F, 1

	def_coord_events
	coord_event  4,  6, SCENE_MAHOGANYMART1F_NINJA, MahoganyMart1FNinjaScript
	coord_event  5,  6, SCENE_MAHOGANYMART1F_NINJA, MahoganyMart1FNinjaScript

	def_bg_events
	bg_event  7,  3, BGEVENT_IFNOTSET, MahoganyMart1FSecretStairsConditional
	bg_event  7,  3, BGEVENT_ITEM, MahoganyMart1FSecretStairsItemfinderSpoof
	bg_event  2,  0, BGEVENT_READ, MahoganyMart1FMural
	bg_event  3,  0, BGEVENT_READ, MahoganyMart1FMural

	def_object_events
	object_event  3,  3, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MAHOGANY_MART_NINJA
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyMartMerchantScript, EVENT_MAHOGANY_MART_GRANNY
	object_event  4,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  2, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  2, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

;.GrayOverTreeOBPalette