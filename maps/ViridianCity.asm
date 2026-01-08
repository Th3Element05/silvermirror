	object_const_def
	const VIRIDIANCITY_COFFEE_GRAMPS
	const VIRIDIANCITY_CATCHING_GRAMPS
	const VIRIDIANCITY_FISHER

ViridianCity_MapScripts:
	def_scene_scripts
	scene_script ViridianCityNoop1Scene, SCENE_VIRIDIANCITY_NO_POKEDEX
	scene_script ViridianCityNoop2Scene, SCENE_VIRIDIANCITY_MAP_CARD
	scene_script ViridianCityNoop3Scene, SCENE_VIRIDIANCITY_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlypointCallback
;	callback MAPCALLBACK_OBJECTS, ViridianCityMoveCoffeeGrampsCallback
	callback MAPCALLBACK_TILES, ViridianGymDoorCallback

ViridianCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	endcallback

;ViridianCityMoveCoffeeGrampsCallback:
;	checkscene
;	iftrue .Skip ; not SCENE_VIRIDIANCITY_NO_POKEDEX
;	moveobject VIRIDIANCITY_COFFEE_GRAMPS, 18, 9
;.Skip:
;	endcallback

ViridianGymDoorCallback:
	checkevent EVENT_VIRIDIAN_GYM_LEADER_RETURNED
	iftrue .GymOpen
	changeblock 32, 6, $66 ; LOCKED
.GymOpen:
	endcallback

ViridianCityNoop1Scene:
ViridianCityNoop2Scene:
ViridianCityNoop3Scene:
	end

;object scripts
ViridianCityCoffeeGrampsScript:
;ViridianCityCoffeeGrampsBlockScript:
;	faceplayer
	showemote EMOTE_SAD, VIRIDIANCITY_COFFEE_GRAMPS, 20
	opentext
	writetext ViridianCityCoffeeGrampsBlockText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCityCoffeeGrampsBlockMovement
	setevent EVENT_COFFEE_GRAMPS_STOPPED_YOU
	end

ViridianCityCoffeeGrampsBlockText:
	text "You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCityTutorialGrampsScript:
;ViridianCityCoffeeGrampsScript:
	faceplayer
	checkscene
;	ifequal SCENE_VIRIDIANCITY_NO_POKEDEX, ViridianCityCoffeeGrampsBlockScript
	ifequal SCENE_VIRIDIANCITY_MAP_CARD, ViridianCityMapCardScript
	opentext
	writetext ViridianCityCatchPokemonAsk
	yesorno
	iffalse .DoCatchTutorial
	writetext ViridianCityCatchTutorialDeclinedText
	waitbutton
	closetext
	end

.DoCatchTutorial
	writetext ViridianCityCatchTutorialAcceptedText
	loadwildmon WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	refreshscreen
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_MISSINGNO
	jumptext CatchingTutorialDebriefText

;ViridianCityForceMapCardScript2:
;;	turnobject VIRIDIANCITY_COFFEE_GRAMPS, RIGHT
;	showemote EMOTE_SHOCK, VIRIDIANCITY_COFFEE_GRAMPS, 30
;	opentext
;	writetext ViridianCityCoffeeGrampsHeyText
;	waitbutton
;	closetext
;	applymovement PLAYER, ViridianCityMapCardMovement2
;	sjump ViridianCityMapCardScript

ViridianCityForceMapCardScript1:
	turnobject VIRIDIANCITY_CATCHING_GRAMPS, RIGHT
	showemote EMOTE_SHOCK, VIRIDIANCITY_CATCHING_GRAMPS, 20
	opentext
	writetext ViridianCityCoffeeGrampsHeyText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCityMapCardMovement1
	sjump ViridianCityMapCardScript

ViridianCityForceMapCardScript0:
	turnobject VIRIDIANCITY_CATCHING_GRAMPS, RIGHT
	showemote EMOTE_SHOCK, VIRIDIANCITY_CATCHING_GRAMPS, 20
	opentext
	writetext ViridianCityCoffeeGrampsHeyText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	; fallthrough

ViridianCityMapCardScript:
	opentext
	checkevent EVENT_COFFEE_GRAMPS_STOPPED_YOU
	iffalse .SkipStopped
	writetext ViridianCityCoffeeGrampsSorryText
	promptbutton
.SkipStopped
	writetext ViridianCityCoffeeGrampsMapCardText
	promptbutton
	getstring STRING_BUFFER_4, .mapcardname
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	writetext GotMapCardText
	promptbutton
	writetext ViridianCityCoffeeGrampsTravelText
	promptbutton
	setscene SCENE_VIRIDIANCITY_NOOP
	setevent EVENT_GOT_MAP_CARD
	sjump ViridianCityTutorialGrampsScript

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.mapcardname
	db "MAP CARD@"

ViridianCityCoffeeGrampsHeyText:
	text "Hey! You!"
	done

ViridianCityCoffeeGrampsSorryText:
	text "Sorry for stopping"
	line "you earlier."
	cont "I'm not myself"
	cont "until I've had my"
	cont "coffee."
	
	para "You can go through"
	line "now."
	done

ViridianCityCoffeeGrampsMapCardText:
	text "You look like"
	line "you have a long"
	cont "journey ahead of"
	cont "you. Take this."
	done

GotMapCardText:
	text "<PLAYER>'s #GEAR"
	line "now has a MAP!"
	done

ViridianCityCatchPokemonAsk:
	text "I used to catch"
	line "lots of #MON"
	cont "when I was young."
	
	para "Do you know how"
	line "to catch #MON?"
	done

ViridianCityCatchTutorialAcceptedText:
	text "I'll show you"
	line "how to then."
	done

ViridianCityCatchTutorialDeclinedText:
	text "Oh! Good!"
	done

CatchingTutorialDebriefText:
	text "That's how you do"
	line "it."

	para "If you weaken them"
	line "first, #MON are"
	cont "easier to catch."
	done

ViridianCityCoffeeGrampsTravelText:
	text "I used to travel"
	line "when I was young."
	
	para "I hope that will"
	line "come in handy on"
	cont "your travels!"
	done

ViridianCityGymGramps:
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .LeaderLeft
	checkevent EVENT_VIRIDIAN_GYM_LEADER_RETURNED
	iftrue .LeaderReturned
	jumptextfaceplayer ViridianCityGymGrampsText
.LeaderReturned
	jumptextfaceplayer ViridianCityLeaderReturnedText
.LeaderLeft
	jumptextfaceplayer ViridianCityLeaderLeftText

ViridianCityGymGrampsText:
	text "This #MON GYM"
	line "is always closed."

	para "I wonder who the"
	line "LEADER is?"
	done

ViridianCityLeaderReturnedText:
	text "VIRIDIAN GYM's"
	line "LEADER returned!"
	done

ViridianCityLeaderLeftText:
	text "Looks like the"
	line "LEADER left for"
	cont "good this time."

	para "I wonder who will"
	line "fill the role of"
	cont "GYM LEADER in"
	cont "VIRIDIAN now?"
	done

ViridianCityDreamEaterFisher:
;	showemote EMOTE_SLEEP, VIRIDIANCITY_FISHER, 30
;	pause 20
	showemote EMOTE_SLEEP, VIRIDIANCITY_FISHER, 30
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext ViridianCityDreamEaterFisherText
	promptbutton
	verbosegiveitem TM_DREAM_EATER
;	iffalse .NoRoomForDreamEater
	setevent EVENT_GOT_TM42_DREAM_EATER
.GotDreamEater:
	writetext ViridianCityDreamEaterFisherGotDreamEaterText
	waitbutton
;.NoRoomForDreamEater:
	closetext
	end

ViridianCityDreamEaterFisherText:
	text "Yawn!"

	para "I must have dozed"
	line "off in the sun."

	para "…I had this dream"
	line "about a DROWZEE"

	para "eating my dream."
	line "Weird, huh?"

	para "Huh?"
	line "What's this?"

	para "Where did this TM"
	line "come from?"

	para "This is spooky!"
	line "Here, you can have"
	cont "this TM."
	done

ViridianCityDreamEaterFisherGotDreamEaterText:
	text "TM42 contains"
	line "DREAM EATER…"

	para "…Zzzzz…"
	done

ViridianCityYoungster1Script:
	jumptextfaceplayer ViridianCityYoungster1Text
ViridianCityYoungster1Text:
	text "Those #BALLs"
	line "at your waist!"
	cont "You have #MON!"

	para "It's great that"
	line "you can carry and"
	cont "use #MON any"
	cont "time, anywhere!"
	done

ViridianCityYoungster2Script:
	faceplayer
	opentext
	writetext ViridianCityYoungster2QuestionText
	yesorno
	iffalse .Declined
	writetext ViridianCityYoungster2AcceptedText
	waitbutton
	closetext
	end
.Declined
	writetext ViridianCityYoungster2DeclinedText
	waitbutton
	closetext
	end

ViridianCityYoungster2QuestionText:
	text "You want to know"
	line "about the 2 kinds"
	cont "of caterpillar"
	cont "#MON?"
	done

ViridianCityYoungster2DeclinedText:
	text "Oh, OK then!"
	done

ViridianCityYoungster2AcceptedText:
	text "CATERPIE has no"
	line "poison, but"
	cont "WEEDLE does."

	para "Watch out for its"
	line "POISON STING!"
	done

ViridianCityGirlScript:
	checkevent EVENT_GOT_POKEDEX
	iffalse .Skip
	jumptextfaceplayer ViridianCityGirlGoShoppingText
.Skip
	jumptextfaceplayer ViridianCityGirlNoCoffeYetText

ViridianCityGirlGoShoppingText:
	text "When I go shop in"
	line "PEWTER CITY, I"
	cont "have to take the"
	cont "winding trail in"
	cont "VIRIDIAN FOREST."
	done

ViridianCityGirlNoCoffeYetText:
	text "Oh Grandpa! You're"
	line "always so mean"
	cont "before you've had"
	cont "your coffee!"
	done

; movements
ViridianCityCoffeeGrampsBlockMovement:
	step DOWN
	step_end

ViridianCityMapCardMovement2:
	step LEFT
ViridianCityMapCardMovement1:
	step LEFT
	step_end

; bg text
ViridianGymDoorLocked:
	conditional_event EVENT_VIRIDIAN_GYM_LEADER_RETURNED, .LockedDoor
.LockedDoor
	jumptext ViridianGymDoorLockedText
ViridianGymDoorLockedText:
	text "The GYM's door"
	line "is locked…"
	done

ViridianCityTrainerTips1Sign:
	jumptext ViridianCityTrainerTips1Text
ViridianCityTrainerTips1Text:
	text "TRAINER TIPS"

	para "Catch #MON"
	line "and expand your"
	cont "collection!"

	para "The more you have,"
	line "the easier it is"
	cont "to fight!"
	done

ViridianGymSign:
	jumptext ViridianGymSignText
ViridianGymSignText:
	text "VIRIDIAN CITY"
	line "#MON GYM"
	done

ViridianCitySchoolSign:
	jumptext ViridianCitySchoolSignText
ViridianCitySchoolSignText:
	text "VIRIDIAN CITY"
	line "#MON SCHOOL"
	done

ViridianCitySign:
	jumptext ViridianCitySignText
ViridianCitySignText:
	text "VIRIDIAN CITY "
	
	para "The Eternally"
	line "Green Paradise"
	done

ViridianCityTrainerTips2Sign:
	jumptext ViridianCityTrainerTips2SignText
ViridianCityTrainerTips2SignText:
	text "TRAINER TIPS"

	para "The battle moves"
	line "of #MON are"
	cont "limited by their"
	cont "POWER POINTs, PP."

	para "To replenish PP,"
	line "rest your tired"
	cont "#MON at a"
	cont "#MON CENTER!"
	done

ViridianCityMartSign:
	jumpstd MartSignScript

ViridianCityPokecenterSign:
	jumpstd PokecenterSignScript

; hidden items
ViridianCityHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_CITY_HIDDEN_POTION

ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 21, 15, EARLS_POKEMON_ACADEMY, 1
	warp_event 29, 19, VIRIDIAN_MART, 1
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1

	def_coord_events
	coord_event 19,  9, SCENE_VIRIDIANCITY_NO_POKEDEX, ViridianCityCoffeeGrampsScript ;ViridianCityCoffeeGrampsBlockScript
	coord_event 18,  5, SCENE_VIRIDIANCITY_MAP_CARD, ViridianCityForceMapCardScript0
	coord_event 19,  5, SCENE_VIRIDIANCITY_MAP_CARD, ViridianCityForceMapCardScript1
;	coord_event 20,  5, SCENE_VIRIDIANCITY_MAP_CARD, ViridianCityForceMapCardScript2

	def_bg_events
	bg_event 19,  1, BGEVENT_READ, ViridianCityTrainerTips1Sign
	bg_event 31,  7, BGEVENT_READ, ViridianGymSign
	bg_event 32,  7, BGEVENT_IFNOTSET, ViridianGymDoorLocked
	bg_event 21, 17, BGEVENT_READ, ViridianCitySchoolSign
	bg_event 17, 17, BGEVENT_READ, ViridianCitySign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 21, 29, BGEVENT_READ, ViridianCityTrainerTips2Sign
	bg_event 14,  4, BGEVENT_ITEM, ViridianCityHiddenPotion

	def_object_events
	object_event 18,  9, SPRITE_SLEEPING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianCityCoffeeGrampsScript, EVENT_VIRIDIAN_CITY_COFFEE_GRAMPS
	object_event 17,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityTutorialGrampsScript, EVENT_VIRIDIAN_CITY_CATCHING_GRAMPS
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityDreamEaterFisher, -1
	object_event 27,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityGymGramps, -1
	object_event 13, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungster1Script, -1
	object_event 30, 25, SPRITE_BOY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungster2Script, -1
	object_event 17,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityGirlScript, -1
