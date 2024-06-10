	object_const_def
	const PEWTERCITY_BERRY
	const PEWTERCITY_BERRY_2
	const PEWTERCITY_APRICORN
	const PEWTERCITY_APRICORN_2
	const PEWTERCITY_YOUNGSTER
	const PEWTERCITY_SUPER_NERD1

PewterCity_MapScripts:
	def_scene_scripts
	scene_script PewterCityNoop1Scene, SCENE_PEWTERCITY_FIGHT_BROCK
	scene_script PewterCityNoop2Scene, SCENE_PEWTERCITY_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PewterCityFlypointCallback
	callback MAPCALLBACK_OBJECTS, PewterCityFruittrees

PewterCityFlypointCallback:
	setflag ENGINE_FLYPOINT_PEWTER
	setmapscene PEWTER_MUSEUM_1F, SCENE_DEFAULT
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	endcallback

PewterCityNoop1Scene:
PewterCityNoop2Scene:
	end

PewterCityFruittrees:
;Berry:
	checkflag ENGINE_DAILY_PEWTER_BERRY
	iftrue .NoBerry
	appear PEWTERCITY_BERRY
.NoBerry:
	;fallthrough

;Apricorn:
	checkflag ENGINE_DAILY_PEWTER_APRICORN
	iftrue .NoApricorn
	appear PEWTERCITY_APRICORN
.NoApricorn:
	;fallthrough

;BERRY_2:
	checkflag ENGINE_DAILY_PEWTER_BERRY_2
	iftrue .NoBERRY_2
	appear PEWTERCITY_BERRY_2
.NoBERRY_2:
	;fallthrough

;APRICORN_2:
	checkflag ENGINE_DAILY_PEWTER_APRICORN_2
	iftrue .NoAPRICORN_2
	appear PEWTERCITY_APRICORN_2
.NoAPRICORN_2:
	endcallback

; scripts
YoungsterTakesYouToGymScript1:
	showemote EMOTE_SHOCK, PEWTERCITY_YOUNGSTER, 20
	opentext
	writetext PewterCityYoungsterHeyText
	waitbutton
	closetext
	turnobject PLAYER, UP
	sjump PewterCityBlockingYoungsterScript
YoungsterTakesYouToGymScript2:
	showemote EMOTE_SHOCK, PEWTERCITY_YOUNGSTER, 20
	opentext
	writetext PewterCityYoungsterHeyText
	waitbutton
	closetext
	applymovement PLAYER, PewterCity1StepUpMovement
	; fallthrough
	
PewterCityBlockingYoungsterScript:
	faceplayer
	opentext
	writetext PewterCityYoungsterFollowMeText
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	readvar VAR_FACING
	ifequal RIGHT, .Skip
	applymovement PLAYER, PewterCityStepAsideMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterCity1StepDownMovement
	follow PEWTERCITY_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_YOUNGSTER, PewterCity1StepDownMovement
	sjump PewterCityYoungsterGoToGymScript
.Skip
	follow PEWTERCITY_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_YOUNGSTER, PewterCity1StepDownMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterCity1StepDownMovement
	; fallthrough

PewterCityYoungsterGoToGymScript:
	applymovement PEWTERCITY_YOUNGSTER, PewterCity13StepsLeftMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterCity5StepsUpMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterCityYoungsterGoToGymMovement
	turnobject PLAYER, UP
	opentext
	writetext PewterCityYoungsterBrockText
	waitbutton
	closetext
	stopfollow
	applymovement PEWTERCITY_YOUNGSTER, PewterCityYoungsterLeavesGymMovement
	special RestartMapMusic
	end

PewterCitySuperNerd1Script:
	faceplayer
	opentext
	writetext PewterCitySuperNerd1QuestionText
	yesorno
	iftrue PewterCityBeenToMuseum
	writetext PewterCitySuperNerd1GoToMuseumText
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	readvar VAR_FACING
	ifnotequal DOWN, .Skip
	applymovement PLAYER, PewterCityStepAsideMovement
	applymovement PEWTERCITY_SUPER_NERD1, PewterCity1StepUpMovement
	follow PEWTERCITY_SUPER_NERD1, PLAYER
	sjump PewterCityGoToMuseumScript
.Skip
	follow PEWTERCITY_SUPER_NERD1, PLAYER
	applymovement PEWTERCITY_SUPER_NERD1, PewterCity1StepUpMovement
	; fallthrough

PewterCityGoToMuseumScript:
	applymovement PEWTERCITY_SUPER_NERD1, PewterCity5StepsUpMovement
	applymovement PEWTERCITY_SUPER_NERD1, PewterCity13StepsLeftMovement
	applymovement PEWTERCITY_SUPER_NERD1, PewterCityMuseumGuyMovement
	stopfollow
	opentext
	writetext PewterCityMuseumGuyHereText
	waitbutton
	closetext
	stopfollow
	applymovement PEWTERCITY_SUPER_NERD1, PewterCityMuseumGuyLeavesMovement
	special RestartMapMusic
	end

PewterCityBeenToMuseum:
	jumptext PewterCitySuperNerd1AmazingFossilsText

PewterCityCooltrainerFScript:
	jumptextfaceplayer PewterCityCooltrainerFText

PewterCitySuperNerd2Script:
	faceplayer
	opentext
	writetext PewterCityDoYouKnowWhatImDoingText
	yesorno
	iftrue .ThatsRight
	jumptext PewterCityRepelText
.ThatsRight
	jumptext PewterCityThatsRightText

PewterCityCooltrainerMScript:
	jumptextfaceplayer PewterCityCooltrainerMText

; bg events
PewterCityMuseumSign:
	jumptext PewterCityMuseumSignText

PewterCityGymSign:
	jumptext PewterCityGymSignText

PewterCityPoliceNoticeSign:
	jumptext PewterCityPoliceNoticeSignText

PewterCitySign:
	jumptext PewterCitySignText

PewterCityTrainerTips:
	jumptext PewterCityTrainerTipsText

PewterCityPokecenterSign:
	jumpstd PokecenterSignScript

PewterCityMartSign:
	jumpstd MartSignScript

; berries
PewterCityBerryTree:
	opentext
	writetext PewterCityBerryTreeText
	promptbutton
	writetext PewterCityHeyItsBerryText
	promptbutton
	verbosegiveitem RAWST_BERRY
	iffalse .NoRoomInBag
	disappear PEWTERCITY_BERRY
	setflag ENGINE_DAILY_PEWTER_BERRY
.NoRoomInBag
	closetext
	end

PewterCityBerryTree2:
	opentext
	writetext PewterCityBerryTreeText
	promptbutton
	writetext PewterCityHeyItsBERRY_2Text
	promptbutton
	verbosegiveitem CHESTO_BERRY
	iffalse .NoRoomInBag
	disappear PEWTERCITY_BERRY_2
	setflag ENGINE_DAILY_PEWTER_BERRY_2
.NoRoomInBag
	closetext
	end

PewterCityApricornTree:
	opentext
	writetext PewterCityApricornTreeText
	promptbutton
	writetext PewterCityHeyItsApricornText
	promptbutton
	verbosegiveitem BLU_APRICORN
	iffalse .NoRoomInBag
	disappear PEWTERCITY_APRICORN
	setflag ENGINE_DAILY_PEWTER_APRICORN
.NoRoomInBag
	closetext
	end

PewterCityApricornTree2:
	opentext
	writetext PewterCityApricornTreeText
	promptbutton
	writetext PewterCityHeyItsAPRICORN_2Text
	promptbutton
	verbosegiveitem WHT_APRICORN
	iffalse .NoRoomInBag
	disappear PEWTERCITY_APRICORN_2
	setflag ENGINE_DAILY_PEWTER_APRICORN_2
.NoRoomInBag
	closetext
	end

PewterCityNoBerry:
	opentext
	writetext PewterCityBerryTreeText
	promptbutton
	writetext PewterCityNothingHereText
	waitbutton
	closetext
	end

PewterCityNoApricorn:
	opentext
	writetext PewterCityApricornTreeText
	promptbutton
	writetext PewterCityNothingHereText
	waitbutton
	closetext
	end

; movement ;
;PewterCity1StepUpMovement:
;	step UP
;	step_end
;
PewterCity1StepDownMovement:
	step DOWN
	step_end

PewterCityStepAsideMovement:
	step LEFT
	turn_head RIGHT
	step_end

PewterCity13StepsLeftMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

PewterCity5StepsUpMovement:
	step UP
	step UP
	step UP
	step UP
PewterCity1StepUpMovement:
	step UP
	step_end

PewterCityYoungsterGoToGymMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

PewterCityYoungsterLeavesGymMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	remove_object
	step_end

PewterCityMuseumGuyMovement:
	step UP
	step UP
	step UP
	turn_head DOWN
	step_end

PewterCityMuseumGuyLeavesMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
;	hide_object
;	big_step UP
;	big_step UP
	remove_object ;test
	step_end

PewterCityYoungsterHeyText:
	text "Hey!"
	done

PewterCityYoungsterFollowMeText:
	text "You're a trainer"
	line "right? BROCK's"
	cont "looking for new"
	cont "challengers!"
	cont "Follow me!"
	done

PewterCityYoungsterBrockText:
	text "If you have the"
	line "right stuff, go"
	cont "take on BROCK!"
	done

PewterCitySuperNerd1QuestionText:
	text "Did you check out"
	line "the MUSEUM?"
	done

PewterCitySuperNerd1GoToMuseumText:
	text "Really?"
	line "You absolutely"
	cont "have to go!"
	done

PewterCityMuseumGuyHereText:
	text "It's right here!"
	line "You have to pay"
	cont "to get in, but"
	cont "it's worth it!"
	cont "See you around!"
	done

PewterCitySuperNerd1AmazingFossilsText:
	text "Weren't those"
	line "fossils from MT."
	cont "MOON amazing?"
	done

PewterCityCooltrainerFText:
	text "It's rumored that"
	line "CLEFAIRYs came"
	cont "from the moon!"
	para "They appeared "
	line "after MOON STONE"
	cont "fell on MT.MOON."
	done

PewterCityDoYouKnowWhatImDoingText:
	text "Psssst!"
	line "Do you know what"
	cont "I'm doing?"
	done
PewterCityRepelText:
	text "I'm spraying REPEL"
	line "to keep #MON"
	cont "out of my garden!"
	done
PewterCityThatsRightText:
	text "That's right!"
	line "It's hard work!"
	done

PewterCityCooltrainerMText:
	text "There aren't many"
	line "serious #MON"
	cont "trainers here!"
	para "They're all like"
	line "BUG CATCHERs,"
	cont "but PEWTER GYM's"
	cont "BROCK is totally"
	cont "into it!"
	done

PewterCityMuseumSignText:
	text "PEWTER MUSEUM"
	line "OF SCIENCE"
	done

PewterCityGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"
	para "The Rock Solid"
	line "#MON Trainer!"
	done

PewterCityPoliceNoticeSignText:
	text "NOTICE!"
	para "Thieves have been"
	line "stealing #MON"
	cont "fossils at MT."
	cont "MOON! Please call"
	cont "PEWTER POLICE"
	cont "with any info!"
	done

PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray"
	cont "City"
	done

PewterCityTrainerTipsText:
	text "TRAINER TIPS"
	para "Any #MON that"
	line "takes part in"
	cont "battle, however"
	cont "short, earns EXP!"
	done

PewterCityBerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

PewterCityHeyItsBerryText:
	text "Hey! It's"
	line "RAWST BERRY!"
	done

PewterCityHeyItsBERRY_2Text:
	text "Hey! It's"
	line "CHESTO BERRY!"
	done

PewterCityApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

PewterCityHeyItsApricornText:
	text "Hey! It's"
	line "BLU APRICORN!"
	done

PewterCityHeyItsAPRICORN_2Text:
	text "Hey! It's"
	line "WHT APRICORN!"
	done

PewterCityNothingHereText:
	text "There's nothing"
	line "here…"
	done

PewterCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 23, 17, PEWTER_MART, 1
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1
	warp_event 14,  7, PEWTER_MUSEUM_1F, 1
	warp_event 19,  5, PEWTER_MUSEUM_1F, 3

	def_coord_events
	coord_event 34, 17, SCENE_PEWTERCITY_FIGHT_BROCK, YoungsterTakesYouToGymScript1
	coord_event 34, 18, SCENE_PEWTERCITY_FIGHT_BROCK, YoungsterTakesYouToGymScript2

	def_bg_events
	bg_event 15,  9, BGEVENT_READ, PewterCityMuseumSign
	bg_event 11, 17, BGEVENT_READ, PewterCityGymSign
	bg_event 33, 19, BGEVENT_READ, PewterCityPoliceNoticeSign
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 19, 29, BGEVENT_READ, PewterCityTrainerTips
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign
	bg_event 31,  5, BGEVENT_READ, PewterCityNoBerry
	bg_event 33,  5, BGEVENT_READ, PewterCityNoBerry
	bg_event 31,  3, BGEVENT_READ, PewterCityNoApricorn
	bg_event 29,  3, BGEVENT_READ, PewterCityNoApricorn

	def_object_events
	object_event 33,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityBerryTree, EVENT_PEWTER_BERRY
	object_event 31,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityBerryTree2, EVENT_PEWTER_BERRY_2
	object_event 31,  3, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityApricornTree, EVENT_PEWTER_APRICORN
	object_event 29,  3, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, PewterCityApricornTree2, EVENT_PEWTER_APRICORN_2
	object_event 34, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityBlockingYoungsterScript, EVENT_PEWTER_CITY_BLOCKING_YOUNGSTER
	object_event 27, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCitySuperNerd1Script, -1
	object_event  8, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 17, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerMScript, -1
	object_event 26, 25, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterCitySuperNerd2Script, -1

