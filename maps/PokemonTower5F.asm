	object_const_def

PokemonTower5F_MapScripts:
	def_scene_scripts
	scene_script PokemonTower5FNoop1Scene, SCENE_POKEMONTOWER5F_OUT
	scene_script PokemonTower5FNoop2Scene, SCENE_POKEMONTOWER5F_IN

	def_callbacks

PokemonTower5FNoop1Scene:
PokemonTower5FNoop2Scene:
	end

PokemonTower5FEnterAuraScript:
	special FadeOutPalettes
	special HealParty
	setscene SCENE_POKEMONTOWER5F_IN
	special FadeInPalettes
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .Skip
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	jumptext PokemonTower5FPurifiedZoneText
.Skip
	end

PokemonTower5FLeaveAuraScript:
	setscene SCENE_POKEMONTOWER5F_OUT
	end

PokemonTower5FSafeMediumScript:
	jumptextfaceplayer PokemonTower5FSafeMediumText
PokemonTower5FSafeMediumText:
	text "Come, child! I"
	line "sealed this space"
	cont "with white magic!"

	para "You can rest here!"
	done

TrainerMediumDoris:
	trainer MEDIUM, DORIS, EVENT_BEAT_MEDIUM_DORIS, MediumDorisSeenText, MediumDorisBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumDorisAfterBattleText
	waitbutton
	closetext
	end

MediumDorisSeenText:
	text "You… shall…"
	line "join… us…"
	done

MediumDorisBeatenText:
	text "What"
	line "a nightmare!"
	done

MediumDorisAfterBattleText:
	text "I was possessed!"
	done

TrainerMediumJade:
	trainer MEDIUM, JADE, EVENT_BEAT_MEDIUM_JADE, MediumJadeSeenText, MediumJadeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumJadeAfterBattleText
	waitbutton
	closetext
	end

MediumJadeSeenText:
	text "Give… me…"
	line "your… soul…"
	done

MediumJadeBeatenText:
	text "Gasp!"
	done

MediumJadeAfterBattleText:
	text "I was under"
	line "possession!"
	done

TrainerMediumLydia:
	trainer MEDIUM, LYDIA, EVENT_BEAT_MEDIUM_LYDIA, MediumLydiaSeenText, MediumLydiaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumLydiaAfterBattleText
	waitbutton
	closetext
	end

MediumLydiaSeenText:
	text "Zombies!"
	done

MediumLydiaBeatenText:
	text "Ha?"
	done

MediumLydiaAfterBattleText:
	text "I regained my"
	line "senses!"
	done

TrainerMediumDelilah:
	trainer MEDIUM, DELILAH, EVENT_BEAT_MEDIUM_DELILAH, MediumDelilahSeenText, MediumDelilahBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumDelilahAfterBattleText
	waitbutton
	closetext
	end

MediumDelilahSeenText:
	text "Urgah…"
	line "Urff…"
	done

MediumDelilahBeatenText:
	text "Whoo!"
	done

MediumDelilahAfterBattleText:
	text "I fell to evil"
	line "spirits despite"
	cont "my training!"
	done

PokemonTower5FPurifiedZoneText:
	text "Entered purified,"
	line "protected zone!"

	para "<PLAYER>'s #MON"
	line "are fully healed!"
	done

; itemballs
PokemonTower5FNugget:
	itemball NUGGET

PokemonTower5FCleanseTag:
	itemball CLEANSE_TAG

; hidden items
PokemonTower5FHiddenElixer:
	hiddenitem ELIXER, EVENT_POKEMON_TOWER_5F_HIDDEN_ELIXER

PokemonTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  9, POKEMON_TOWER_6F, 2 ; 1
	warp_event  1,  9, POKEMON_TOWER_4F, 1 ; 2

	def_coord_events
	coord_event  8,  8, SCENE_POKEMONTOWER5F_OUT, PokemonTower5FEnterAuraScript
	coord_event  8,  9, SCENE_POKEMONTOWER5F_OUT, PokemonTower5FEnterAuraScript
	coord_event  9,  9, SCENE_POKEMONTOWER5F_OUT, PokemonTower5FEnterAuraScript
	coord_event  7,  8, SCENE_POKEMONTOWER5F_IN, PokemonTower5FLeaveAuraScript
	coord_event  7,  9, SCENE_POKEMONTOWER5F_IN, PokemonTower5FLeaveAuraScript
	coord_event  8, 10, SCENE_POKEMONTOWER5F_IN, PokemonTower5FLeaveAuraScript
	coord_event  9, 10, SCENE_POKEMONTOWER5F_IN, PokemonTower5FLeaveAuraScript
	coord_event 10,  9, SCENE_POKEMONTOWER5F_IN, PokemonTower5FLeaveAuraScript

	def_bg_events
	bg_event  2, 12, BGEVENT_ITEM, PokemonTower5FHiddenElixer

	def_object_events
	object_event 10,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokemonTower5FSafeMediumScript, -1
	object_event 12,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMediumDoris, -1
	object_event 15,  7, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumJade, -1
	object_event  4, 10, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumLydia, -1
	object_event  7, 16, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumDelilah, -1
	object_event  4, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower5FNugget, EVENT_POKEMON_TOWER_5F_NUGGET
	object_event  9,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower5FCleanseTag, EVENT_POKEMON_TOWER_5F_CLEANSE_TAG
