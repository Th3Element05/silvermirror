	object_const_def
	const ROUTE39_ORAN_BERRY

Route39_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route39Fruittrees

Route39Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_39_FRUIT
	iftrue .NoFruit
	appear ROUTE39_ORAN_BERRY
.NoFruit:
	endcallback

; fruit
Route39_OranBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, ORAN_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem ORAN_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE39_ORAN_BERRY
	setflag ENGINE_DAILY_ROUTE_39_FRUIT
.NoRoomInBag
	closetext
	end

Route39_NoFruit:
	farsjump Std_NoFruitScript


; trainers
TrainerPsychicNorman:
	trainer PSYCHIC_T, NORMAN, EVENT_BEAT_PSYCHIC_NORMAN, PsychicNormanSeenText, PsychicNormanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicNormanAfterBattleText
	waitbutton
	closetext
	end

PsychicNormanSeenText:
	text "Let me see what"
	line "your #MON are"
	cont "capable of."
	done

PsychicNormanBeatenText:
	text "Ooh, your #MON"
	line "have potential."
	done

PsychicNormanAfterBattleText:
	text "You know how #-"
	line "MON have different"
	cont "abilities?"

	para "People are like"
	line "that too. Every-"
	cont "one has different"
	roll "potential."
	done


TrainerPokefanfEleanor:
	faceplayer
	opentext
	checktime NITE
	iffalse .NotNight
	checkevent EVENT_BEAT_POKEFANF_ELEANOR
	iftrue .Beaten
	writetext PokefanfEleanorSeenText
	waitbutton
	closetext
	winlosstext PokefanfEleanorBeatenText, 0
	loadtrainer POKEFANF, ELEANOR
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_POKEFANF_ELEANOR
	closetext
	end

.Beaten:
	writetext PokefanfEleanorAfterBattleText
	waitbutton
	closetext
	end

.NotNight:
	writetext PokefanfEleanorHopeItGetsDarkText
	waitbutton
	closetext
	end

PokefanfEleanorHopeItGetsDarkText:
	text "Ufufufu… I hope it"
	line "gets dark soon."
	done

PokefanfEleanorSeenText:
	text "You came at just"
	line "the right time."

	para "Let's battle."
	done

PokefanfEleanorBeatenText:
	text "Oh, how disap-"
	line "pointing…"
	done

PokefanfEleanorAfterBattleText:
	text "I met my #MON"
	line "at night, right"
	cont "here on ROUTE 39."

	para "I'm not sure why,"
	line "but it seems to"
	cont "like it when I"
	roll "train here."

	para "It seems to become"
	line "friendlier by"
	cont "training here than"
	roll "anywhere else."
	done


TrainerPokefanmDerek:
	trainer POKEFANM, DEREK1, EVENT_BEAT_POKEFANM_DEREK, PokefanmDerekSeenText, PokefanmDerekBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext PokefanMDerekText_NotBragging
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_POKEFANM_DEREK
	opentext
	checkflag ENGINE_DEREK_HAS_NUGGET
	iftrue .HasNugget
	checkcellnum PHONE_POKEFANM_DEREK
	iftrue .NumberAccepted
	checkevent EVENT_DEREK_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PokefanMDerekText_NotBragging
	promptbutton
	setevent EVENT_DEREK_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_POKEFANM_DEREK
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEFANM, DEREK
	scall .RegisteredNumber
	sjump .NumberAccepted

.HasNugget:
	scall .Gift
	verbosegiveitem NUGGET
	iffalse .NoRoom
	clearflag ENGINE_DEREK_HAS_NUGGET
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

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

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

PokefanmDerekSeenText:
	text "This is a good"
	line "time to brag about"
	cont "my PIKACHU!"
	done

PokefanmDerekBeatenText:
	text "I had no time to"
	line "show off PIKACHU…"
	done

PokefanMDerekText_NotBragging:
	text "I'm not listening"
	line "to your bragging!"

	para "We #FANs have"
	line "a policy of not"
	cont "listening to other"
	roll "people brag!"
	done


TrainerSailorStanley:
	trainer SAILOR, STANLEY, EVENT_BEAT_SAILOR_STANLEY, SailorStanleySeenText, SailorStanleyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorStanleyAfterBattleText
	waitbutton
	closetext
	end

SailorStanleySeenText:
	text "I just got back to"
	line "OLIVINE."

	para "So how about a"
	line "#MON battle?"
	done

SailorStanleyBeatenText:
	text "Awaaargh!"
	done

SailorStanleyAfterBattleText:
	text "My #MON were"
	line "caught and raised"
	cont "overseas."

	para "They're my compan-"
	line "ions on those long"
	cont "voyages."
	done


Route39Miltank:
	opentext
	writetext Route39MiltankText
	cry MILTANK
	waitbutton
	closetext
	end

Route39MiltankText:
	text "MILTANK: Mooo!"
	done


Route39Sign:
	jumptext Route39SignText
Route39SignText:
	text "ROUTE 39"

	para "OLIVINE CITY -"
	line "ECRUTEAK CITY"
	done

MoomooFarmSign:
	jumptext MoomooFarmSignText
MoomooFarmSignText:
	text "MOOMOO FARM"

	para "Enjoy Our Fresh"
	line "and Tasty Milk"
	done

Route39TrainerTips:
	jumptext Route39TrainerTipsText
Route39TrainerTipsText:
	text "TRAINER TIPS"

	para "Use HEADBUTT on"
	line "trees to shake"
	cont "#MON out."

	para "Different kinds of"
	line "#MON drop out"
	cont "of trees."

	para "Use HEADBUTT on"
	line "any tree you see!"
	done


Route39HiddenNugget:
	hiddenitem NUGGET, EVENT_ROUTE_39_HIDDEN_NUGGET


Route39_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, ROUTE_39_BARN, 1
	warp_event  5,  3, ROUTE_39_FARMHOUSE, 1

	def_coord_events
;	coord_event 16,  8, SCENE_DEFAULT, Route39Baoba1
;	coord_event 16,  9, SCENE_DEFAULT, Route39Baoba2
;	coord_event 16, 10, SCENE_DEFAULT, Route39Baoba3
;	coord_event 16, 11, SCENE_DEFAULT, Route39Baoba4

	def_bg_events
	bg_event  9,  3, BGEVENT_READ, Route39_NoFruit
	bg_event  5, 31, BGEVENT_READ, Route39TrainerTips
	bg_event  9,  5, BGEVENT_READ, MoomooFarmSign
	bg_event 15,  7, BGEVENT_READ, Route39Sign
	bg_event  5, 13, BGEVENT_ITEM, Route39HiddenNugget

	def_object_events
	object_event  9,  3, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route39_OranBerry, EVENT_ROUTE_39_ORAN_BERRY
	object_event  3, 12, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event  6, 11, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event  4, 15, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event  8, 13, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route39Miltank, -1
	object_event 14, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerPsychicNorman, -1 ;norman
	object_event  4, 22, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TrainerPokefanfEleanor, -1 ;jaime
	object_event 10, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmDerek, -1 ;derek
	object_event 13, 29, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSailorStanley, -1 ;eugene
