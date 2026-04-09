	object_const_def
	const KURTSSONSHOUSE1F_KURTSSON
	const KURTSSONSHOUSE1F_APRICORN_BALL

KurtsSonsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, KurtsSonsHouse1FTilesCallback
	callback MAPCALLBACK_OBJECTS, KurtsSonsHouse1FApricornBallCallback

KurtsSonsHouse1FTilesCallback:
	changeblock 8, 0, $04 ; wall
	changeblock 4, 2, $34 ; worktable top left
	changeblock 6, 4, $35 ; worktable bottom right
	endcallback

KurtsSonsHouse1FApricornBallCallback:
	disappear KURTSSONSHOUSE1F_APRICORN_BALL
;	setevent EVENT_KURTS_SON_APRICORN_BALL
	endcallback


KurtsSonsHouse1FKurtsSon:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI_SILPHCO
	iffalse .HelpUsFirst
; cleared silph co
	checkevent EVENT_MET_KURTS_SON
	iftrue .SkipIntro
	writetext KurtsSonsHouse1FKurtsSon_ThankYouText
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
	checkevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	iffalse .CheckApricorns
;.CanGiveGSBallToKurt
	checkevent EVENT_KURTS_SON_SAW_GS_BALL
	iftrue .RemindAboutKurt
	writetext KurtsSonWhatIsThatBallText
	setevent EVENT_KURTS_SON_SAW_GS_BALL
	promptbutton
.RemindAboutKurt
	writetext KurtsSonRemindAboutGSBallText
	promptbutton
	; fallthrough

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
	writetext KurtsSonsHouse1F_BallsFromApricornsText
	waitbutton
	closetext
	end

.AskApricorn:
	writetext KurtsSonsHouse1F_AskHaveApricornText
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
	writetext KurtsSonsHouse1F_StartRightAwayText
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	appear KURTSSONSHOUSE1F_APRICORN_BALL
	end

.Cancel:
	writetext KurtsSonsHouse1FKurtsSon_DeclinedText
	waitbutton
.NoRoomForBall:
	closetext
	end

.GiveLevelBall:
	writetext KurtsSonsHouse1FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar LEVEL_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_RED_APRICORN
	sjump .TryCatchingPokemon

.GiveLureBall:
	writetext KurtsSonsHouse1FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar LURE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_BLU_APRICORN
	sjump .TryCatchingPokemon

.GiveMoonBall:
	writetext KurtsSonsHouse1FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar MOON_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_YLW_APRICORN
	sjump .TryCatchingPokemon

.GiveFriendBall:
	writetext KurtsSonsHouse1FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar FRIEND_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_GRN_APRICORN
	sjump .TryCatchingPokemon

.GiveFastBall:
	writetext KurtsSonsHouse1FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_WHT_APRICORN
	sjump .TryCatchingPokemon

.GiveHeavyBall:
	writetext KurtsSonsHouse1FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar HEAVY_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_BLK_APRICORN
	sjump .TryCatchingPokemon

.GiveLoveBall:
	writetext KurtsSonsHouse1FKurtsSon_FinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_SON_PNK_APRICORN
	sjump .TryCatchingPokemon

.TryCatchingPokemon:
;	clearevent EVENT_KURTS_SON_MAKING_BALL
	writetext KurtsSonsHouse1FKurtsSon_TryCatchingText
	waitbutton
	closetext
	end

.StillWorking:
	writetext KurtsSonsHouse1FKurtsSon_StillWorking
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

.HelpUsFirst:
	writetext KurtsSonsHouse1FKurtsSon_HelpUsText
	waitbutton
	closetext
	end

KurtsSonsHouse1FKurtsSon_HelpUsText:
	text "I work at SILPH,"
	line "but I was late for"
	cont "work today."

	para "I wasn't there"
	line "when those ROCKETs"
	cont "took over!"

	para "But my coworkers"
	line "weren't so lucky!"

	para "I'm so worried"
	line "about them, I can't"
	cont "even focus on my"
	roll "hobbies!"
	done

;	text "I study #BALL"
;	line "technology."
;
;	para "But TEAM ROCKET"
;	cont "has locked us out"
;	roll "of the system!"
;
;	para "You're a trainer?"
;
;	para "If you can get rid"
;	line "of TEAM ROCKET, I"
;	cont "might be able to"
;	roll "help you!"
;	done

KurtsSonsHouse1FKurtsSon_ThankYouText:
;	text "You really drove"
;	line "out TEAM ROCKET?"
;
;	para "That's amazing!"
;
;	para "I need to thank"
;	line "you somehow."
;
	text "I study #BALLs"
	line "for work, but I"
	cont "like to craft them"
	roll "traditionally as"
	cont "a hobby."

	para "Its a skill that"
	line "my dad taught me."
	done

KurtsSonsHouse1F_BallsFromApricornsText:
	text "If you bring me"
	line "APRICORNs, I can"
	cont "make them into"
	roll "#BALLs."
	done

KurtsSonsHouse1F_AskHaveApricornText:
	text "If you have an"
	line "APRICORN, I can"
	cont "turn it into a"
	roll "#BALL!"
	done

KurtsSonsHouse1F_StartRightAwayText:
	text "Great!"

	para "I'll start working"
	line "on it right away!"
	done

KurtsSonsHouse1FKurtsSon_StillWorking:
	text "I need more time"
	line "to finish making"
	cont "your BALL."

	para "My father is a lot"
	line "quicker at this."

	para "He lives in JOHTO,"
	line "in AZALEA TOWN."
	done

KurtsSonsHouse1FKurtsSon_DeclinedText:
	text "Let me know if you"
	line "want me to make"
	cont "you any #BALLs."
	done

KurtsSonsHouse1FKurtsSon_FinishedYourBallText:
	text "I just finished"
	line "your BALL. Here!"
	done

KurtsSonsHouse1FKurtsSon_TryCatchingText:
	text "Try catching"
	line "#MON with it."
	done

KurtsSonWhatIsThatBallText:
	text "You've got an odd"
	line "#BALL? Let me"
	cont "have a look."

	para "<……>"

	para "Hm…"
	line "This looks like a"
	cont "#BALL, but it's"
	roll "not like any that"
	cont "I've ever seen."
	done

KurtsSonRemindAboutGSBallText:
	text "You should show"
	line "that odd BALL to"
	cont "my father."

	para "He lives in JOHTO,"
	line "in AZALEA TOWN."

	para "Maybe he can tell"
	line "you more about it!"

	para "Anyway…"
	done

KurtsSonsHouse1FApricornBall:
	jumptext KurtsSonsHouse1F_BallInProgressText
KurtsSonsHouse1F_BallInProgressText:
	text "Its an APRICORN."

	para "It's being turned"
	line "into a #BALL."
	done


KurtsSonsHouse1FStoveScript:
	jumptext KurtsSonsHouse1FStoveText
KurtsSonsHouse1FStoveText:
	text "It's the stove."
	done

KurtsSonsHouse1FSinkScript:
	jumptext KurtsSonsHouse1FSinkText
KurtsSonsHouse1FSinkText:
	text "The sink is nice"
	line "and clean."
	done

KurtsSonsHouse1FFridgeScript:
	jumptext KurtsSonsHouse1FFridgeText
KurtsSonsHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER!"
	done

;KurtsSonsHouse1FTV:
;	jumpstd TVScript

KurtsSonsHouse1FBookshelf:
;	jumpstd PictureBookshelfScript
	jumpstd MagazineBookshelfScript

KurtsSonsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAFFRON_CITY, 17
	warp_event  5,  7, SAFFRON_CITY, 17
;	warp_event  9,  0, KURTS_SONS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, KurtsSonsHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, KurtsSonsHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, KurtsSonsHouse1FFridgeScript
;	bg_event  4,  1, BGEVENT_READ, KurtsSonsHouse1FTV
	bg_event  6,  1, BGEVENT_READ, KurtsSonsHouse1FBookshelf
	bg_event  7,  1, BGEVENT_READ, KurtsSonsHouse1FBookshelf

	def_object_events
	object_event  4,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, KurtsSonsHouse1FKurtsSon, EVENT_KURTS_SONS_HOUSE_1F_KURTS_SON
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, KurtsSonsHouse1FApricornBall, EVENT_KURTS_SON_APRICORN_BALL
