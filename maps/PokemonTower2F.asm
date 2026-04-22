	object_const_def
	const POKEMONTOWER2F_RIVAL

PokemonTower2F_MapScripts:
	def_scene_scripts
	scene_script PokemonTower2FNoop1Scene, SCENE_POKEMONTOWER2F_RIVAL_BATTLE
	scene_script PokemonTower2FNoop2Scene, SCENE_POKEMONTOWER2F_NOOP

	def_callbacks

PokemonTower2FNoop1Scene:
PokemonTower2FNoop2Scene:
	end

PokemonTower2FRivalEncounter:
	turnobject PLAYER, LEFT
	; fallthrough
PokemonTower2FRivalScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
;	pause 20
	setlasttalked POKEMONTOWER2F_RIVAL
	faceplayer
	opentext
	writetext PokemonTower2FRivalBeforeBattleText
	waitbutton
	closetext
	setlasttalked POKEMONTOWER2F_RIVAL
	winlosstext PokemonTower2FRivalBattleWinText, PokemonTower2FRivalBattleLossText
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .RivalBulbasaur
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .RivalCharmander
	loadtrainer RIVAL2, RIVAL2_2_SQUIRTLE
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalBulbasaur
	loadtrainer RIVAL2, RIVAL2_2_BULBASAUR
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalCharmander
	loadtrainer RIVAL2, RIVAL2_2_CHARMANDER
	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	sjump .FinishRival

.FinishRival
	opentext
	writetext PokemonTower2FRivalAfterBattleText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	readvar VAR_FACING
	ifequal UP, .RivalLeavesRight
	applymovement POKEMONTOWER2F_RIVAL, PokemonTower2FRivalLeavesDownMovement
	sjump .RivalLeaves

.RivalLeavesRight
	applymovement POKEMONTOWER2F_RIVAL, PokemonTower2FRivalLeavesRightMovement
	; fallthrough
.RivalLeaves
	applymovement POKEMONTOWER2F_RIVAL, PokemonTower2FRivalLeavesMovement
	disappear POKEMONTOWER2F_RIVAL
	playsound SFX_EXIT_BUILDING
	waitsfx
	setscene SCENE_POKEMONTOWER2F_NOOP
	special RestartMapMusic
	end

PokemonTower2FRivalBeforeBattleText:
	ntag "<RIVAL>:"
	text "Hey, <PLAYER>!"
	line "What brings you"
	cont "here?"

	para "Your #MON don't"
	line "look dead!"

	para "I can at least"
	line "make them faint!"
	cont "Let's go, pal!"
	done

PokemonTower2FRivalBattleWinText:
	ntag "<RIVAL>:"
	text "What?"
	line "You stinker!"

	para "I took it easy on"
	line "you too!"
	done

PokemonTower2FRivalBattleLossText:
	ntag "<RIVAL>:"
	text "Look at all your"
	line "wimpy #MON!"

	para "Toughen them up a"
	line "bit more!"
	done

PokemonTower2FRivalAfterBattleText:
	ntag "<RIVAL>:"
	text "How's your #DEX"
	line "coming, pal?"
	cont "I just caught a"
	roll "CUBONE!"

	para "I can't find the"
	line "grown-up MAROWAK,"
	cont "yet! I doubt there"
	roll "are any left!"
	
	para "Well, I better get"
	line "going! I've got a"
	cont "lot to accomplish!"

	para "Smell ya later!"
	done

PokemonTower2FMediumScript:
	jumptextfaceplayer PokemonTower2FMediumText
PokemonTower2FMediumText:
	text "Even we could not"
	line "identify the"
	cont "wayward ghost!"

	para "A SILPH SCOPE"
	line "might be able to"
	cont "unmask it."
	done

PokemonTower2FRivalLeavesDownMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step RIGHT
	step_end

PokemonTower2FRivalLeavesRightMovement:
	slow_step RIGHT
	slow_step DOWN
	slow_step DOWN
	step_end

PokemonTower2FRivalLeavesMovement:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step DOWN
	slow_step DOWN
	step_end

PokemonTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  9, POKEMON_TOWER_3F, 2 ; 1
	warp_event 16,  9, POKEMON_TOWER_1F, 1 ; 2

	def_coord_events
	coord_event 13,  5, SCENE_POKEMONTOWER2F_RIVAL_BATTLE, PokemonTower2FRivalEncounter

	def_bg_events

	def_object_events
	object_event 12,  5, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower2FRivalScript, EVENT_POKEMON_TOWER_2F_RIVAL
	object_event  1,  7, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower2FMediumScript, -1
