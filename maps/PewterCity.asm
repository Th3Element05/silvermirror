	object_const_def
	const PEWTERCITY_CHESTO_BERRY
	const PEWTERCITY_PERSIM_BERRY
	const PEWTERCITY_BLU_APRICORN
	const PEWTERCITY_WHT_APRICORN
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

PewterCityFruittrees:
	checkflag ENGINE_DAILY_PEWTER_CITY_FRUIT
	iftrue .NoFruit
	appear PEWTERCITY_CHESTO_BERRY
	appear PEWTERCITY_PERSIM_BERRY
	appear PEWTERCITY_BLU_APRICORN
	appear PEWTERCITY_WHT_APRICORN
.NoFruit:
	endcallback

PewterCityNoop1Scene:
PewterCityNoop2Scene:
	end

; fruit
PewterCity_ChestoBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, CHESTO_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem CHESTO_BERRY, 2
	iffalse .NoRoomInBag
	disappear PEWTERCITY_CHESTO_BERRY
	setflag ENGINE_DAILY_PEWTER_CITY_FRUIT
.NoRoomInBag
	closetext
	end

PewterCity_PersimBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, PERSIM_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem PERSIM_BERRY, 2
	iffalse .NoRoomInBag
	disappear PEWTERCITY_PERSIM_BERRY
	setflag ENGINE_DAILY_PEWTER_CITY_FRUIT
.NoRoomInBag
	closetext
	end

PewterCity_BLUApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, BLU_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem BLU_APRICORN
	iffalse .NoRoomInBag
	disappear PEWTERCITY_BLU_APRICORN
	setflag ENGINE_DAILY_PEWTER_CITY_FRUIT
.NoRoomInBag
	closetext
	end

PewterCity_WHTApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, WHT_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem WHT_APRICORN
	iffalse .NoRoomInBag
	disappear PEWTERCITY_WHT_APRICORN
	setflag ENGINE_DAILY_PEWTER_CITY_FRUIT
.NoRoomInBag
	closetext
	end

PewterCity_NoFruit:
	farsjump Std_NoFruitScript

; scripts
YoungsterTakesYouToGymScript1:
	showemote EMOTE_SHOCK, PEWTERCITY_YOUNGSTER, 20
	opentext
	writetext PewterCityYoungsterHeyText
	waitbutton
	closetext
	turnobject PLAYER, UP
	sjump PewterCityBlockingGuyScript
YoungsterTakesYouToGymScript2:
	showemote EMOTE_SHOCK, PEWTERCITY_YOUNGSTER, 20
	opentext
	writetext PewterCityYoungsterHeyText
	waitbutton
	closetext
	applymovement PLAYER, PewterCity1StepUpMovement
	sjump PewterCityBlockingGuyScript

YoungsterTakesYouToGymScript3:
	showemote EMOTE_SHOCK, PEWTERCITY_YOUNGSTER, 20
	opentext
	writetext PewterCityYoungsterHeyText
	waitbutton
	closetext
	applymovement PLAYER, PewterCity2StepsUpMovement
;	sjump PewterCityBlockingGuyScript
	; fallthrough
	
PewterCityBlockingGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .GiveItem
	writetext PewterCityYoungsterFollowMeText
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow PEWTERCITY_YOUNGSTER, PLAYER
	readvar VAR_FACING
	ifequal RIGHT, .GoAround
	applymovement PEWTERCITY_YOUNGSTER, PewterCityGoToGymMovement1
	sjump .PewterCityYoungsterGoToGymScript
.GoAround
	applymovement PEWTERCITY_YOUNGSTER, PewterCityGoToGymMovement1_Alt
	; fallthrough

.PewterCityYoungsterGoToGymScript:
	applymovement PEWTERCITY_YOUNGSTER, PewterCity14StepsLeftMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterCity5StepsUpMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterCityGoToGymMovement2
	turnobject PLAYER, UP
	opentext
	writetext PewterCityYoungsterBrockText
	waitbutton
	closetext
	stopfollow
	applymovement PEWTERCITY_YOUNGSTER, PewterCityYoungsterLeavesGymMovement
	special RestartMapMusic
	end

.GiveItem
	checkevent EVENT_GOT_PEWTER_BOOST_ITEM
	iftrue .Skip
	writetext PewterCityYoungsterBeatBrockText
	promptbutton
	setscene SCENE_PEWTERCITY_NOOP
.Skip
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .MiracleSeed
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .Charcoal
;	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
;	iftrue .MysticWater
;.MysticWater
	getitemname STRING_BUFFER_4, MYSTIC_WATER
	getstring STRING_BUFFER_5, PewterCityWater
	checkevent EVENT_GOT_PEWTER_BOOST_ITEM
	iftrue .GotPewterBoostItem
	verbosegiveitem MYSTIC_WATER
	iffalse .BagFull
	setevent EVENT_GOT_MYSTIC_WATER
	sjump .GotPewterBoostItem

.Charcoal
	getitemname STRING_BUFFER_4, CHARCOAL
	getstring STRING_BUFFER_5, PewterCityFire
	checkevent EVENT_GOT_PEWTER_BOOST_ITEM
	iftrue .GotPewterBoostItem
	verbosegiveitem CHARCOAL
	iffalse .BagFull
	setevent EVENT_POKEMON_MANSION_1F_CHARCOAL
	sjump .GotPewterBoostItem

.MiracleSeed
	getitemname STRING_BUFFER_4, MIRACLE_SEED
	getstring STRING_BUFFER_5, PewterCityGrass
	checkevent EVENT_GOT_PEWTER_BOOST_ITEM
	iftrue .GotPewterBoostItem
	verbosegiveitem MIRACLE_SEED
	iffalse .BagFull
	setevent EVENT_CELADON_CITY_MIRACLE_SEED
;	sjump .GotPewterBoostItem
	; fallthrough
.GotPewterBoostItem:
	setevent EVENT_GOT_PEWTER_BOOST_ITEM
	writetext PewterCityYoungsterExplainItemText
	waitbutton
.BagFull:
	closetext
	end

PewterCityYoungsterHeyText:
	text "Hey!"
	done

PewterCityYoungsterFollowMeText:
	text "You're a trainer"
	line "right? BROCK is"
	cont "looking for new"
	roll "challengers!"

	para "Follow me!"
	done

PewterCityYoungsterBrockText:
	text "If you have the"
	line "right stuff, go"
	cont "take on BROCK!"
	done

PewterCityYoungsterBeatBrockText:
	text "That BADGE! You"
	line "beat BROCK?"

	para "Great job! I want"
	line "you to have this!"
	done

PewterCityYoungsterExplainItemText:
	text "Holding that"
	line "@"
	text_ram wStringBuffer4
	text " will"
	cont "boost a #MON's"
	roll "@"
	text_ram wStringBuffer2
	text "-attacks!"
	done

PewterCityGrass:
	db "GRASS@"

PewterCityFire:
	db "FIRE@"

PewterCityWater:
	db "WATER@"

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
	applymovement PEWTERCITY_SUPER_NERD1, PewterCity14StepsLeftMovement
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
	writetext PewterCitySuperNerd1AmazingFossilsText
	waitbutton
	closetext
	end

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
	roll "it's worth it!"

	para "See you around!"
	done

PewterCitySuperNerd1AmazingFossilsText:
	text "Weren't those"
	line "fossils from MT."
	cont "MOON amazing?"
	done

PewterCitySuperNerd2Script:
	faceplayer
	opentext
	writetext PewterCityDoYouKnowWhatImDoingText
	yesorno
	iftrue .ThatsRight
	jumptext PewterCityRepelText
.ThatsRight
	jumptext PewterCityThatsRightText

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

PewterCityCooltrainerFScript:
	jumptextfaceplayer PewterCityCooltrainerFText
PewterCityCooltrainerFText:
	text "It's rumored that"
	line "CLEFAIRY came from"
	cont "the moon!"

	para "They appeared"
	line "after MOON STONEs"
	cont "fell on MT.MOON."
	done

PewterCityYoungsterScript:
	jumptextfaceplayer PewterCityYoungsterText
PewterCityYoungsterText:
	text "There aren't many"
	line "serious #MON"
	cont "trainers here!"

	para "They're all like"
	line "BUG CATCHERs, but"
	cont "the GYM LEADER,"
	roll "BROCK, is totally"
	cont "into it!"
	done

; bg events
PewterCityMuseumSign:
	jumptext PewterCityMuseumSignText
PewterCityMuseumSignText:
	text "PEWTER MUSEUM"
	line "OF SCIENCE"
	done

PewterCityGymSign:
	jumptext PewterCityGymSignText
PewterCityGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"
	para "The Rock Solid"
	line "#MON Trainer!"
	done

PewterCityPoliceNoticeSign:
	jumptext PewterCityPoliceNoticeSignText
PewterCityPoliceNoticeSignText:
	text "     NOTICE!"

	para "Suspicious people"
	line "have been spotted"
	cont "inside MT.MOON."

	para "Please contact"
	line "PEWTER CITY POLICE"
	cont "with any info."
	done

;	text "NOTICE!"
;	para "Thieves have been"
;	line "stealing #MON"
;	cont "fossils at MT."
;	roll "MOON! Please call"
;	cont "PEWTER POLICE"
;	roll "with any info!"
;	done

PewterCitySign:
	jumptext PewterCitySignText
PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray"
	cont "City"
	done

PewterCityTrainerTips:
	jumptext PewterCityTrainerTipsText
PewterCityTrainerTipsText:
	text "TRAINER TIPS"

	para "Any #MON that"
	line "takes part in"
	cont "battle, however"
	roll "short, earns EXP!"
	done

PewterCityPokecenterSign:
	jumpstd PokecenterSignScript

PewterCityMartSign:
	jumpstd MartSignScript

; movement ;
PewterCityGoToGymMovement1:
	step LEFT
	step DOWN
	step DOWN
	step_end

PewterCityGoToGymMovement1_Alt:
	step DOWN
	step DOWN
	step LEFT
	step_end

PewterCity14StepsLeftMovement:
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
	step LEFT
	step_end

PewterCity5StepsUpMovement:
	step UP
	step UP
	step UP
PewterCity2StepsUpMovement:
	step UP
PewterCity1StepUpMovement:
	step UP
	step_end

PewterCityGoToGymMovement2:
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

PewterCityStepAsideMovement:
	step LEFT
	turn_head RIGHT
	step_end

PewterCityMuseumGuyMovement:
	step UP
	step UP
	step RIGHT
	turn_head UP
	step_end

PewterCityMuseumGuyLeavesMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	remove_object
	step_end

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
	coord_event 35, 17, SCENE_PEWTERCITY_FIGHT_BROCK, YoungsterTakesYouToGymScript1
	coord_event 35, 18, SCENE_PEWTERCITY_FIGHT_BROCK, YoungsterTakesYouToGymScript2
	coord_event 35, 19, SCENE_PEWTERCITY_FIGHT_BROCK, YoungsterTakesYouToGymScript3

	def_bg_events
	bg_event 29,  5, BGEVENT_READ, PewterCity_NoFruit
	bg_event 29,  3, BGEVENT_READ, PewterCity_NoFruit
	bg_event 31,  4, BGEVENT_READ, PewterCity_NoFruit
	bg_event 33,  3, BGEVENT_READ, PewterCity_NoFruit
	bg_event 15,  9, BGEVENT_READ, PewterCityMuseumSign
	bg_event 15, 17, BGEVENT_READ, PewterCityGymSign
	bg_event 33, 19, BGEVENT_READ, PewterCityPoliceNoticeSign
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 19, 29, BGEVENT_READ, PewterCityTrainerTips
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign

	def_object_events
	object_event 29,  3, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, PewterCity_ChestoBerry, EVENT_PEWTER_CITY_CHESTO_BERRY ;chesto
	object_event 29,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, PewterCity_PersimBerry, EVENT_PEWTER_CITY_PERSIM_BERRY ;persim
	object_event 31,  4, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCity_BLUApricorn, EVENT_PEWTER_CITY_BLU_APRICORN ;blu
	object_event 33,  3, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, PewterCity_WHTApricorn, EVENT_PEWTER_CITY_WHT_APRICORN ;wht
	object_event 35, 16, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterCityBlockingGuyScript, -1 ;EVENT_PEWTER_CITY_BLOCKING_GUY
	object_event 27, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCitySuperNerd1Script, -1
	object_event  8, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 17, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityYoungsterScript, -1
	object_event 26, 25, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCitySuperNerd2Script, -1

;.PinkOverYellowOBPalette