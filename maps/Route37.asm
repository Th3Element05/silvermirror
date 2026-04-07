	object_const_def
	const ROUTE37_RED_APRICORN
	const ROUTE37_BLU_APRICORN
	const ROUTE37_BLK_APRICORN
;	const ROUTE37_SUNNY

Route37_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route37FruittreesandSunny

Route37FruittreesandSunny:
	checkflag ENGINE_DAILY_ROUTE_37_FRUIT
	iftrue .Sunny
	appear ROUTE37_RED_APRICORN
	appear ROUTE37_BLU_APRICORN
	appear ROUTE37_BLK_APRICORN
	; fallthrough
.Sunny:
;	readvar VAR_WEEKDAY
;	ifequal SUNDAY, .SunnyAppears
;	disappear ROUTE37_SUNNY
	endcallback

;.SunnyAppears:
;	appear ROUTE37_SUNNY
;	endcallback

; fruit
Route37_REDApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, RED_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem RED_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE37_RED_APRICORN
	setflag ENGINE_DAILY_ROUTE_37_FRUIT
.NoRoomInBag
	closetext
	end

Route37_BLUApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, BLK_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem BLK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE37_BLU_APRICORN
	setflag ENGINE_DAILY_ROUTE_37_FRUIT
.NoRoomInBag
	closetext
	end

Route37_BLKApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, BLK_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem BLK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE37_BLK_APRICORN
	setflag ENGINE_DAILY_ROUTE_37_FRUIT
.NoRoomInBag
	closetext
	end

Route37_NoFruit:
	farsjump Std_NoFruitScript

; scripts
;SunnyScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_MAGNET_FROM_SUNNY
;	iftrue SunnySundayScript
;	readvar VAR_WEEKDAY
;	ifnotequal SUNDAY, SunnyNotSundayScript
;	checkevent EVENT_MET_SUNNY_OF_SUNDAY
;	iftrue .MetSunny
;	writetext MeetSunnyText
;	promptbutton
;	setevent EVENT_MET_SUNNY_OF_SUNDAY
;.MetSunny:
;	checkflag ENGINE_PLAYER_IS_FEMALE
;	iftrue .Kris
;	writetext SunnyGivesGiftText1
;	promptbutton
;	sjump .next
;.Kris:
;	writetext SunnyGivesGiftText2
;	promptbutton
;.next
;	verbosegiveitem MAGNET
;	iffalse SunnyDoneScript
;	setevent EVENT_GOT_MAGNET_FROM_SUNNY
;	writetext SunnyGaveGiftText
;	waitbutton
;	closetext
;	end

;SunnySundayScript:
;	writetext SunnySundayText
;	waitbutton
;SunnyDoneScript:
;	closetext
;	end

;SunnyNotSundayScript:
;	writetext SunnyNotSundayText
;	waitbutton
;	closetext
;	end

;MeetSunnyText:
;	text "SUNNY: Hi!"
;
;	para "I'm SUNNY of Sun-"
;	line "day, meaning it's"
;	cont "Sunday today!"
;	done

;SunnyGivesGiftText1:
;	text "I was told to give"
;	line "you this if I saw"
;	cont "you!"
;	done

;SunnyGivesGiftText2:
;	text "I was told to give"
;	line "you this if I saw"
;	cont "you!"
;	done

;SunnyGaveGiftText:
;	text "SUNNY: That thing…"
;
;	para "Um…"
;
;	para "… What was it now…"
;
;	para "…"
;
;	para "Oh! I remember"
;	line "now!"
;
;	para "A #MON that"
;	line "knows electric"
;
;	para "moves should hold"
;	line "it."
;
;	para "My sis MONICA said"
;	line "it powers up"
;	cont "electric moves!"
;	done

;SunnySundayText:
;	text "SUNNY: My sisters"
;	line "and brothers are"
;	cont "MONICA, TUSCANY,"
;	roll "WESLEY, ARTHUR,"
;	cont "FRIEDA and SANTOS."
;
;	para "They're all older"
;	line "than me!"
;	done

;SunnyNotSundayText:
;	text "SUNNY: Isn't today"
;	line "Sunday?"
;	cont "Um… I forgot!"
;	done

; trainers
TrainerPsychicMark:
	trainer PSYCHIC_T, MARK, EVENT_BEAT_PSYCHIC_MARK, PsychicMarkSeenText, PsychicMarkBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicMarkAfterBattleText
	waitbutton
	closetext
	end

PsychicMarkSeenText:
	text "#MON can't do a"
	line "thing if they are"
	cont "asleep."

	para "I'll show you how"
	line "scary that is!"
	done

PsychicMarkBeatenText:
	text "I lost. That's"
	line "pretty sad…"
	done

PsychicMarkAfterBattleText:
	text "Putting #MON to"
	line "sleep or paralyz-"
	cont "ing them are good"
	roll "battle techniques."
	done

TrainerTwinsAnnandanne1:
	trainer TWINS, ANNANDANNE, EVENT_BEAT_TWINS_ANNANDANNE, TwinsAnnandanne1SeenText, TwinsAnnandanneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TwinsAnnandanne1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAnnandanne2:
	trainer TWINS, ANNANDANNE, EVENT_BEAT_TWINS_ANNANDANNE, TwinsAnnandanne2SeenText, TwinsAnnandanneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TwinsAnnandanne2AfterBattleText
	waitbutton
	closetext
	end

TwinsAnnandanne1SeenText:
	text "ANN: ANNE and I"
	line "are in this to-"
	cont "gether!"
	done

TwinsAnnandanne2SeenText:
	text "ANNE: ANN and I"
	line "are in this to-"
	cont "gether!"
	done

TwinsAnnandanneBeatenText:
	text "ANN & ANNE: Nnn… A"
	line "little too strong."
	done

TwinsAnnandanne1AfterBattleText:
	text "ANN: I can tell"
	line "what my sister and"

	para "my #MON are"
	line "thinking."
	done

TwinsAnnandanne2AfterBattleText:
	text "ANNE: We share the"
	line "same feelings as"
	cont "our #MON."
	done

; items
Route37HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_37_HIDDEN_ETHER

; bg text
Route37Sign:
	jumptext Route37SignText
Route37SignText:
	text "ROUTE 37"
	done

Route37_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, Route37_NoFruit
	bg_event 16,  5, BGEVENT_READ, Route37_NoFruit
	bg_event 15,  7, BGEVENT_READ, Route37_NoFruit
	bg_event  4,  2, BGEVENT_ITEM, Route37HiddenEther
	bg_event  5,  3, BGEVENT_READ, Route37Sign

	def_object_events
	object_event 13,  5, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route37_REDApricorn, EVENT_ROUTE_37_RED_APRICORN
	object_event 16,  5, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route37_BLUApricorn, EVENT_ROUTE_37_BLU_APRICORN
	object_event 15,  7, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route37_BLKApricorn, EVENT_ROUTE_37_BLK_APRICORN
;	object_event 16,  8, SPRITE_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SunnyScript, EVENT_ROUTE_37_SUNNY_OF_SUNDAY
	object_event  6,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerPsychicMark, -1 ;greg
	object_event  6, 12, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsAnnandanne1, -1 ;annandanne1
	object_event  7, 12, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsAnnandanne2, -1 ;annandanne2

;.GreyOverYellowOBPalette