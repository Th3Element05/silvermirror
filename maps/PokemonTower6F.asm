	object_const_def

PokemonTower6F_MapScripts:
	def_scene_scripts
	scene_script PokemonTower6FNoop1Scene, SCENE_POKEMONTOWER6F_GET_OUT
	scene_script PokemonTower6FNoop2Scene, SCENE_POKEMONTOWER6F_NOOP

	def_callbacks

PokemonTower6FNoop1Scene:
PokemonTower6FNoop2Scene:
	end

PokemonTower6FGhostScript:
	refreshscreen
	trainerpic POKEMON_GHOST
	cry MAROWAK
	waitbutton
	closepokepic
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .GetOut
	writetext PokemonTower6FBegoneText
	sjump .PushBack

.GetOut:
	writetext PokemonTower6FGetOutText
	; fallthrough
.PushBack
	waitbutton
	checkitem SILPH_SCOPE
	iftrue .SilphScope
	closetext
	applymovement PLAYER, PokemonTower6FStepBackMovement
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

.SilphScope
	writetext PokemonTower6FSilphScopeText
	promptbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_NO_CATCH
	loadwildmon MAROWAK, 30
	startbattle
	reloadmapafterbattle
	setevent EVENT_FOUGHT_POKEMON_GHOST
	setscene SCENE_POKEMONTOWER6F_NOOP
	writetext PokemonTower6FGhostDepartedText
	cry MAROWAK
	waitbutton
	closetext
	end

PokemonTower6FBegoneText:
	text "Be gone..."
	line "Intruders..."
	done

PokemonTower6FGetOutText:
	text "Get out!"
	line "Get out!"
	done

PokemonTower6FSilphScopeText:
	text "The SILPH SCOPE"
	line "unveiled the"
	cont "GHOST's identity!"
	done

PokemonTower6FGhostDepartedText:
	text "The GHOST was the"
	line "restless soul of"
	cont "CUBONE's mother!"

	para "The #MON's"
	line "soul was calmed."

	para "It departed to"
	line "the afterlife!"
	done

TrainerMediumMaya:
	trainer MEDIUM, MAYA, EVENT_BEAT_MEDIUM_MAYA, MediumMayaSeenText, MediumMayaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumMayaAfterBattleText
	waitbutton
	closetext
	end

MediumMayaSeenText:
	text "Urff... Kwaah!"
	done

MediumMayaBeatenText:
	text "Something"
	line "fell out!"
	done

MediumMayaAfterBattleText:
	text "Hair didn't fall"
	line "out! It was an"
	cont "evil spirit!"
	done

TrainerMediumWillow:
	trainer MEDIUM, WILLOW, EVENT_BEAT_MEDIUM_WILLOW, MediumWillowSeenText, MediumWillowBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumWillowAfterBattleText
	waitbutton
	closetext
	end

MediumWillowSeenText:
	text "Ke..ke...ke..."
	line "ke..ke...ke!!"
	done

MediumWillowBeatenText:
	text "Keee!"
	done

MediumWillowAfterBattleText:
	text "What's going on"
	line "here?"
	done

TrainerMediumAbigail:
	trainer MEDIUM, ABIGAIL, EVENT_BEAT_MEDIUM_ABIGAIL, MediumAbigailSeenText, MediumAbigailBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumAbigailAfterBattleText
	waitbutton
	closetext
	end

MediumAbigailSeenText:
	text "Give...me..."
	line "blood..."
	done

MediumAbigailBeatenText:
	text "Groan!"
	done

MediumAbigailAfterBattleText:
	text "I feel anemic"
	line "and weak..."
	done

PokemonTower6FStepBackMovement:
	turn_head DOWN
	fix_facing
	jump_step UP
	remove_fixed_facing
	step_end

; itemballs
PokemonTower6FXAccuracy:
	itemball X_ACCURACY

PokemonTower6FRareCandy:
	itemball RARE_CANDY

PokemonTower6FSpellTag:
	itemball SPELL_TAG

;PokemonTower6FDebugSilphScope:
;	hiddenitem SILPH_SCOPE, EVENT_POKEMON_TOWER_5F_HIDDEN_ELIXER

PokemonTower6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 16, POKEMON_TOWER_7F, 1 ; 1
	warp_event 16,  9, POKEMON_TOWER_5F, 1 ; 2

	def_coord_events
	coord_event  8, 16, SCENE_POKEMONTOWER6F_GET_OUT, PokemonTower6FGhostScript

	def_bg_events
;	bg_event  2, 15, BGEVENT_ITEM, PokemonTower6FDebugSilphScope

	def_object_events
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMediumMaya, -1
	object_event 14,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumWillow, -1
	object_event 10, 10, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMediumAbigail, -1
	object_event 12, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6FXAccuracy, EVENT_POKEMON_TOWER_6F_X_ACCURACY
	object_event  1, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6FRareCandy, EVENT_POKEMON_TOWER_6F_RARE_CANDY
	object_event 10, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6FSpellTag, EVENT_POKEMON_TOWER_6F_SPELL_TAG
