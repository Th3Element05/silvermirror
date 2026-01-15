	object_const_def
	const TEAMROCKETBASEB1F_NINJA_M
	const TEAMROCKETBASEB1F_NINJA_T
	const TEAMROCKETBASEB1F_NINJA_BALL

TeamRocketBaseB1F_MapScripts:
	def_scene_scripts
	scene_script TeamRocketBaseB1FNoop1Scene, SCENE_TEAMROCKETBASEB1F_NINJAS
	scene_script TeamRocketBaseB1FNoop2Scene, SCENE_TEAMROCKETBASEB1F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, TeamRocketBaseB1FStaircaseCallback
	callback MAPCALLBACK_OBJECTS, TeamRocketBaseB1FHideNinjaGuardCallback

TeamRocketBaseB1FNoop1Scene:
TeamRocketBaseB1FNoop2Scene:
	end

TeamRocketBaseB1FStaircaseCallback:
	checkevent EVENT_TEAM_ROCKET_BASE_B1F_SWITCH
	iftrue .DontHideStairs
	changeblock 2, 14, $34 ; scuff marks
.DontHideStairs
	endcallback

TeamRocketBaseB1FHideNinjaGuardCallback:
	disappear TEAMROCKETBASEB1F_NINJA_M
	disappear TEAMROCKETBASEB1F_NINJA_T
	endcallback

;1
NinjaSecurity1a:
	checkevent EVENT_NINJA_SECURITY_1
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_1
	moveobject TEAMROCKETBASEB1F_NINJA_M, 18, 1
	moveobject TEAMROCKETBASEB1F_NINJA_T, 18, 2
	sjump NinjaSecurityScript

NinjaSecurity1b:
	checkevent EVENT_NINJA_SECURITY_1
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_1
	moveobject TEAMROCKETBASEB1F_NINJA_M, 18, 2
	moveobject TEAMROCKETBASEB1F_NINJA_T, 18, 3
	sjump NinjaSecurityScript

;2
NinjaSecurity2a:
	checkevent EVENT_NINJA_SECURITY_2
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_2
	moveobject TEAMROCKETBASEB1F_NINJA_M, 10, 1
	moveobject TEAMROCKETBASEB1F_NINJA_T, 10, 2
	sjump NinjaSecurityScript

NinjaSecurity2b:
	checkevent EVENT_NINJA_SECURITY_2
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_2
	moveobject TEAMROCKETBASEB1F_NINJA_M, 10, 2
	moveobject TEAMROCKETBASEB1F_NINJA_T, 10, 3
	sjump NinjaSecurityScript

;3
NinjaSecurity3:
	checkevent EVENT_NINJA_SECURITY_3
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_3
	moveobject TEAMROCKETBASEB1F_NINJA_M, 20, 6
	moveobject TEAMROCKETBASEB1F_NINJA_T, 20, 7
	sjump NinjaSecurityScript

;4
NinjaSecurity4a:
	checkevent EVENT_NINJA_SECURITY_4
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_4
	moveobject TEAMROCKETBASEB1F_NINJA_M, 18, 11
	moveobject TEAMROCKETBASEB1F_NINJA_T, 18, 12
	sjump NinjaSecurityScript

NinjaSecurity4b:
	checkevent EVENT_NINJA_SECURITY_4
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_4
	moveobject TEAMROCKETBASEB1F_NINJA_M, 18, 12
	moveobject TEAMROCKETBASEB1F_NINJA_T, 18, 13
	sjump NinjaSecurityScript

;5
NinjaSecurity5:
	checkevent EVENT_NINJA_SECURITY_5
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_5
	moveobject TEAMROCKETBASEB1F_NINJA_M, 4, 7
	moveobject TEAMROCKETBASEB1F_NINJA_T, 4, 8
	sjump NinjaSecurityScript

;6
NinjaSecurity6:
	checkevent EVENT_NINJA_SECURITY_6
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_6
	moveobject TEAMROCKETBASEB1F_NINJA_M, 2, 11
	moveobject TEAMROCKETBASEB1F_NINJA_T, 2, 12
	sjump NinjaSecurityScript

;7
NinjaSecurity7:
	checkevent EVENT_NINJA_SECURITY_7
	iftrue NoNinjaSecurity
	setevent EVENT_NINJA_SECURITY_7
	moveobject TEAMROCKETBASEB1F_NINJA_M, 27, 13
	moveobject TEAMROCKETBASEB1F_NINJA_T, 27, 14
	sjump NinjaSecurityScript

;8 ;pokeball disguise
NinjaSecurity8:
	setevent EVENT_NINJA_SECURITY_8
	moveobject TEAMROCKETBASEB1F_NINJA_M, 14, 16
	moveobject TEAMROCKETBASEB1F_NINJA_T, 14, 16
	playsound SFX_CUT
	applymovement TEAMROCKETBASEB1F_NINJA_BALL, MahoganyMart1FRockSmashMovement2
	disappear TEAMROCKETBASEB1F_NINJA_BALL
	appear TEAMROCKETBASEB1F_NINJA_M
	applymovement TEAMROCKETBASEB1F_NINJA_M, MahoganyMart1FRockSmashMovement2
	sjump NinjaSecurityPokeballScript

;battle
NinjaSecurityScript:
	playsound SFX_CUT
	appear TEAMROCKETBASEB1F_NINJA_M
	appear TEAMROCKETBASEB1F_NINJA_T
	applymovement TEAMROCKETBASEB1F_NINJA_M, MahoganyMart1FRockSmashMovement2
NinjaSecurityPokeballScript:
	waitsfx
	setlasttalked TEAMROCKETBASEB1F_NINJA_T
	faceplayer
	playmusic MUSIC_DRAGONS_DEN
	pause 9
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	random 2
	ifequal 1, .seen1
	;  else 0
	writetext TeamRocketBaseB1FNinjaGuardSeenText0
	sjump .next
.seen1
	writetext TeamRocketBaseB1FNinjaGuardSeenText1
;	sjump .next
; fallthrough
.next
	waitbutton
	closetext
	scall NinjaGuardRandomBattleScript
	startbattle
;	turnobject TEAMROCKETBASEB1F_NINJA_M, DOWN
	turnobject TEAMROCKETBASEB1F_NINJA_T, DOWN
	disappear TEAMROCKETBASEB1F_NINJA_M
	reloadmapafterbattle
	playsound SFX_CUT
	applymovement TEAMROCKETBASEB1F_NINJA_T, MahoganyMart1FRockSmashMovement2
	disappear TEAMROCKETBASEB1F_NINJA_T
	end

NinjaGuardRandomBattleScript:
	winlosstext NinjaGuardBeatenText, 0
	random 3
	ifequal 1, .party1
	ifequal 2, .party2
	;  else 0
	loadtrainer NINJA, NINJA_GUARD_R0
	end
.party1
	loadtrainer NINJA, NINJA_GUARD_R1
	end
.party2
	loadtrainer NINJA, NINJA_GUARD_R2
	end

NoNinjaSecurity:
	end

TeamRocketBaseB1FNinjaGuardSeenText0:
	text "How did you get"
	line "in here?"
	done

TeamRocketBaseB1FNinjaGuardSeenText1:
	text "We can't permit"
	line "you to be here."
	done

NinjaGuardBeatenText:
	text "I must vanish!"
	done

;TeamRocketBaseB1FRockSmashMovement:
;	rock_smash 6
;	step_end

TeamRocketBaseB1FHiddenNinja1:
	conditional_event EVENT_NINJA_SECURITY_1, TeamRocketBaseB1FHiddenNinja

TeamRocketBaseB1FHiddenNinja2:
	conditional_event EVENT_NINJA_SECURITY_2, TeamRocketBaseB1FHiddenNinja

TeamRocketBaseB1FHiddenNinja3:
	conditional_event EVENT_NINJA_SECURITY_3, TeamRocketBaseB1FHiddenNinja

TeamRocketBaseB1FHiddenNinja4:
	conditional_event EVENT_NINJA_SECURITY_4, TeamRocketBaseB1FHiddenNinja

TeamRocketBaseB1FHiddenNinja5:
	conditional_event EVENT_NINJA_SECURITY_5, TeamRocketBaseB1FHiddenNinja

TeamRocketBaseB1FHiddenNinja6:
	conditional_event EVENT_NINJA_SECURITY_6, TeamRocketBaseB1FHiddenNinja

TeamRocketBaseB1FHiddenNinja7:
	conditional_event EVENT_NINJA_SECURITY_7, TeamRocketBaseB1FHiddenNinja

;TeamRocketBaseB1FHiddenNinja8:
;	conditional_event EVENT_NINJA_SECURITY_8, TeamRocketBaseB1FHiddenNinja
	
TeamRocketBaseB1FHiddenNinja:
	jumptext TeamRocketBaseB1FHiddenNinjaText
TeamRocketBaseB1FHiddenNinjaText:
	text "…"
	done

TeamRocketBaseB1FScuffMarks:
	conditional_event EVENT_TEAM_ROCKET_BASE_B1F_SWITCH, .Proceed
.Proceed
	jumptext TeamRocketBaseB1FScuffMarksText
TeamRocketBaseB1FScuffMarksText:
	text "There are marks on"
	line "the floor here…"
	done

TeamRocketBaseB1FBookshelfSwitch:
	checkevent EVENT_TEAM_ROCKET_BASE_B1F_SWITCH
	iftrue TeamRocketBaseB1FBookshelf
	opentext
	writetext TeamRocketBaseSecretSwitchText
	yesorno
	iffalse .NoPress
	closetext
	playsound SFX_PUSH_BUTTON
	waitsfx
	playsound SFX_STRENGTH
	waitsfx
	changeblock 2, 14, $35 ; stairs
	opentext
	writetext TeamRocketBaseSomethingMovedText
	waitbutton
	setevent EVENT_TEAM_ROCKET_BASE_B1F_SWITCH
.NoPress
	closetext
	end

TeamRocketBaseSecretSwitchText:
	text "Huh? All of these"
	line "books are fake!"

	para "There's a switch"
	line "hidden behind the"
	cont "books!"

	para "Press it?"
	done

TeamRocketBaseSomethingMovedText:
	text "It sounded like"
	line "something moved"
	cont "somewhere."
	done

TeamRocketBaseB1FComputer:
	jumptext TeamRocketBaseB1FComputerText
TeamRocketBaseB1FComputerText:
	text "The computer isn't"
	line "even plugged in."
	done

TeamRocketBaseB1FBookshelf:
	jumptext TeamRocketBaseB1FFakeBookshelfText
TeamRocketBaseB1FFakeBookshelfText:
	text "All of these books"
	line "are fake!"
	done

TeamRocketBaseB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_TEAM_ROCKET_BASE_B1F_HIDDEN_REVIVE

TeamRocketBaseB1FHyperPotion:
	itemball HYPER_POTION

TeamRocketBaseB1FNugget:
	itemball NUGGET

TeamRocketBaseB1FGuardSpec:
	itemball GUARD_SPEC

TeamRocketBaseB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  2, MAHOGANY_MART_1F, 3
	warp_event  2, 15, TEAM_ROCKET_BASE_B2F, 1
;	warp_event  5, 15, TEAM_ROCKET_BASE_B1F, 4
;	warp_event 25,  2, TEAM_ROCKET_BASE_B1F, 3

	def_coord_events
	; There are five security cameras in the base.
	; Walking in front of one triggers two Rocket Grunts.
	coord_event 17,  2, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity1a
	coord_event 17,  3, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity1b
	coord_event  9,  2, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity2a
	coord_event  9,  3, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity2b
	coord_event 19,  7, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity3
	coord_event 19, 12, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity4a
	coord_event 19, 13, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity4b
	coord_event  3,  8, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity5
	coord_event  5,  8, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity5;b
	coord_event  1, 12, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity6
	coord_event  3, 12, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity6;b
	coord_event 26, 14, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity7
	coord_event 28, 14, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity7;b
;	coord_event 11, 16, SCENE_TEAMROCKETBASEB1F_NINJAS, NinjaSecurity8
	; There are spots on the floor that trigger a Pokémon battle.
	; Each Pokémon (Voltorb, Koffing, Geodude) knows Selfdestruct.
;	coord_event  2,  7, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap1

	def_bg_events
	bg_event 18,  1, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja1
	bg_event 10,  1, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja2
	bg_event 20,  5, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja3
	bg_event 18, 11, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja4
	bg_event  4,  7, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja5
	bg_event  2, 11, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja6
	bg_event 27, 13, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja7
;	bg_event 12, 15, BGEVENT_IFNOTSET, TeamRocketBaseB1FHiddenNinja8
	bg_event  3, 15, BGEVENT_IFNOTSET, TeamRocketBaseB1FScuffMarks
;	bg_event 16, 11, BGEVENT_READ, TeamRocketBaseB1FBookshelf
;	bg_event 17, 11, BGEVENT_READ, TeamRocketBaseB1FBookshelf
	bg_event 17, 11, BGEVENT_READ, TeamRocketBaseB1FComputer
	bg_event 20, 11, BGEVENT_READ, TeamRocketBaseB1FBookshelfSwitch
	bg_event 21, 11, BGEVENT_READ, TeamRocketBaseB1FBookshelfSwitch
	bg_event  4, 11, BGEVENT_ITEM, TeamRocketBaseB1FHiddenRevive

	def_object_events
	object_event  0,  0, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_NINJA_SECURITY_NINJAS
	object_event  0,  0, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_NINJA_SECURITY_NINJAS
	object_event 14, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NinjaSecurity8, EVENT_NINJA_SECURITY_8
	object_event 27,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB1FHyperPotion, EVENT_TEAM_ROCKET_BASE_B1F_HYPER_POTION
	object_event 19, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB1FNugget, EVENT_TEAM_ROCKET_BASE_B1F_NUGGET
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB1FGuardSpec, EVENT_TEAM_ROCKET_BASE_B1F_GUARD_SPEC

;.GrayOverTreeOBPalette
;CARD_KEY_N