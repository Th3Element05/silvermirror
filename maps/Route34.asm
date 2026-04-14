	object_const_def

Route34_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCamperTodd:
	trainer CAMPER, TODD1, EVENT_BEAT_CAMPER_TODD, CamperToddSeenText, CamperToddBeatenText, 0, .Script
.Script:
	loadvar VAR_CALLERID, PHONE_CAMPER_TODD
	opentext
	checkflag ENGINE_TODD_READY_FOR_REMATCH
	iftrue .Rematch
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleIsOn
	checkcellnum PHONE_CAMPER_TODD
	iftrue .ToddDefeated
	checkevent EVENT_TODD_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext CamperToddAfterText
	promptbutton
	setevent EVENT_TODD_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber
	sjump .FinishAsk

.AskAgain:
	scall .AskNumber2
.FinishAsk:
	askforphonenumber PHONE_CAMPER_TODD
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, CAMPER, TODD1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext CamperToddBeatenText, 0
;	checkevent EVENT_RESTORED_POWER_TO_KANTO
;	iftrue .LoadFight4
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_CIANWOOD
	iftrue .LoadFight1
	loadtrainer CAMPER, TODD1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer CAMPER, TODD_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer CAMPER, TODD_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer CAMPER, TODD_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer CAMPER, TODD_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TODD_READY_FOR_REMATCH
	end

.SaleIsOn:
	writetext CamperToddSaleText
	waitbutton
	closetext
	end

.AskNumber:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end
	
.ToddDefeated:
	writetext CamperToddAfterText
	promptbutton
	closetext
	end

CamperToddSeenText:
	text "I'm confident in"
	line "my ability to"
	cont "raise #MON."

	para "Want to see?"
	done

CamperToddBeatenText:
	text "Did I screw up my"
	line "training?"
	done

CamperToddAfterText:
	text "Maybe I should"
	line "use vitamins…"
	done

CamperToddSaleText:
	text "Shopping under the"
	line "sky!"

	para "It feels so nice"
	line "up on a rooftop."
	done

OfficerKeithScript:
	faceplayer
	opentext
	checktime NITE
	iffalse .NoFight
	checkevent EVENT_BEAT_OFFICER_KEITH
	iftrue .AfterScript
	playmusic MUSIC_TRAINER_ENCOUNTER ; MUSIC_OFFICER_ENCOUNTER
	writetext OfficerKeithSeenText
	waitbutton
	closetext
	winlosstext OfficerKeithWinText, 0
	loadtrainer OFFICER, KEITH
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICER_KEITH
	closetext
	end

.AfterScript:
	writetext OfficerKeithAfterText
	waitbutton
	closetext
	end

.NoFight:
	writetext OfficerKeithDaytimeText
	waitbutton
	closetext
	end

OfficerKeithSeenText:
	text "Who goes there?"
	line "What are you up"
	cont "to?"
	done

OfficerKeithWinText:
	text "You're a tough"
	line "kid."
	done

OfficerKeithAfterText:
	text "Yep, I see nothing"
	line "wrong today."

	para "Try to stay out"
	line "of trouble."
	done

OfficerKeithDaytimeText:
	text "I'm on patrol for"
	line "suspicious indi-"
	cont "viduals."
	done

TrainerPicnickerNicole:
	trainer PICNICKER, NICOLE, EVENT_BEAT_PICNICKER_NICOLE, PicnickerNicoleSeenText, PicnickerNicoleBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerNicoleAfterText
	waitbutton
	closetext
	end

PicnickerNicoleSeenText:
	text "Are you a trainer?"

	para "Let's have a"
	line "practice battle."
	done

PicnickerNicoleBeatenText:
	text "Oh, no! I just"
	line "can't win…"
	done

PicnickerNicoleAfterText:
	text "You're too strong"
	line "to be a practice"
	cont "partner."
	done

TrainerPokefanmBrendan:
	trainer POKEFANM, BRENDAN, EVENT_BEAT_POKEFANM_BRENDAN, PokefanmBrendanSeenText, PokefanmBrendanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanmBrendanAfterText
	waitbutton
	closetext
	end

PokefanmBrendanSeenText:
	text "I was best in my"
	line "class at #MON."
	done

PokefanmBrendanBeatenText:
	text "No! There are bet-"
	line "ter trainers…"
	done

PokefanmBrendanAfterText:
	text "Maybe I should go"
	line "back to school?"
	done

TrainerYoungsterDanny:
	trainer YOUNGSTER, DANNY, EVENT_BEAT_YOUNGSTER_DANNY, YoungsterDannySeenText, YoungsterDannyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterDannyAfterText
	waitbutton
	closetext
	end

YoungsterDannySeenText:
	text "This is where I do"
	line "my training!"
	done

YoungsterDannyBeatenText:
	text "Beaten by a"
	line "passing stranger!"
	done

YoungsterDannyAfterText:
	text "I'm going to train"
	line "even harder."

	para "After all, I'm"
	line "trying to become"
	cont "a GYM LEADER."
	done

TrainerCooltrainerfLola:
	trainer COOLTRAINERF, LOLA, EVENT_BEAT_COOLTRAINERF_LOLA, CooltrainerfLolaSeenText, CooltrainerfLolaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLolaAfterText
	waitbutton
	closetext
	end

CooltrainerfLolaSeenText:
	text "This is our spot!"

	para "We thought it was"
	line "a secret!"
	done

CooltrainerfLolaBeatenText:
	text "Ohhh!"
	line "Too strong!"
	done

CooltrainerfLolaAfterText:
	text "The sunlight"
	line "makes your body"
	cont "stronger."
	done

TrainerCooltrainerfSalma:
	trainer COOLTRAINERF, SALMA, EVENT_BEAT_COOLTRAINERF_SALMA, CooltrainerfSalmaSeenText, CooltrainerfSalmaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfSalmaAfterText
	waitbutton
	closetext
	end

CooltrainerfSalmaSeenText:
	text "Kyaaah!"
	line "Someone found us!"
	done

CooltrainerfSalmaBeatenText:
	text "Ohhh!"
	line "Too strong!"
	done

CooltrainerfSalmaAfterText:
	text "Isn't this"
	line "beach great?"

	para "It's our secret"
	line "little getaway!"
	done

;TrainerCooltrainerfKate:
;	trainer COOLTRAINERF, KATE, EVENT_BEAT_COOLTRAINERF_KATE, CooltrainerfKateSeenText, CooltrainerfKateBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	checkevent EVENT_GOT_SOFT_SAND_FROM_KATE
;	iftrue .GotSoftSand
;	writetext CooltrainerfKateOfferSoftSandText
;	promptbutton
;	verbosegiveitem SOFT_SAND
;	iffalse .BagFull
;	setevent EVENT_GOT_SOFT_SAND_FROM_KATE
;.GotSoftSand:
;	writetext CooltrainerfKateAfterText
;	waitbutton
;.BagFull:
;	closetext
;	end

;CooltrainerfKateSeenText:
;	text "KATE: You sure"
;	line "were mean to my"
;	cont "little sisters!"
;	done
;
;CooltrainerfKateBeatenText:
;	text "KATE: No! I can't"
;	line "believe I lost."
;	done
;
;CooltrainerfKateOfferSoftSandText:
;	text "KATE: You're too"
;	line "strong. I didn't"
;	cont "stand a chance."
;
;	para "Here. You deserve"
;	line "this."
;	done
;
;CooltrainerfKateAfterText:
;	text "KATE: I'm sorry we"
;	line "jumped you."
;
;	para "We never expected"
;	line "anyone to find us"
;
;	para "here. You sure"
;	line "startled us."
;	done

Route34IlexForestSign:
	jumptext Route34IlexForestSignText
Route34IlexForestSignText:
	text "ILEX FOREST"
	line "THROUGH THE GATE"
	done

Route34Sign:
	jumptext Route34SignText
Route34SignText:
	text "ROUTE 34"

	para "GOLDENROD CITY -"
	line "AZALEA TOWN"

	para "ILEX FOREST"
	line "SOMEWHERE BETWEEN"
	done

;Route34TrainerTips: ;unreferenced
;	jumptext Route34TrainerTipsText
;Route34TrainerTipsText:
;	text "TRAINER TIPS"
;
;	para "BERRY trees grow"
;	line "new BERRIES"
;	cont "every day."
;
;	para "Make a note of"
;	line "which trees bear"
;	cont "which BERRIES."
;	done

;Route34DayCareSign:
;	jumptext Route34DayCareSignText
;Route34DayCareSignText:
;	text "DAY-CARE"
;
;	para "LET US RAISE YOUR"
;	line "#MON FOR YOU!"
;	done

Route34Nugget:
	itemball NUGGET

Route34HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_ROUTE_34_HIDDEN_RARE_CANDY

Route34HiddenMaxPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_34_HIDDEN_MAX_POTION

Route34_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 37, ROUTE_34_ILEX_FOREST_GATE, 1
	warp_event 14, 37, ROUTE_34_ILEX_FOREST_GATE, 2
;	warp_event 11, 14, DAY_CARE, 1
;	warp_event 11, 15, DAY_CARE, 2
;	warp_event 13, 15, DAY_CARE, 3

	def_coord_events

	def_bg_events
	bg_event 12,  6, BGEVENT_READ, Route34Sign
	bg_event 13, 33, BGEVENT_READ, Route34IlexForestSign
	bg_event  8, 32, BGEVENT_ITEM, Route34HiddenRareCandy
	bg_event 15, 19, BGEVENT_ITEM, Route34HiddenMaxPotion
;	bg_event 10, 13, BGEVENT_READ, Route34DayCareSign

	def_object_events
	object_event 13,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerCamperTodd, -1
	object_event 10, 13, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerKeithScript, -1
	object_event 10, 26, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerNicole, -1 ;gina
	object_event 11, 18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmBrendan, -1 ;brandon
	object_event 16, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterDanny, -1 ;samuel
	object_event  3, 48, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfLola, -1 ;jenn
	object_event 11, 48, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainerfSalma, -1 ;irene
;	object_event  6, 51, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfKate, -1
	object_event  6, 51, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route34Nugget, EVENT_ROUTE_34_NUGGET
;	object_event 15, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Outside, EVENT_DAY_CARE_MAN_ON_ROUTE_34
;	object_event 14, 18, SPRITE_DAY_CARE_MON_1, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, DayCareMon1Script, EVENT_DAY_CARE_MON_1
;	object_event 17, 19, SPRITE_DAY_CARE_MON_2, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, DayCareMon2Script, EVENT_DAY_CARE_MON_2