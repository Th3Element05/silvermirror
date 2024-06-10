	object_const_def

PokemonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansion2FDoorsCallback

PokemonMansion2FDoorsCallback:
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iffalse .SwitchOff
	changeblock 18,  4, $65 ; open door
	changeblock  6, 22, $66 ; open door
	changeblock  8,  4, $3a ; close door
.SwitchOff
	endcallback

PokemonMansion2FSecretSwitch:
	opentext
	writetext PokemonMansion2FSecretSwitchText
	yesorno
	iffalse .NoSwitch
	writetext PokemonMansion2FPressSwitchText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iftrue .TurnOff
	setevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock 18,  4, $65 ; open door
	changeblock  6, 22, $66 ; open door
	changeblock  8,  4, $3a ; close door
	end

.TurnOff
	clearevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock 18,  4, $39 ; close door
	changeblock  6, 22, $3a ; close door
	changeblock  8,  4, $66 ; open door
	end

.NoSwitch
	writetext PokemonMansion2FNoSwitchText
	waitbutton
	closetext
	end

PokemonMansion2FSecretSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansion2FPressSwitchText:
	text "Who wouldn't?"
	done

PokemonMansion2FNoSwitchText:
	text "Not quite yet!"
	done

TrainerBurglarDuncan:
	trainer BURGLAR, DUNCAN, EVENT_BEAT_BURGLAR_DUNCAN, BurglarDuncanSeenText, BurglarDuncanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BurglarDuncanAfterBattleText
	waitbutton
	closetext
	end

BurglarDuncanSeenText:
	text "I can't get out!"
	line "This old place is"
	cont "one big puzzle!"
	done

BurglarDuncanBeatenText:
	text "Oh no!"
	line "My bag of loot!"
	done

BurglarDuncanAfterBattleText:
	text "Switches open and"
	line "close alternating"
	cont "sets of doors!"
	done

PokemonMansion2FDiary1:
	jumptext PokemonMansion2FDiary1Text
PokemonMansion2FDiary1Text:
	text "Field Notes:"
	line "July 5"

	para "A new #MON was"
	line "discovered deep"
	cont "in the jungle."
	done

PokemonMansion2FDiary2:
	jumptext PokemonMansion2FDiary2Text
PokemonMansion2FDiary2Text:
	text "Field Notes:"
	line "July 10"

	para "We christened the"
	line "newly discovered"
	cont "#MON, MEW."
	done

; itemballs
PokemonMansion2FCalcium:
	itemball CALCIUM

PokemonMansion2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  2, POKEMON_MANSION_3F, 1 ; 1
	warp_event  5, 10, POKEMON_MANSION_1F, 5 ; 2
	warp_event  7, 10, POKEMON_MANSION_3F, 2 ; 3
	warp_event 25, 14, POKEMON_MANSION_3F, 3 ; 4
	warp_event 19, 14, POKEMON_MANSION_3F, 6 ; 5

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PokemonMansion2FSecretSwitch

	def_object_events
	object_event  3, 17, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBurglarDuncan, -1
	object_event 28,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FCalcium, EVENT_POKEMON_MANSION_2F_CALCIUM
	object_event 18,  2, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion2FDiary1, -1
	object_event  4, 23, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion2FDiary2, -1
