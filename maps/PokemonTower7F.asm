	object_const_def

PokemonTower7F_MapScripts:
	def_scene_scripts

	def_callbacks

;TrainerRocket:
;	trainer ROCKET, , EVENT_BEAT_ROCKET_, SeenText, BeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext AfterBattleText
;	waitbutton
;	closetext
;	end

;SeenText:
;
;	done

;BeatenText:
;
;	done

;AfterBattleText:
;
;	done

PokemonTower7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 16, POKEMON_TOWER_6F, 1 ; 1

	def_coord_events

	def_bg_events


	def_object_events
;	object_event  1,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocket, -1
