	object_const_def
	const ROUTE33_BLK_APRICORN

Route33_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route33Fruittrees

Route33Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_33_FRUIT
	iftrue .NoFruit
	appear ROUTE33_BLK_APRICORN
.NoFruit:
	endcallback

Route33_BLKApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, BLK_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem BLK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE33_BLK_APRICORN
	setflag ENGINE_DAILY_ROUTE_33_FRUIT
.NoRoomInBag
	closetext
	end

Route33_NoFruit:
	farsjump Std_NoFruitScript


;Route33LassScript:
;	jumptextfaceplayer Route33LassText

;TrainerHikerAnthony:
;	trainer HIKER, ANTHONY2, EVENT_BEAT_HIKER_ANTHONY, HikerAnthony2SeenText, HikerAnthony2BeatenText, 0, .Script

;.Script:
;	loadvar VAR_CALLERID, PHONE_HIKER_ANTHONY
;	opentext
;	checkflag ENGINE_ANTHONY_READY_FOR_REMATCH
;	iftrue .Rematch
;	checkcellnum PHONE_HIKER_ANTHONY
;	iftrue .AnthonyDefeated
;	checkevent EVENT_ANTHONY_ASKED_FOR_PHONE_NUMBER
;	iftrue .AskAgain
;	writetext HikerAnthony2AfterText
;	promptbutton
;	setevent EVENT_ANTHONY_ASKED_FOR_PHONE_NUMBER
;	scall .AskNumber1
;	jump .AskForPhoneNumber
;
;.AskAgain:
;	scall .AskNumber2
;.AskForPhoneNumber:
;	askforphonenumber PHONE_HIKER_ANTHONY
;	ifequal PHONE_CONTACTS_FULL, .PhoneFull
;	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
;	gettrainername STRING_BUFFER_3, HIKER, ANTHONY2
;	scall .RegisteredNumber
;	jump .NumberAccepted
;
;.Rematch:
;	scall .RematchStd
;	winlosstext HikerAnthony2BeatenText, 0
;	checkevent EVENT_RESTORED_POWER_TO_KANTO
;	iftrue .LoadFight4
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iftrue .LoadFight3
;	checkevent EVENT_CLEARED_RADIO_TOWER
;	iftrue .LoadFight2
;	checkflag ENGINE_FLYPOINT_OLIVINE
;	iftrue .LoadFight1
;	loadtrainer HIKER, ANTHONY2
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
;	end
;
;.LoadFight1:
;	loadtrainer HIKER, ANTHONY1
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
;	end
;
;.LoadFight2:
;	loadtrainer HIKER, ANTHONY3
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
;	end
;
;.LoadFight3:
;	loadtrainer HIKER, ANTHONY4
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
;	end
;
;.LoadFight4:
;	loadtrainer HIKER, ANTHONY5
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
;	end
;
;.AskNumber1:
;	jumpstd AskNumber1MScript
;	end
;
;.AskNumber2:
;	jumpstd AskNumber2MScript
;	end
;
;.RegisteredNumber:
;	jumpstd RegisteredNumberMScript
;	end
;
;.NumberAccepted:
;	jumpstd NumberAcceptedMScript
;	end
;
;.NumberDeclined:
;	jumpstd NumberDeclinedMScript
;	end
;
;.PhoneFull:
;	jumpstd PhoneFullMScript
;	end
;
;.RematchStd:
;	jumpstd RematchMScript
;	end
;	
;.AnthonyDefeated:
;	writetext HikerAnthony2AfterText
;	promptbutton
;	closetext
;	end

;HikerAnthony2SeenText:
;	text "I came through the"
;	line "tunnel, but I"
;
;	para "still have plenty"
;	line "of energy left."
;	done

;HikerAnthony2BeatenText:
;	text "Whoa! You've got"
;	line "more zip than me!"
;	done

;HikerAnthony2AfterText:
;	text "We HIKERs are at"
;	line "our best in the"
;	cont "mountains."
;	done

;Route33LassText:
;	text "Pant, pant…"
;
;	para "I finally got"
;	line "through that cave."
;
;	para "It was much bigger"
;	line "than I'd expected."
;
;	para "I got too tired to"
;	line "explore the whole"
;
;	para "thing, so I came"
;	line "outside."
;	done

Route33Sign:
	jumptext Route33SignText
Route33SignText:
	text "ROUTE 33"
	done

Route33_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  9, UNION_CAVE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  6, 12, BGEVENT_READ, Route33_NoFruit
	bg_event 11, 11, BGEVENT_READ, Route33Sign

	def_object_events
	object_event  6, 12, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route33_BLKApricorn, EVENT_ROUTE_33_BLK_APRICORN
;	object_event  6, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerAnthony, -1
;	object_event 12, 16, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route33LassScript, -1

;.GrayOverYellowOBPalette