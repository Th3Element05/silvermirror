	object_const_def

Route10South_MapScripts:
	def_scene_scripts

	def_callbacks


;TrainerPokemaniacBrent:
;	trainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, PokemaniacBrentSeenText, PokemaniacBrentBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext PokemaniacBrentAfterBattleText
;	waitbutton
;	closetext
;	end
;
;PokemaniacBrentSeenText:
;	text "Wow, are you a"
;	line "#MANIAC too?"
;	cont "Want to see my"
;	roll "collection?"
;	done
;
;PokemaniacBrentBeatenText:
;	text "Humph."
;	line "I'm not angry!"
;	done
;
;PokemaniacBrentAfterBattleText:
;	text "I have more rare"
;	line "#MON at home!"
;	done


TrainerPicnickerErin:
	trainer PICNICKER, ERIN1, EVENT_BEAT_PICNICKER_ERIN, PicnickerErinSeenText, PicnickerErinBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext PicnickerErinAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_PICNICKER_ERIN
	opentext
	checkevent EVENT_ERIN_HAS_CALCIUM
	iftrue .HasCalcium
	checkflag ENGINE_ERIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_PICNICKER_ERIN
	iftrue .ErinDefeated
	checkevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PicnickerErinAfterBattleText
	promptbutton
	setevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1F
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2F
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_ERIN
	ifequal PHONE_CONTACTS_FULL, .PhoneFullF
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclinedF
	gettrainername STRING_BUFFER_3, PICNICKER, ERIN1
	scall .RegisteredNumberF
	sjump .NumberAcceptedF

.WantsBattle:
	scall .RematchF
	winlosstext PicnickerErinBeatenText, 0
	loadtrainer PICNICKER, ERIN_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer PICNICKER, ERIN_2
	readvar VAR_BADGES
	ifgreater 2, .LoadFight ;3_BADGES
	loadtrainer PICNICKER, ERIN1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	checkevent EVENT_GOT_CALCIUM_FROM_ERIN
	iffalse .GiveCalcium
	random 10
	ifequal 0, .GiveCalcium
	end

.GiveCalcium
	scall .RematchGiftF
	verbosegiveitem CALCIUM
	iffalse .NoRoomForCalcium
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjump .NumberAcceptedF

.HasCalcium:
	opentext
	writetext PicnickerErinBeatenGiftText
	waitbutton
	verbosegiveitem CALCIUM
	iffalse .NoRoomForCalcium
	clearevent EVENT_ERIN_HAS_CALCIUM
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjump .NumberAcceptedF

.NoRoomForCalcium:
	setevent EVENT_ERIN_HAS_CALCIUM
	jumpstd PackFullFScript
	end

.ErinDefeated:
	writetext PicnickerErinAfterBattleText
	promptbutton
	closetext
	end

.AskNumber1F:
	jumpstd AskNumber1FScript
	end

.AskNumber2F:
	jumpstd AskNumber2FScript
	end

.RegisteredNumberF:
	jumpstd RegisteredNumberFScript
	end

.NumberAcceptedF:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclinedF:
	jumpstd NumberDeclinedFScript
	end

.PhoneFullF:
	jumpstd PhoneFullFScript
	end

.RematchF:
	jumpstd RematchFScript
	end

.RematchGiftF:
	jumpstd RematchGiftFScript
	end

PicnickerErinSeenText:
	text "I'm feeling a bit"
	line "faint from this"
	cont "tough hike."
	done

PicnickerErinBeatenText:
	text "I'm not up to it!"
	done

PicnickerErinAfterBattleText:
	text "The #MON here"
	line "are so chunky!"

	para "There should be a"
	line "pink one with a"
	cont "floral pattern!"
	done

PicnickerErinBeatenGiftText:
	text "Thanks a lot for"
	line "battling with me!"

	para "Here's that gift"
	line "from before."
	done

;	text "Aww… I keep losing"
;	line "all the time!"
;
;	para "I'll just have to"
;	line "try harder!"
;
;	para "Anyway, thanks for"
;	line "battling me again"
;	cont "and again. Here's"
;	roll "that present from"
;	cont "before."
;	done


TrainerHikerKenny:
	trainer HIKER, KENNY1, EVENT_BEAT_HIKER_KENNY, HikerKennySeenText, HikerKennyBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext HikerKennyAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_HIKER_KENNY
	opentext
	checkflag ENGINE_KENNY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_HIKER_KENNY
	iftrue .KennyDefeated
	checkevent EVENT_KENNY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext HikerKennyAfterBattleText
	waitbutton
	setevent EVENT_KENNY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_HIKER_KENNY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, HIKER, KENNY1
	scall .RegisteredNumber
	jump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext HikerKennyBeatenText, 0
	loadtrainer HIKER, KENNY_0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight
	loadtrainer HIKER, KENNY_2
	readvar VAR_BADGES
	ifgreater 2, .LoadFight ;3_BADGES
	loadtrainer HIKER, KENNY1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KENNY_READY_FOR_REMATCH
	end

.KennyDefeated:
	writetext HikerKennyAfterBattleText
	waitbutton
	closetext
	end

.AskNumber1:
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

.Rematch:
	jumpstd RematchMScript
	end

HikerKennySeenText:
	text "I caught my ONIX"
	line "in ROCK TUNNEL!"
	done

HikerKennyBeatenText:
	text "I lost…"
	done

HikerKennyAfterBattleText:
	text "Geological fea-"
	line "tures don't appear"
	cont "to change."

	para "But they actually"
	line "do change, little"
	cont "by little."
	done


TrainerHikerTimothy:
	trainer HIKER, TIMOTHY, EVENT_BEAT_HIKER_TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerTimothyAfterBattleText
	waitbutton
	closetext
	end

HikerTimothySeenText:
	text "Ah! This mountain"
	line "air is delicious!"
	done

HikerTimothyBeatenText:
	text "That cleared my"
	line "head!"
	done

HikerTimothyAfterBattleText:
	text "I feel high on"
	line "mountain air!"
	done


TrainerPokemaniacLarry:
	trainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacLarryAfterBattleText
	waitbutton
	closetext
	end

PokemaniacLarrySeenText:
	text "Hi kid, want to"
	line "see my #MON?"
	done

PokemaniacLarryBeatenText:
	text "Oh no!"
	line "My #MON!"
	done

PokemaniacLarryAfterBattleText:
	text "I don't like you"
	line "for beating me!"
	done


; signs
Route10Sign:
	jumptext Route10SignText
Route10SignText:
	text "ROUTE 10"

	para "CERULEAN CITY -"
	line "LAVENDER TOWN"
	done

;PowerPlantSign:
;	jumptext PowerPlantSignText
;PowerPlantSignText:
;	text "KANTO POWER PLANT"
;	done
;
;Route10SouthRock:
;	jumpstd SmashRockScript


; hidden items
Route10HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_10_HIDDEN_MAX_ETHER


Route10South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  3, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
;	bg_event  3, 11, BGEVENT_READ, PowerPlantSign
	bg_event  9,  5, BGEVENT_READ, Route10Sign
	bg_event 16,  3, BGEVENT_ITEM, Route10HiddenMaxEther

	def_object_events
;	object_event 10, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacBrent, -1
	object_event  7,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerErin, -1
	object_event  3,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerKenny, -1
	object_event  3, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerTimothy, -1
	object_event 12, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacLarry, -1
;	object_event 14,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10SouthRock, -1
;	object_event 15,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10SouthRock, -1
;	object_event 14,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10SouthRock, -1
