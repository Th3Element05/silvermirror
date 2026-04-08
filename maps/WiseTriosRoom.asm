	object_const_def
	const WISETRIOSROOM_SAGE1
	const WISETRIOSROOM_SAGE2
	const WISETRIOSROOM_SAGE3
	const WISETRIOSROOM_SAGE4
	const WISETRIOSROOM_SAGE5
	const WISETRIOSROOM_SAGE6

WiseTriosRoom_MapScripts:
	scene_script WiseTriosRoomNoop1Scene, SCENE_WISETRIOSROOM_EXPLAIN_CLEAR_BELL
	scene_script WiseTriosRoomNoop2Scene, SCENE_WISETRIOSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, WiseTriosRoomClearBellCheck

WiseTriosRoomNoop1Scene:
WiseTriosRoomNoop2Scene:
	end

WiseTriosRoomClearBellCheck:
	setmapscene TIN_TOWER_1F, SCENE_TINTOWER1F_TOWER_SHAKES
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BLOCK
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BATTLE
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_WANDER
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .Wander
	checkitem CLEAR_BELL
	iftrue .Battle
;.Block
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BLOCK
	setscene SCENE_WISETRIOSROOM_EXPLAIN_CLEAR_BELL
	endcallback

.Battle
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BATTLE
	setscene SCENE_WISETRIOSROOM_NOOP
	endcallback

.Wander
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_WANDER
	setscene SCENE_WISETRIOSROOM_NOOP
	endcallback

; scripts
WiseTriosRoomExplainClearBellScript:
	checkevent EVENT_WISE_TRIO_EXPLAINED_CLEAR_BELL
	iftrue .AlreadyExplainedClearBell
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE1, 15
	applymovement WISETRIOSROOM_SAGE1, WiseTriosRoomOneStepDownMovement
	turnobject PLAYER, UP
	opentext
	writetext WiseTriosRoomThatFeatherText
	promptbutton
	closetext
;	applymovement WISETRIOSROOM_SAGE1, WiseTriosRoomStepBackUpMovement
	applymovement WISETRIOSROOM_SAGE2, WiseTriosRoomOneStepUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext WiseTriosRoomExplainTowersText
	promptbutton
	closetext
;	applymovement WISETRIOSROOM_SAGE2, WiseTriosRoomStepBackDownMovement
.AlreadyExplainedClearBell
	applymovement WISETRIOSROOM_SAGE3, WiseTriosRoomOneStepLeftMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext WiseTriosRoomExplainClearBellText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE3, WiseTriosRoomStepBackRightMovement
	applymovement PLAYER, WiseTriosRoomOneStepLeftMovement
	setevent EVENT_WISE_TRIO_EXPLAINED_CLEAR_BELL
	clearevent EVENT_MAHOGANY_MART_NINJA
	setmapscene MAHOGANY_MART_1F, SCENE_MAHOGANYMART1F_NINJA
	end

WiseTriosRoomThatFeatherText:
	text "That feather!"
	line "The RAINBOW WING!"

	para "How did you come"
	line "to possess such a"
	cont "thing?"

	para "<……> <……>"

	para "You saw a rainbow-"
	line "colored #MON"
	cont "flying towards the"
	roll "TIN TOWER?"

	para "That #MON can"
	line "only be seen by"
	cont "those with a pure"
	roll "spirit!"
	done

WiseTriosRoomExplainTowersText:
	text "A long time ago"
	line "a rainbow-winged"
	cont "#MON made its"
	roll "roost at the peak"
	cont "of TIN TOWER."

	para "At the same time,"
	line "a silver-winged"
	cont "#MON made its"
	roll "roost atop the"
	cont "BRASS TOWER."

	para "However…"

	para "A terrible fire"
	line "burned the BRASS"
	cont "TOWER about 150"
	roll "years ago."

	para "Without a roost,"
	line "the silver #MON"
	cont "flew away."

	para "Soon after, the"
	line "rainbow-winged"
	cont "#MON of the TIN"
	roll "TOWER also left."

	para "But that #MON"
	line "has returned!"

	para "We, the WISE TRIO,"
	line "have been given "
	cont "the responsibility"
	roll "of protecting this"
	cont "legendary #MON."

	para "We are to allow"
	line "passage only to"
	cont "those people who"
	roll "possess the power"
	cont "and soul of truth."
	done

WiseTriosRoomExplainClearBellText:
	text "If you wish to"
	line "prove the quality"
	cont "of your spirit,"
	roll "you must seek a"
	cont "CLEAR BELL."

	para "These BELLs hung"
	line "in the towers long"
	cont "ago, but their"
	roll "whereabouts have"
	cont "been lost to time."

	para "The BRASS TOWER"
	line "was once the home"
	cont "of the NINJA CLAN."

	para "When their tower"
	line "burned, they were"
	cont "forced to find a"
	roll "new home."

;	para "That CLAN may know"
;	line "the location of"
;	cont "the CLEAR BELL of"
;	roll "the BRASS TOWER."

	para "They dwell now in"
	line "MAHOGANY TOWN."

	para "You should seek"
	line "out that CLAN, for"
	cont "they may yet know"
	roll "the location of"
	cont "the CLEAR BELL of"
	roll "the BRASS TOWER."
	done

;WiseTriosRoomClearBellRecapText:
;	text "If you wish to"
;	line "prove the quality"
;	cont "of your spirit,"
;	roll "you must seek a"
;	cont "CLEAR BELL."
;
;	para "Seek out the NINJA"
;	line "CLAN in MAHOGANY,"
;	cont "for they may know"
;	roll "the location of"
;	cont "the CLEAR BELL of"
;	roll "the BRASS TOWER."
;	done

;WiseTriosRoomStepBackDownMovement:
;	fix_facing
WiseTriosRoomOneStepDownMovement:
	slow_step DOWN
;	remove_fixed_facing
	step_end

;WiseTriosRoomStepBackUpMovement:
;	fix_facing
WiseTriosRoomOneStepUpMovement:
	slow_step UP
;	remove_fixed_facing
	step_end

WiseTriosRoomOneStepLeftMovement:
	slow_step LEFT
	step_end

WiseTriosRoomStepBackRightMovement:
	fix_facing
	slow_step RIGHT
	remove_fixed_facing
	step_end


; trainers
TrainerSageGaku:
	trainer SAGE, GAKU, EVENT_BEAT_SAGE_GAKU, SageGakuSeenText, SageGakuBeatenText, 0, .Script
.Script:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .GakuAllowsPassage
	opentext
	writetext SageGakuAfterBattleText
	waitbutton
	closetext
	end

.GakuAllowsPassage:
	jumptextfaceplayer SageKojiAfterBattleFinalText

SageGakuSeenText:
	text "Ah!"

	para "The sound of that"
	line "CLEAR BELL!"

	para "It… It's sublime!"

	para "I've never heard"
	line "so beautiful a"
	cont "sound before!"

;	para "That bell's chime"
;	line "is indicative of"
;	cont "the bearer's soul."

	para "Let me hear the"
	line "ringing of your"
	cont "CLEAR BELL as we"
	roll "meet in battle!"
	done

SageGakuBeatenText:
	text "The CLEAR BELL you"
	line "hold…"
	cont "Its sound is so"
	roll "pure!"
	done

SageGakuAfterBattleText:
	text "The rainbow-winged"
	line "#MON has not"
	cont "been seen for"
	roll "many years."

	para "I never thought"
	line "it would return"
	cont "in my lifetime."
	done

;	text "You claim to have"
;	cont "seen SUICUNE,"
;	roll "ENTEI and RAIKOU"
;	cont "while they slept?"
;
;	para "Unbelievable!"
;
;	para "Legend has it that"
;	line "they can't be seen"
;	cont "while they sleep…"
;	done


TrainerSageMasa:
	trainer SAGE, MASA, EVENT_BEAT_SAGE_MASA, SageMasaSeenText, SageMasaBeatenText, 0, .Script
.Script:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .MasaAllowsPassage
	opentext
	writetext SageMasaAfterBattleText
	waitbutton
	closetext
	end

.MasaAllowsPassage:
	jumptextfaceplayer SageKojiAfterBattleFinalText

SageMasaSeenText:
	text "That bell's chime"
	line "is indicative of"
	cont "the bearer's soul."

;	para "You…"
;
;	para "You may be able to"
;	line "meet HO-OH at the"
;	cont "top of TIN TOWER."
;
	para "I must ascertain"
	line "your worthiness."
	done

SageMasaBeatenText:
	text "Strong enough?"
	line "Perhaps…"
	done

SageMasaAfterBattleText:
	text "You might just be"
	line "worthy to climb"
	cont "TIN TOWER and face"
	roll "the rainbow-winged"
	cont "#MON…"
	done


TrainerSageKoji:
	trainer SAGE, KOJI, EVENT_BEAT_SAGE_KOJI, SageKojiSeenText, SageKojiBeatenText, 0, .Script
.Script:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .KojiAllowsPassage
	pause 10
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE6, 20
	opentext
	writetext SageKojiAfterBattleSpeechText
	promptbutton
	writetext SageKojiAfterBattleFinalText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE6, WiseTriosRoomOneStepUpMovement
	turnobject WISETRIOSROOM_SAGE6, DOWN
	setevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	end

.KojiAllowsPassage:
	jumptextfaceplayer SageKojiAfterBattleFinalText

SageKojiSeenText:
	text "Let me see your"
	line "power!"

	para "Let me hear your"
	line "CLEAR BELL ring!"
	done

SageKojiBeatenText:
	text "That crystal clear"
	line "sound…"
	done

;	text "…I will tell you"
;	line "the history of"
;	cont "these TOWERS…"
;	done

SageKojiAfterBattleSpeechText:
	text "The sound of your"
	line "CLEAR BELL ringing"
	cont "is undeniable."

	para "You are a soul"
	line "worthy to climb"
	cont "TIN TOWER and meet"
	roll "HO-OH in battle!"

	para "We will allow you"
	line "passage."
	done

SageKojiAfterBattleFinalText:
	text "Please, go on,"
	line "and enter the TIN"
	cont "TOWER ahead."
	done


; wander
WiseTriosRoomWanderingSageScript:
	checkflag ENGINE_PLAYER_CAUGHT_HO_OH
	iftrue .HoohCaught
	checkevent EVENT_FOUGHT_HO_OH
	iffalse .HoohReturned
;.HoohDefeated
	jumptextfaceplayer WiseTriosRoomHoohDefeatedText

.HoohReturned
	jumptextfaceplayer WiseTriosRoomHoohReturnedText

.HoohCaught
	jumptextfaceplayer WiseTriosRoomCaughtHoohText

WiseTriosRoomHoohDefeatedText:
	text "You faced HO-OH,"
	line "and defeated it."

	para "I'm sure it will"
	line "return someday."

	para "Will you be ready"
	line "to face it again?"
	done

WiseTriosRoomHoohReturnedText:
	text "HO-OH has returned"
	line "to the TIN TOWER."

	para "Are you prepared"
	line "to face it?"
	done

WiseTriosRoomCaughtHoohText:
	text "You faced HO-OH,"
	line "and captured it!"

	para "Such a remarkable"
	line "soul!"

	para "For such a mighty"
	line "creature to submit"
	cont "to your will!"
	done

;WiseTriosRoomSage1Script:
;	jumptextfaceplayer WiseTriosRoomSagesSpeech2Text
;WiseTriosRoomSagesSpeech2Text:
;	text "You may enter the"
;	line "TIN TOWER."
;
;	para "But, please be"
;	line "respectful."
;	done

;WiseTriosRoomSage2Script:
;	jumptextfaceplayer WiseTriosRoomSagesSpeech1Text
;WiseTriosRoomSagesSpeech1Text:
;	text "The BURNED TOWER…"
;
;	para "The #MON that"
;	line "died in that fire"
;	cont "were resurrected."
;
;	para "They became"
;	line "SUICUNE, ENTEI,"
;	cont "and RAIKOU."
;	done

;WiseTriosRoomSage3Script:
;	jumptextfaceplayer WiseTriosRoomSagesSpeech3Text
;WiseTriosRoomSagesSpeech3Text:
;	text "A rainbow-winged"
;	line "#MON used to"
;	cont "roost at the peak"
;	roll "of TIN TOWER."
;
;	para "It flew off after"
;	line "the BRASS TOWER"
;	cont "burned down."
;	done

WiseTriosRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  4, ECRUTEAK_CITY, 4
	warp_event  7,  5, ECRUTEAK_CITY, 5
	warp_event  1,  4, ECRUTEAK_TIN_TOWER_ENTRANCE, 5

	def_coord_events
	coord_event  4,  4, SCENE_WISETRIOSROOM_EXPLAIN_CLEAR_BELL, WiseTriosRoomExplainClearBellScript
	def_bg_events

	def_object_events
; block
	object_event  4,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BLOCK
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BLOCK
	object_event  6,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BLOCK
; battle
	object_event  4,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSageGaku, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BATTLE
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSageMasa, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BATTLE
	object_event  6,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerSageKoji, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_BATTLE
; wander
	object_event  6,  2, SPRITE_SAGE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomWanderingSageScript, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_WANDER
	object_event  6,  7, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomWanderingSageScript, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_WANDER
	object_event  5,  5, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomWanderingSageScript, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_WANDER
