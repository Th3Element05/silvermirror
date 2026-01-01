	object_const_def
	const KURTSHOUSE_KURT1
	const KURTSHOUSE_TWIN1
	const KURTSHOUSE_KURT2
	const KURTSHOUSE_TWIN2
;	const KURTSHOUSE_SLOWPOKE

KurtsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, KurtsHouseKurtCallback

KurtsHouseKurtCallback:
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue .Done
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .MakingBalls
	disappear KURTSHOUSE_KURT2
	appear KURTSHOUSE_KURT1
	disappear KURTSHOUSE_TWIN2
	appear KURTSHOUSE_TWIN1
	endcallback

.MakingBalls:
	disappear KURTSHOUSE_KURT1
	appear KURTSHOUSE_KURT2
	disappear KURTSHOUSE_TWIN1
	appear KURTSHOUSE_TWIN2
.Done:
	endcallback

Kurt1:
	faceplayer
	opentext
	checkevent EVENT_MET_KURT
	iftrue .GotLevelBall
	writetext KurtsHouseKurtBallsFromApricornsText
	promptbutton
;	verbosegiveitem LEVEL_BALL
;	iffalse .NoRoomForBall
	setevent EVENT_MET_KURT
.GotLevelBall:
	checkevent EVENT_GAVE_KURT_RED_APRICORN
	iftrue .GiveLevelBall
	checkevent EVENT_GAVE_KURT_BLU_APRICORN
	iftrue .GiveLureBall
	checkevent EVENT_GAVE_KURT_YLW_APRICORN
	iftrue .GiveMoonBall
	checkevent EVENT_GAVE_KURT_GRN_APRICORN
	iftrue .GiveFriendBall
	checkevent EVENT_GAVE_KURT_WHT_APRICORN
	iftrue .GiveFastBall
	checkevent EVENT_GAVE_KURT_BLK_APRICORN
	iftrue .GiveHeavyBall
	checkevent EVENT_GAVE_KURT_PNK_APRICORN
	iftrue .GiveLoveBall
	checkevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	iftrue .CanGiveGSBallToKurt
.NoGSBall:
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
;	iftrue .CheckApricorns
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
;	iftrue .CheckApricorns
;	writetext KurtsHouseKurtBallsFromApricornsText
;	waitbutton
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
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
;	iftrue .ThatTurnedOutGreat
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
;	iftrue .IMakeBallsFromApricorns
;	closetext
;	end
;
;.IMakeBallsFromApricorns:
	writetext KurtsHouseKurtBallsFromApricornsText
	waitbutton
	closetext
	end

.AskApricorn:
	writetext KurtsHouseKurtAskYouHaveAnApricornText
	promptbutton
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	special SelectApricornForKurt
	ifequal FALSE, .Cancel
	ifequal BLU_APRICORN, .Blu
	ifequal YLW_APRICORN, .Ylw
	ifequal GRN_APRICORN, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal BLK_APRICORN, .Blk
	ifequal PNK_APRICORN, .Pnk
; .Red
	setevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .GaveKurtApricorns

.Blu:
	setevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .GaveKurtApricorns

.Ylw:
	setevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .GaveKurtApricorns

.Grn:
	setevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .GaveKurtApricorns

.Wht:
	setevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .GaveKurtApricorns

.Blk:
	setevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .GaveKurtApricorns

.Pnk:
	setevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .GaveKurtApricorns

.GaveKurtApricorns:
	setflag ENGINE_KURT_MAKING_BALLS
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	writetext KurtsHouseKurtIllStartRightAwayText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear KURTSHOUSE_KURT1
	appear KURTSHOUSE_KURT2
;	disappear KURTSHOUSE_TWIN1
;	appear KURTSHOUSE_TWIN2
	pause 15
	special FadeInQuickly
;	opentext
;	sjump Kurt1
	end

.Cancel:
	writetext KurtsHouseKurtThatsALetdownText
	waitbutton
.NoRoomForBall:
	closetext
	end

.GiveLevelBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LEVEL_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLureBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LURE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .ThatTurnedOutGreat

.GiveMoonBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar MOON_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFriendBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FRIEND_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFastBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .ThatTurnedOutGreat

.GiveHeavyBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar HEAVY_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLoveBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .ThatTurnedOutGreat

.ThatTurnedOutGreat:
	writetext KurtsHouseKurtTurnedOutGreatText
	waitbutton
	closetext
	clearflag ENGINE_KURT_MAKING_BALLS
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear KURTSHOUSE_KURT2
	appear KURTSHOUSE_KURT1
	disappear KURTSHOUSE_TWIN2
	appear KURTSHOUSE_TWIN1
	pause 15
	special FadeInQuickly
	end

.CanGiveGSBallToKurt:
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iftrue .GaveGSBallToKurt
	checkitem GS_BALL
	iffalse .NoGSBall
	writetext KurtsHouseKurtWhatIsThatText
	waitbutton
	closetext
	setevent EVENT_GAVE_GS_BALL_TO_KURT
	takeitem GS_BALL
	setflag ENGINE_KURT_MAKING_BALLS
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear KURTSHOUSE_KURT1
	appear KURTSHOUSE_KURT2
	pause 15
	special FadeInQuickly
	end

.GaveGSBallToKurt:
	checkflag ENGINE_KURT_MAKING_BALLS
	iffalse .NotMakingBalls
	writetext KurtsHouseKurtImCheckingItNowText
	waitbutton
	writetext KurtsHouseKurtAhHaISeeText
	waitbutton
	closetext
	end

.NotMakingBalls:
	writetext KurtsHouseKurtThisBallStartedToShakeText
	waitbutton
	closetext
	setevent EVENT_FOREST_IS_RESTLESS
	clearevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	clearevent EVENT_GAVE_GS_BALL_TO_KURT
	special FadeOutMusic
	pause 20
	showemote EMOTE_SHOCK, KURTSHOUSE_KURT1, 30
	readvar VAR_FACING
	ifequal UP, .GSBallRunAround
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtExitHouseMovement
	sjump .KurtHasLeftTheBuilding

.GSBallRunAround:
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtGoAroundPlayerThenExitHouseMovement
.KurtHasLeftTheBuilding:
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	clearevent EVENT_AZALEA_TOWN_KURT
	waitsfx
	special RestartMapMusic
	setmapscene AZALEA_TOWN, SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL
	end

Kurt2:
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iffalse Kurt1
	faceplayer
	opentext
	writetext KurtsHouseKurtImCheckingItNowText
	waitbutton
	turnobject KURTSHOUSE_KURT2, UP
	writetext KurtsHouseKurtAhHaISeeText
	waitbutton
	closetext
	end

KurtsHouseKurtBallsFromApricornsText:
	text "KURT: I make BALLs"
	line "from APRICORNS."

	para "Collect them from"
	line "trees and bring"
	cont "'em to me."

	para "I'll make BALLs"
	line "out of them."
	done

KurtsHouseKurtAskYouHaveAnApricornText:
	text "KURT: You have an"
	line "APRICORN for me?"

	para "Fine! I'll turn it"
	line "into a BALL."
	done

KurtsHouseKurtIllStartRightAwayText:
	text "KURT: Splendid!"

	para "I'll get started"
	line "right away, it"
	cont "won't take long."
	done

KurtsHouseKurtThatsALetdownText:
	text "KURT: Oh…"
	line "That's a letdown."
	done

KurtsHouseKurtJustFinishedYourBallText:
	text "KURT: Ah, <PLAYER>!"
	line "I just finished"
	cont "your BALL. Here!"
	done

KurtsHouseKurtTurnedOutGreatText:
	text "KURT: That turned"
	line "out great."

	para "Try catching"
	line "#MON with it."
	done

;KurtsHouseKurtGranddaughterHelpingWorkFasterText:
;	text "KURT: Now that my"
;	line "granddaughter is"
;	cont "helping me, I can"
;	cont "work much faster."
;	done

KurtsHouseKurtWhatIsThatText:
	text "Wh-what is that?"

	para "I've never seen"
	line "one before."

	para "It looks a lot"
	line "like a #BALL,"
	cont "but it appears to"
	cont "be something else."

	para "Let me check it"
	line "for you."
	done

KurtsHouseKurtImCheckingItNowText:
	text "I'm checking it"
	line "now."
	done

KurtsHouseKurtAhHaISeeText:
	text "Ah-ha! I see!"
	line "So…"
	done

KurtsHouseKurtThisBallStartedToShakeText:
	text "<PLAYER>!"

	para "This BALL started"
	line "to shake while I"
	cont "was checking it."

	para "There must be"
	line "something to this!"
	done

;KurtsHouseKurtMakingBallsMustWaitText:
;	text "Hm? Who are you?"
;
;	para "<PLAYER>, eh? You"
;	line "want me to make"
;	cont "some BALLs?"
;
;	para "Sorry, but that'll"
;	line "have to wait."
;
;	para "Do you know TEAM"
;	line "ROCKET? Ah, don't"
;
;	para "worry. I'll tell"
;	line "you anyhow."
;
;	para "TEAM ROCKET's an"
;	line "evil gang that"
;
;	para "uses #MON for"
;	line "their dirty work."
;
;	para "They're supposed"
;	line "to have disbanded"
;	cont "three years ago."
;
;	para "Anyway, they're at"
;	line "the WELL, cutting"
;
;	para "off SLOWPOKETAILS"
;	line "for sale!"
;
;	para "So I'm going to"
;	line "go give them a"
;	cont "lesson in pain!"
;
;	para "Hang on, SLOWPOKE!"
;	line "Old KURT is on his"
;	cont "way!"
;	done

;KurtsHouseKurtHonoredToMakeBallsText:
;	text "KURT: Hi, <PLAYER>!"
;
;	para "You handled your-"
;	line "self like a real"
;	cont "hero at the WELL."
;
;	para "I like your style!"
;
;	para "I would be honored"
;	line "to make BALLs for"
;	cont "a trainer like"
;	cont "you."
;
;	para "This is all I have"
;	line "now, but take it."
;	done

KurtsHouseKurtExitHouseMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

KurtsHouseKurtGoAroundPlayerThenExitHouseMovement:
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

KurtsGranddaughter1:
	faceplayer
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue KurtsGranddaughterHelpScript
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue .Lonely
	opentext
	writetext KurtsGranddaughterDadText
	waitbutton
	closetext
	end

.Lonely:
	opentext
	writetext KurtsGranddaughterLonelyText
	waitbutton
	closetext
	end

KurtsGranddaughter2:
	faceplayer
	opentext
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iftrue .GSBall
	writetext KurtsGranddaughterFunText
	waitbutton
	closetext
	turnobject KURTSHOUSE_TWIN2, RIGHT
	end

.GSBall:
	writetext KurtsGranddaughterGSBallText
	waitbutton
	closetext
	turnobject KURTSHOUSE_TWIN2, RIGHT
	end

KurtsGranddaughterHelpScript:
	opentext
	writetext KurtsGranddaughterHelpText
	waitbutton
	closetext
	end

KurtsGranddaughterLonelyText:
	text "Grandpa's out…"

	para "But I still have"
	line "SLOWPOKE to keep"
	cont "me company!"
	done

KurtsGranddaughterDadText:
	text "My dad works at"
	line "SILPH researching"
	cont "#BALLs."

	para "I have to stay"
	line "home with Grandpa"
	cont "and SLOWPOKE."
	done

KurtsGranddaughterHelpText:
	text "I get to help"
	line "Grandpa now!"

	para "We'll make good"
	line "BALLs for you, so"
	cont "please wait!"
	done

KurtsGranddaughterFunText:
	text "It's fun to make"
	line "BALLs!"
	done

KurtsGranddaughterGSBallText:
	text "Grandpa's checking"
	line "a BALL right now."

	para "So I'm waiting"
	line "till he's done."
	done

KurtsHouseSlowpoke:
	faceplayer
	opentext
	writetext KurtsHouseSlowpokeText1
	pause 60
	writetext KurtsHouseSlowpokeText2
	cry SLOWPOKE
	waitbutton
	closetext
	end

KurtsHouseSlowpokeText1:
	text "SLOWPOKE: …"

	para "<……> <……> <……>"
	done

KurtsHouseSlowpokeText2:
	text "<……> <……>Yawn?"
	done

KurtsHouseOakPhoto:
	jumptext KurtsHouseOakPhotoText
KurtsHouseOakPhotoText:
;	text "…A young PROF."
;	line "OAK?"
	text "Its a photo of"
	line "PROF.OAK when he"
	cont "was younger."
	done

KurtsHouseCelebiStatue:
	jumptext KurtsHouseCelebiStatueText
KurtsHouseCelebiStatueText:
	text "It's a statue of"
	line "the forest's pro-"
	cont "tector."
	done

KurtsHouseBookshelf:
	jumpstd DifficultBookshelfScript

KurtsHouseRadio:
	jumpstd Radio2Script

KurtsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, AZALEA_TOWN, 4
	warp_event  5,  7, AZALEA_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, KurtsHouseRadio
	bg_event  8,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  9,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  5,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  3,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  4,  1, BGEVENT_READ, KurtsHouseCelebiStatue

	def_object_events
	object_event  3,  2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt1, EVENT_KURTS_HOUSE_KURT_1
	object_event  5,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter1, EVENT_KURTS_HOUSE_GRANDDAUGHTER_1
	object_event 14,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt2, EVENT_KURTS_HOUSE_KURT_2
	object_event 11,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter2, EVENT_KURTS_HOUSE_GRANDDAUGHTER_2
	object_event  6,  3, SPRITE_SLOWPOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KurtsHouseSlowpoke, -1
