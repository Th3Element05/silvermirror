	object_const_def
	const POKEMONMANSIONB1F_BLAINE
;	const POKEMONMANSIONB1F_MEW

PokemonMansionB1F_MapScripts:
	def_scene_scripts
;	scene_script PokemonMansionB1FDisappearMew

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansionB1FDoorsCallback

;PokemonMansionB1FDisappearMew:
;	checkevent EVENT_FOUGHT_MEW
;	iftrue .DoNothing
;	disappear POKEMONMANSIONB1F_MEW
;.DoNothing
;	end

PokemonMansionB1FDoorsCallback:
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iffalse .SwitchOff
	changeblock  8,  6, $66 ; open
	changeblock 16, 16, $64 ; open
	changeblock 26, 16, $39 ; closed
	changeblock 12, 22, $3a ; closed
.SwitchOff
	endcallback

PokemonMansionB1FSecretSwitch:
	opentext
	writetext PokemonMansionB1FSecretSwitchText
	yesorno
	iffalse .NoSwitch
	writetext PokemonMansionB1FPressSwitchText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iftrue .TurnOff
	setevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock  8,  6, $66 ; open
	changeblock 16, 16, $64 ; open
	changeblock 26, 16, $39 ; closed
	changeblock 12, 22, $3a ; closed
	reloadmappart
	end

.TurnOff
	clearevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock  8,  6, $3a ; closed
	changeblock 16, 16, $38 ; closed
	changeblock 26, 16, $65 ; open
	changeblock 12, 22, $66 ; open
	reloadmappart
	end

.NoSwitch
	writetext PokemonMansionB1FNoSwitchText
	waitbutton
	closetext
	end

PokemonMansionB1FSecretSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansionB1FPressSwitchText:
	text "Who wouldn't?"
	done

PokemonMansionB1FNoSwitchText:
	text "Not quite yet!"
	done

PokemonMansionB1FBlaineScript:
	faceplayer
	opentext
	writetext PokemonMansionB1FBlaineText
	waitbutton
	closetext
	pause 10
	readvar VAR_FACING
	ifnotequal DOWN, .Skip
	applymovement POKEMONMANSIONB1F_BLAINE, PokemonMansion3FBlaineGoesAroundMovement
.Skip
	applymovement POKEMONMANSIONB1F_BLAINE, PokemonMansion3FBlaineLeavesMovement
	disappear POKEMONMANSIONB1F_BLAINE
	setevent EVENT_CINNABAR_GYM_LEADER_RETURNED
	end

PokemonMansionB1FBlaineText:
	text "What is a child"
	line "doing in a place"
	cont "like this?"

	para "<……>"

	para "I see, you are a"
	line "#MON trianer!@"

	text_promptbutton
	ntag "BLAINE:"
	para "I am BLAINE! I"
	line "am the LEADER of"
	cont "CINNABAR GYM!"

	para "I came here to see"
	line "what I could find"
	cont "out about the dis-"
	roll "aster that caused"
	cont "the scientists to"
	roll "abandon the lab."

	para "But so much has"
	line "been looted, there"
	cont "isn't much left to"
	roll "find…"

	para "I imagine you want"
	line "to challenge the"
	cont "CINNABAR GYM?"

	para "Very well, I will"
	line "return to my GYM!"

	para "You can challenge"
	line "me there!"
	done

;LabDocument:
;	opentext
;	writetext DocumentText
;	waitbutton
;	closetext
;	checkevent EVENT_FOUGHT_MEW
;	iftrue .notinparty
;	setval MEWTWO
;	special FindPartyMonThatSpecies
;	iffalse .notinparty
;	cry MEWTWO
;	showemote EMOTE_SHOCK, PLAYER, 15
;	playsound SFX_BALL_WOBBLE
;	pause 10
;	playsound SFX_BALL_WOBBLE
;	pause 10
;	opentext
;	writetext MmemberIsRestlessText
;	waitbutton
;	closetext
;	playsound SFX_FLASH
;	pause 10
;	appear POKEMONMANSIONB1F_MEW
;	pause 10
;	opentext
;	writetext MewText
;	cry MEW
;	pause 15
;	closetext
;	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
;	loadwildmon MEW, 60
;	startbattle
;	disappear POKEMONMANSIONB1F_MEW
;	setevent EVENT_FOUGHT_MEW
;	reloadmapafterbattle
;	special CheckBattleCaughtResult
;	iffalse .nocatch
;	setflag ENGINE_PLAYER_CAUGHT_MEW
;.nocatch
;	end
;	
;.notinparty
;	end
;
;DocumentText:
;	text "…"
;	
;	para "It looks like the"
;	line "remains of some"
;	cont "document…"
;	
;	para "D--ry:-eb.-"
;	
;	para "ME---ve--irth-"
;	
;	para "-e--am-d--he-"
;	line "-ew---n--E--W-…"
;	
;	para "The rest of the"
;	line "page has been"
;	cont "burned off…"
;	done
;
;MmemberIsRestlessText:
;	text "One of your party"
;	line "members has become"
;	cont "restless…"
;	done
;
;MewText:
;	text "MEW!"
;	done
;
TrainerScientistEzekiel:
	trainer SCIENTIST, EZEKIEL, EVENT_BEAT_SCIENTIST_EZEKIEL, ScientistEzekielSeenText, ScientistEzekielBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistEzekielAfterBattleText
	waitbutton
	closetext
	end

ScientistEzekielSeenText:
	text "This place is"
	line "ideal for a lab."
	done

ScientistEzekielBeatenText:
	text "What was"
	line "that for?"
	done

ScientistEzekielAfterBattleText:
	text "I like it here!"
	line "It's conducive to"
	cont "my studies!"
	done

TrainerBurglarCorey:
	trainer BURGLAR, COREY, EVENT_BEAT_BURGLAR_COREY, BurglarCoreySeenText, BurglarCoreyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BurglarCoreyAfterBattleText
	waitbutton
	closetext
	end

BurglarCoreySeenText:
	text "Uh-oh. Where am"
	line "I now?"
	done

BurglarCoreyBeatenText:
	text "Awooh!"
	done

BurglarCoreyAfterBattleText:
	text "You can find stuff"
	line "lying around."
	done

PokemonMansionB1FDiary:
	jumptext PokemonMansionB1FDiaryText
PokemonMansionB1FDiaryText:
	text "Lab Notes:"
	line "Sept. 1"
	
	para "MEWTWO is far too"
	line "powerful."

	para "We have failed to"
	line "curb its vicious"
	cont "tendencies…"
	done

PokemonMansion3FBlaineGoesAroundMovement:
	step LEFT
	step UP
	step_end

PokemonMansion3FBlaineLeavesMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

; itemballs
PokemonMansionB1FRareCandy:
	itemball RARE_CANDY

PokemonMansionB1FTMSolarbeam:
	itemball TM_SOLARBEAM

PokemonMansionB1FFullRestore:
	itemball FULL_RESTORE

PokemonMansionB1FTMBlizzard:
	itemball TM_BLIZZARD

; hidden items
PokemonMansionB1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_POKEMON_MANSION_B1F_HIDDEN_RARE_CANDY

PokemonMansionB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 22, POKEMON_MANSION_1F, 6 ; 1

	def_coord_events

	def_bg_events
	bg_event 18, 25, BGEVENT_READ, PokemonMansionB1FSecretSwitch
	bg_event 20,  3, BGEVENT_READ, PokemonMansionB1FSecretSwitch
	bg_event  1,  9, BGEVENT_ITEM, PokemonMansionB1FHiddenRareCandy

	def_object_events
	object_event  5, 13, SPRITE_BLAINE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionB1FBlaineScript, EVENT_CINNABAR_GYM_LEADER_RETURNED
;	object_event  3,  4, SPRITE_MEW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
;	object_event  4,  5, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, LabDocument, -1
	object_event 27, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistEzekiel, -1
	object_event 16, 23, SPRITE_PHARMACIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerBurglarCorey, -1
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FRareCandy, EVENT_POKEMON_MANSION_B1F_RARE_CANDY
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FTMSolarbeam, EVENT_POKEMON_MANSION_B1F_TM_SOLARBEAM
	object_event  1, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FFullRestore, EVENT_POKEMON_MANSION_B1F_FULL_RESTORE
	object_event 19, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FTMBlizzard, EVENT_POKEMON_MANSION_B1F_TM_BLIZZARD
	object_event 16, 20, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionB1FDiary, -1
