	object_const_def

Route20_MapScripts:
	def_scene_scripts

	def_callbacks

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
	cont "on CINNABAR!"
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

;SeafoamIslandsRock:
;	jumpstd SmashRockScript

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 44,  5, SEAFOAM_ISLANDS, 1 ; 1
	warp_event 54,  9, SEAFOAM_ISLANDS, 2 ; 2

	def_coord_events

	def_bg_events
	bg_event 47,  7, BGEVENT_READ, SeafoamIslandsSign
	bg_event 53, 11, BGEVENT_READ, SeafoamIslandsSign

	def_object_events
	object_event  8,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerFDenise, -1
	object_event 20,  7, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFSusie, -1
	object_event 19, 11, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFHeidi, -1
	object_event 30,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBirdKepperVance, -1
	object_event 34, 12, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMTucker, -1
	object_event 41,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSwimmerFKara, -1
	object_event 51, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFGinger, -1
	object_event 65,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFWendy, -1
	object_event 77,  8, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMJerome, -1
	object_event 78, 12, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMCameron, -1
;	object_event 51,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsRock, -1
