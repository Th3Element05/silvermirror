	object_const_def
	const VICTORYROAD2F_BOULDER1
	const VICTORYROAD2F_BOULDER2
	const VICTORYROAD2F_MOLTRES
	const VICTORYROAD2F_FLAMETHROWER

VictoryRoad2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VictoryRoad2FBoulderCallback
	callback MAPCALLBACK_TILES, VictoryRoad2FGatesCallback
	callback MAPCALLBACK_STONETABLE, VictoryRoad2FSetUpStoneTableCallback

VictoryRoad2FBoulderCallback:
	checkevent EVENT_VICTORY_ROAD_BOULDER_FELL_THROUGH
	iffalse .End
	checkevent EVENT_VICTORY_ROAD_2F_GATE_2_OPEN
	iftrue .End
	appear VICTORYROAD2F_BOULDER2
.End
	endcallback

VictoryRoad2FGatesCallback:
	checkevent EVENT_VICTORY_ROAD_2F_GATE_1_OPEN
	iffalse .Next
	changeblock 0, 20, $4f ; statue rock
	changeblock 8, 10, $4d ; gate open
;	disappear VICTORYROAD2F_BOULDER1
.Next
	checkevent EVENT_VICTORY_ROAD_2F_GATE_2_OPEN
	iffalse .End
	changeblock 8, 22, $4f ; statue rock
	changeblock 22, 16, $4d ; gate open
;	disappear VICTORYROAD2F_BOULDER2
.End
	endcallback

VictoryRoad2FSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 6, VICTORYROAD2F_BOULDER1, .Boulder1
	stonetable 7, VICTORYROAD2F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1
;	pause 20
	playsound SFX_PUSH_BUTTON
	disappear VICTORYROAD2F_BOULDER1
	changeblock 0, 20, $4f ; statue rock
;	reloadmappart
;	waitsfx
	opentext
	writetext VictoryRoad2FPushedSwitchText
	waitbutton
	closetext
	playsound SFX_WALL_OPEN
	changeblock 8, 10, $4d ; gate open
;	reloadmappart
	setevent EVENT_VICTORY_ROAD_2F_GATE_1_OPEN
	end

.Boulder2
;	pause 20
	playsound SFX_PUSH_BUTTON
	disappear VICTORYROAD2F_BOULDER2
	changeblock 8, 22, $4f ; statue rock
;	reloadmappart
;	waitsfx
	opentext
	writetext VictoryRoad2FPushedSwitchText
	waitbutton
	closetext
	playsound SFX_WALL_OPEN
	changeblock 22, 16, $4d ; gate open
;	reloadmappart
	setevent EVENT_VICTORY_ROAD_2F_GATE_2_OPEN
	end

VictoryRoad2FPushedSwitchText:
	text "The heavy boulder"
	line "pushed the switch!"
	done

VictoryRoad2FMoltres:
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 20
	closetext
;	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	loadwildmon MOLTRES, 50
	startbattle
	disappear VICTORYROAD2F_MOLTRES
	setevent EVENT_FOUGHT_MOLTRES
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .NoCatch
	setflag ENGINE_PLAYER_CAUGHT_MOLTRES
.NoCatch
	checkevent EVENT_GOT_TM51_FLAMETHROWER
	iftrue .GotFlamethrower
	appear VICTORYROAD2F_FLAMETHROWER
	setevent EVENT_GOT_TM51_FLAMETHROWER
.GotFlamethrower
	end

MoltresText:
	text "Gyaoo!"
	done

TrainerPokemaniacRon:
	trainer POKEMANIAC, RON, EVENT_BEAT_POKEMANIAC_RON, PokemaniacRonSeenText, PokemaniacRonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacRonAfterBattleText
	waitbutton
	closetext
	end

PokemaniacRonSeenText:
	text "If you can get"
	line "through here, you"
	cont "can go meet the"
	cont "ELITE FOUR!"
	done

PokemaniacRonBeatenText:
	text "No!"
	line "Unbelievable!"
	done

PokemaniacRonAfterBattleText:
	text "I can beat you"
	line "when it comes to"
	cont "knowledge about"
	cont "#MON!"
	done

TrainerJugglerDario:
	trainer JUGGLER, DARIO, EVENT_BEAT_JUGGLER_DARIO, JugglerDarioSeenText, JugglerDarioBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext JugglerDarioAfterBattleText
	waitbutton
	closetext
	end

JugglerDarioSeenText:
	text "Is VICTORY ROAD"
	line "too tough?"
	done

JugglerDarioBeatenText:
	text "Well done!"
	done

JugglerDarioAfterBattleText:
	text "Many trainers give"
	line "up the challenge"
	cont "here."
	done

TrainerCooltrainerMMike:
	trainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainerMMikeSeenText, CooltrainerMMikeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMMikeAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMMikeSeenText:
	text "Come on!"
	line "I'll whip you!"
	done

CooltrainerMMikeBeatenText:
	text "I got whipped!"
	done

CooltrainerMMikeAfterBattleText:
	text "You earned the"
	line "right to be on"
	cont "VICTORY ROAD!"
	done

TrainerBlackbeltYoshi:
	trainer BLACKBELT_T, YOSHI, EVENT_BEAT_BLACKBELT_YOSHI, BlackbeltYoshiSeenText, BlackbeltYoshiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltYoshiAfterBattleText
	waitbutton
	closetext
	end

BlackbeltYoshiSeenText:
	text "VICTORY ROAD is"
	line "the final test"
	cont "for trainers!"
	done

BlackbeltYoshiBeatenText:
	text "Aiyah!"
	done

BlackbeltYoshiAfterBattleText:
	text "If you get stuck,"
	line "try moving some"
	cont "boulders around!"
	done

TrainerJugglerGilbert:
	trainer JUGGLER, GILBERT, EVENT_BEAT_JUGGLER_GILBERT, JugglerGilbertSeenText, JugglerGilbertBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext JugglerGilbertAfterBattleText
	waitbutton
	closetext
	end

JugglerGilbertSeenText:
	text "Ah, so you wish"
	line "to challenge the"
	cont "ELITE FOUR?"
	done

JugglerGilbertBeatenText:
	text "You got me!"
	done

JugglerGilbertAfterBattleText:
	text "A trainer named"
	line "<RIVAL> also came"
	cont "through here!"
	done

VictoryRoad2FGateSign:
	jumptext VictoryRoad2FGateSignText
VictoryRoad2FGateSignText:
	text "Prove your"
	line "STRENGTH and the"
	cont "path shall open."
	done

VictoryRoad2FButtonSign:
	jumptext VictoryRoad2FButtonSignText
VictoryRoad2FButtonSignText:
	text "Show me your"
	line "STRENGTH!"
	done

VictoryRoad2FBoulder:
	jumpstd StrengthBoulderScript

; itemballs
VictoryRoad2FTMFlamethrower:
	itemball TM_FLAMETHROWER

VictoryRoad2FGuardSpec:
	itemball GUARD_SPEC

VictoryRoad2FTMSubmission:
	itemball TM_SUBMISSION

VictoryRoad2FFullHeal:
	itemball FULL_HEAL

VictoryRoad2FTMMegaKick:
	itemball TM_MEGA_KICK

; hidden items
VictoryRoad2FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_VICTORY_ROAD_2F_HIDDEN_ULTRA_BALL

VictoryRoad2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1, 13, VICTORY_ROAD_1F, 2 ;1
	warp_event  1,  3, VICTORY_ROAD_3F, 2 ;2
	warp_event 23,  7, VICTORY_ROAD_3F, 3 ;3
	warp_event 23, 13, VICTORY_ROAD_3F, 4 ;4
	warp_event 22, 22, VICTORY_ROAD_3F, 5 ;5 fall
	warp_event  1, 21, VICTORY_ROAD_2F, 6 ;6 button
	warp_event  9, 23, VICTORY_ROAD_2F, 7 ;7 button

	def_coord_events

	def_bg_events
	bg_event  7, 11, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event 10, 11, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event 21, 17, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event 24, 17, BGEVENT_UP, VictoryRoad2FGateSign
	bg_event  0, 21, BGEVENT_READ, VictoryRoad2FButtonSign
	bg_event  8, 23, BGEVENT_READ, VictoryRoad2FButtonSign
	bg_event  4,  6, BGEVENT_ITEM, VictoryRoad2FHiddenUltraBall

	def_object_events
	object_event  2, 17, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, EVENT_VICTORY_ROAD_2F_BOULDER1
	object_event 21, 22, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, EVENT_VICTORY_ROAD_2F_BOULDER2
	object_event 12,  3, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FMoltres, EVENT_MOLTRES_APPEAR
	object_event 11,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VictoryRoad2FTMFlamethrower, EVENT_VICTORY_ROAD_2F_TM_FLAMETHROWER
	object_event  3,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacRon, -1
	object_event 26,  3, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerJugglerDario, -1
	object_event 20,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerMMike, -1
	object_event 13,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltYoshi, -1
	object_event 20, 19, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerJugglerGilbert, -1
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad2FGuardSpec, EVENT_VICTORY_ROAD_2F_GUARD_SPEC
	object_event 27,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad2FTMSubmission, EVENT_VICTORY_ROAD_2F_TM_SUBMISSION
	object_event 19,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad2FFullHeal, EVENT_VICTORY_ROAD_2F_FULL_HEAL
	object_event 10, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad2FTMMegaKick, EVENT_VICTORY_ROAD_2F_TM_MEGA_KICK
