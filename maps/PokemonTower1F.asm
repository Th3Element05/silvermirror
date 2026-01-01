	object_const_def

PokemonTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTowerPokefanFScript:
	jumptextfaceplayer PokemonTowerPokefanFText
PokemonTowerPokefanFText:
	text "Did you come to"
	line "pay respects?"
	cont "Bless you!"
	done

PokemonTowerPokefanMScript:
	jumptextfaceplayer PokemonTowerPokefanMText
PokemonTowerPokefanMText:
	text "I came to pray"
	line "for my CLEFAIRY."

	para "Sniff! I can't"
	line "stop crying…"
	done

PokemonTowerGirlScript:
	jumptextfaceplayer PokemonTowerGirlText
PokemonTowerGirlText:
	text "My GROWLITHE…"
	line "Why did you die?"
	done

PokemonTowerReceptionistScript:
	jumptextfaceplayer PokemonTowerReceptionistText
PokemonTowerReceptionistText:
	text "#MON TOWER was"
	line "erected in the"
	cont "memory of #MON"
	cont "that had died."
	done

PokemonTowerMediumScript:
	jumptextfaceplayer PokemonTowerMediumText
PokemonTowerMediumText:
	text "I am a MEDIUM!"
	line "There are spirits"
	cont "up to mischief!"
	done

PokemonTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  9, POKEMON_TOWER_2F, 2 ; 1
	warp_event  8, 17, LAVENDER_TOWN, 6    ; 2
	warp_event  9, 17, LAVENDER_TOWN, 6    ; 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTowerPokefanFScript, -1
	object_event  6, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTowerPokefanMScript, -1
	object_event 11,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTowerGirlScript, -1
	object_event 12, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTowerReceptionistScript, -1
	object_event 16,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTowerMediumScript, -1
