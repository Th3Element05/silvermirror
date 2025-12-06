	object_const_def
	const ROUTE11_CHERI_BERRY
	const ROUTE11_GRN_APRICORN
	const ROUTE11_SNORLAX

Route11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route11Fruittrees

Route11Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_11_FRUIT
	iftrue .NoFruit
	appear ROUTE11_CHERI_BERRY
	appear ROUTE11_GRN_APRICORN
.NoFruit:
	endcallback

; fruit
Route11_CheriBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, CHERI_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem CHERI_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE11_CHERI_BERRY
	setflag ENGINE_DAILY_ROUTE_11_FRUIT
.NoRoomInBag
	closetext
	end

Route11_GRNApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, GRN_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem GRN_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE11_GRN_APRICORN
	setflag ENGINE_DAILY_ROUTE_11_FRUIT
.NoRoomInBag
	closetext
	end

Route11_NoFruit:
	farsjump Std_NoFruitScript

; scripts
Route11Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .PlayRadio
	checkitem POKE_FLUTE
	iftrue .PlayPokeFlute
	writetext _SnorlaxSleepingText
	waitbutton
	closetext
	end

.PlayPokeFlute:
	writetext _PlayPokeFluteAskText
	yesorno
	iftrue Route11SnorlaxBattleScript
	writetext _LetSnorlaxSleepText
	waitbutton
	closetext
	end

.PlayRadio:
	writetext _RadioNearSnorlaxText
	promptbutton
	sjump Route11RadioWakesSnorlax

Route11SnorlaxBattleScript::
	special FadeOutMusic
	writetext _PlayPokeFluteText
	playsound SFX_POKEFLUTE
	waitsfx
Route11RadioWakesSnorlax:
	writetext _SnorlaxWokeUpText
	promptbutton
	pause 15
	cry SNORLAX
	writetext _SnorlaxAttackedText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	reloadmapafterbattle
	disappear ROUTE11_SNORLAX
	setevent EVENT_WOKE_SNORLAX
;	reloadmappart
	special CheckBattleCaughtResult
	iftrue .caught
	opentext
	writetext _SnorlaxWentHomeText
	waitbutton
	closetext
.caught
	end

_SnorlaxSleepingText:: ;export for routes 12 and 16
	text "A sleeping #MON"
	line "blocks the way!"
	done

_PlayPokeFluteAskText:: ;export for routes 12 and 16
	text "SNORLAX is sound"
	line "asleep."
	
	para "Play the"
	line "# FLUTE?"
	done

_LetSnorlaxSleepText:: ;export for routes 12 and 16
	text "<PLAYER> let the"
	line "SNORLAX sleep."
	done

_RadioNearSnorlaxText:: ;export for routes 12 and 16
	text "SNORLAX can hear"
	line "the music from"
	cont "the #GEAR."

	para "…"
	done

_PlayPokeFluteText:: ;export for routes 12 and 16
	text "<PLAYER> played"
	line "the # FLUTE"
	cont "for SNORLAX!"
	done

_SnorlaxWokeUpText:: ;export for routes 12 and 16
	text "SNORLAX woke up!"
	done

_SnorlaxAttackedText:: ;export for routes 12 and 16
	text "It attacked in a"
	line "grumpy rage!"
	done

_SnorlaxWentHomeText:: ;export for routes 12 and 16
	text "SNORLAX calmed"
	line "down! With a big"
	cont "yawn, it returned"
	cont "to the mountains!"
	done

;Route11SnorlaxSleepingText:
;	text "A sleeping #MON"
;	line "blocks the way!"
;	done
;
;Route11RadioNearSnorlaxText:
;	text "SNORLAX can hear"
;	line "the music from"
;	cont "the #GEAR."
;
;	para "…"
;	done
;
;Route11PlayPokeFluteAskText:
;	text "SNORLAX is sound"
;	line "asleep."
;	
;	para "Play the"
;	line "# FLUTE?"
;	done
;
;Route11PlayPokeFluteText:
;	text "<PLAYER> played"
;	line "the # FLUTE"
;	cont "for SNORLAX!"
;	done
;
;Route11SnorlaxWokeUpText:
;	text "SNORLAX woke up!"
;	done
;
;Route11SnorlaxAttackedText:
;	text "It attacked in a"
;	line "grumpy rage!"
;	done
;
;Route11LetSnorlaxSleepText:
;	text "<PLAYER> let the"
;	line "SNORLAX sleep."
;	done
;
;Route11SnorlaxWentHomeText:
;	text "SNORLAX calmed"
;	line "down! With a big"
;	cont "yawn, it returned"
;	cont "to the mountains!"
;	done

; trainers
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

;OfficerKeithScript:
;	faceplayer
;	opentext
;	checktime NITE
;	iffalse .NoFight
;	checkevent EVENT_BEAT_OFFICER_KEITH
;	iftrue .AfterScript
;	playmusic MUSIC_TRAINER_ENCOUNTER ; MUSIC_OFFICER_ENCOUNTER
;	writetext OfficerKeithSeenText
;	waitbutton
;	closetext
;	winlosstext OfficerKeithWinText, 0
;	loadtrainer OFFICER, KEITH
;	startbattle
;	reloadmapafterbattle
;	setevent EVENT_BEAT_OFFICER_KEITH
;	closetext
;	end

;.AfterScript:
;	writetext OfficerKeithAfterText
;	waitbutton
;	closetext
;	end

;.NoFight:
;	writetext OfficerKeithDaytimeText
;;	waitbutton
;	closetext
;	end

TrainerOfficerRex:
	trainer OFFICER, REX, EVENT_BEAT_OFFICER_REX, OfficerRexSeenText, OfficerRexBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext OfficerRexAfterBattleText
	waitbutton
	closetext
	end

OfficerRexSeenText:
	text "I'm practicing"
	line "for a show!"
	done

OfficerRexBeatenText:
	text "That was"
	line "electric!"
	done

OfficerRexAfterBattleText:
	text "Well, better get"
	line "back to work."
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

;OfficerKeithScript:
;	faceplayer
;	opentext
;	checktime NITE
;	iffalse .NoFight
;	checkevent EVENT_BEAT_OFFICER_KEITH
;	iftrue .AfterScript
;	playmusic MUSIC_TRAINER_ENCOUNTER ; MUSIC_OFFICER_ENCOUNTER
;	writetext OfficerKeithSeenText
;	waitbutton
;	closetext
;	winlosstext OfficerKeithWinText, 0
;	loadtrainer OFFICER, KEITH
;	startbattle
;	reloadmapafterbattle
;	setevent EVENT_BEAT_OFFICER_KEITH
;	closetext
;	end

;.AfterScript:
;	writetext OfficerKeithAfterText
;	waitbutton
;	closetext
;	end

;.NoFight:
;	writetext OfficerKeithDaytimeText
;;	waitbutton
;	closetext
;	end

TrainerOfficerCarter:
	trainer OFFICER, CARTER, EVENT_BEAT_OFFICER_CARTER, OfficerCarterSeenText, OfficerCarterBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext OfficerCarterAfterBattleText
	waitbutton
	closetext
	end

OfficerCarterSeenText:
	text "Watch out for"
	line "live wires!"
	done

OfficerCarterBeatenText:
	text "Whoa!"
	line "You spark plug!"
	done

OfficerCarterAfterBattleText:
	text "#MON battles"
	line "are electrifying!"
	done

; bg text
Route11DiglettsCaveSign:
	jumptext Route11DiglettsCaveSignText
Route11DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

; items
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
	bg_event 48,  2, BGEVENT_READ, Route11_NoFruit
	bg_event 49,  1, BGEVENT_READ, Route11_NoFruit
	bg_event 48,  5, BGEVENT_ITEM, Route11HiddenEscapeRope
	bg_event  1,  5, BGEVENT_READ, Route11DiglettsCaveSign

	def_object_events
	object_event 48,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route11_CheriBerry, EVENT_ROUTE_11_CHERI_BERRY
	object_event 49,  1, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route11_GRNApricorn, EVENT_ROUTE_11_GRN_APRICORN
	object_event 48, 11, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11Snorlax, EVENT_ROUTE_11_SNORLAX_RESPAWN
	object_event 33,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokefanFGeorgia, -1
	object_event 22,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterOwen, -1
	object_event 13,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterAlan, -1
	object_event 43,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterIan, -1
	object_event 45,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanMWilliam, -1
	object_event 26,  9, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPokefanFBeverly, -1
	object_event 36, 11, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerOfficerRex, -1
	object_event 22, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterJason, -1
	object_event 10, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanMRobert, -1
	object_event 45, 16, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerOfficerCarter, -1
