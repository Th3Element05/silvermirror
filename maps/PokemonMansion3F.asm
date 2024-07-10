	object_const_def

PokemonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansion3FDoorsCallback

PokemonMansion3FDoorsCallback:
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iffalse .SwitchOff
	changeblock 14, 10, $66 ; open door
	changeblock 14, 4, $3a ; close door
.SwitchOff
	endcallback

PokemonMansion3FSecretSwitch:
	opentext
	writetext PokemonMansion3FSecretSwitchText
	yesorno
	iffalse .NoSwitch
	writetext PokemonMansion3FPressSwitchText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iftrue .TurnOff
	setevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock 14, 10, $66 ; open door
	changeblock 14, 4, $3a ; close door
	reloadmappart
	end

.TurnOff
	clearevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock 14, 10, $3a ; close door
	changeblock 14, 4, $66 ; close door
	reloadmappart
	end

.NoSwitch
	writetext PokemonMansion3FNoSwitchText
	waitbutton
	closetext
	end

PokemonMansion3FSecretSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansion3FPressSwitchText:
	text "Who wouldn't?"
	done

PokemonMansion3FNoSwitchText:
	text "Not quite yet!"
	done

TrainerBurglarEddie:
	trainer BURGLAR, EDDIE, EVENT_BEAT_BURGLAR_EDDIE, BurglarEddieSeenText, BurglarEddieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BurglarEddieAfterBattleText
	waitbutton
	closetext
	end

BurglarEddieSeenText:
	text "This place is"
	line "like, huge!"
	done

BurglarEddieBeatenText:
	text "Ayah!"
	done

BurglarEddieAfterBattleText:
	text "I wonder where"
	line "my partner went."
	done

TrainerScientistDominic:
	trainer SCIENTIST, DOMINIC, EVENT_BEAT_SCIENTIST_DOMINIC, ScientistDominicSeenText, ScientistDominicBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistDominicAfterBattleText
	waitbutton
	closetext
	end

ScientistDominicSeenText:
	text "My mentor once"
	line "lived here."
	done

ScientistDominicBeatenText:
	text "Whew!"
	line "Overwhelming!"
	done

ScientistDominicAfterBattleText:
	text "So, you're stuck?"
	line "Try jumping off"
	cont "over there!"
	done

PokemonMansion3FDiary:
	jumptext PokemonMansion3FDiaryText
PokemonMansion3FDiaryText:
	text "Lab Notes:"
	line "Feb. 6"

	para "We created a new"
	line "####MON by using"
	cont "MEW's DNA!"
	
	para "We named our"
	line "creation MEWTWO."
	done

; itemballs
PokemonMansion3FIron:
	itemball IRON

PokemonMansion3FMaxPotion:
	itemball MAX_POTION

; hidden items
PokemonMansion3FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_POKEMON_MANSION_3F_HIDDEN_MAX_REVIVE

PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  2, POKEMON_MANSION_2F, 1 ; 1
	warp_event  7, 10, POKEMON_MANSION_2F, 3 ; 2
	warp_event 25, 14, POKEMON_MANSION_2F, 4 ; 3
	warp_event 16, 14, POKEMON_MANSION_1F, 7 ; 4 pit
	warp_event 17, 14, POKEMON_MANSION_1F, 7 ; 5 pit
	warp_event 19, 14, POKEMON_MANSION_2F, 5 ; 6 pit

	def_coord_events

	def_bg_events
	bg_event 10,  5, BGEVENT_READ, PokemonMansion3FSecretSwitch
	bg_event  1,  9, BGEVENT_ITEM, PokemonMansion3FHiddenMaxRevive

	def_object_events
	object_event  6, 11, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBurglarEddie, -1
	object_event 20, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistDominic, -1
	object_event 25,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3FIron, EVENT_POKEMON_MANSION_3F_IRON
	object_event  1, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3FMaxPotion, EVENT_POKEMON_MANSION_3F_MAX_POTION
	object_event  7, 12, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion3FDiary, -1
