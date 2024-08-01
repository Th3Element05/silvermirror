	object_const_def
	const ROUTE_11_BERRY
	const ROUTE_11_APRICORN
	const ROUTE_11_BIG_SNORLAX_RESPAWN

Route11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route11Fruittrees

Route11Fruittrees:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_11_BERRY
	iftrue .NoBerry
	appear ROUTE_11_BERRY
.NoBerry:
	;fallthrough
.Apricorn:
	checkflag ENGINE_DAILY_ROUTE_11_APRICORN
	iftrue .NoApricorn
	appear ROUTE_11_APRICORN
.NoApricorn:
	endcallback

TrainerPokefanFGeorgia:
	trainer POKEFANF, GEORGIA, EVENT_BEAT_POKEFANF_GEORGIA, PokefanFGeorgiaSeenText, PokefanFGeorgiaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanFGeorgiaAfterBattleText
	waitbutton
	closetext
	end

PokefanFGeorgiaSeenText:
	text "Hi. Did you know…?"

	para "#MON get more"
	line "friendly if you"
	cont "train them in a"
	cont "place that they"
	cont "remember."
	done

PokefanFGeorgiaBeatenText:
	text "Where did I meet"
	line "this VULPIX?"
	done

PokefanFGeorgiaAfterBattleText:
	text "If only there were"
	line "an easy way to"

	para "identify where I"
	line "got my #MON…"
	done

TrainerYoungsterOwen:
	trainer YOUNGSTER, OWEN, EVENT_BEAT_YOUNGSTER_OWEN, YoungsterOwenSeenText, YoungsterOwenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterOwenAfterBattleText
	waitbutton
	closetext
	end

YoungsterOwenSeenText:
	text "I just became a"
	line "trainer! But, I"
	cont "think I can win!"
	done

YoungsterOwenBeatenText:
	text "My #MON"
	line "couldn't!"
	done

YoungsterOwenAfterBattleText:
	text "What do you want?"
	line "Leave me alone!"
	done

TrainerYoungsterAlan:
	trainer YOUNGSTER, ALAN1, EVENT_BEAT_YOUNGSTER_ALAN, YoungsterAlanSeenText, YoungsterAlanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterAlanAfterBattleText
	waitbutton
	closetext
	end

YoungsterAlanSeenText:
	text "I'm the best in"
	line "my class!"
	done

YoungsterAlanBeatenText:
	text "Darn!"
	line "I need to make my"
	cont "#MON stronger!"
	done

YoungsterAlanAfterBattleText:
	text "There's a big"
	line "#MON that"
	cont "comes down from"
	cont "the mountains."

	para "It's strong if"
	line "you can get it."
	done

TrainerYoungsterIan:
	trainer YOUNGSTER, IAN1, EVENT_BEAT_YOUNGSTER_IAN, YoungsterIanSeenText, YoungsterIanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterIanAfterBattleText
	waitbutton
	closetext
	end

YoungsterIanSeenText:
	text "Let's go, but"
	line "don't cheat!"
	done

YoungsterIanBeatenText:
	text "Huh?"
	line "That's not right!"
	done

YoungsterIanAfterBattleText:
	text "I did my best! I"
	line "have no regrets!"
	done

TrainerPokefanMWilliam:
	trainer POKEFANM, WILLIAM, EVENT_BEAT_POKEFANM_WILLIAM, PokefanMWilliamSeenText, PokefanMWilliamBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanMWilliamAfterBattleText
	waitbutton
	closetext
	end

PokefanMWilliamSeenText:
	text "We adore our #-"
	line "MON, even if they"
	cont "dislike us."

	para "That's what being"
	line "a FAN is about."
	done

PokefanMWilliamBeatenText:
	text "M-my #MON!"
	done

PokefanMWilliamAfterBattleText:
	text "I lost the battle,"
	line "but my #MON win"

	para "the prize for"
	line "being most lovely."
	done

TrainerPokefanFBeverly:
	trainer POKEFANF, BEVERLY1, EVENT_BEAT_POKEFANF_BEVERLY, PokefanFBeverlySeenText, PokefanFBeverlyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanFBeverlyAfterBattleText
	waitbutton
	closetext
	end

PokefanFBeverlySeenText:
	text "My #MON are"
	line "simply darling."

	para "Let me tell you"
	line "how proud my"
	cont "darlings make me."
	done

PokefanFBeverlyBeatenText:
	text "I can beat you in"
	line "pride, but…"
	done

PokefanFBeverlyAfterBattleText:
	text "I must say, your"
	line "#MON are quite"
	cont "cute, too."
	done

TrainerOfficerKeith:
	trainer OFFICER, KEITH, EVENT_BEAT_OFFICER_KEITH, OfficerKeithSeenText, OfficerKeithBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext OfficerKeithAfterBattleText
	waitbutton
	closetext
	end

OfficerKeithSeenText:
	text "Who goes there?"
	line "What are you up"
	cont "to?"
	done

OfficerKeithBeatenText:
	text "You're a tough"
	line "little kid."
	done

OfficerKeithAfterBattleText:
	text "Yep, I see nothing"
	line "wrong today. You"

	para "be good and stay"
	line "out of trouble."
	done

TrainerYoungsterJason:
	trainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterJasonAfterBattleText
	waitbutton
	closetext
	end

YoungsterJasonSeenText:
	text "My #MON should"
	line "be ready by now!"
	done

YoungsterJasonBeatenText:
	text "Too"
	line "much, too young!"
	done

YoungsterJasonAfterBattleText:
	text "I better go find"
	line "stronger ones!"
	done

TrainerPokefanMRobert:
	trainer POKEFANM, ROBERT, EVENT_BEAT_POKEFANM_ROBERT, PokefanMRobertSeenText, PokefanMRobertBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanMRobertAfterBattleText
	waitbutton
	closetext
	end

PokefanMRobertSeenText:
	text "You like #MON,"
	line "don't you?"

	para "Me too!"
	done

PokefanMRobertBeatenText:
	text "I'd have to say"
	line "that's my loss."
	done

PokefanMRobertAfterBattleText:
	text "Look what you did"
	line "to my #MON…"

	para "I won't forget"
	line "this…"
	done

TrainerOfficerDirk:
	trainer OFFICER, DIRK, EVENT_BEAT_OFFICER_DIRK, OfficerDirkSeenText, OfficerDirkBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext OfficerDirkAfterBattleText
	waitbutton
	closetext
	end

OfficerDirkSeenText:
	text "Watch out for"
	line "TEAM ROCKET!"
	done

OfficerDirkBeatenText:
	text "Whoa! You can"
	line "handle yourself!"
	done

OfficerDirkAfterBattleText:
	text "Well, better get"
	line "back to work."
	done

Route11Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .PlayRadio
	checkitem POKE_FLUTE
	iftrue .PlayPokeFlute
	writetext Route11SnorlaxSleepingText
	waitbutton
	closetext
	end

.PlayPokeFlute:
	writetext Route11PlayPokeFluteAskText
	yesorno
	iffalse .LetSleep
	writetext Route11PlayPokeFluteText
	special FadeOutMusic
	playsound SFX_POKEFLUTE
	waitsfx
	writetext Route11SnorlaxWokeUpText
	promptbutton
	sjump Route11SnorlaxBattleScript

.LetSleep:
	jumptext Route11LetSnorlaxSleepText

.PlayRadio:
	writetext Route11RadioNearSnorlaxText
	promptbutton
	writetext Route11SnorlaxWokeUpText
	promptbutton
	; fallthrough

Route11SnorlaxBattleScript:
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear ROUTE_11_BIG_SNORLAX_RESPAWN
;	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
;	special CheckBattleCaughtResult
;	iffalse .nocatch
;	setflag ENGINE_PLAYER_CAUGHT_SNORLAX
;.nocatch
	end

Route11SnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done

Route11PlayPokeFluteAskText:
	text "SNORLAX is sound"
	line "asleep."
	
	para "Play the"
	line "# FLUTE?"
	done

Route11PlayPokeFluteText:
	text "<PLAYER> played"
	line "the # FLUTE"
	cont "for SNORLAX!"
	done

Route11RadioNearSnorlaxText:
	text "SNORLAX can hear"
	line "the music from"
	cont "<PLAYER>'s #GEAR."

	para "…"
	done

Route11SnorlaxWokeUpText:
	text "SNORLAX woke up!"
	done

Route11LetSnorlaxSleepText:
	text "<PLAYER> let the"
	line "SNORLAX sleep."
	done

Route11BerryTree:
	opentext
	writetext Route11BerryTreeText
	promptbutton
	writetext Route11HeyItsBerryText
	promptbutton
	verbosegiveitem ORAN_BERRY
	iffalse .NoRoomInBag
	disappear ROUTE_11_BERRY
	setflag ENGINE_DAILY_ROUTE_11_BERRY
.NoRoomInBag
	closetext
	end

Route11ApricornTree:
	opentext
	writetext Route11ApricornTreeText
	promptbutton
	writetext Route11HeyItsApricornText
	promptbutton
	verbosegiveitem GRN_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE_11_APRICORN
	setflag ENGINE_DAILY_ROUTE_11_APRICORN
.NoRoomInBag
	closetext
	end

Route11NoBerry:
	opentext
	writetext Route11BerryTreeText
	promptbutton
	writetext Route11NothingHereText
	waitbutton
	closetext
	end

Route11NoApricorn:
	opentext
	writetext Route11ApricornTreeText
	promptbutton
	writetext Route11NothingHereText
	waitbutton
	closetext
	end

Route11DiglettsCaveSign:
	jumptext Route11DiglettsCaveSignText
Route11DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route11BerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

Route11HeyItsBerryText:
	text "Hey! It's"
	line "ORAN BERRY!"
	done

Route11ApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

Route11HeyItsApricornText:
	text "Hey! It's"
	line "GRN APRICORN!"
	done

Route11NothingHereText:
	text "There's nothing"
	line "here…"
	done

; hidden items
Route11HiddenEscapeRope:
	hiddenitem ESCAPE_ROPE, EVENT_ROUTE_11_HIDDEN_ESCAPE_ROPE

Route11_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, DIGLETTS_CAVE, 1
	warp_event 49,  8, ROUTE_11_GATE, 1
	warp_event 49,  9, ROUTE_11_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 48,  5, BGEVENT_ITEM, Route11HiddenEscapeRope
	bg_event  1,  5, BGEVENT_READ, Route11DiglettsCaveSign
	bg_event 48,  2, BGEVENT_READ, Route11NoBerry
	bg_event 49,  1, BGEVENT_READ, Route11NoApricorn

	def_object_events
	object_event 48,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11BerryTree, EVENT_ROUTE_11_BERRY
	object_event 49,  1, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route11ApricornTree, EVENT_ROUTE_11_APRICORN
	object_event 47, 11, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11Snorlax, EVENT_ROUTE_11_SNORLAX_RESPAWN
	object_event 33,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokefanFGeorgia, -1
	object_event 22,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterOwen, -1
	object_event 13,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterAlan, -1
	object_event 43,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterIan, -1
	object_event 45,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanMWilliam, -1
	object_event 26,  9, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPokefanFBeverly, -1
	object_event 36, 11, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerOfficerKeith, -1
	object_event 22, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterJason, -1
	object_event 10, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanMRobert, -1
	object_event 45, 16, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerOfficerDirk, -1
