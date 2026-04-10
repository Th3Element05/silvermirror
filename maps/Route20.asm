	object_const_def
	const ROUTE20_COOLTRAINERM
	const ROUTE20_GEODUDE
	const ROUTE20_ROCK

Route20_MapScripts:
	def_scene_scripts
	scene_script Route20Noop1Scene, SCENE_ROUTE20_GET_ROCKSMASH
	scene_script Route20Noop2Scene, SCENE_ROUTE20_NOOP

	def_callbacks

Route20Noop1Scene:
Route20Noop2Scene:
	end

Route20GetRocksmashScript:
	showemote EMOTE_SHOCK, ROUTE20_COOLTRAINERM, 20
	readvar VAR_FACING
	ifequal DOWN, .ThruSeafoam
	turnobject PLAYER, LEFT
	applymovement ROUTE20_COOLTRAINERM, Route20RockSmashGuyApproachMovement
	opentext
	writetext Route20RockSmashGuyIntro_Cinnabar
	waitbutton
	closetext
	follow ROUTE20_COOLTRAINERM, PLAYER
	applymovement ROUTE20_COOLTRAINERM, Route20RockSmashGuyReturnMovement
	stopfollow
	pause 15
	sjump Route20RockSmashGuyScript

.ThruSeafoam
	turnobject PLAYER, LEFT
	applymovement ROUTE20_COOLTRAINERM, Route20RockSmashGuyApproachMovement
	opentext
	writetext Route20RockSmashGuyIntro_Seafoam
	waitbutton
	closetext
	follow ROUTE20_COOLTRAINERM, PLAYER
	applymovement ROUTE20_COOLTRAINERM, Route20RockSmashGuyReturnMovement
	stopfollow
	pause 15
	; fallthrough ; sjump Route20RockSmashGuyScript

Route20RockSmashGuyScript:
;	setlasttalked ROUTE20_COOLTRAINERM
	faceplayer
	opentext
;	checkevent EVENT_GOT_TM58_ROCK_SMASH
;	iftrue .AlreadyGotRockSmash
	writetext Route20RockSmashGuyIntroText
	promptbutton
	closetext
	turnobject ROUTE20_COOLTRAINERM, LEFT
	pause 10
	turnobject ROUTE20_GEODUDE, LEFT
	scall Route20GeodudeScript
	pause 10
	playsound SFX_STRENGTH
	earthquake 84
	applymovement ROUTE20_ROCK, Route20RockSmashMovement
;	waitsfx
	disappear ROUTE20_ROCK
	turnobject ROUTE20_GEODUDE, RIGHT
	pause 10
;	setlasttalked ROUTE20_COOLTRAINERM
	faceplayer
	opentext
	writetext Route20RockSmashGuyGivePagerText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_ROCK_SMASH
	promptbutton
	writetext GotRockSmashPagerText
	promptbutton
	writetext Route20RockSmashGuyGiveTMText
	promptbutton
;	verbosegiveitem TM_BRICK_BREAK
	setevent EVENT_GOT_TM58_ROCK_SMASH
	turnobject ROUTE20_COOLTRAINERM, LEFT
	writetext Route20RockSmashGuyLetsGoText
	promptbutton
	closetext
	playsound SFX_BALL_POOF
	applymovement ROUTE20_GEODUDE, Route20RockSmashMovement
	disappear ROUTE20_GEODUDE
;	waitsfx
	pause 10
	faceplayer
	opentext
	writetext Route20RockSmashGuyFarewellText
	waitbutton
	closetext
	applymovement ROUTE20_COOLTRAINERM, Route20RockSmashGuyLeaveMovement
	disappear ROUTE20_COOLTRAINERM
	setscene SCENE_ROUTE20_NOOP
	end

.AlreadyGotRockSmash:
	writetext Route20RockSmashGuyFarewellText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "ROCKSMASH PAGER@"

Route20RockSmashGuyIntro_Seafoam:
	text "Whoa! Did you go"
	line "through SEAFOAM"
	cont "ISLANDS?"

	para "That must have"
	line "been tough!"

	para "Here, you probably"
	line "want to see this."
	done

Route20RockSmashGuyIntro_Cinnabar:
	text "Wait! Are you"
	line "gonna go through"
	cont "SEAFOAM ISLANDS?"

	para "Check this out,"
	line "first!"
	done

Route20RockSmashGuyIntroText:
	text "My GEODUDE loves"
	line "smashing rocks!"

	para "Watch!"
	done

Route20RockSmashGuyGivePagerText:
	text "You can make some"
	line "shortcuts with"
	cont "ROCK SMASH!"

	para "Take this!"
	done

GotRockSmashPagerText:
	text "GEODUDE was"
	line "added to the PPS!"
	done

Route20RockSmashGuyGiveTMText:
	text "You can call my"
	line "GEODUDE any time"
	cont "you need to use"
	roll "ROCK SMASH!"
	done

;	para "Teach your own"
;	line "#MON to use"
;	cont "ROCK SMASH with"
;	roll "this!"
;	done

Route20RockSmashGuyLetsGoText:
	text "Let's go, GEODUDE!"
	done

Route20RockSmashGuyFarewellText:
	text "Have fun smashing!"
	line "See ya!"
	done

Route20GeodudeScript:
	opentext
	writetext Route20GeodudeText
	cry GEODUDE
	waitbutton
	closetext
	end

Route20GeodudeText:
	text "GEODUDE: Geo!"
	line "Geo-dude!"
	done

Route20RockSmashMovement:
	rock_smash 10
	step_end

Route20RockSmashGuyApproachMovement:
	step RIGHT
	step RIGHT
	step_end

Route20RockSmashGuyReturnMovement:
	step LEFT
	step LEFT
	step_end

Route20RockSmashGuyLeaveMovement:
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

TrainerSwimmerFDenise:
	trainer SWIMMERF, DENISE, EVENT_BEAT_SWIMMERF_DENISE, SwimmerFDeniseSeenText, SwimmerFDeniseBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerFDeniseAfterBattleText
	waitbutton
	closetext
	end

SwimmerFDeniseSeenText:
	text "CINNABAR, in the"
	line "west, has a LAB"
	cont "for #MON."
	done

SwimmerFDeniseBeatenText:
	text "Wait!"
	done

SwimmerFDeniseAfterBattleText:
	text "CINNABAR is a "
	line "volcanic island!"
	done

TrainerSwimmerFHeidi:
	trainer SWIMMERF, HEIDI, EVENT_BEAT_SWIMMERF_HEIDI, SwimmerFHeidiSeenText, SwimmerFHeidiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerFHeidiAfterBattleText
	waitbutton
	closetext
	end

SwimmerFHeidiSeenText:
	text "I swam here from"
	line "CINNABAR ISLAND!"
	done

SwimmerFHeidiBeatenText:
	text "I'm so"
	line "disappointed!"
	done

SwimmerFHeidiAfterBattleText:
	text "#MON have"
	line "taken over an"
	cont "abandoned mansion"
	roll "on CINNABAR!"
	done

TrainerSwimmerFSusie:
	trainer SWIMMERF, SUSIE, EVENT_BEAT_SWIMMERF_SUSIE, SwimmerFSusieSeenText, SwimmerFSusieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerFSusieAfterBattleText
	waitbutton
	closetext
	end

SwimmerFSusieSeenText:
	text "My boy friend gave"
	line "me big pearls!"
	done

SwimmerFSusieBeatenText:
	text "Don't touch"
	line "my pearls!"
	done

SwimmerFSusieAfterBattleText:
	text "Will my pearls"
	line "grow bigger"
	cont "inside CLOYSTER?"
	done

TrainerBirdKepperVance:
	trainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKepperVanceSeenText, BirdKepperVanceBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BirdKepperVanceAfterBattleText
	waitbutton
	closetext
	end

BirdKepperVanceSeenText:
	text "I rode my bird"
	line "#MON here!"
	done

BirdKepperVanceBeatenText:
	text "Oh no!"
	done

BirdKepperVanceAfterBattleText:
	text "My birds can't"
	line "FLY me back!"
	done

TrainerSwimmerMTucker:
	trainer SWIMMERM, TUCKER, EVENT_BEAT_SWIMMERM_TUCKER, SwimmerMTuckerSeenText, SwimmerMTuckerBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMTuckerAfterBattleText
	waitbutton
	closetext
	end

SwimmerMTuckerSeenText:
	text "Check out my buff"
	line "physique!"
	done

SwimmerMTuckerBeatenText:
	text "Wimpy!"
	done

SwimmerMTuckerAfterBattleText:
	text "I should've been"
	line "buffing up my"
	cont "#MON, not me!"
	done

TrainerSwimmerFKara:
	trainer SWIMMERF, KARA, EVENT_BEAT_SWIMMERF_KARA, SwimmerFKaraSeenText, SwimmerFKaraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerFKaraAfterBattleText
	waitbutton
	closetext
	end

SwimmerFKaraSeenText:
	text "I love floating"
	line "with the fishes!"
	done

SwimmerFKaraBeatenText:
	text "Yowch!"
	done

SwimmerFKaraAfterBattleText:
	text "Want to float"
	line "with me?"
	done

TrainerSwimmerFGinger:
	trainer SWIMMERF, GINGER, EVENT_BEAT_SWIMMERF_GINGER, SwimmerFGingerSeenText, SwimmerFGingerBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerFGingerAfterBattleText
	waitbutton
	closetext
	end

SwimmerFGingerSeenText:
	text "Are you on"
	line "vacation too?"
	done

SwimmerFGingerBeatenText:
	text "No mercy"
	line "at all!"
	done

SwimmerFGingerAfterBattleText:
	text "SEAFOAM ISLANDS"
	line "have gotten much"
	cont "colder recently!"
	done

TrainerSwimmerFWendy:
	trainer SWIMMERF, WENDY, EVENT_BEAT_SWIMMERF_WENDY, SwimmerFWendySeenText, SwimmerFWendyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerFWendyAfterBattleText
	waitbutton
	closetext
	end

SwimmerFWendySeenText:
	text "SEAFOAM is a"
	line "quiet getaway!"
	done

SwimmerFWendyBeatenText:
	text "Quit it!"
	done

SwimmerFWendyAfterBattleText:
	text "There's a huge"
	line "cavern underneath"
	cont "this island."
	done

TrainerSwimmerMJerome:
	trainer SWIMMERM, JEROME, EVENT_BEAT_SWIMMERM_JEROME, SwimmerMJeromeSeenText, SwimmerMJeromeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMJeromeAfterBattleText
	waitbutton
	closetext
	end

SwimmerMJeromeSeenText:
	text "The water is"
	line "shallow here."
	done

SwimmerMJeromeBeatenText:
	text "Splash!"
	done

SwimmerMJeromeAfterBattleText:
	text "I wish I could"
	line "ride my #MON."
	done

TrainerSwimmerMCameron:
	trainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmerMCameronSeenText, SwimmerMCameronBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMCameronAfterBattleText
	waitbutton
	closetext
	end

SwimmerMCameronSeenText:
	text "Why are you"
	line "riding a #MON?"
	cont "Can't you swim?"
	done

SwimmerMCameronBeatenText:
	text "Ouch!"
	line "Torpedoed!"
	done

SwimmerMCameronAfterBattleText:
	text "Riding a #MON"
	line "sure looks fun!"
	done

SeafoamIslandsSign:
	jumptext SeafoamIslandsSignText
SeafoamIslandsSignText:
	text "SEAFOAM ISLANDS"
	done

; items
Route20TMBrickBreak:
	itemball TM_BRICK_BREAK

Route20RockScript:
	jumpstd SmashRockScript

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 44,  5, SEAFOAM_ISLANDS, 1 ; 1
	warp_event 54,  9, SEAFOAM_ISLANDS, 2 ; 2

	def_coord_events
	coord_event 54, 10, SCENE_ROUTE20_GET_ROCKSMASH, Route20GetRocksmashScript

	def_bg_events
	bg_event 47,  7, BGEVENT_READ, SeafoamIslandsSign
	bg_event 53, 11, BGEVENT_READ, SeafoamIslandsSign

	def_object_events
	object_event 51, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Route20RockSmashGuyScript, EVENT_GOT_TM58_ROCK_SMASH
	object_event 50, 10, SPRITE_VARIABLE_1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route20GeodudeScript, EVENT_GOT_TM58_ROCK_SMASH
	object_event 49, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route20RockScript, -1
;
	object_event  8,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerFDenise, -1
	object_event 20,  7, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFSusie, -1
	object_event 19, 11, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFHeidi, -1
	object_event 30,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBirdKepperVance, -1
	object_event 34, 12, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMTucker, -1
	object_event 41,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSwimmerFKara, -1
	object_event 51, 14, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerFGinger, -1
	object_event 65,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFWendy, -1
	object_event 77,  8, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMJerome, -1
	object_event 78, 12, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMCameron, -1
	object_event 50, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route20RockScript, -1
	object_event 48, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route20RockScript, -1
	object_event 49, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route20TMBrickBreak, EVENT_ROUTE_20_TM_BRICK_BREAK

;.GrayOverYellowOBPalette