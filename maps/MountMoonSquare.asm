	object_const_def
	const MOUNTMOONSQUARE_FAIRY1
	const MOUNTMOONSQUARE_FAIRY2
	const MOUNTMOONSQUARE_ROCK

MountMoonSquare_MapScripts:
	def_scene_scripts
	scene_script MountMoonSquareNoopScene, SCENE_MOUNTMOONSQUARE_CLEFAIRY_DANCE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MountMoonSquareDisappearMoonStoneCallback
	callback MAPCALLBACK_OBJECTS, MountMoonSquareDisappearRockCallback

MountMoonSquareNoopScene:
	end

MountMoonSquareDisappearMoonStoneCallback:
	setevent EVENT_MT_MOON_SQUARE_HIDDEN_MOON_STONE
	endcallback

MountMoonSquareDisappearRockCallback:
;	checkflag ENGINE_MT_MOON_SQUARE_CLEFAIRY
;	iftrue .HideRock
;	checktime NITE
;	iftrue .ShowRock
;.HideRock
	disappear MOUNTMOONSQUARE_ROCK
;.ShowRock
	endcallback

ClefairyDance:
	checkflag ENGINE_MT_MOON_SQUARE_CLEFAIRY
	iftrue .NoDancing
;	readvar VAR_WEEKDAY
;	ifnotequal MONDAY, .NoDancing
	checktime NITE
	iffalse .NoDancing
; dance
	applymovement PLAYER, MountMoonSquarePlayerStepsForward
	pause 15
	appear MOUNTMOONSQUARE_FAIRY2
	appear MOUNTMOONSQUARE_FAIRY1
;	playsound SFX_STRENGTH
	appear MOUNTMOONSQUARE_ROCK
	playsound SFX_STRENGTH
	applymovement MOUNTMOONSQUARE_ROCK, MountMoonSquareMeteorMovement
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	cry CLEFAIRY
	pause 30
	applymovement MOUNTMOONSQUARE_FAIRY1, MountMoonSquareClefairy1Entrance
	applymovement MOUNTMOONSQUARE_FAIRY2, MountMoonSquareClefairy2Entrance
	cry CLEFAIRY
	waitsfx
; dance
;	applymovement MOUNTMOONSQUARE_FAIRY2, MountMoonSquareDanceLeft
;	cry CLEFAIRY
	applymovement MOUNTMOONSQUARE_FAIRY2, MountMoonSquareDanceDown
	cry CLEFAIRY
	applymovement MOUNTMOONSQUARE_FAIRY1, MountMoonSquareDanceRight
	cry CLEFAIRY
	applymovement MOUNTMOONSQUARE_FAIRY2, MountMoonSquareDanceUp
	cry CLEFAIRY
	applymovement MOUNTMOONSQUARE_FAIRY1, MountMoonSquareDanceLeft
;	cry CLEFAIRY
;	applymovement MOUNTMOONSQUARE_FAIRY2, MountMoonSquareDanceDown
; flee
	turnobject MOUNTMOONSQUARE_FAIRY1, LEFT
	pause 10
	cry CLEFAIRY
	showemote EMOTE_SHOCK, MOUNTMOONSQUARE_FAIRY1, 15
	turnobject MOUNTMOONSQUARE_FAIRY2, LEFT
	showemote EMOTE_SHOCK, MOUNTMOONSQUARE_FAIRY2, 15
	pause 15
	follow MOUNTMOONSQUARE_FAIRY1, MOUNTMOONSQUARE_FAIRY2
	applymovement MOUNTMOONSQUARE_FAIRY1, MountMoonSquareClefairyFlee
	disappear MOUNTMOONSQUARE_FAIRY1
	disappear MOUNTMOONSQUARE_FAIRY2
	stopfollow
	clearevent EVENT_MT_MOON_SQUARE_HIDDEN_MOON_STONE
	setflag ENGINE_MT_MOON_SQUARE_CLEFAIRY
	end

.NoDancing:
	end

MountMoonSquarePlayerStepsForward:
	slow_step RIGHT
	step_end

MountMoonSquareMeteorMovement:
	fast_slide_step DOWN
	fast_slide_step DOWN
	fast_slide_step DOWN
	fast_slide_step DOWN
	step_end

MountMoonSquareClefairy1Entrance:
	step DOWN
MountMoonSquareClefairy2Entrance:
	slow_jump_step DOWN
	slow_step DOWN
	step_end

MountMoonSquareDanceLeft:
	step UP
	slow_jump_step LEFT
	turn_head DOWN
	step_sleep 4
	turn_head RIGHT
	step_sleep 4
	turn_head UP
	step_sleep 4
	turn_head LEFT
	step_sleep 4
	slow_step DOWN
	step_end

MountMoonSquareDanceDown:
	step LEFT
	slow_jump_step DOWN
	turn_head RIGHT
	step_sleep 4
	turn_head UP
	step_sleep 4
	turn_head LEFT
	step_sleep 4
	turn_head DOWN
	step_sleep 4
	slow_step RIGHT
	step_end

MountMoonSquareDanceRight:
	step DOWN
	slow_jump_step RIGHT
	turn_head UP
	step_sleep 4
	turn_head LEFT
	step_sleep 4
	turn_head DOWN
	step_sleep 4
	turn_head RIGHT
	step_sleep 4
	slow_step UP
	step_end

MountMoonSquareDanceUp:
	step RIGHT
	slow_jump_step UP
	turn_head LEFT
	step_sleep 4
	turn_head DOWN
	step_sleep 4
	turn_head RIGHT
	step_sleep 4
	turn_head UP
	step_sleep 4
	slow_step LEFT
	step_end

;MountMoonSquareDanceSpin:
;	step_sleep 5
;	turn_head DOWN
;	step_sleep 5
;	turn_head RIGHT
;	step_sleep 5
;	turn_head UP
;	step_sleep 5
;	turn_head LEFT
;	step_sleep 5
;	turn_head DOWN
;	step_sleep 5
;	step_end

MountMoonSquareClefairyFlee:
	fast_jump_step UP
	fast_jump_step UP
	big_step RIGHT
	big_step UP
	step_end

MountMoonSquareGiftShopSign:
	jumptext MountMoonSquareGiftShopSignText
MountMoonSquareGiftShopSignText:
	text "MT.MOON SQUARE"
	line "GIFT SHOP"
	done

MountMoonSquareSign:
	jumptext MountMoonSquareSignText
MountMoonSquareSignText:
	text "MT.MOON SQUARE"
;	line "DON'T LITTER"
	done

MountMoonSquareHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_MT_MOON_SQUARE_HIDDEN_MOON_STONE

MtMoonSquareRock:
	jumpstd SmashRockScript

MountMoonSquare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  5, MOUNT_MOON, 7
	warp_event 13,  5, MOUNT_MOON_GIFT_SHOP, 1

	def_coord_events
	coord_event 18,  8, SCENE_MOUNTMOONSQUARE_CLEFAIRY_DANCE, ClefairyDance

	def_bg_events
	bg_event 15,  7, BGEVENT_READ, MountMoonSquareSign
	bg_event 14,  5, BGEVENT_READ, MountMoonSquareGiftShopSign
	bg_event 22,  7, BGEVENT_ITEM, MountMoonSquareHiddenMoonStone

	def_object_events
	object_event 21,  3, SPRITE_CLEFAIRY_MOVE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_SQUARE_CLEFAIRY
	object_event 22,  3, SPRITE_CLEFAIRY_MOVE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_SQUARE_CLEFAIRY
	object_event 22,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonSquareRock, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ;EVENT_MT_MOON_SQUARE_ROCK

;.PinkOverYellowOBPalette

;ClefairyDance:
;	checkflag ENGINE_MT_MOON_SQUARE_CLEFAIRY
;	iftrue .NoDancing
;;	readvar VAR_WEEKDAY
;;	ifnotequal MONDAY, .NoDancing
;	checktime NITE
;	iffalse .NoDancing
;	appear MOUNTMOONSQUARE_FAIRY1
;	appear MOUNTMOONSQUARE_FAIRY2
;	applymovement PLAYER, PlayerWalksUpToDancingClefairies
;	pause 15
;;	appear MOUNTMOONSQUARE_ROCK
;	turnobject MOUNTMOONSQUARE_FAIRY1, RIGHT
;	cry CLEFAIRY
;	waitsfx
;	pause 30
;	follow MOUNTMOONSQUARE_FAIRY1, MOUNTMOONSQUARE_FAIRY2
;	cry CLEFAIRY
;	applymovement MOUNTMOONSQUARE_FAIRY1, ClefairyDanceStep1
;	cry CLEFAIRY
;	applymovement MOUNTMOONSQUARE_FAIRY1, ClefairyDanceStep2
;	cry CLEFAIRY
;	applymovement MOUNTMOONSQUARE_FAIRY1, ClefairyDanceStep3
;	cry CLEFAIRY
;	applymovement MOUNTMOONSQUARE_FAIRY1, ClefairyDanceStep4
;	cry CLEFAIRY
;	applymovement MOUNTMOONSQUARE_FAIRY1, ClefairyDanceStep5
;	stopfollow
;	applymovement MOUNTMOONSQUARE_FAIRY2, ClefairyDanceStep6
;	follow MOUNTMOONSQUARE_FAIRY1, MOUNTMOONSQUARE_FAIRY2
;	applymovement MOUNTMOONSQUARE_FAIRY1, ClefairyDanceStep7
;	stopfollow
;	turnobject MOUNTMOONSQUARE_FAIRY1, DOWN
;	pause 10
;	showemote EMOTE_SHOCK, MOUNTMOONSQUARE_FAIRY1, 15
;	turnobject MOUNTMOONSQUARE_FAIRY1, DOWN
;	cry CLEFAIRY
;	pause 15
;	follow MOUNTMOONSQUARE_FAIRY1, MOUNTMOONSQUARE_FAIRY2
;	applymovement MOUNTMOONSQUARE_FAIRY1, ClefairyFleeMovement
;	disappear MOUNTMOONSQUARE_FAIRY1
;	disappear MOUNTMOONSQUARE_FAIRY2
;	stopfollow
;	clearevent EVENT_MT_MOON_SQUARE_HIDDEN_MOON_STONE
;	setflag ENGINE_MT_MOON_SQUARE_CLEFAIRY
;	end
;
;.NoDancing:
;	end

;PlayerWalksUpToDancingClefairies:
;	step UP
;	step_end

;ClefairyDanceStep1:
;	slow_step DOWN
;	slow_jump_step DOWN
;	step_end

;ClefairyDanceStep2:
;	slow_jump_step RIGHT
;	step_end

;ClefairyDanceStep3:
;	slow_step UP
;	slow_jump_step UP
;	step_end

;ClefairyDanceStep4:
;	slow_jump_step LEFT
;	step_end

;ClefairyDanceStep5:
;	slow_step DOWN
;	slow_jump_step DOWN
;	step_end

;ClefairyDanceStep6:
;	slow_step DOWN
;	step_end

;ClefairyDanceStep7:
;	slow_step RIGHT
;	step_end

;ClefairyFleeMovement:
;	step RIGHT
;	step RIGHT
;	step RIGHT
;	jump_step RIGHT
;	step RIGHT
;	step RIGHT
;	step_end
