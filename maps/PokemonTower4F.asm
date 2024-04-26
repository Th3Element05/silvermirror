	object_const_def

PokemonTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerMediumMargret:
	trainer MEDIUM, MARGRET, EVENT_BEAT_MEDIUM_MARGRET, MediumMargretSeenText, MediumMargretBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumMargretAfterBattleText
	waitbutton
	closetext
	end

MediumMargretSeenText:
	text "Be cursed with"
	line "me! Kwaaah!"
	done

MediumMargretBeatenText:
	text "What!"
	done

MediumMargretAfterBattleText:
	text "We can't crack"
	line "the identity of"
	cont "the GHOST."
	done

TrainerMediumEthel:
	trainer MEDIUM, ETHEL, EVENT_BEAT_MEDIUM_ETHEL, MediumEthelSeenText, MediumEthelBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumEthelAfterBattleText
	waitbutton
	closetext
	end

MediumEthelSeenText:
	text "GHOST! No!"
	line "Kwaaah!"
	done

MediumEthelBeatenText:
	text "Where"
	line "is the GHOST?"
	done

MediumEthelAfterBattleText:
	text "I must have been"
	line "dreaming..."
	done

TrainerMediumRebecca:
	trainer MEDIUM, REBECCA, EVENT_BEAT_MEDIUM_REBECCA, MediumRebeccaSeenText, MediumRebeccaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumRebeccaAfterBattleText
	waitbutton
	closetext
	end

MediumRebeccaSeenText:
	text "Huhuhu..."
	line "Beat me not!"
	done

MediumRebeccaBeatenText:
	text "Huh?"
	line "Who? What?"
	done

MediumRebeccaAfterBattleText:
	text "May the departed"
	line "souls of #MON"
	cont "rest in peace..."
	done

PokemonTower4FAwakening:
	itemball AWAKENING

PokemonTower4FElixer:
	itemball ELIXER

PokemonTower4FHPUp:
	itemball HP_UP

PokemonTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  9, POKEMON_TOWER_5F, 2 ; 1
	warp_event 16,  9, POKEMON_TOWER_3F, 1 ; 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13,  7, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerMediumMargret, -1
	object_event  3, 10, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerMediumEthel, -1
	object_event 12, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerMediumRebecca, -1
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FAwakening, EVENT_POKEMON_TOWER_4F_AWAKENING
	object_event 10, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FElixer, EVENT_POKEMON_TOWER_4F_ELIXER
	object_event 10, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FHPUp, EVENT_POKEMON_TOWER_4F_HP_UP
