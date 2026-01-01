	object_const_def
	const SILPHCO5F_APRICORN_BALL

SilphCo5F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SilphCo5FDoorsCallback
	callback MAPCALLBACK_OBJECTS, SilphCo5FApricornBallCallback

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

SilphCo5FApricornBallCallback:
	disappear SILPHCO5F_APRICORN_BALL
;	setevent EVENT_KURTS_SON_APRICORN_BALL
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

SilphCo5FKurtsSon:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iffalse .HelpUsFirst
; cleared silph co
	checkevent EVENT_MET_KURTS_SON
	iftrue .SkipIntro
	writetext SilphCo5FKurtsSon_ThankYouText
	promptbutton
;	verbosegiveitem LEVEL_BALL
;	iffalse .NoRoomForBall
	setevent EVENT_MET_KURTS_SON
	sjump .BringMeApricorns

.SkipIntro
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ;making ball
	iftrue .StillWorking
	checkevent EVENT_GAVE_KURT_SON_RED_APRICORN
	iftrue .GiveLevelBall
	checkevent EVENT_GAVE_KURT_SON_BLU_APRICORN
	iftrue .GiveLureBall
	checkevent EVENT_GAVE_KURT_SON_YLW_APRICORN
	iftrue .GiveMoonBall
	checkevent EVENT_GAVE_KURT_SON_GRN_APRICORN
	iftrue .GiveFriendBall
	checkevent EVENT_GAVE_KURT_SON_WHT_APRICORN
	iftrue .GiveFastBall
	checkevent EVENT_GAVE_KURT_SON_BLK_APRICORN
	iftrue .GiveHeavyBall
	checkevent EVENT_GAVE_KURT_SON_PNK_APRICORN
	iftrue .GiveLoveBall

.CheckApricorns:
	checkitem RED_APRICORN
	iftrue .AskApricorn
	checkitem BLU_APRICORN
	iftrue .AskApricorn
	checkitem YLW_APRICORN
	iftrue .AskApricorn
	checkitem GRN_APRICORN
	iftrue .AskApricorn
	checkitem WHT_APRICORN
	iftrue .AskApricorn
	checkitem BLK_APRICORN
	iftrue .AskApricorn
	checkitem PNK_APRICORN
	iftrue .AskApricorn

.BringMeApricorns
	writetext SilphCo5F_BallsFromApricornsText
	waitbutton
	closetext
	end

.AskApricorn:
	writetext KurtsHouseKurtAskYouHaveAnApricornText
	promptbutton
	special SelectApricornForKurt
	ifequal FALSE, .Cancel
	ifequal BLU_APRICORN, .Blu
	ifequal YLW_APRICORN, .Ylw
	ifequal GRN_APRICORN, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal BLK_APRICORN, .Blk
	ifequal PNK_APRICORN, .Pnk
; .Red
	setevent EVENT_GAVE_KURT_SON_RED_APRICORN
	sjump .GaveKurtSonApricorns

.Blu:
	setevent EVENT_GAVE_KURT_SON_BLU_APRICORN
	sjump .GaveKurtSonApricorns

.Ylw:
	setevent EVENT_GAVE_KURT_SON_YLW_APRICORN
	sjump .GaveKurtSonApricorns

.Grn:
	setevent EVENT_GAVE_KURT_SON_GRN_APRICORN
	sjump .GaveKurtSonApricorns

.Wht:
	setevent EVENT_GAVE_KURT_SON_WHT_APRICORN
	sjump .GaveKurtSonApricorns

.Blk:
	setevent EVENT_GAVE_KURT_SON_BLK_APRICORN
	sjump .GaveKurtSonApricorns

.Pnk:
	setevent EVENT_GAVE_KURT_SON_PNK_APRICORN
	sjump .GaveKurtSonApricorns

.GaveKurtSonApricorns:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	writetext SilphCo5F_StartRightAwayText
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	appear SILPHCO5F_APRICORN_BALL
	end

.Cancel:
	writetext SilphCo5FKurtsSon_DeclinedText
	waitbutton
.NoRoomForBall:
	closetext
	end

.GiveLevelBall:
	writetext SilphCo5FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar LEVEL_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_RED_APRICORN
	sjump .TryCatchingPokemon

.GiveLureBall:
	writetext SilphCo5FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar LURE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_BLU_APRICORN
	sjump .TryCatchingPokemon

.GiveMoonBall:
	writetext SilphCo5FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar MOON_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_YLW_APRICORN
	sjump .TryCatchingPokemon

.GiveFriendBall:
	writetext SilphCo5FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar FRIEND_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_GRN_APRICORN
	sjump .TryCatchingPokemon

.GiveFastBall:
	writetext SilphCo5FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_WHT_APRICORN
	sjump .TryCatchingPokemon

.GiveHeavyBall:
	writetext SilphCo5FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar HEAVY_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_BLK_APRICORN
	sjump .TryCatchingPokemon

.GiveLoveBall:
	writetext SilphCo5FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_PNK_APRICORN
	sjump .TryCatchingPokemon

.TryCatchingPokemon:
;	clearevent EVENT_KURTS_SON_MAKING_BALL
	writetext SilphCo5FKurtsSon_TryCatchingText
	waitbutton
	closetext
	end

.StillWorking:
	writetext SilphCo5FKurtsSon_StillWorking
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

.HelpUsFirst:
	writetext SilphCo5FKurtsSon_HelpUsText
	waitbutton
	closetext
	end

SilphCo5FKurtsSon_HelpUsText:
	text "I study #BALL"
	line "technology."

	para "But TEAM ROCKET"
	cont "has locked us out"
	cont "of the system!"

	para "You're a trainer?"

	para "If you can get rid"
	line "of TEAM ROCKET, I"
	cont "might be able to"
	cont "help you!"
	done

SilphCo5FKurtsSon_ThankYouText:
	text "You really drove"
	line "out TEAM ROCKET?"

	para "That's amazing!"

	para "I need to thank"
	line "you somehow."

	para "I study #BALLs for"
	line "work, but I craft"
	cont "them traditionally"
	cont "as a hobby."

	para "Its a skill that"
	line "my dad taught me."
	done

SilphCo5F_BallsFromApricornsText:
	text "If you bring me"
	line "APRICORNS, I can"
	cont "make them into"
	cont "#BALLs."
	done

SilphCo5F_StartRightAwayText:
	text "Great!"

	para "I'll start working"
	line "on it right away!"
	done

SilphCo5FKurtsSon_StillWorking:
	text "I need more time"
	line "to finish making"
	cont "your BALL."

	para "My father is a lot"
	line "quicker at this."

	para "He lives in JOHTO,"
	line "in AZALEA TOWN."
	done

SilphCo5FKurtsSon_DeclinedText:
	text "Let me know if you"
	line "want me to make"
	cont "you any #BALLs."
	done

SilphCo5FKurtsSon_FinishedYourBallText:
	text "I just finished"
	cont "your BALL. Here!"
	done

SilphCo5FKurtsSon_TryCatchingText:
	text "Try catching"
	line "#MON with it."
	done

SilphCo5FApricornBall:
	jumptext SilphCo5F_BallInProgressText
SilphCo5F_BallInProgressText:
	text "Its an APRICORN."

	para "It's being turned"
	line "into a #BALL."
	done

SilphCo5FClerk:
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iftrue .Cleared
	jumptextfaceplayer SilphCo5FClerkText
.Cleared
	jumptextfaceplayer SilphCo5FClerkSavedText

SilphCo5FClerkText:
	text "TEAM ROCKET is"
	line "in an uproar over"
	cont "some intruder."
	cont "That's you right?"
	done

SilphCo5FClerkSavedText:
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
	text "We study #"
	line "BALL technology"
	cont "on this floor!"
	done

ScientistRichBeatenText:
	text "Dang!"
	line "Blast it!"
	done

ScientistRichAfterBattleText:
	text "We worked on the"
	line "ultimate #BALL"
	cont "which could catch"
	cont "anything!"
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
	text "Show TEAM ROCKET"
	line "a little respect!"
	done

GruntM21BeatenText:
	text "Cough…"
	line "Cough…"
	done

GruntM21AfterBattleText:
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
	text "Whaaat? There"
	line "shouldn't be any"
	cont "children here?"
	done

JugglerFritzBeatenText:
	text "Oh goodness!"
	done

JugglerFritzAfterBattleText:
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
	text "I heard a kid was"
	line "wandering around."
	done

GruntF5BeatenText:
	text "Boom!"
	done

GruntF5AfterBattleText:
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
	cont "reality #MON."
	done

SilphCo5FReport2:
	jumptext SilphCo5FReport2Text
SilphCo5FReport2Text:
	text "It's a #MON"
	line "REPORT!"

	para "Over 160 #MON"
	line "techniques have"
	cont "been confirmed."
	done

SilphCo5FReport3:
	jumptext SilphCo5FReport3Text
SilphCo5FReport3Text:
	text "It's a #MON"
	line "REPORT!"

	para "4 #MON evolve"
	line "when traded"
	cont "by link-cable."
	done

; itemballs
SilphCo5FProtein:
	itemball PROTEIN

SilphCo5FTMTakeDown:
	itemball TM_TAKE_DOWN

SilphCo5FCardKey:
	itemball CARD_KEY

; hidden items
SilphCo5FHiddenElixer:
	hiddenitem ELIXER, EVENT_SILPH_CO_5F_HIDDEN_ELIXER

SilphCo5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_ELEVATOR, 1
	warp_event 24,  0, SILPH_CO_6F, 3
	warp_event 26,  0, SILPH_CO_4F, 2
	warp_event 27,  3, SILPH_CO_7F, 6 ; 5F-4
	warp_event 11,  5, SILPH_CO_3F, 4 ; 5F-5
	warp_event  3, 15, SILPH_CO_3F, 9 ; 5F-6
	warp_event  9, 15, SILPH_CO_9F, 5 ; 5F-7

	def_coord_events

	def_bg_events
	bg_event  7,  4, BGEVENT_IFNOTSET, SilphCo5F_Door1
	bg_event  7,  5, BGEVENT_IFNOTSET, SilphCo5F_Door1
	bg_event 15, 10, BGEVENT_IFNOTSET, SilphCo5F_Door2
	bg_event 15, 11, BGEVENT_IFNOTSET, SilphCo5F_Door2
	bg_event  7, 12, BGEVENT_IFNOTSET, SilphCo5F_Door3
	bg_event  7, 13, BGEVENT_IFNOTSET, SilphCo5F_Door3
	bg_event 12,  3, BGEVENT_ITEM, SilphCo5FHiddenElixer

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_ITEMBALL, 0, SilphCo5FApricornBall, EVENT_KURTS_SON_APRICORN_BALL
	object_event  2,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, SilphCo5FKurtsSon, -1
	object_event  8,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistRich, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 28,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM21, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 18, 10, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerJugglerFritz, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event  8, 16, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRocketGruntF5, EVENT_BEAT_GIOVANNI_SILPHCO
	object_event 13,  9, SPRITE_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FClerk, -1
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5FProtein, EVENT_SILPH_CO_5F_PROTEIN
	object_event  2, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SilphCo5FTMTakeDown, EVENT_SILPH_CO_5F_TM_TAKE_DOWN
	object_event 21, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5FCardKey, EVENT_SILPH_CO_5F_CARD_KEY
	object_event 23,  6, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FReport3, -1
	object_event 25, 10, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FReport2, -1
	object_event 22, 12, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo5FReport1, -1
