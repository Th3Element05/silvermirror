	object_const_def
	const POKEMONTOWER7F_GRUNT1
	const POKEMONTOWER7F_GRUNT2
	const POKEMONTOWER7F_GRUNT3

PokemonTower7F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower7FMrFujiScript:
	faceplayer
	opentext
	writetext PokemonTower7FMrFujiText
	waitbutton
	closetext
	setevent EVENT_POKEMON_TOWER_7F_MR_FUJI
	clearevent EVENT_MR_FUJIS_HOUSE_MR_FUJI
	setmapscene MR_FUJIS_HOUSE, SCENE_MRFUJISHOUSE_POKEFLUTE
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 30
	warpfacing UP, MR_FUJIS_HOUSE, 4, 2
	end

PokemonTower7FMrFujiText:
	text "MR.FUJI: Heh? You"
	line "came to save me?"

	para "Thank you. But, I"
	line "came here of my"
	cont "own free will."

	para "I came to calm"
	line "the soul of"
	cont "CUBONE's mother."

	para "I think MAROWAK's"
	line "spirit has gone"
	cont "to the afterlife."

	para "I must thank you"
	line "for your kind"
	cont "concern!"

	para "Follow me to my"
	line "home at the foot"
	cont "of this tower."
	done

TrainerRocketGruntM14:
	trainer GRUNTM, GRUNTM_14, EVENT_BEAT_GRUNTM_14, RocketGruntM14SeenText, RocketGruntM14BeatenText, 0, .Script
.Script:
	opentext
	writetext RocketGruntM14AfterBattleText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifequal 7, .Talked
	ifequal 8, .Near
	applymovement POKEMONTOWER7F_GRUNT1, PokemonTower7FGruntLeavesMovement
	disappear POKEMONTOWER7F_GRUNT1
	end
.Near
	applymovement POKEMONTOWER7F_GRUNT1, PokemonTower7FGruntStandardRightMovement
	disappear POKEMONTOWER7F_GRUNT1
	end
.Talked
	applymovement POKEMONTOWER7F_GRUNT1, PokemonTower7FGruntAltRightMovement
	applymovement POKEMONTOWER7F_GRUNT1, PokemonTower7FGruntLeavesMovement
	disappear POKEMONTOWER7F_GRUNT1
	end

RocketGruntM14SeenText:
	text "What do you want?"
	line "Why are you here?"
	done

RocketGruntM14BeatenText:
	text "I give up!"
	done

RocketGruntM14AfterBattleText:
	text "I'm not going to"
	line "forget this!"
	done

TrainerRocketGruntF4:
	trainer GRUNTF, GRUNTF_4, EVENT_BEAT_GRUNTF_4, RocketGruntF4SeenText, RocketGruntF4BeatenText, 0, .Script
.Script:
	opentext
	writetext RocketGruntF4AfterBattleText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifequal 10, .Talked
	ifequal 9, .Near
	applymovement POKEMONTOWER7F_GRUNT2, PokemonTower7FGruntLeavesMovement
	disappear POKEMONTOWER7F_GRUNT2
	end
.Near
	applymovement POKEMONTOWER7F_GRUNT2, PokemonTower7FGruntStandardLeftMovement
	applymovement POKEMONTOWER7F_GRUNT2, PokemonTower7FGruntLeavesMovement
	disappear POKEMONTOWER7F_GRUNT2
	end
.Talked
	applymovement POKEMONTOWER7F_GRUNT2, PokemonTower7FGruntAltLeftMovement
	applymovement POKEMONTOWER7F_GRUNT2, PokemonTower7FGruntLeavesMovement
	disappear POKEMONTOWER7F_GRUNT2
	end

RocketGruntF4SeenText:
	text "This old guy came"
	line "and complained"
	cont "about us harming"
	cont "useless #MON!"

	para "We're talking it"
	line "over as adults!"
	done

RocketGruntF4BeatenText:
	text "Please!"
	line "No more!"
	done

RocketGruntF4AfterBattleText:
	text "#MON are only"
	line "good for making"
	cont "money!"

	para "Stay out of our"
	line "business!"
	done

TrainerRocketGruntM15:
	trainer GRUNTM, GRUNTM_15, EVENT_BEAT_GRUNTM_15, RocketGruntM15SeenText, RocketGruntM15BeatenText, 0, .Script
.Script:
	opentext
	writetext RocketGruntM15AfterBattleText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifequal 7, .Talked
	applymovement POKEMONTOWER7F_GRUNT3, PokemonTower7FGruntLeavesMovement
	disappear POKEMONTOWER7F_GRUNT3
	end
.Talked
	applymovement POKEMONTOWER7F_GRUNT3, PokemonTower7FGruntAltRightMovement
	applymovement POKEMONTOWER7F_GRUNT3, PokemonTower7FGruntLeavesMovement
	disappear POKEMONTOWER7F_GRUNT3
	end

RocketGruntM15SeenText:
	text "You're not saving"
	line "anyone, kid!"
	done

RocketGruntM15BeatenText:
	text "Don't fight"
	line "us ROCKETs!"
	done

RocketGruntM15AfterBattleText:
	text "You're not getting"
	line "away with this!"
	done

; movements
PokemonTower7FGruntAltRightMovement:
	step RIGHT
	step DOWN
	step_end

PokemonTower7FGruntAltLeftMovement:
	step LEFT
	step DOWN
	step_end

PokemonTower7FGruntStandardLeftMovement:
	step DOWN
	step LEFT
	step_end

PokemonTower7FGruntStandardRightMovement:
	step DOWN
	step RIGHT
	; fallthrough
PokemonTower7FGruntLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 16, POKEMON_TOWER_6F, 1 ; 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM14, EVENT_BEAT_GRUNTM_14
	object_event 10,  8, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntF4, EVENT_BEAT_GRUNTF_4
	object_event  7,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGruntM15, EVENT_BEAT_GRUNTM_15
	object_event  8,  3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonTower7FMrFujiScript, EVENT_POKEMON_TOWER_7F_MR_FUJI
