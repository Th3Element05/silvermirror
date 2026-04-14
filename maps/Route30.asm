	object_const_def
	const ROUTE30_ORAN_BERRY
	const ROUTE30_PECHA_BERRY
	const ROUTE30_PNK_APRICORN
	const ROUTE30_RAINBOW_WING

Route30_MapScripts:
	def_scene_scripts
	scene_script Route30Noop1Scene, SCENE_ROUTE30_NOOP
	scene_script Route30Noop2Scene, SCENE_ROUTE30_HOOH_FLYOVER

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route30Fruittrees

Route30Noop1Scene:
Route30Noop2Scene:
	end

Route30Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_1_FRUIT
	iftrue .NoFruit
	appear ROUTE1_ORAN_BERRY
	appear ROUTE1_BLK_APRICORN
.NoFruit:
	endcallback

; fruit
Route30_OranBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, ORAN_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem ORAN_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE30_ORAN_BERRY
	setflag ENGINE_DAILY_ROUTE_30_FRUIT
.NoRoomInBag
	closetext
	end
	
Route30_PechaBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, PECHA_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem PECHA_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE30_PECHA_BERRY
	setflag ENGINE_DAILY_ROUTE_30_FRUIT
.NoRoomInBag
	closetext
	end

Route30_PNKApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, PNK_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem PNK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE30_PNK_APRICORN
	setflag ENGINE_DAILY_ROUTE_30_FRUIT
.NoRoomInBag
	closetext
	end

Route30_NoFruit:
	farsjump Std_NoFruitScript

;MUSIC_TIN_TOWER
Route30HoohFlyoverScript:
	special FadeOutMusic
	pause 20
	cry HO_OH
	showemote EMOTE_SHOCK, PLAYER, 20
;	turnobject PLAYER, DOWN
;	pause 10
	turnobject PLAYER, LEFT
	pause 10
	turnobject PLAYER, RIGHT
	pause 10
	turnobject PLAYER, DOWN
	pause 10
	applymovement PLAYER, Route30PlayerLooksAroundMovement
	pause 10
	turnobject PLAYER, DOWN
	pause 10
	turnobject PLAYER, LEFT
	pause 10
	turnobject PLAYER, RIGHT
	pause 10
	turnobject PLAYER, DOWN
	pause 10
;	cry HO_OH
	showemote EMOTE_SHOCK, PLAYER, 20
;	playmusic MUSIC_TIN_TOWER
;faster animation
	playsound SFX_INTRO_SUICUNE_4
	changeblock 12, 10, $90
	refreshscreen
	changeblock 12, 10, $91
	refreshscreen
	changeblock 12, 10, $94
	changeblock 12, 8, $90
	refreshscreen
	playsound SFX_INTRO_SUICUNE_4
	changeblock 12, 10, $02
	changeblock 12, 8, $91
	refreshscreen
	changeblock 12, 8, $94
	changeblock 12, 6, $90
	refreshscreen
	turnobject PLAYER, LEFT
	changeblock 12, 8, $02
	changeblock 12, 6, $91
	refreshscreen
	playsound SFX_INTRO_SUICUNE_4
	changeblock 12, 6, $94
	changeblock 12, 4, $90
	refreshscreen
	turnobject PLAYER, UP
	changeblock 12, 6, $02
	changeblock 12, 4, $91
	refreshscreen
	changeblock 12, 4, $94
	changeblock 12, 2, $90
	refreshscreen
	playsound SFX_INTRO_SUICUNE_4
	changeblock 12, 4, $02
	changeblock 12, 2, $91
	refreshscreen
	changeblock 12, 2, $5d
	refreshscreen
	cry HO_OH
	waitsfx
	opentext
	writetext Route30HoohFlyoverText
	waitbutton
	closetext
	pause 10
	playsound SFX_INTRO_SUICUNE_1
	opentext
	writetext Route30RainbowWingText
	promptbutton
	waitsfx
	giveitem RAINBOW_WING
	writetext Route30GotRainbowWingText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	closetext
	setscene SCENE_ROUTE30_NOOP
	setevent EVENT_ROUTE_30_SAW_HOOH
	special RestartMapMusic
	end

Route30HoohFlyoverText:
	text "A huge #MON"
	line "cast a shadow as"
	cont "it flew overhead!"
	done

Route30RainbowWingText:
	text "Something floated"
	line "down after the"
	cont "#MON went by."
	done

Route30GotRainbowWingText:
	text "<PLAYER> got the"
	line "RAINBOW WING."
	done

Route30PlayerLooksAroundMovement:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end

Route30RainbowWingAppearsMovement:
	rock_smash 10
	step_end

Route30RainbowWing:
	itemball RAINBOW_WING

; trainers
TrainerYoungsterJoey:
	trainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoey1SeenText, YoungsterJoey1BeatenText, 0, .Script
.Script:
	loadvar VAR_CALLERID, PHONE_YOUNGSTER_JOEY
	opentext
	checkflag ENGINE_JOEY_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_YOUNGSTER_JOEY
	iftrue .JoeyDefeated
	checkevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext YoungsterJoey1AfterText
	promptbutton
	setevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_YOUNGSTER_JOEY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, YOUNGSTER, JOEY1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext YoungsterJoey1BeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
;	checkevent EVENT_CLEARED_RADIO_TOWER
;	iftrue .LoadFight3
;	checkflag ENGINE_FLYPOINT_OLIVINE
;	iftrue .LoadFight2
;	checkflag ENGINE_FLYPOINT_GOLDENROD
;	iftrue .LoadFight1
	loadtrainer YOUNGSTER, JOEY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY_READY_FOR_REMATCH
	end

;.LoadFight1:
;	loadtrainer YOUNGSTER, JOEY2
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_JOEY_READY_FOR_REMATCH
;	end
;
;.LoadFight2:
;	loadtrainer YOUNGSTER, JOEY3
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_JOEY_READY_FOR_REMATCH
;	end
;
;.LoadFight3:
;	loadtrainer YOUNGSTER, JOEY4
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_JOEY_READY_FOR_REMATCH
;	end
;
.LoadFight4:
	loadtrainer YOUNGSTER, JOEY_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOEY_READY_FOR_REMATCH
	checkevent EVENT_JOEY_HP_UP
	iftrue .GiveHPUp
	checkevent EVENT_GOT_HP_UP_FROM_JOEY
	iftrue .done
	scall .RematchGift
	verbosegiveitem HP_UP
	iffalse .PackFull
	setevent EVENT_GOT_HP_UP_FROM_JOEY
	sjump .NumberAccepted

.done
	end

.GiveHPUp:
	opentext
	writetext YoungsterJoeyText_GiveHPUpAfterBattle
	waitbutton
	verbosegiveitem HP_UP
	iffalse .PackFull
	clearevent EVENT_JOEY_HP_UP
	setevent EVENT_GOT_HP_UP_FROM_JOEY
	sjump .NumberAccepted

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

.RematchStd:
	jumpstd RematchMScript
	end

.PackFull:
	setevent EVENT_JOEY_HP_UP
	jumpstd PackFullMScript
	end

.RematchGift:
	jumpstd RematchGiftMScript
	end

.JoeyDefeated:
	writetext YoungsterJoey1AfterText
	promptbutton
	closetext
	end

YoungsterJoey1SeenText:
	text "Come on,"
	cont "let's battle!"
	done

YoungsterJoey1BeatenText:
	text "Ack! I lost!"
	line "Doggone it!"
	done

YoungsterJoey1AfterText:
	text "Do I have to have"
	line "more #MON in"
	cont "order to win?"

	para "No! I'm sticking"
	line "with this one no"
	cont "matter what!"
	done

YoungsterJoeyText_GiveHPUpAfterBattle:
	text "I lost again…"
	line "Gee, you're tough!"

	para "Oh yeah, I almost"
	line "forgot that I had"
	cont "to give you this."

	para "Use it to get even"
	line "tougher, OK?"

	para "I'm going to get"
	line "tougher too."
	done

TrainerYoungsterThomas:
	trainer YOUNGSTER, THOMAS, EVENT_BEAT_YOUNGSTER_THOMAS, YoungsterThomasSeenText, YoungsterThomasBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterThomasAfterText
	waitbutton
	closetext
	end

YoungsterThomasSeenText:
	text "You're a #MON"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"
	done

YoungsterThomasBeatenText:
	text "That's strange."
	line "I won before."
	done

YoungsterThomasAfterText:
	text "Becoming a good"
	line "trainer is really"
	cont "tough."

	para "I'm going to bat-"
	line "tle other people"
	cont "to get better."
	done

TrainerBugCatcherDylan:
	trainer BUG_CATCHER, DYLAN, EVENT_BEAT_BUG_CATCHER_DYLAN, BugCatcherDylanSeenText, BugCatcherDylanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDylanAfterText
	waitbutton
	closetext
	end

BugCatcherDylanSeenText:
	text "Instead of a bug"
	line "#MON, I found"
	cont "a trainer!"
	done

BugCatcherDylanBeatenText:
	text "Argh! You're too"
	line "strong!"
	done

BugCatcherDylanAfterText:
	text "I ran out of #-"
	line "BALLs while I was"
	cont "catching #MON."

	para "I should've bought"
	line "some more…"
	done

; bg text
Route30Sign:
	jumptext Route30SignText
Route30SignText:
	text "ROUTE 30"

	para "VIOLET CITY -"
	line "CHERRYGROVE CITY"
	done

MrPokemonsHouseDirectionsSign:
	jumptext MrPokemonsHouseDirectionsSignText
MrPokemonsHouseDirectionsSignText:
	text "NORTH TO"
	line "MR.#MON's HOUSE"
	done

MrPokemonsHouseSign:
	jumptext MrPokemonsHouseSignText
MrPokemonsHouseSignText:
	text "MR.#MON's HOUSE"
	done

Route30TrainerTips:
	jumptext Route30TrainerTipsText
Route30TrainerTipsText:
	text "TRAINER TIPS"

	para "No stealing other"
	line "people's #MON!"

	para "#BALLs are to"
	line "be thrown only at"
	cont "wild #MON!"
	done

;Route30HiddenPotion:
;	hiddenitem POTION, EVENT_ROUTE_30_HIDDEN_POTION

;Route30Antidote:
;	itemball ANTIDOTE

Route30_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 39, ROUTE_30_BERRY_HOUSE, 1
	warp_event 17,  5, MR_POKEMONS_HOUSE, 1

	def_coord_events
	coord_event 17,  6, SCENE_ROUTE30_HOOH_FLYOVER, Route30HoohFlyoverScript

	def_bg_events
	bg_event  5, 39, BGEVENT_READ, Route30_NoFruit
	bg_event 16,  8, BGEVENT_READ, Route30_NoFruit
	bg_event 15,  9, BGEVENT_READ, Route30_NoFruit
	bg_event  9, 43, BGEVENT_READ, Route30Sign
	bg_event 15,  5, BGEVENT_READ, MrPokemonsHouseSign
;	bg_event 13, 29, BGEVENT_READ, MrPokemonsHouseDirectionsSign
;	bg_event  3, 21, BGEVENT_READ, Route30TrainerTips
;	bg_event 14,  9, BGEVENT_ITEM, Route30HiddenPotion

	def_object_events
	object_event  5, 39, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route30_OranBerry, EVENT_ROUTE_30_ORAN_BERRY
	object_event 16,  8, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route30_PechaBerry, EVENT_ROUTE_30_PECHA_BERRY
	object_event 15,  9, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route30_PNKApricorn, EVENT_ROUTE_30_PNK_APRICORN
	object_event 13,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route30RainbowWing, EVENT_ROUTE_30_RAINBOW_WING
	object_event  2, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJoey, -1 ;joey
	object_event 16, 30, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterThomas, -1 ;mikey
	object_event  1,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDylan, -1 ;don
;	object_event  8, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route30Antidote, EVENT_ROUTE_30_ANTIDOTE

;.PinkOverYellowOBPalette