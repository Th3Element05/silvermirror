	object_const_def

PokemonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansion1FDoorsCallback

PokemonMansion1FDoorsCallback:
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iffalse .SwitchOff
	changeblock 16, 6, $65 ; open door
	changeblock 20, 16, $65 ; open door
	changeblock 26, 26, $02 ; warp carpet
	changeblock 24, 12, $39 ; close door
.SwitchOff
	endcallback

PokemonMansion1FSecretSwitch:
	opentext
	writetext PokemonMansion1FSecretSwitchText
	yesorno
	iffalse .NoSwitch
	writetext PokemonMansion1FPressSwitchText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	checkevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	iftrue .TurnOff
	setevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock 16, 6, $65 ; open door
	changeblock 20, 16, $65 ; open door
	changeblock 26, 26, $02 ; warp carpet
	changeblock 24, 12, $39 ; close door
	end

.TurnOff
	clearevent EVENT_POKEMON_MANSION_SECRET_SWITCH
	changeblock 16, 6, $39 ; close door
	changeblock 20, 16, $39 ; close door
	changeblock 26, 26, $39 ; close door
	changeblock 24, 12, $65 ; open door
	end

.NoSwitch
	writetext PokemonMansion1FNoSwitchText
	waitbutton
	closetext
	end

PokemonMansion1FSecretSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansion1FPressSwitchText:
	text "Who wouldn't?"
	done

PokemonMansion1FNoSwitchText:
	text "Not quite yet!"
	done

TrainerScientistSilas:
	trainer SCIENTIST, SILAS, EVENT_BEAT_SCIENTIST_SILAS, ScientistSilasSeenText, ScientistSilasBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext ScientistSilasAfterBattleText
	waitbutton
	closetext
	end

ScientistSilasSeenText:
	text "Who are you? There"
	line "shouldn't be"
	cont "anyone here."
	done

ScientistSilasBeatenText:
	text "Ouch!"
	done

ScientistSilasAfterBattleText:
	text "A key? I don't"
	line "know what you're"
	cont "talking about."
	done

; itemballs
PokemonMansion1FEscapeRope:
	itemball ESCAPE_ROPE

PokemonMansion1FCarbos:
	itemball CARBOS

PokemonMansion1FCharcoal:
	itemball CHARCOAL

; hidden items
PokemonMansion1FHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_POKEMON_MANSION_1F_HIDDEN_MOON_STONE

PokemonMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 27, CINNABAR_ISLAND, 1     ; 1
	warp_event  6, 27, CINNABAR_ISLAND, 1     ; 2
	warp_event 26, 27, CINNABAR_ISLAND, 1     ; 3
	warp_event 27, 27, CINNABAR_ISLAND, 1     ; 4
	warp_event  5, 10, POKEMON_MANSION_2F, 2  ; 5
	warp_event 21, 22, POKEMON_MANSION_B1F, 1 ; 6
	warp_event 16, 14, POKEMON_MANSION_1F, 7  ; 7

	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_READ, PokemonMansion1FSecretSwitch
	bg_event  8, 16, BGEVENT_ITEM, PokemonMansion1FHiddenMoonStone

	def_object_events
	object_event 16, 17, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistSilas, -1
	object_event 14,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FEscapeRope, EVENT_POKEMON_MANSION_1F_ESCAPE_ROPE
	object_event 18, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FCarbos, EVENT_POKEMON_MANSION_1F_CARBOS
	object_event 16, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FCharcoal, EVENT_POKEMON_MANSION_1F_CHARCOAL
