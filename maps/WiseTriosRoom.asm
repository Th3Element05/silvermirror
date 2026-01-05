	object_const_def
	const WISETRIOSROOM_SAGE1
	const WISETRIOSROOM_SAGE2
	const WISETRIOSROOM_SAGEKOJI

WiseTriosRoom_MapScripts:
	def_scene_scripts

	def_callbacks

WiseTriosRoomSage1Script:
	jumptextfaceplayer WiseTriosRoomSagesSpeech2Text
WiseTriosRoomSagesSpeech2Text:
	text "You possess the"
	line "FOG BADGE."

	para "You may enter the"
	line "TIN TOWER."

	para "But, please be"
	line "respectful."
	done

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
;	cont "of TIN TOWER."
;
;	para "It flew off after"
;	line "the BRASS TOWER"
;	cont "burned down."
;	done

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
	text "A long time ago"
	line "a rainbow-winged"
	cont "#MON made its"
	cont "roost at the top"
	cont "of TIN TOWER."

	para "That #MON has"
	line "returned!"

	para "We, the WISE TRIO,"
	line "are the protectors"
	cont "of this legendary"
	cont "#MON."

	para "We shall test your"
	line "your worthiness to"
	cont "climb TIN TOWER"
	cont "to meet it!"
	done

;	text "Legend has it that"
;	line "upon the emergence"
;
;	para "of a trainer who"
;	line "has the ability to"
;
;	para "touch the souls of"
;	line "#MON, a #MON"
;
;	para "will come forth to"
;	line "put that trainer"
;
;	para "to test at the TIN"
;	line "TOWER."
;
;	para "The legend has"
;	line "come true!"
;
;	para "The legendary"
;	line "#MON SUICUNE"
;	cont "has arrived!"
;
;	para "We, the WISE TRIO,"
;	line "shall test your"
;
;	para "worthiness to go"
;	line "inside!"
;	done

SageGakuBeatenText:
	text "Stronger than we"
	line "thought? Perhaps…"
	done

SageGakuAfterBattleText:
	text "The rainbow-winged"
	line "#MON has not"
	cont "been seen for many"
	cont "years."

	para "I never thought"
	line "it would return"
	cont "in my lifetime."
	done

;	text "You claim to have"
;	cont "seen SUICUNE,"
;	cont "ENTEI and RAIKOU"
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
	text "I must ascertain"
	line "your worthiness."
	done

SageMasaBeatenText:
	text "…I will tell you"
	line "the history of"
	cont "the BURNED TOWER…"
	done

SageMasaAfterBattleText:
	text "In the past, there"
	line "were two nine-tier"
	cont "towers here."

	para "The BRASS TOWER,"
	line "which was said to"
	cont "awaken #MON,"
	cont "and the TIN TOWER,"
	cont "where #MON were"
	cont "said to rest."

	para "The view from the"
	line "tops of the TOWERs"
	cont "must have been"
	cont "magnificent."

	para "However…"

	para "About 150 years"
	line "ago, a lightning"
	cont "bolt struck the"
	cont "BRASS TOWER."

	para "It was engulfed in"
	line "flames that raged"
	cont "for days, and"
	cont "three #MON died"
	cont "in the blaze."

	para "A sudden downpour"
	line "finally put out"
	cont "the flames."

	para "And that is how"
	line "the BURNED TOWER"
	cont "came to be."
	done

TrainerSageKoji:
	trainer SAGE, KOJI, EVENT_BEAT_SAGE_KOJI, SageKojiSeenText, SageKojiBeatenText, 0, .Script
.Script:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .KojiAllowsPassage
	pause 10
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGEKOJI, 20
	opentext
	writetext SageKojiAfterBattleSpeechText
	promptbutton
	writetext SageKojiAfterBattleFinalText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGEKOJI, WiseTriosRoomSageAllowsPassageMovement
	turnobject WISETRIOSROOM_SAGEKOJI, UP
	setevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	end

.KojiAllowsPassage:
	jumptextfaceplayer SageKojiAfterBattleFinalText

SageKojiSeenText:
	text "Let me see your"
	line "power!"
	done

SageKojiBeatenText:
	text "…I will tell you"
	line "the history of"
	cont "these TOWERS…"
	done

SageKojiAfterBattleSpeechText:
	para "A long time ago,"
	line "a rainbow-winged"
	cont "#MON was said"
	line "to make its roost"
	cont "at the top of the"
	line "TIN TOWER."

	para "At the same time,"
	line "a huge silver-"
	cont "colored #MON"
	line "was said to roost"
	cont "at the top of the"
	line "BRASS TOWER."

	para "However…"

	para "A terrible fire"
	line "burned the BRASS"
	cont "TOWER about 150"
	cont "years ago."

	para "Without a roost,"
	line "the silver-colored"
	cont "#MON left."

	para "Soon after, the"
	line "rainbow-winged"
	cont "#MON of the TIN"
	cont "TOWER flew away."

	para "We, the WISE TRIO,"
	line "have been given "
	cont "the responsibility"
	cont "of protecting the"
	cont "legendary #MON."

	para "We are to allow"
	cont "passage only to"
	cont "those people who"
	cont "possess the power"
	cont "and soul of truth."
	done

SageKojiAfterBattleFinalText:
	text "Please, go on,"
	line "and enter the TIN"
	cont "TOWER ahead."
	done

WiseTriosRoomSageAllowsPassageMovement:
	step DOWN
	turn_head UP
	step_end
;WiseTriosRoomSageAllowsPassageMovement:
;	step RIGHT
;	step DOWN
;	step_end

WiseTriosRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  4, ECRUTEAK_CITY, 4
	warp_event  7,  5, ECRUTEAK_CITY, 5
	warp_event  1,  4, ECRUTEAK_TIN_TOWER_ENTRANCE, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSageGaku, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSageMasa, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  6,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerSageKoji, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  6,  2, SPRITE_SAGE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage1Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  6,  7, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage1Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  5,  5, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage1Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
