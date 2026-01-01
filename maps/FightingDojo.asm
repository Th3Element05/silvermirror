	object_const_def
	const FIGHTINGDOJO_HITMONLEE_POKE_BALL
	const FIGHTINGDOJO_HITMONCHAN_POKE_BALL
	const FIGHTINGDOJO_KARATE_MASTER

FightingDojo_MapScripts:
	def_scene_scripts
	scene_script FightingDojoNoop1Scene, SCENE_FIGHTINGDOJO_CHALLENGE_1
	scene_script FightingDojoNoop2Scene, SCENE_FIGHTINGDOJO_NOOP

	def_callbacks

FightingDojoNoop1Scene:
FightingDojoNoop2Scene:
	end

FightingDojoKarateMasterLeftScript:
	turnobject PLAYER, RIGHT
	; fallthrough
FightingDojoKarateMasterScript:
	checkevent EVENT_GOT_POKEMON_FROM_DOJO
	iftrue .GotPokemon
	setlasttalked FIGHTINGDOJO_KARATE_MASTER
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLACKBELT_MASTER
	iftrue .BeatMaster
	checkevent EVENT_BEAT_BLACKBELT_TAKESHI
	iffalse .NoChallenge
	checkevent EVENT_BEAT_BLACKBELT_BRUCE
	iffalse .NoChallenge
	checkevent EVENT_BEAT_BLACKBELT_JACKIE
	iffalse .NoChallenge
	checkevent EVENT_BEAT_BLACKBELT_JET
	iffalse .NoChallenge
	writetext KarateMasterChallengeText
	winlosstext KarateMasterWinLossText, 0
	loadtrainer BLACKBELT_T, MASTER
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLACKBELT_MASTER
	setscene SCENE_FIGHTINGDOJO_NOOP
	opentext
.BeatMaster
	writetext KarateMasterChoosePokemonText
	waitbutton
	closetext
	end

.NoChallenge
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .SkipIntro
	writetext KarateMasterIntroText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
.SkipIntro
	writetext KarateMasterDefeatMyStudentsText
	waitbutton
	closetext
	applymovement PLAYER, FightingDojoStepDownMovement
	turnobject FIGHTINGDOJO_KARATE_MASTER, DOWN
	end

.GotPokemon
	jumptextfaceplayer KarateMasterTrainWithUsText

KarateMasterIntroText:
	text "Hwa!"

	para "I am the KARATE"
	line "MASTER! I am the"
	cont "LEADER here!"

	para "If you wish to"
	line "challenge us,"
	cont "expect no mercy!"
	done

KarateMasterDefeatMyStudentsText:
	text "Defeat all 4 of"
	line "my students to"
	cont "prove you posses"
	cont "the strength to"
	cont "challenge me!"
	done

KarateMasterChallengeText:
	text "Ha! Well met,"
	cont "Challenger!"

	para "My students are"
	line "formidable!"

	para "Surely you have"
	line "strength enough"
	cont "to challenge me!"

	para "Fwaaa!"
	done

KarateMasterWinLossText:
	text "Hwa!"
	line "Arrgh! Beaten!"
	done

KarateMasterChoosePokemonText:
	text "Indeed, I have"
	line "lost!"

	para "I can not award"
	line "a #MON LEAGUE"
	cont "badge."

	para "Instead, I will"
	line "give you a prized"
	cont "fighting #MON!"

	para "Choose whichever"
	line "one you like!"
	done

KarateMasterTrainWithUsText:
	text "Ho!"

	para "Stay and train at"
	line "Karate with us!"
	done

FightingDojoHitmonlee:
	checkevent EVENT_GOT_POKEMON_FROM_DOJO
	iftrue AlreadyGotFightingMonScript
	refreshscreen
	pokepic HITMONLEE
	cry HITMONLEE
	waitbutton
	closepokepic
	opentext
	writetext FightingDojoTakeHitmonleeText
	yesorno
	iffalse .NotHitmonlee
	disappear FIGHTINGDOJO_HITMONLEE_POKE_BALL
	setevent EVENT_GOT_POKEMON_FROM_DOJO
	getmonname STRING_BUFFER_3, HITMONLEE
	writetext FightingDojoReceivedPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke HITMONLEE, 30
.NotHitmonlee
	closetext
	end

FightingDojoTakeHitmonleeText:
	text "You want the"
	line "hard kicking"
	cont "HITMONLEE?"
	done

FightingDojoHitmonchan:
	checkevent EVENT_GOT_POKEMON_FROM_DOJO
	iftrue AlreadyGotFightingMonScript
	refreshscreen
	pokepic HITMONCHAN
	cry HITMONCHAN
	waitbutton
	closepokepic
	opentext
	writetext FightingDojoTakeHitmonchanText
	yesorno
	iffalse .NotHitmonlee
	disappear FIGHTINGDOJO_HITMONCHAN_POKE_BALL
	setevent EVENT_GOT_POKEMON_FROM_DOJO
	getmonname STRING_BUFFER_3, HITMONCHAN
	writetext FightingDojoReceivedPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke HITMONCHAN, 30
.NotHitmonlee
	closetext
	end

FightingDojoTakeHitmonchanText:
	text "You want the"
	line "piston punching"
	cont "HITMONCHAN?"
	done

FightingDojoReceivedPokemonText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlreadyGotFightingMonScript:
	jumptext FightingDojoDontGetGreedyText

FightingDojoDontGetGreedyText:
	text "Better not get"
	line "greedy…"
	done

;FightingDojoAfterFirstChallengeScript:
;	checkevent EVENT_GOT_POKEMON_FROM_DOJO
;	iffalse .Skip
;	turnobject FIGHTINGDOJO_KARATE_MASTER, LEFT
;	opentext
;	writetext KarateMasterTrainingText
;	waitbutton
;	closetext
;	turnobject FIGHTINGDOJO_KARATE_MASTER, DOWN
;	applymovement PLAYER, FightingDojoStepDownMovement
;	end
;
;KarateMasterTrainingText:
;	text "We will continue"
;	line "to train!"
;
;	para "We would like you"
;	line "to challenge us"
;	cont "again! When we"
;	cont "are stronger!"
;	done

TrainerBlackbeltTakeshi:
	trainer BLACKBELT_T, TAKESHI, EVENT_BEAT_BLACKBELT_TAKESHI, BlackbeltTakeshiSeenText, BlackbeltTakeshiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltTakeshiAfterBattleText
	waitbutton
	closetext
	end

BlackbeltTakeshiSeenText:
	text "Hoargh! Take your"
	line "shoes off!"
	done

BlackbeltTakeshiBeatenText:
	text "I yield!"
	done

BlackbeltTakeshiAfterBattleText:
	text "You wait 'til you"
	line "see our Master!"

	para "I'm a small fry"
	line "compared to him!"
	done

TrainerBlackbeltBruce:
	trainer BLACKBELT_T, BRUCE, EVENT_BEAT_BLACKBELT_BRUCE, BlackbeltBruceSeenText, BlackbeltBruceBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltBruceAfterBattleText
	waitbutton
	closetext
	end

BlackbeltBruceSeenText:
	text "I hear you're"
	line "good! Show me!"
	done

BlackbeltBruceBeatenText:
	text "Judge!"
	line "1 point!"
	done

BlackbeltBruceAfterBattleText:
	text "Our Master is a"
	line "pro fighter!"
	done

TrainerBlackbeltJackie:
	trainer BLACKBELT_T, JACKIE, EVENT_BEAT_BLACKBELT_JACKIE, BlackbeltJackieSeenText, BlackbeltJackieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltJackieAfterBattleText
	waitbutton
	closetext
	end

BlackbeltJackieSeenText:
	text "Nothing tough"
	line "frightens me!"

	para "I break boulders"
	line "for training!"
	done

BlackbeltJackieBeatenText:
	text "Yow!"
	line "Stubbed fingers!"
	done

BlackbeltJackieAfterBattleText:
	text "The only thing"
	line "that frightens us"
	cont "is psychic power!"
	done

TrainerBlackbeltJet:
	trainer BLACKBELT_T, JET, EVENT_BEAT_BLACKBELT_JET, BlackbeltJetSeenText, BlackbeltJetBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltJetAfterBattleText
	waitbutton
	closetext
	end

BlackbeltJetSeenText:
	text "Hoohah!"

	para "You're trespassing"
	line "in our FIGHTING"
	cont "DOJO!"
	done

BlackbeltJetBeatenText:
	text "Oof!"
	line "I give up!"
	done

BlackbeltJetAfterBattleText:
	text "The prime fighters"
	line "across the land"
	cont "train here."
	done

FightingDojoStepDownMovement:
	step DOWN
	step_end

FightingDojoSign1:
	jumptext FightingDojoSign1Text
FightingDojoSign1Text:
	text "Struggle for"
	line "vengeance!"
	done

FightingDojoSign2:
	jumptext FightingDojoSign2Text
FightingDojoSign2Text:
	text "A complicated"
	line "fracture."
	done

FightingDojoStatue:
	jumptext FightingDojoStatueText
FightingDojoStatueText:
	text "FIGHTING DOJO"
	done

FightingDojoFocusBand:
	itemball FOCUS_BAND

FightingDojoBlackBelt:
	itemball BLACKBELT_I

FightingDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 1
	warp_event  5, 11, SAFFRON_CITY, 1

	def_coord_events
	coord_event  4,  3, SCENE_FIGHTINGDOJO_CHALLENGE_1, FightingDojoKarateMasterLeftScript

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, FightingDojoSign1
	bg_event  8,  0, BGEVENT_READ, FightingDojoSign2
	bg_event  3,  9, BGEVENT_READ, FightingDojoStatue
	bg_event  6,  9, BGEVENT_READ, FightingDojoStatue

	def_object_events
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FightingDojoHitmonlee, EVENT_GOT_HITMONLEE_FROM_DOJO
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FightingDojoHitmonchan, EVENT_GOT_HITMONCHAN_FROM_DOJO
	object_event  5,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, FightingDojoKarateMasterScript, -1
	object_event  1,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltTakeshi, -1
	object_event  3,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltBruce, -1
	object_event  6,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltJackie, -1
	object_event  8,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltJet, -1
	object_event  1,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FightingDojoFocusBand, EVENT_FIGHTING_DOJO_FOCUS_BAND
	object_event  8,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FightingDojoBlackBelt, EVENT_FIGHTING_DOJO_BLACK_BELT

;.GrayOverYellowOBPalette